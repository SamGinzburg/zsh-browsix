; ModuleID = 'jobs.c'
source_filename = "jobs.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

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
%struct._IO_FILE = type opaque
%struct.__sigset_t = type { [32 x i32] }
%struct.anon = type { i8*, i32 }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, {}*, {}*, {}*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.0 = type { double }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.jobfile = type { %union.anon, i32 }
%union.anon = type { i8* }
%struct.timezone = type { i32, i32 }
%struct.bgstatus = type { i32, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }

@jobtab = common global %struct.job* null, align 4
@maxjob = common global i32 0, align 4
@child_usage = internal global %struct.rusage zeroinitializer, align 4
@errflag = external global i32, align 4
@pipestats = common global [256 x i32] zeroinitializer, align 4
@lastval = external global i32, align 4
@numpipestats = common global i32 0, align 4
@opts = external global [181 x i8], align 1
@lastval2 = external global i32, align 4
@thisjob = common global i32 0, align 4
@shout = external global %struct._IO_FILE*, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@ttyfrozen = common global i32 0, align 4
@zleactive = external global i32, align 4
@shttyinfo = external global %struct.ttyinfo, align 4
@mypgrp = common global i32 0, align 4
@list_pipe = external global i32, align 4
@errbrk_saved = common global i32 0, align 4
@breaks = external global i32, align 4
@prev_breaks = common global i32 0, align 4
@prev_errflag = common global i32 0, align 4
@loops = external global i32, align 4
@curjob = common global i32 0, align 4
@prevjob = common global i32 0, align 4
@sigtrapped = external global [34 x i32], align 4
@get_clktck.clktck = internal global i32 0, align 4
@zterm_columns = external global i32, align 4
@stdout = external constant %struct._IO_FILE*, align 4
@oldjobtab = internal global %struct.job* null, align 4
@sig_msg = external global [33 x i8*], align 4
@.str = private unnamed_addr constant [15 x i8] c"unknown signal\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[%ld]  %c \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"zsh: \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"running%*s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"continued%*s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"exit %-4d%*s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"done%*s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%s (core dumped)%*s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@pwd = external global i8*, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"(pwd %s: \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@fdtable = external global i8*, align 4
@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@sigchld_mask = external global %struct.__sigset_t, align 4
@last_signal = external global i32, align 4
@oldmaxjob = internal global i32 0, align 4
@jobtabsize = common global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"job table full or recursion limit exceeded\00", align 1
@subsh = external global i32, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@shtimer = external global %struct.timeval, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"no current job\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"no previous job\00", align 1
@typtab = external global [256 x i16], align 2
@.str.26 = private unnamed_addr constant [18 x i8] c"%%%s: no such job\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"job not found: %s\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"failed to allocate job table, aborting.\00", align 1
@hackzero = internal global i8* null, align 4
@hackspace = internal global i32 0, align 4
@addbgstatus.child_max = internal global i32 0, align 4
@bgstatus_list = internal global %union.linkroot* null, align 4
@bgstatus_count = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [17 x i8] c"-Z is restricted\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"-Z requires one argument\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"no job control in this shell.\00", align 1
@stopmsg = external global i32, align 4
@.str.32 = private unnamed_addr constant [36 x i8] c"pid %d is not a child of this shell\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"can't manipulate jobs in subshell\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%s: no such job\00", align 1
@lastpid = external global i32, align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"job already in background\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"(pwd : \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" -%d\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"warning: job is suspended, use `kill -CONT%s' to resume\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"invalid signal number: %s\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@sigs = external global [35 x i8*], align 4
@alt_sigs = internal constant [3 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32 29 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i32 32 }, %struct.anon zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [22 x i8] c"unknown signal: SIG%s\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"-n: argument expected\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"-s: argument expected\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"-: signal name expected\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"type kill -l for a list of signals\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"not enough arguments\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"kill %s failed: %e\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"illegal pid: %s\00", align 1
@shfunctab = external global %struct.hashtable*, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"TRAP%s\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"can't suspend login shell\00", align 1
@origpgrp = common global i32 0, align 4
@mypid = external global i32, align 4
@.str.57 = private unnamed_addr constant [11 x i8] c"REPORTTIME\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"REPORTMEMORY\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"TIMEFMT\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"%J  %U user %S system %P cpu %*E total\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%4.2fs\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%0.fms\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%%m\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"%0.fus\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%%u\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%%*\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"%d%%\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"%%%c\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"%d:%02d:%05.2f\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"%d:%05.2f\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1

; Function Attrs: noinline nounwind
define void @makerunning(%struct.job* %jn) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %pn = alloca %struct.process*, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 2
  %1 = load i32, i32* %stat, align 4
  %and = and i32 %1, -3
  store i32 %and, i32* %stat, align 4
  %2 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %2, i32 0, i32 4
  %3 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %3, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.process*, %struct.process** %pn, align 4
  %tobool = icmp ne %struct.process* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %5, i32 0, i32 3
  %6 = load i32, i32* %status, align 4
  %and1 = and i32 %6, 65535
  %mul = mul nsw i32 %and1, 65537
  %shr = ashr i32 %mul, 8
  %conv = trunc i32 %shr to i16
  %conv2 = sext i16 %conv to i32
  %cmp = icmp sgt i32 %conv2, 32512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.process*, %struct.process** %pn, align 4
  %status4 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 3
  store i32 -1, i32* %status4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  %9 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %9, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat5 = getelementptr inbounds %struct.job, %struct.job* %10, i32 0, i32 2
  %11 = load i32, i32* %stat5, align 4
  %and6 = and i32 %11, 128
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other = getelementptr inbounds %struct.job, %struct.job* %13, i32 0, i32 1
  %14 = load i32, i32* %other, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %12, i32 %14
  call void @makerunning(%struct.job* %add.ptr)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.end
  ret void
}

; Function Attrs: noinline nounwind
define i32 @findproc(i32 %pid, %struct.job** %jptr, %struct.process** %pptr, i32 %aux) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %jptr.addr = alloca %struct.job**, align 4
  %pptr.addr = alloca %struct.process**, align 4
  %aux.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %i = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store %struct.job** %jptr, %struct.job*** %jptr.addr, align 4
  store %struct.process** %pptr, %struct.process*** %pptr.addr, align 4
  store i32 %aux, i32* %aux.addr, align 4
  %0 = load %struct.job**, %struct.job*** %jptr.addr, align 4
  store %struct.job* null, %struct.job** %0, align 4
  %1 = load %struct.process**, %struct.process*** %pptr.addr, align 4
  store %struct.process* null, %struct.process** %1, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %4 = load %struct.job*, %struct.job** @jobtab, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %4, i32 %5
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %stat, align 4
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc14

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %aux.addr, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 5
  %10 = load %struct.process*, %struct.process** %auxprocs, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load %struct.job*, %struct.job** @jobtab, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds %struct.job, %struct.job* %11, i32 %12
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx3, i32 0, i32 4
  %13 = load %struct.process*, %struct.process** %procs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.process* [ %10, %cond.true ], [ %13, %cond.false ]
  store %struct.process* %cond, %struct.process** %pn, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %cond.end
  %14 = load %struct.process*, %struct.process** %pn, align 4
  %tobool5 = icmp ne %struct.process* %14, null
  br i1 %tobool5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %15 = load %struct.process*, %struct.process** %pn, align 4
  %pid7 = getelementptr inbounds %struct.process, %struct.process* %15, i32 0, i32 1
  %16 = load i32, i32* %pid7, align 4
  %17 = load i32, i32* %pid.addr, align 4
  %cmp8 = icmp eq i32 %16, %17
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body6
  %18 = load %struct.process*, %struct.process** %pn, align 4
  %19 = load %struct.process**, %struct.process*** %pptr.addr, align 4
  store %struct.process* %18, %struct.process** %19, align 4
  %20 = load %struct.job*, %struct.job** @jobtab, align 4
  %21 = load i32, i32* %i, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %20, i32 %21
  %22 = load %struct.job**, %struct.job*** %jptr.addr, align 4
  store %struct.job* %add.ptr, %struct.job** %22, align 4
  %23 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 3
  %24 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %24, -1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %25 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %25, i32 0, i32 0
  %26 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %26, %struct.process** %pn, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end, %if.then
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %28 = load %struct.process**, %struct.process*** %pptr.addr, align 4
  %29 = load %struct.process*, %struct.process** %28, align 4
  %tobool16 = icmp ne %struct.process* %29, null
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end15
  %30 = load %struct.job**, %struct.job*** %jptr.addr, align 4
  %31 = load %struct.job*, %struct.job** %30, align 4
  %tobool17 = icmp ne %struct.job* %31, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end15
  %32 = phi i1 [ false, %for.end15 ], [ %tobool17, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then11
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind
define i32 @hasprocs(i32 %job) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca i32, align 4
  %jn = alloca %struct.job*, align 4
  store i32 %job, i32* %job.addr, align 4
  %0 = load i32, i32* %job.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.job*, %struct.job** @jobtab, align 4
  %2 = load i32, i32* %job.addr, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %1, i32 %2
  store %struct.job* %add.ptr, %struct.job** %jn, align 4
  %3 = load %struct.job*, %struct.job** %jn, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %3, i32 0, i32 4
  %4 = load %struct.process*, %struct.process** %procs, align 4
  %tobool = icmp ne %struct.process* %4, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %5 = load %struct.job*, %struct.job** %jn, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %5, i32 0, i32 5
  %6 = load %struct.process*, %struct.process** %auxprocs, align 4
  %tobool1 = icmp ne %struct.process* %6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %7 = phi i1 [ true, %if.end ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind
define void @get_usage() #0 {
entry:
  %call = call i32 @getrusage(i32 -1, %struct.rusage* @child_usage)
  ret void
}

declare i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: noinline nounwind
define void @check_cursh_sig(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end20

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %stat, align 4
  %and = and i32 %5, 1032
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.then2, label %if.end17

if.then2:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %if.then2
  %6 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %6, 2
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %j, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %arrayidx7, i32 0, i32 5
  %10 = load %struct.process*, %struct.process** %auxprocs, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %11 = load %struct.job*, %struct.job** @jobtab, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx8 = getelementptr inbounds %struct.job, %struct.job* %11, i32 %12
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx8, i32 0, i32 4
  %13 = load %struct.process*, %struct.process** %procs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.process* [ %10, %cond.true ], [ %13, %cond.false ]
  store %struct.process* %cond, %struct.process** %pn, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %cond.end
  %14 = load %struct.process*, %struct.process** %pn, align 4
  %tobool10 = icmp ne %struct.process* %14, null
  br i1 %tobool10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %15 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %15, i32 0, i32 3
  %16 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %16, -1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body11
  %17 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 1
  %18 = load i32, i32* %pid, align 4
  %19 = load i32, i32* %sig.addr, align 4
  %call = call i32 @kill(i32 %18, i32 %19)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %20 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 0
  %21 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %21, %struct.process** %pn, align 4
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  br label %if.end17

if.end17:                                         ; preds = %for.end16, %for.body
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %23 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end20:                                        ; preds = %if.then, %for.cond
  ret void
}

declare i32 @kill(i32, i32) #1

; Function Attrs: noinline nounwind
define void @storepipestats(%struct.job* %jn, i32 %inforeground, i32 %fixlastval) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %inforeground.addr = alloca i32, align 4
  %fixlastval.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pipefail = alloca i32, align 4
  %jpipestats = alloca [256 x i32], align 4
  %p = alloca %struct.process*, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 %inforeground, i32* %inforeground.addr, align 4
  store i32 %fixlastval, i32* %fixlastval.addr, align 4
  store i32 0, i32* %pipefail, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 4
  %1 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %1, %struct.process** %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.process*, %struct.process** %p, align 4
  %tobool = icmp ne %struct.process* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %struct.process*, %struct.process** %p, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %5, i32 0, i32 3
  %6 = load i32, i32* %status, align 4
  %and = and i32 %6, 65535
  %sub = sub i32 %and, 1
  %cmp1 = icmp ult i32 %sub, 255
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load %struct.process*, %struct.process** %p, align 4
  %status2 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 3
  %8 = load i32, i32* %status2, align 4
  %and3 = and i32 %8, 127
  %or = or i32 128, %and3
  br label %cond.end18

cond.false:                                       ; preds = %for.body
  %9 = load %struct.process*, %struct.process** %p, align 4
  %status4 = getelementptr inbounds %struct.process, %struct.process* %9, i32 0, i32 3
  %10 = load i32, i32* %status4, align 4
  %and5 = and i32 %10, 65535
  %mul = mul nsw i32 %and5, 65537
  %shr = ashr i32 %mul, 8
  %conv = trunc i32 %shr to i16
  %conv6 = sext i16 %conv to i32
  %cmp7 = icmp sgt i32 %conv6, 32512
  br i1 %cmp7, label %cond.true9, label %cond.false14

cond.true9:                                       ; preds = %cond.false
  %11 = load %struct.process*, %struct.process** %p, align 4
  %status10 = getelementptr inbounds %struct.process, %struct.process* %11, i32 0, i32 3
  %12 = load i32, i32* %status10, align 4
  %and11 = and i32 %12, 65280
  %shr12 = ashr i32 %and11, 8
  %or13 = or i32 128, %shr12
  br label %cond.end

cond.false14:                                     ; preds = %cond.false
  %13 = load %struct.process*, %struct.process** %p, align 4
  %status15 = getelementptr inbounds %struct.process, %struct.process* %13, i32 0, i32 3
  %14 = load i32, i32* %status15, align 4
  %and16 = and i32 %14, 65280
  %shr17 = ashr i32 %and16, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false14, %cond.true9
  %cond = phi i32 [ %or13, %cond.true9 ], [ %shr17, %cond.false14 ]
  br label %cond.end18

cond.end18:                                       ; preds = %cond.end, %cond.true
  %cond19 = phi i32 [ %or, %cond.true ], [ %cond, %cond.end ]
  %15 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %jpipestats, i32 0, i32 %15
  store i32 %cond19, i32* %arrayidx, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* %jpipestats, i32 0, i32 %16
  %17 = load i32, i32* %arrayidx20, align 4
  %tobool21 = icmp ne i32 %17, 0
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end18
  %18 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* %jpipestats, i32 0, i32 %18
  %19 = load i32, i32* %arrayidx22, align 4
  store i32 %19, i32* %pipefail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.process*, %struct.process** %p, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 0
  %21 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %21, %struct.process** %p, align 4
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %23 = load i32, i32* %inforeground.addr, align 4
  %tobool23 = icmp ne i32 %23, 0
  br i1 %tobool23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %jpipestats, i32 0, i32 0
  %24 = bitcast i32* %arraydecay to i8*
  %25 = load i32, i32* %i, align 4
  %mul25 = mul i32 4, %25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([256 x i32]* @pipestats to i8*), i8* %24, i32 %mul25, i32 4, i1 false)
  %26 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %26, i32 0, i32 2
  %27 = load i32, i32* %stat, align 4
  %and26 = and i32 %27, 1024
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then24
  %28 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %28, 256
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  %29 = load i32, i32* @lastval, align 4
  %30 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %i, align 4
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* @pipestats, i32 0, i32 %30
  store i32 %29, i32* %arrayidx32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %if.then24
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* @numpipestats, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %for.end
  %32 = load i32, i32* %fixlastval.addr, align 4
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.end34
  %33 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat37 = getelementptr inbounds %struct.job, %struct.job* %33, i32 0, i32 2
  %34 = load i32, i32* %stat37, align 4
  %and38 = and i32 %34, 1024
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then36
  %35 = load i32, i32* @lastval, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.end46, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.then40
  %36 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 129), align 1
  %conv43 = sext i8 %36 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true42
  %37 = load i32, i32* %pipefail, align 4
  store i32 %37, i32* @lastval, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true42, %if.then40
  br label %if.end50

if.else:                                          ; preds = %if.then36
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 129), align 1
  %tobool47 = icmp ne i8 %38, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else
  %39 = load i32, i32* %pipefail, align 4
  store i32 %39, i32* @lastval, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define void @update_job(%struct.job* %jn) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %pn = alloca %struct.process*, align 4
  %job = alloca i32, align 4
  %val = alloca i32, align 4
  %status = alloca i32, align 4
  %somestopped = alloca i32, align 4
  %inforeground = alloca i32, align 4
  %i = alloca i32, align 4
  %pgrp = alloca i32, align 4
  %su = alloca i32, align 4
  %sig = alloca i32, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 0, i32* %val, align 4
  store i32 0, i32* %status, align 4
  store i32 0, i32* %somestopped, align 4
  store i32 0, i32* %inforeground, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 5
  %1 = load %struct.process*, %struct.process** %auxprocs, align 4
  store %struct.process* %1, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.process*, %struct.process** %pn, align 4
  %tobool = icmp ne %struct.process* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.process*, %struct.process** %pn, align 4
  %status1 = getelementptr inbounds %struct.process, %struct.process* %3, i32 0, i32 3
  %4 = load i32, i32* %status1, align 4
  %cmp = icmp eq i32 %4, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.process*, %struct.process** %pn, align 4
  %status2 = getelementptr inbounds %struct.process, %struct.process* %5, i32 0, i32 3
  store i32 -1, i32* %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load %struct.process*, %struct.process** %pn, align 4
  %status3 = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 3
  %7 = load i32, i32* %status3, align 4
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %if.end292

if.end6:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  %9 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %9, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %10, i32 0, i32 4
  %11 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %11, %struct.process** %pn, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc60, %for.end
  %12 = load %struct.process*, %struct.process** %pn, align 4
  %tobool8 = icmp ne %struct.process* %12, null
  br i1 %tobool8, label %for.body9, label %for.end62

for.body9:                                        ; preds = %for.cond7
  %13 = load %struct.process*, %struct.process** %pn, align 4
  %status10 = getelementptr inbounds %struct.process, %struct.process* %13, i32 0, i32 3
  %14 = load i32, i32* %status10, align 4
  %cmp11 = icmp eq i32 %14, 65535
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %15 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %15, i32 0, i32 2
  %16 = load i32, i32* %stat, align 4
  %and = and i32 %16, -3
  store i32 %and, i32* %stat, align 4
  %17 = load %struct.process*, %struct.process** %pn, align 4
  %status13 = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 3
  store i32 -1, i32* %status13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %18 = load %struct.process*, %struct.process** %pn, align 4
  %status15 = getelementptr inbounds %struct.process, %struct.process* %18, i32 0, i32 3
  %19 = load i32, i32* %status15, align 4
  %cmp16 = icmp eq i32 %19, -1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  br label %if.end292

if.end18:                                         ; preds = %if.end14
  %20 = load %struct.process*, %struct.process** %pn, align 4
  %status19 = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 3
  %21 = load i32, i32* %status19, align 4
  %and20 = and i32 %21, 65535
  %mul = mul nsw i32 %and20, 65537
  %shr = ashr i32 %mul, 8
  %conv = trunc i32 %shr to i16
  %conv21 = sext i16 %conv to i32
  %cmp22 = icmp sgt i32 %conv21, 32512
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i32 1, i32* %somestopped, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18
  %22 = load %struct.process*, %struct.process** %pn, align 4
  %next26 = getelementptr inbounds %struct.process, %struct.process* %22, i32 0, i32 0
  %23 = load %struct.process*, %struct.process** %next26, align 4
  %tobool27 = icmp ne %struct.process* %23, null
  br i1 %tobool27, label %if.end54, label %if.then28

if.then28:                                        ; preds = %if.end25
  %24 = load %struct.process*, %struct.process** %pn, align 4
  %status29 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 3
  %25 = load i32, i32* %status29, align 4
  %and30 = and i32 %25, 65535
  %sub = sub i32 %and30, 1
  %cmp31 = icmp ult i32 %sub, 255
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then28
  %26 = load %struct.process*, %struct.process** %pn, align 4
  %status33 = getelementptr inbounds %struct.process, %struct.process* %26, i32 0, i32 3
  %27 = load i32, i32* %status33, align 4
  %and34 = and i32 %27, 127
  %or = or i32 128, %and34
  br label %cond.end52

cond.false:                                       ; preds = %if.then28
  %28 = load %struct.process*, %struct.process** %pn, align 4
  %status35 = getelementptr inbounds %struct.process, %struct.process* %28, i32 0, i32 3
  %29 = load i32, i32* %status35, align 4
  %and36 = and i32 %29, 65535
  %mul37 = mul nsw i32 %and36, 65537
  %shr38 = ashr i32 %mul37, 8
  %conv39 = trunc i32 %shr38 to i16
  %conv40 = sext i16 %conv39 to i32
  %cmp41 = icmp sgt i32 %conv40, 32512
  br i1 %cmp41, label %cond.true43, label %cond.false48

cond.true43:                                      ; preds = %cond.false
  %30 = load %struct.process*, %struct.process** %pn, align 4
  %status44 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 3
  %31 = load i32, i32* %status44, align 4
  %and45 = and i32 %31, 65280
  %shr46 = ashr i32 %and45, 8
  %or47 = or i32 128, %shr46
  br label %cond.end

cond.false48:                                     ; preds = %cond.false
  %32 = load %struct.process*, %struct.process** %pn, align 4
  %status49 = getelementptr inbounds %struct.process, %struct.process* %32, i32 0, i32 3
  %33 = load i32, i32* %status49, align 4
  %and50 = and i32 %33, 65280
  %shr51 = ashr i32 %and50, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false48, %cond.true43
  %cond = phi i32 [ %or47, %cond.true43 ], [ %shr51, %cond.false48 ]
  br label %cond.end52

cond.end52:                                       ; preds = %cond.end, %cond.true
  %cond53 = phi i32 [ %or, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond53, i32* %val, align 4
  br label %if.end54

if.end54:                                         ; preds = %cond.end52, %if.end25
  %34 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %34, i32 0, i32 1
  %35 = load i32, i32* %pid, align 4
  %36 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader = getelementptr inbounds %struct.job, %struct.job* %36, i32 0, i32 0
  %37 = load i32, i32* %gleader, align 4
  %cmp55 = icmp eq i32 %35, %37
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %38 = load %struct.process*, %struct.process** %pn, align 4
  %status58 = getelementptr inbounds %struct.process, %struct.process* %38, i32 0, i32 3
  %39 = load i32, i32* %status58, align 4
  store i32 %39, i32* %status, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %40 = load %struct.process*, %struct.process** %pn, align 4
  %next61 = getelementptr inbounds %struct.process, %struct.process* %40, i32 0, i32 0
  %41 = load %struct.process*, %struct.process** %next61, align 4
  store %struct.process* %41, %struct.process** %pn, align 4
  br label %for.cond7

for.end62:                                        ; preds = %for.cond7
  %42 = load %struct.job*, %struct.job** %jn.addr, align 4
  %43 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %42 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %43 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  store i32 %sub.ptr.div, i32* %job, align 4
  %44 = load i32, i32* %somestopped, align 4
  %tobool63 = icmp ne i32 %44, 0
  br i1 %tobool63, label %if.then64, label %if.end87

if.then64:                                        ; preds = %for.end62
  %45 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stty_in_env = getelementptr inbounds %struct.job, %struct.job* %45, i32 0, i32 7
  %46 = load i32, i32* %stty_in_env, align 4
  %tobool65 = icmp ne i32 %46, 0
  br i1 %tobool65, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.then64
  %47 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty = getelementptr inbounds %struct.job, %struct.job* %47, i32 0, i32 8
  %48 = load %struct.ttyinfo*, %struct.ttyinfo** %ty, align 4
  %tobool66 = icmp ne %struct.ttyinfo* %48, null
  br i1 %tobool66, label %if.end70, label %if.then67

if.then67:                                        ; preds = %land.lhs.true
  %call = call i8* @zalloc(i32 68)
  %49 = bitcast i8* %call to %struct.ttyinfo*
  %50 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty68 = getelementptr inbounds %struct.job, %struct.job* %50, i32 0, i32 8
  store %struct.ttyinfo* %49, %struct.ttyinfo** %ty68, align 4
  %51 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty69 = getelementptr inbounds %struct.job, %struct.job* %51, i32 0, i32 8
  %52 = load %struct.ttyinfo*, %struct.ttyinfo** %ty69, align 4
  call void @gettyinfo(%struct.ttyinfo* %52)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true, %if.then64
  %53 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat71 = getelementptr inbounds %struct.job, %struct.job* %53, i32 0, i32 2
  %54 = load i32, i32* %stat71, align 4
  %and72 = and i32 %54, 2
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then74, label %if.end86

if.then74:                                        ; preds = %if.end70
  %55 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat75 = getelementptr inbounds %struct.job, %struct.job* %55, i32 0, i32 2
  %56 = load i32, i32* %stat75, align 4
  %and76 = and i32 %56, 256
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end85

if.then78:                                        ; preds = %if.then74
  %57 = load i32, i32* %job, align 4
  %call79 = call i32 @super_job(i32 %57)
  store i32 %call79, i32* %i, align 4
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.then78
  %58 = load %struct.job*, %struct.job** @jobtab, align 4
  %59 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %58, i32 %59
  %gleader82 = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 0
  %60 = load i32, i32* %gleader82, align 4
  %call83 = call i32 @killpg(i32 %60, i32 20)
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.then78
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then74
  br label %if.end292

if.end86:                                         ; preds = %if.end70
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %for.end62
  %61 = load i32, i32* %val, align 4
  store i32 %61, i32* @lastval2, align 4
  %62 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat88 = getelementptr inbounds %struct.job, %struct.job* %62, i32 0, i32 2
  %63 = load i32, i32* %stat88, align 4
  %and89 = and i32 %63, 1024
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end87
  store i32 1, i32* %inforeground, align 4
  br label %if.end96

if.else:                                          ; preds = %if.end87
  %64 = load i32, i32* %job, align 4
  %65 = load i32, i32* @thisjob, align 4
  %cmp92 = icmp eq i32 %64, %65
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.else
  %66 = load i32, i32* %val, align 4
  store i32 %66, i32* @lastval, align 4
  store i32 2, i32* %inforeground, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.else
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then91
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool97 = icmp ne %struct._IO_FILE* %67, null
  br i1 %tobool97, label %land.lhs.true98, label %if.end118

land.lhs.true98:                                  ; preds = %if.end96
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %cmp99 = icmp ne %struct._IO_FILE* %68, %69
  br i1 %cmp99, label %land.lhs.true101, label %if.end118

land.lhs.true101:                                 ; preds = %land.lhs.true98
  %70 = load i32, i32* @ttyfrozen, align 4
  %tobool102 = icmp ne i32 %70, 0
  br i1 %tobool102, label %if.end118, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %land.lhs.true101
  %71 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stty_in_env104 = getelementptr inbounds %struct.job, %struct.job* %71, i32 0, i32 7
  %72 = load i32, i32* %stty_in_env104, align 4
  %tobool105 = icmp ne i32 %72, 0
  br i1 %tobool105, label %if.end118, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %73 = load i32, i32* @zleactive, align 4
  %tobool107 = icmp ne i32 %73, 0
  br i1 %tobool107, label %if.end118, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %land.lhs.true106
  %74 = load i32, i32* %job, align 4
  %75 = load i32, i32* @thisjob, align 4
  %cmp109 = icmp eq i32 %74, %75
  br i1 %cmp109, label %land.lhs.true111, label %if.end118

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %76 = load i32, i32* %somestopped, align 4
  %tobool112 = icmp ne i32 %76, 0
  br i1 %tobool112, label %if.end118, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true111
  %77 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat114 = getelementptr inbounds %struct.job, %struct.job* %77, i32 0, i32 2
  %78 = load i32, i32* %stat114, align 4
  %and115 = and i32 %78, 2048
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %land.lhs.true113
  call void @gettyinfo(%struct.ttyinfo* @shttyinfo)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %land.lhs.true113, %land.lhs.true111, %land.lhs.true108, %land.lhs.true106, %land.lhs.true103, %land.lhs.true101, %land.lhs.true98, %if.end96
  %79 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool119 = icmp ne i8 %79, 0
  br i1 %tobool119, label %if.then120, label %if.else176

if.then120:                                       ; preds = %if.end118
  %call121 = call i32 @gettygrp()
  store i32 %call121, i32* %pgrp, align 4
  %80 = load i32, i32* @mypgrp, align 4
  %81 = load i32, i32* %pgrp, align 4
  %cmp122 = icmp ne i32 %80, %81
  br i1 %cmp122, label %land.lhs.true124, label %if.end175

land.lhs.true124:                                 ; preds = %if.then120
  %82 = load i32, i32* %inforeground, align 4
  %tobool125 = icmp ne i32 %82, 0
  br i1 %tobool125, label %land.lhs.true126, label %if.end175

land.lhs.true126:                                 ; preds = %land.lhs.true124
  %83 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader127 = getelementptr inbounds %struct.job, %struct.job* %83, i32 0, i32 0
  %84 = load i32, i32* %gleader127, align 4
  %85 = load i32, i32* %pgrp, align 4
  %cmp128 = icmp eq i32 %84, %85
  br i1 %cmp128, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true126
  %86 = load i32, i32* %pgrp, align 4
  %cmp130 = icmp sgt i32 %86, 1
  br i1 %cmp130, label %land.lhs.true132, label %if.end175

land.lhs.true132:                                 ; preds = %lor.lhs.false
  %87 = load i32, i32* %pgrp, align 4
  %sub133 = sub nsw i32 0, %87
  %call134 = call i32 @kill(i32 %sub133, i32 0)
  %cmp135 = icmp eq i32 %call134, -1
  br i1 %cmp135, label %if.then137, label %if.end175

if.then137:                                       ; preds = %land.lhs.true132, %land.lhs.true126
  %88 = load i32, i32* @list_pipe, align 4
  %tobool138 = icmp ne i32 %88, 0
  br i1 %tobool138, label %if.then139, label %if.else173

if.then139:                                       ; preds = %if.then137
  %89 = load i32, i32* %somestopped, align 4
  %tobool140 = icmp ne i32 %89, 0
  br i1 %tobool140, label %if.then149, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.then139
  %90 = load i32, i32* %pgrp, align 4
  %cmp142 = icmp sgt i32 %90, 1
  br i1 %cmp142, label %land.lhs.true144, label %if.else150

land.lhs.true144:                                 ; preds = %lor.lhs.false141
  %91 = load i32, i32* %pgrp, align 4
  %sub145 = sub nsw i32 0, %91
  %call146 = call i32 @kill(i32 %sub145, i32 0)
  %cmp147 = icmp eq i32 %call146, -1
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %land.lhs.true144, %if.then139
  %92 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %92)
  call void @adjustwinsize(i32 0)
  br label %if.end153

if.else150:                                       ; preds = %land.lhs.true144, %lor.lhs.false141
  %93 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat151 = getelementptr inbounds %struct.job, %struct.job* %93, i32 0, i32 2
  %94 = load i32, i32* %stat151, align 4
  %or152 = or i32 %94, 4096
  store i32 %or152, i32* %stat151, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  %95 = load i32, i32* %val, align 4
  %and154 = and i32 %95, 128
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %land.lhs.true156, label %if.end172

land.lhs.true156:                                 ; preds = %if.end153
  %96 = load i32, i32* %inforeground, align 4
  %cmp157 = icmp eq i32 %96, 1
  br i1 %cmp157, label %land.lhs.true159, label %if.end172

land.lhs.true159:                                 ; preds = %land.lhs.true156
  %97 = load i32, i32* %val, align 4
  %and160 = and i32 %97, -129
  %cmp161 = icmp eq i32 %and160, 2
  br i1 %cmp161, label %if.then167, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %land.lhs.true159
  %98 = load i32, i32* %val, align 4
  %and164 = and i32 %98, -129
  %cmp165 = icmp eq i32 %and164, 3
  br i1 %cmp165, label %if.then167, label %if.end172

if.then167:                                       ; preds = %lor.lhs.false163, %land.lhs.true159
  %99 = load i32, i32* @errbrk_saved, align 4
  %tobool168 = icmp ne i32 %99, 0
  br i1 %tobool168, label %if.end170, label %if.then169

if.then169:                                       ; preds = %if.then167
  store i32 1, i32* @errbrk_saved, align 4
  %100 = load i32, i32* @breaks, align 4
  store i32 %100, i32* @prev_breaks, align 4
  %101 = load i32, i32* @errflag, align 4
  store i32 %101, i32* @prev_errflag, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then167
  %102 = load i32, i32* @loops, align 4
  store i32 %102, i32* @breaks, align 4
  %103 = load i32, i32* @errflag, align 4
  %or171 = or i32 %103, 2
  store i32 %or171, i32* @errflag, align 4
  call void @inerrflush()
  br label %if.end172

if.end172:                                        ; preds = %if.end170, %lor.lhs.false163, %land.lhs.true156, %if.end153
  br label %if.end174

if.else173:                                       ; preds = %if.then137
  %104 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %104)
  call void @adjustwinsize(i32 0)
  br label %if.end174

if.end174:                                        ; preds = %if.else173, %if.end172
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %land.lhs.true132, %lor.lhs.false, %land.lhs.true124, %if.then120
  br label %if.end198

if.else176:                                       ; preds = %if.end118
  %105 = load i32, i32* @list_pipe, align 4
  %tobool177 = icmp ne i32 %105, 0
  br i1 %tobool177, label %land.lhs.true178, label %if.end197

land.lhs.true178:                                 ; preds = %if.else176
  %106 = load i32, i32* %val, align 4
  %and179 = and i32 %106, 128
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %land.lhs.true181, label %if.end197

land.lhs.true181:                                 ; preds = %land.lhs.true178
  %107 = load i32, i32* %inforeground, align 4
  %cmp182 = icmp eq i32 %107, 1
  br i1 %cmp182, label %land.lhs.true184, label %if.end197

land.lhs.true184:                                 ; preds = %land.lhs.true181
  %108 = load i32, i32* %val, align 4
  %and185 = and i32 %108, -129
  %cmp186 = icmp eq i32 %and185, 2
  br i1 %cmp186, label %if.then192, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %land.lhs.true184
  %109 = load i32, i32* %val, align 4
  %and189 = and i32 %109, -129
  %cmp190 = icmp eq i32 %and189, 3
  br i1 %cmp190, label %if.then192, label %if.end197

if.then192:                                       ; preds = %lor.lhs.false188, %land.lhs.true184
  %110 = load i32, i32* @errbrk_saved, align 4
  %tobool193 = icmp ne i32 %110, 0
  br i1 %tobool193, label %if.end195, label %if.then194

if.then194:                                       ; preds = %if.then192
  store i32 1, i32* @errbrk_saved, align 4
  %111 = load i32, i32* @breaks, align 4
  store i32 %111, i32* @prev_breaks, align 4
  %112 = load i32, i32* @errflag, align 4
  store i32 %112, i32* @prev_errflag, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.then192
  %113 = load i32, i32* @loops, align 4
  store i32 %113, i32* @breaks, align 4
  %114 = load i32, i32* @errflag, align 4
  %or196 = or i32 %114, 2
  store i32 %or196, i32* @errflag, align 4
  call void @inerrflush()
  br label %if.end197

if.end197:                                        ; preds = %if.end195, %lor.lhs.false188, %land.lhs.true181, %land.lhs.true178, %if.else176
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.end175
  %115 = load i32, i32* %somestopped, align 4
  %tobool199 = icmp ne i32 %115, 0
  br i1 %tobool199, label %land.lhs.true200, label %if.end205

land.lhs.true200:                                 ; preds = %if.end198
  %116 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat201 = getelementptr inbounds %struct.job, %struct.job* %116, i32 0, i32 2
  %117 = load i32, i32* %stat201, align 4
  %and202 = and i32 %117, 128
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %land.lhs.true200
  br label %if.end292

if.end205:                                        ; preds = %land.lhs.true200, %if.end198
  %118 = load i32, i32* %somestopped, align 4
  %tobool206 = icmp ne i32 %118, 0
  %cond207 = select i1 %tobool206, i32 3, i32 9
  %119 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat208 = getelementptr inbounds %struct.job, %struct.job* %119, i32 0, i32 2
  %120 = load i32, i32* %stat208, align 4
  %or209 = or i32 %120, %cond207
  store i32 %or209, i32* %stat208, align 4
  %121 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat210 = getelementptr inbounds %struct.job, %struct.job* %121, i32 0, i32 2
  %122 = load i32, i32* %stat210, align 4
  %and211 = and i32 %122, 10
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.end205
  %123 = load %struct.job*, %struct.job** %jn.addr, align 4
  %124 = load i32, i32* %inforeground, align 4
  call void @storepipestats(%struct.job* %123, i32 %124, i32 0)
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %if.end205
  %125 = load i32, i32* %inforeground, align 4
  %tobool215 = icmp ne i32 %125, 0
  br i1 %tobool215, label %if.end231, label %land.lhs.true216

land.lhs.true216:                                 ; preds = %if.end214
  %126 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat217 = getelementptr inbounds %struct.job, %struct.job* %126, i32 0, i32 2
  %127 = load i32, i32* %stat217, align 4
  %and218 = and i32 %127, 264
  %cmp219 = icmp eq i32 %and218, 264
  br i1 %cmp219, label %if.then221, label %if.end231

if.then221:                                       ; preds = %land.lhs.true216
  %128 = load %struct.job*, %struct.job** %jn.addr, align 4
  %129 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast222 = ptrtoint %struct.job* %128 to i32
  %sub.ptr.rhs.cast223 = ptrtoint %struct.job* %129 to i32
  %sub.ptr.sub224 = sub i32 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %sub.ptr.div225 = sdiv exact i32 %sub.ptr.sub224, 36
  %call226 = call i32 @super_job(i32 %sub.ptr.div225)
  store i32 %call226, i32* %su, align 4
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.then221
  %130 = load i32, i32* %su, align 4
  %call229 = call i32 @handle_sub(i32 %130, i32 0)
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.then221
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %land.lhs.true216, %if.end214
  %131 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat232 = getelementptr inbounds %struct.job, %struct.job* %131, i32 0, i32 2
  %132 = load i32, i32* %stat232, align 4
  %and233 = and i32 %132, 10
  %cmp234 = icmp eq i32 %and233, 2
  br i1 %cmp234, label %if.then236, label %if.end237

if.then236:                                       ; preds = %if.end231
  %133 = load i32, i32* @curjob, align 4
  store i32 %133, i32* @prevjob, align 4
  %134 = load i32, i32* %job, align 4
  store i32 %134, i32* @curjob, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %if.end231
  %135 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 122), align 1
  %conv238 = sext i8 %135 to i32
  %tobool239 = icmp ne i32 %conv238, 0
  br i1 %tobool239, label %land.lhs.true243, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %if.end237
  %136 = load i32, i32* %job, align 4
  %137 = load i32, i32* @thisjob, align 4
  %cmp241 = icmp eq i32 %136, %137
  br i1 %cmp241, label %land.lhs.true243, label %if.end257

land.lhs.true243:                                 ; preds = %lor.lhs.false240, %if.end237
  %138 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat244 = getelementptr inbounds %struct.job, %struct.job* %138, i32 0, i32 2
  %139 = load i32, i32* %stat244, align 4
  %and245 = and i32 %139, 16
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then247, label %if.end257

if.then247:                                       ; preds = %land.lhs.true243
  %140 = load %struct.job*, %struct.job** %jn.addr, align 4
  %141 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool248 = icmp ne i8 %141, 0
  %lnot = xor i1 %tobool248, true
  %lnot249 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot249 to i32
  %call250 = call i32 @printjob(%struct.job* %140, i32 %lnot.ext, i32 0)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %land.lhs.true252, label %if.end256

land.lhs.true252:                                 ; preds = %if.then247
  %142 = load i32, i32* @zleactive, align 4
  %tobool253 = icmp ne i32 %142, 0
  br i1 %tobool253, label %if.then254, label %if.end256

if.then254:                                       ; preds = %land.lhs.true252
  %call255 = call i8* (i32, ...) @zleentry(i32 5)
  br label %if.end256

if.end256:                                        ; preds = %if.then254, %land.lhs.true252, %if.then247
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %land.lhs.true243, %lor.lhs.false240
  %143 = load i32, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 17), align 4
  %tobool258 = icmp ne i32 %143, 0
  br i1 %tobool258, label %land.lhs.true259, label %if.end263

land.lhs.true259:                                 ; preds = %if.end257
  %144 = load i32, i32* %job, align 4
  %145 = load i32, i32* @thisjob, align 4
  %cmp260 = icmp ne i32 %144, %145
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %land.lhs.true259
  call void @dotrap(i32 17)
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %land.lhs.true259, %if.end257
  %146 = load i32, i32* %inforeground, align 4
  %cmp264 = icmp eq i32 %146, 2
  br i1 %cmp264, label %land.lhs.true266, label %if.end292

land.lhs.true266:                                 ; preds = %if.end263
  %147 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv267 = sext i8 %147 to i32
  %tobool268 = icmp ne i32 %conv267, 0
  br i1 %tobool268, label %land.lhs.true269, label %if.end292

land.lhs.true269:                                 ; preds = %land.lhs.true266
  %148 = load i32, i32* %status, align 4
  %and270 = and i32 %148, 65535
  %sub271 = sub i32 %and270, 1
  %cmp272 = icmp ult i32 %sub271, 255
  br i1 %cmp272, label %if.then274, label %if.end292

if.then274:                                       ; preds = %land.lhs.true269
  %149 = load i32, i32* %status, align 4
  %and275 = and i32 %149, 127
  store i32 %and275, i32* %sig, align 4
  %150 = load i32, i32* %sig, align 4
  %cmp276 = icmp eq i32 %150, 2
  br i1 %cmp276, label %if.then281, label %lor.lhs.false278

lor.lhs.false278:                                 ; preds = %if.then274
  %151 = load i32, i32* %sig, align 4
  %cmp279 = icmp eq i32 %151, 3
  br i1 %cmp279, label %if.then281, label %if.end291

if.then281:                                       ; preds = %lor.lhs.false278, %if.then274
  %152 = load i32, i32* %sig, align 4
  %arrayidx282 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %152
  %153 = load i32, i32* %arrayidx282, align 4
  %tobool283 = icmp ne i32 %153, 0
  br i1 %tobool283, label %if.then284, label %if.else288

if.then284:                                       ; preds = %if.then281
  %154 = load i32, i32* %sig, align 4
  call void @dotrap(i32 %154)
  %155 = load i32, i32* @errflag, align 4
  %tobool285 = icmp ne i32 %155, 0
  br i1 %tobool285, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.then284
  %156 = load i32, i32* @loops, align 4
  store i32 %156, i32* @breaks, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.then284
  br label %if.end290

if.else288:                                       ; preds = %if.then281
  %157 = load i32, i32* @loops, align 4
  store i32 %157, i32* @breaks, align 4
  %158 = load i32, i32* @errflag, align 4
  %or289 = or i32 %158, 2
  store i32 %or289, i32* @errflag, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.else288, %if.end287
  %159 = load i32, i32* %sig, align 4
  call void @check_cursh_sig(i32 %159)
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %lor.lhs.false278
  br label %if.end292

if.end292:                                        ; preds = %if.then5, %if.then17, %if.end85, %if.then204, %if.end291, %land.lhs.true269, %land.lhs.true266, %if.end263
  ret void
}

declare i8* @zalloc(i32) #1

declare void @gettyinfo(%struct.ttyinfo*) #1

; Function Attrs: noinline nounwind
define internal i32 @super_job(i32 %sub) #0 {
entry:
  %retval = alloca i32, align 4
  %sub.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %sub, i32* %sub.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %other = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 1
  %7 = load i32, i32* %other, align 4
  %8 = load i32, i32* %sub.addr, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx4, i32 0, i32 0
  %11 = load i32, i32* %gleader, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare i32 @killpg(i32, i32) #1

declare i32 @gettygrp() #1

declare void @attachtty(i32) #1

declare void @adjustwinsize(i32) #1

declare void @inerrflush() #1

; Function Attrs: noinline nounwind
define internal i32 @handle_sub(i32 %job, i32 %fg) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca i32, align 4
  %fg.addr = alloca i32, align 4
  %jn = alloca %struct.job*, align 4
  %sj = alloca %struct.job*, align 4
  %p = alloca %struct.process*, align 4
  %cp = alloca i32, align 4
  %p47 = alloca %struct.process*, align 4
  %p89 = alloca %struct.process*, align 4
  store i32 %job, i32* %job.addr, align 4
  store i32 %fg, i32* %fg.addr, align 4
  %0 = load %struct.job*, %struct.job** @jobtab, align 4
  %1 = load i32, i32* %job.addr, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %0, i32 %1
  store %struct.job* %add.ptr, %struct.job** %jn, align 4
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load %struct.job*, %struct.job** %jn, align 4
  %other = getelementptr inbounds %struct.job, %struct.job* %3, i32 0, i32 1
  %4 = load i32, i32* %other, align 4
  %add.ptr1 = getelementptr inbounds %struct.job, %struct.job* %2, i32 %4
  store %struct.job* %add.ptr1, %struct.job** %sj, align 4
  %5 = load %struct.job*, %struct.job** %sj, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %5, i32 0, i32 2
  %6 = load i32, i32* %stat, align 4
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.job*, %struct.job** %sj, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %7, i32 0, i32 4
  %8 = load %struct.process*, %struct.process** %procs, align 4
  %tobool2 = icmp ne %struct.process* %8, null
  br i1 %tobool2, label %if.else84, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load %struct.job*, %struct.job** %sj, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %9, i32 0, i32 5
  %10 = load %struct.process*, %struct.process** %auxprocs, align 4
  %tobool3 = icmp ne %struct.process* %10, null
  br i1 %tobool3, label %if.else84, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.job*, %struct.job** %sj, align 4
  %procs4 = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 4
  %12 = load %struct.process*, %struct.process** %procs4, align 4
  store %struct.process* %12, %struct.process** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load %struct.process*, %struct.process** %p, align 4
  %tobool5 = icmp ne %struct.process* %13, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.process*, %struct.process** %p, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %14, i32 0, i32 3
  %15 = load i32, i32* %status, align 4
  %and6 = and i32 %15, 65535
  %sub = sub i32 %and6, 1
  %cmp = icmp ult i32 %sub, 255
  br i1 %cmp, label %if.then7, label %if.end26

if.then7:                                         ; preds = %for.body
  %16 = load %struct.job*, %struct.job** %jn, align 4
  %gleader = getelementptr inbounds %struct.job, %struct.job* %16, i32 0, i32 0
  %17 = load i32, i32* %gleader, align 4
  %18 = load i32, i32* @mypgrp, align 4
  %cmp8 = icmp ne i32 %17, %18
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %if.then7
  %19 = load %struct.job*, %struct.job** %jn, align 4
  %procs10 = getelementptr inbounds %struct.job, %struct.job* %19, i32 0, i32 4
  %20 = load %struct.process*, %struct.process** %procs10, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 0
  %21 = load %struct.process*, %struct.process** %next, align 4
  %tobool11 = icmp ne %struct.process* %21, null
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  %22 = load %struct.job*, %struct.job** %jn, align 4
  %gleader13 = getelementptr inbounds %struct.job, %struct.job* %22, i32 0, i32 0
  %23 = load i32, i32* %gleader13, align 4
  %24 = load %struct.process*, %struct.process** %p, align 4
  %status14 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 3
  %25 = load i32, i32* %status14, align 4
  %and15 = and i32 %25, 127
  %call = call i32 @killpg(i32 %23, i32 %and15)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true9, %if.then7
  %26 = load %struct.job*, %struct.job** %jn, align 4
  %procs16 = getelementptr inbounds %struct.job, %struct.job* %26, i32 0, i32 4
  %27 = load %struct.process*, %struct.process** %procs16, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %27, i32 0, i32 1
  %28 = load i32, i32* %pid, align 4
  %29 = load %struct.process*, %struct.process** %p, align 4
  %status17 = getelementptr inbounds %struct.process, %struct.process* %29, i32 0, i32 3
  %30 = load i32, i32* %status17, align 4
  %and18 = and i32 %30, 127
  %call19 = call i32 @kill(i32 %28, i32 %and18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %31 = load %struct.job*, %struct.job** %sj, align 4
  %other20 = getelementptr inbounds %struct.job, %struct.job* %31, i32 0, i32 1
  %32 = load i32, i32* %other20, align 4
  %call21 = call i32 @kill(i32 %32, i32 18)
  %33 = load %struct.job*, %struct.job** %sj, align 4
  %other22 = getelementptr inbounds %struct.job, %struct.job* %33, i32 0, i32 1
  %34 = load i32, i32* %other22, align 4
  %35 = load %struct.process*, %struct.process** %p, align 4
  %status23 = getelementptr inbounds %struct.process, %struct.process* %35, i32 0, i32 3
  %36 = load i32, i32* %status23, align 4
  %and24 = and i32 %36, 127
  %call25 = call i32 @kill(i32 %34, i32 %and24)
  br label %for.end

if.end26:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %37 = load %struct.process*, %struct.process** %p, align 4
  %next27 = getelementptr inbounds %struct.process, %struct.process* %37, i32 0, i32 0
  %38 = load %struct.process*, %struct.process** %next27, align 4
  store %struct.process* %38, %struct.process** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %39 = load %struct.process*, %struct.process** %p, align 4
  %tobool28 = icmp ne %struct.process* %39, null
  br i1 %tobool28, label %if.end83, label %if.then29

if.then29:                                        ; preds = %for.end
  %40 = load %struct.job*, %struct.job** %jn, align 4
  %stat30 = getelementptr inbounds %struct.job, %struct.job* %40, i32 0, i32 2
  %41 = load i32, i32* %stat30, align 4
  %and31 = and i32 %41, -129
  store i32 %and31, i32* %stat30, align 4
  %42 = load %struct.job*, %struct.job** %jn, align 4
  %stat32 = getelementptr inbounds %struct.job, %struct.job* %42, i32 0, i32 2
  %43 = load i32, i32* %stat32, align 4
  %or = or i32 %43, 512
  store i32 %or, i32* %stat32, align 4
  %44 = load %struct.job*, %struct.job** %jn, align 4
  %procs33 = getelementptr inbounds %struct.job, %struct.job* %44, i32 0, i32 4
  %45 = load %struct.process*, %struct.process** %procs33, align 4
  %status34 = getelementptr inbounds %struct.process, %struct.process* %45, i32 0, i32 3
  %46 = load i32, i32* %status34, align 4
  %and35 = and i32 %46, 127
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %land.rhs

lor.lhs.false37:                                  ; preds = %if.then29
  %47 = load %struct.job*, %struct.job** %jn, align 4
  %procs38 = getelementptr inbounds %struct.job, %struct.job* %47, i32 0, i32 4
  %48 = load %struct.process*, %struct.process** %procs38, align 4
  %status39 = getelementptr inbounds %struct.process, %struct.process* %48, i32 0, i32 3
  %49 = load i32, i32* %status39, align 4
  %and40 = and i32 %49, 65535
  %sub41 = sub i32 %and40, 1
  %cmp42 = icmp ult i32 %sub41, 255
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false37, %if.then29
  %50 = load %struct.job*, %struct.job** %jn, align 4
  %gleader43 = getelementptr inbounds %struct.job, %struct.job* %50, i32 0, i32 0
  %51 = load i32, i32* %gleader43, align 4
  %call44 = call i32 @killpg(i32 %51, i32 0)
  %cmp45 = icmp eq i32 %call44, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false37
  %52 = phi i1 [ false, %lor.lhs.false37 ], [ %cmp45, %land.rhs ]
  %land.ext = zext i1 %52 to i32
  store i32 %land.ext, i32* %cp, align 4
  br i1 %52, label %if.then46, label %if.end58

if.then46:                                        ; preds = %land.end
  %53 = load %struct.job*, %struct.job** %jn, align 4
  %procs48 = getelementptr inbounds %struct.job, %struct.job* %53, i32 0, i32 4
  %54 = load %struct.process*, %struct.process** %procs48, align 4
  store %struct.process* %54, %struct.process** %p47, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc53, %if.then46
  %55 = load %struct.process*, %struct.process** %p47, align 4
  %next50 = getelementptr inbounds %struct.process, %struct.process* %55, i32 0, i32 0
  %56 = load %struct.process*, %struct.process** %next50, align 4
  %tobool51 = icmp ne %struct.process* %56, null
  br i1 %tobool51, label %for.body52, label %for.end55

for.body52:                                       ; preds = %for.cond49
  br label %for.inc53

for.inc53:                                        ; preds = %for.body52
  %57 = load %struct.process*, %struct.process** %p47, align 4
  %next54 = getelementptr inbounds %struct.process, %struct.process* %57, i32 0, i32 0
  %58 = load %struct.process*, %struct.process** %next54, align 4
  store %struct.process* %58, %struct.process** %p47, align 4
  br label %for.cond49

for.end55:                                        ; preds = %for.cond49
  %59 = load %struct.process*, %struct.process** %p47, align 4
  %pid56 = getelementptr inbounds %struct.process, %struct.process* %59, i32 0, i32 1
  %60 = load i32, i32* %pid56, align 4
  %61 = load %struct.job*, %struct.job** %jn, align 4
  %gleader57 = getelementptr inbounds %struct.job, %struct.job* %61, i32 0, i32 0
  store i32 %60, i32* %gleader57, align 4
  br label %if.end58

if.end58:                                         ; preds = %for.end55, %land.end
  %62 = load i32, i32* %fg.addr, align 4
  %tobool59 = icmp ne i32 %62, 0
  br i1 %tobool59, label %land.lhs.true62, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end58
  %63 = load i32, i32* @thisjob, align 4
  %64 = load i32, i32* %job.addr, align 4
  %cmp61 = icmp eq i32 %63, %64
  br i1 %cmp61, label %land.lhs.true62, label %if.end75

land.lhs.true62:                                  ; preds = %lor.lhs.false60, %if.end58
  %65 = load %struct.job*, %struct.job** %jn, align 4
  %procs63 = getelementptr inbounds %struct.job, %struct.job* %65, i32 0, i32 4
  %66 = load %struct.process*, %struct.process** %procs63, align 4
  %next64 = getelementptr inbounds %struct.process, %struct.process* %66, i32 0, i32 0
  %67 = load %struct.process*, %struct.process** %next64, align 4
  %tobool65 = icmp ne %struct.process* %67, null
  br i1 %tobool65, label %lor.lhs.false66, label %if.then73

lor.lhs.false66:                                  ; preds = %land.lhs.true62
  %68 = load i32, i32* %cp, align 4
  %tobool67 = icmp ne i32 %68, 0
  br i1 %tobool67, label %if.then73, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %69 = load %struct.job*, %struct.job** %jn, align 4
  %procs69 = getelementptr inbounds %struct.job, %struct.job* %69, i32 0, i32 4
  %70 = load %struct.process*, %struct.process** %procs69, align 4
  %pid70 = getelementptr inbounds %struct.process, %struct.process* %70, i32 0, i32 1
  %71 = load i32, i32* %pid70, align 4
  %72 = load %struct.job*, %struct.job** %jn, align 4
  %gleader71 = getelementptr inbounds %struct.job, %struct.job* %72, i32 0, i32 0
  %73 = load i32, i32* %gleader71, align 4
  %cmp72 = icmp ne i32 %71, %73
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %land.lhs.true62
  %74 = load %struct.job*, %struct.job** %jn, align 4
  %gleader74 = getelementptr inbounds %struct.job, %struct.job* %74, i32 0, i32 0
  %75 = load i32, i32* %gleader74, align 4
  call void @attachtty(i32 %75)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %lor.lhs.false68, %lor.lhs.false60
  %76 = load %struct.job*, %struct.job** %sj, align 4
  %other76 = getelementptr inbounds %struct.job, %struct.job* %76, i32 0, i32 1
  %77 = load i32, i32* %other76, align 4
  %call77 = call i32 @kill(i32 %77, i32 18)
  %78 = load %struct.job*, %struct.job** %jn, align 4
  %stat78 = getelementptr inbounds %struct.job, %struct.job* %78, i32 0, i32 2
  %79 = load i32, i32* %stat78, align 4
  %and79 = and i32 %79, 65536
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end75
  %80 = load %struct.job*, %struct.job** %jn, align 4
  call void @deletejob(%struct.job* %80, i32 1)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end75
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %for.end
  %81 = load %struct.job*, %struct.job** %jn, align 4
  %82 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %81 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %82 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  store i32 %sub.ptr.div, i32* @curjob, align 4
  br label %if.end123

if.else84:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %83 = load %struct.job*, %struct.job** %sj, align 4
  %stat85 = getelementptr inbounds %struct.job, %struct.job* %83, i32 0, i32 2
  %84 = load i32, i32* %stat85, align 4
  %and86 = and i32 %84, 2
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end122

if.then88:                                        ; preds = %if.else84
  %85 = load %struct.job*, %struct.job** %jn, align 4
  %stat90 = getelementptr inbounds %struct.job, %struct.job* %85, i32 0, i32 2
  %86 = load i32, i32* %stat90, align 4
  %or91 = or i32 %86, 2
  store i32 %or91, i32* %stat90, align 4
  %87 = load %struct.job*, %struct.job** %jn, align 4
  %procs92 = getelementptr inbounds %struct.job, %struct.job* %87, i32 0, i32 4
  %88 = load %struct.process*, %struct.process** %procs92, align 4
  store %struct.process* %88, %struct.process** %p89, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc112, %if.then88
  %89 = load %struct.process*, %struct.process** %p89, align 4
  %tobool94 = icmp ne %struct.process* %89, null
  br i1 %tobool94, label %for.body95, label %for.end114

for.body95:                                       ; preds = %for.cond93
  %90 = load %struct.process*, %struct.process** %p89, align 4
  %status96 = getelementptr inbounds %struct.process, %struct.process* %90, i32 0, i32 3
  %91 = load i32, i32* %status96, align 4
  %cmp97 = icmp eq i32 %91, -1
  br i1 %cmp97, label %if.then107, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %for.body95
  %92 = load %struct.process*, %struct.process** %p89, align 4
  %status99 = getelementptr inbounds %struct.process, %struct.process* %92, i32 0, i32 3
  %93 = load i32, i32* %status99, align 4
  %and100 = and i32 %93, 127
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.end111

land.lhs.true102:                                 ; preds = %lor.lhs.false98
  %94 = load %struct.process*, %struct.process** %p89, align 4
  %status103 = getelementptr inbounds %struct.process, %struct.process* %94, i32 0, i32 3
  %95 = load i32, i32* %status103, align 4
  %and104 = and i32 %95, 65535
  %sub105 = sub i32 %and104, 1
  %cmp106 = icmp ult i32 %sub105, 255
  br i1 %cmp106, label %if.end111, label %if.then107

if.then107:                                       ; preds = %land.lhs.true102, %for.body95
  %96 = load %struct.job*, %struct.job** %sj, align 4
  %procs108 = getelementptr inbounds %struct.job, %struct.job* %96, i32 0, i32 4
  %97 = load %struct.process*, %struct.process** %procs108, align 4
  %status109 = getelementptr inbounds %struct.process, %struct.process* %97, i32 0, i32 3
  %98 = load i32, i32* %status109, align 4
  %99 = load %struct.process*, %struct.process** %p89, align 4
  %status110 = getelementptr inbounds %struct.process, %struct.process* %99, i32 0, i32 3
  store i32 %98, i32* %status110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %land.lhs.true102, %lor.lhs.false98
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %100 = load %struct.process*, %struct.process** %p89, align 4
  %next113 = getelementptr inbounds %struct.process, %struct.process* %100, i32 0, i32 0
  %101 = load %struct.process*, %struct.process** %next113, align 4
  store %struct.process* %101, %struct.process** %p89, align 4
  br label %for.cond93

for.end114:                                       ; preds = %for.cond93
  %102 = load %struct.job*, %struct.job** %jn, align 4
  %103 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast115 = ptrtoint %struct.job* %102 to i32
  %sub.ptr.rhs.cast116 = ptrtoint %struct.job* %103 to i32
  %sub.ptr.sub117 = sub i32 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %sub.ptr.div118 = sdiv exact i32 %sub.ptr.sub117, 36
  store i32 %sub.ptr.div118, i32* @curjob, align 4
  %104 = load %struct.job*, %struct.job** %jn, align 4
  %105 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool119 = icmp ne i8 %105, 0
  %lnot = xor i1 %tobool119, true
  %lnot120 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot120 to i32
  %call121 = call i32 @printjob(%struct.job* %104, i32 %lnot.ext, i32 1)
  store i32 1, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.else84
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end83
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %for.end114
  %106 = load i32, i32* %retval, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind
define i32 @printjob(%struct.job* %jn, i32 %lng, i32 %synch) #0 {
entry:
  %retval = alloca i32, align 4
  %jn.addr = alloca %struct.job*, align 4
  %lng.addr = alloca i32, align 4
  %synch.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %job = alloca i32, align 4
  %len = alloca i32, align 4
  %sig = alloca i32, align 4
  %sflag = alloca i32, align 4
  %llen = alloca i32, align 4
  %conted = alloca i32, align 4
  %lineleng = alloca i32, align 4
  %skip = alloca i32, align 4
  %doputnl = alloca i32, align 4
  %doneprint = alloca i32, align 4
  %skip_print = alloca i32, align 4
  %fout = alloca %struct._IO_FILE*, align 4
  %len2 = alloca i32, align 4
  %fline = alloca i32, align 4
  %plainfmt = alloca i32, align 4
  %thisfmt = alloca i32, align 4
  %qn = alloca %struct.process*, align 4
  %x = alloca i32, align 4
  %txt = alloca i8*, align 4
  %txtlen = alloca i32, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 %lng, i32* %lng.addr, align 4
  store i32 %synch, i32* %synch.addr, align 4
  store i32 9, i32* %len, align 4
  store i32 0, i32* %sflag, align 4
  store i32 0, i32* %conted, align 4
  %0 = load i32, i32* @zterm_columns, align 4
  store i32 %0, i32* %lineleng, align 4
  store i32 0, i32* %skip, align 4
  store i32 0, i32* %doputnl, align 4
  store i32 0, i32* %doneprint, align 4
  store i32 0, i32* %skip_print, align 4
  %1 = load i32, i32* %synch.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %3, %cond.true ], [ %4, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %fout, align 4
  %5 = load i32, i32* %synch.addr, align 4
  %cmp1 = icmp sgt i32 %5, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %cmp2 = icmp ne %struct.job* %6, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.job*, %struct.job** %jn.addr, align 4
  %8 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %7 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  store i32 %sub.ptr.div, i32* %job, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %9 = load %struct.job*, %struct.job** %jn.addr, align 4
  %10 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast3 = ptrtoint %struct.job* %9 to i32
  %sub.ptr.rhs.cast4 = ptrtoint %struct.job* %10 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub.ptr.div6 = sdiv exact i32 %sub.ptr.sub5, 36
  store i32 %sub.ptr.div6, i32* %job, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 2
  %12 = load i32, i32* %stat, align 4
  %and = and i32 %12, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 1, i32* %skip_print, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %13 = load i32, i32* %lng.addr, align 4
  %cmp10 = icmp slt i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  store i32 1, i32* %conted, align 4
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool12 = icmp ne i8 %14, 0
  %lnot = xor i1 %tobool12, true
  %lnot13 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot13 to i32
  store i32 %lnot.ext, i32* %lng.addr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %15 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %15, i32 0, i32 4
  %16 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %16, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %17 = load %struct.process*, %struct.process** %pn, align 4
  %tobool15 = icmp ne %struct.process* %17, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat16 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 2
  %19 = load i32, i32* %stat16, align 4
  %and17 = and i32 %19, 128
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.end26

land.lhs.true19:                                  ; preds = %for.body
  %20 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs20 = getelementptr inbounds %struct.job, %struct.job* %20, i32 0, i32 4
  %21 = load %struct.process*, %struct.process** %procs20, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %21, i32 0, i32 3
  %22 = load i32, i32* %status, align 4
  %cmp21 = icmp eq i32 %22, -1
  br i1 %cmp21, label %land.lhs.true22, label %if.end26

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %23 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 0
  %24 = load %struct.process*, %struct.process** %next, align 4
  %tobool23 = icmp ne %struct.process* %24, null
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %land.lhs.true22
  %25 = load %struct.process*, %struct.process** %pn, align 4
  %status25 = getelementptr inbounds %struct.process, %struct.process* %25, i32 0, i32 3
  store i32 -1, i32* %status25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true22, %land.lhs.true19, %for.body
  %26 = load %struct.process*, %struct.process** %pn, align 4
  %status27 = getelementptr inbounds %struct.process, %struct.process* %26, i32 0, i32 3
  %27 = load i32, i32* %status27, align 4
  %cmp28 = icmp ne i32 %27, -1
  br i1 %cmp28, label %if.then29, label %if.end118

if.then29:                                        ; preds = %if.end26
  %28 = load %struct.process*, %struct.process** %pn, align 4
  %status30 = getelementptr inbounds %struct.process, %struct.process* %28, i32 0, i32 3
  %29 = load i32, i32* %status30, align 4
  %and31 = and i32 %29, 65535
  %sub = sub i32 %and31, 1
  %cmp32 = icmp ult i32 %sub, 255
  br i1 %cmp32, label %if.then33, label %if.else65

if.then33:                                        ; preds = %if.then29
  %30 = load %struct.process*, %struct.process** %pn, align 4
  %status34 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 3
  %31 = load i32, i32* %status34, align 4
  %and35 = and i32 %31, 127
  store i32 %and35, i32* %sig, align 4
  %32 = load i32, i32* %sig, align 4
  %cmp36 = icmp sle i32 %32, 31
  br i1 %cmp36, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %if.then33
  %33 = load i32, i32* %sig, align 4
  %arrayidx = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %33
  %34 = load i8*, i8** %arrayidx, align 4
  br label %cond.end39

cond.false38:                                     ; preds = %if.then33
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i8* [ %34, %cond.true37 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false38 ]
  %call = call i32 @strlen(i8* %cond40)
  store i32 %call, i32* %llen, align 4
  %35 = load %struct.process*, %struct.process** %pn, align 4
  %status41 = getelementptr inbounds %struct.process, %struct.process* %35, i32 0, i32 3
  %36 = load i32, i32* %status41, align 4
  %and42 = and i32 %36, 128
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %cond.end39
  %37 = load i32, i32* %llen, align 4
  %add = add nsw i32 %37, 14
  store i32 %add, i32* %llen, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %cond.end39
  %38 = load i32, i32* %llen, align 4
  %39 = load i32, i32* %len, align 4
  %cmp46 = icmp sgt i32 %38, %39
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  %40 = load i32, i32* %llen, align 4
  store i32 %40, i32* %len, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45
  %41 = load i32, i32* %sig, align 4
  %cmp49 = icmp ne i32 %41, 2
  br i1 %cmp49, label %land.lhs.true50, label %if.end53

land.lhs.true50:                                  ; preds = %if.end48
  %42 = load i32, i32* %sig, align 4
  %cmp51 = icmp ne i32 %42, 13
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true50
  store i32 1, i32* %sflag, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %land.lhs.true50, %if.end48
  %43 = load i32, i32* %job, align 4
  %44 = load i32, i32* @thisjob, align 4
  %cmp54 = icmp eq i32 %43, %44
  br i1 %cmp54, label %land.lhs.true55, label %if.end58

land.lhs.true55:                                  ; preds = %if.end53
  %45 = load i32, i32* %sig, align 4
  %cmp56 = icmp eq i32 %45, 2
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true55
  store i32 1, i32* %doputnl, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true55, %if.end53
  %46 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 139), align 1
  %conv = sext i8 %46 to i32
  %tobool59 = icmp ne i32 %conv, 0
  br i1 %tobool59, label %land.lhs.true60, label %if.end64

land.lhs.true60:                                  ; preds = %if.end58
  %47 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv61 = sext i8 %47 to i32
  %tobool62 = icmp ne i32 %conv61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true60
  store i32 1, i32* %sflag, align 4
  store i32 0, i32* %skip_print, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true60, %if.end58
  br label %if.end117

if.else65:                                        ; preds = %if.then29
  %48 = load %struct.process*, %struct.process** %pn, align 4
  %status66 = getelementptr inbounds %struct.process, %struct.process* %48, i32 0, i32 3
  %49 = load i32, i32* %status66, align 4
  %and67 = and i32 %49, 65535
  %mul = mul nsw i32 %and67, 65537
  %shr = ashr i32 %mul, 8
  %conv68 = trunc i32 %shr to i16
  %conv69 = sext i16 %conv68 to i32
  %cmp70 = icmp sgt i32 %conv69, 32512
  br i1 %cmp70, label %if.then72, label %if.else103

if.then72:                                        ; preds = %if.else65
  %50 = load %struct.process*, %struct.process** %pn, align 4
  %status73 = getelementptr inbounds %struct.process, %struct.process* %50, i32 0, i32 3
  %51 = load i32, i32* %status73, align 4
  %and74 = and i32 %51, 65280
  %shr75 = ashr i32 %and74, 8
  store i32 %shr75, i32* %sig, align 4
  %52 = load i32, i32* %sig, align 4
  %cmp76 = icmp sle i32 %52, 31
  br i1 %cmp76, label %cond.true78, label %cond.false80

cond.true78:                                      ; preds = %if.then72
  %53 = load i32, i32* %sig, align 4
  %arrayidx79 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %53
  %54 = load i8*, i8** %arrayidx79, align 4
  br label %cond.end81

cond.false80:                                     ; preds = %if.then72
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true78
  %cond82 = phi i8* [ %54, %cond.true78 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false80 ]
  %call83 = call i32 @strlen(i8* %cond82)
  %55 = load i32, i32* %len, align 4
  %cmp84 = icmp sgt i32 %call83, %55
  br i1 %cmp84, label %if.then86, label %if.end95

if.then86:                                        ; preds = %cond.end81
  %56 = load i32, i32* %sig, align 4
  %cmp87 = icmp sle i32 %56, 31
  br i1 %cmp87, label %cond.true89, label %cond.false91

cond.true89:                                      ; preds = %if.then86
  %57 = load i32, i32* %sig, align 4
  %arrayidx90 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %57
  %58 = load i8*, i8** %arrayidx90, align 4
  br label %cond.end92

cond.false91:                                     ; preds = %if.then86
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false91, %cond.true89
  %cond93 = phi i8* [ %58, %cond.true89 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false91 ]
  %call94 = call i32 @strlen(i8* %cond93)
  store i32 %call94, i32* %len, align 4
  br label %if.end95

if.end95:                                         ; preds = %cond.end92, %cond.end81
  %59 = load i32, i32* %job, align 4
  %60 = load i32, i32* @thisjob, align 4
  %cmp96 = icmp eq i32 %59, %60
  br i1 %cmp96, label %land.lhs.true98, label %if.end102

land.lhs.true98:                                  ; preds = %if.end95
  %61 = load i32, i32* %sig, align 4
  %cmp99 = icmp eq i32 %61, 20
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %land.lhs.true98
  store i32 1, i32* %doputnl, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %land.lhs.true98, %if.end95
  br label %if.end116

if.else103:                                       ; preds = %if.else65
  %62 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 139), align 1
  %conv104 = sext i8 %62 to i32
  %tobool105 = icmp ne i32 %conv104, 0
  br i1 %tobool105, label %land.lhs.true106, label %if.end115

land.lhs.true106:                                 ; preds = %if.else103
  %63 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv107 = sext i8 %63 to i32
  %tobool108 = icmp ne i32 %conv107, 0
  br i1 %tobool108, label %land.lhs.true109, label %if.end115

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %64 = load %struct.process*, %struct.process** %pn, align 4
  %status110 = getelementptr inbounds %struct.process, %struct.process* %64, i32 0, i32 3
  %65 = load i32, i32* %status110, align 4
  %and111 = and i32 %65, 65280
  %shr112 = ashr i32 %and111, 8
  %tobool113 = icmp ne i32 %shr112, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %land.lhs.true109
  store i32 1, i32* %sflag, align 4
  store i32 0, i32* %skip_print, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %land.lhs.true109, %land.lhs.true106, %if.else103
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end102
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end64
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end26
  br label %for.inc

for.inc:                                          ; preds = %if.end118
  %66 = load %struct.process*, %struct.process** %pn, align 4
  %next119 = getelementptr inbounds %struct.process, %struct.process* %66, i32 0, i32 0
  %67 = load %struct.process*, %struct.process** %next119, align 4
  store %struct.process* %67, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %skip_print, align 4
  %tobool120 = icmp ne i32 %68, 0
  br i1 %tobool120, label %if.then121, label %if.end147

if.then121:                                       ; preds = %for.end
  %69 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat122 = getelementptr inbounds %struct.job, %struct.job* %69, i32 0, i32 2
  %70 = load i32, i32* %stat122, align 4
  %and123 = and i32 %70, 8
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then125, label %if.end146

if.then125:                                       ; preds = %if.then121
  %71 = load i32, i32* %synch.addr, align 4
  %cmp126 = icmp sle i32 %71, 1
  br i1 %cmp126, label %if.then128, label %if.end133

if.then128:                                       ; preds = %if.then125
  %72 = load %struct.job*, %struct.job** %jn.addr, align 4
  %73 = load i32, i32* %job, align 4
  %74 = load i32, i32* @thisjob, align 4
  %cmp129 = icmp eq i32 %73, %74
  %conv130 = zext i1 %cmp129 to i32
  %75 = load i32, i32* %job, align 4
  %76 = load i32, i32* @thisjob, align 4
  %cmp131 = icmp eq i32 %75, %76
  %conv132 = zext i1 %cmp131 to i32
  call void @storepipestats(%struct.job* %72, i32 %conv130, i32 %conv132)
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.then125
  %77 = load %struct.job*, %struct.job** %jn.addr, align 4
  %call134 = call i32 @should_report_time(%struct.job* %77)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  %78 = load %struct.job*, %struct.job** %jn.addr, align 4
  call void @dumptime(%struct.job* %78)
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  %79 = load %struct.job*, %struct.job** %jn.addr, align 4
  call void @deletejob(%struct.job* %79, i32 0)
  %80 = load i32, i32* %job, align 4
  %81 = load i32, i32* @curjob, align 4
  %cmp138 = icmp eq i32 %80, %81
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end137
  %82 = load i32, i32* @prevjob, align 4
  store i32 %82, i32* @curjob, align 4
  %83 = load i32, i32* %job, align 4
  store i32 %83, i32* @prevjob, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end137
  %84 = load i32, i32* %job, align 4
  %85 = load i32, i32* @prevjob, align 4
  %cmp142 = icmp eq i32 %84, %85
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end141
  call void @setprevjob()
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end141
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then121
  store i32 0, i32* %retval, align 4
  br label %return

if.end147:                                        ; preds = %for.end
  %86 = load i32, i32* %synch.addr, align 4
  %cmp148 = icmp eq i32 %86, 2
  br i1 %cmp148, label %if.then167, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end147
  %87 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv151 = sext i8 %87 to i32
  %tobool152 = icmp ne i32 %conv151, 0
  br i1 %tobool152, label %land.lhs.true155, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %88 = load i32, i32* %synch.addr, align 4
  %tobool154 = icmp ne i32 %88, 0
  br i1 %tobool154, label %land.lhs.true155, label %if.else404

land.lhs.true155:                                 ; preds = %lor.lhs.false153, %lor.lhs.false150
  %89 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv156 = sext i8 %89 to i32
  %tobool157 = icmp ne i32 %conv156, 0
  br i1 %tobool157, label %land.lhs.true158, label %if.else404

land.lhs.true158:                                 ; preds = %land.lhs.true155
  %90 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat159 = getelementptr inbounds %struct.job, %struct.job* %90, i32 0, i32 2
  %91 = load i32, i32* %stat159, align 4
  %and160 = and i32 %91, 2
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then167, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %land.lhs.true158
  %92 = load i32, i32* %sflag, align 4
  %tobool163 = icmp ne i32 %92, 0
  br i1 %tobool163, label %if.then167, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false162
  %93 = load i32, i32* %job, align 4
  %94 = load i32, i32* @thisjob, align 4
  %cmp165 = icmp ne i32 %93, %94
  br i1 %cmp165, label %if.then167, label %if.else404

if.then167:                                       ; preds = %lor.lhs.false164, %lor.lhs.false162, %land.lhs.true158, %if.end147
  store i32 1, i32* %fline, align 4
  %95 = load i32, i32* %synch.addr, align 4
  %cmp168 = icmp eq i32 %95, 3
  br i1 %cmp168, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then167
  %96 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 135), align 1
  %conv170 = sext i8 %96 to i32
  %tobool171 = icmp ne i32 %conv170, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then167
  %97 = phi i1 [ false, %if.then167 ], [ %tobool171, %land.rhs ]
  %land.ext = zext i1 %97 to i32
  store i32 %land.ext, i32* %plainfmt, align 4
  %98 = load i32, i32* %job, align 4
  %99 = load i32, i32* @thisjob, align 4
  %cmp172 = icmp eq i32 %98, %99
  br i1 %cmp172, label %land.rhs174, label %land.end177

land.rhs174:                                      ; preds = %land.end
  %100 = load i32, i32* %synch.addr, align 4
  %cmp175 = icmp ne i32 %100, 2
  br label %land.end177

land.end177:                                      ; preds = %land.rhs174, %land.end
  %101 = phi i1 [ false, %land.end ], [ %cmp175, %land.rhs174 ]
  %land.ext178 = zext i1 %101 to i32
  store i32 %land.ext178, i32* %thisfmt, align 4
  %102 = load i32, i32* %synch.addr, align 4
  %tobool179 = icmp ne i32 %102, 0
  br i1 %tobool179, label %if.end182, label %if.then180

if.then180:                                       ; preds = %land.end177
  %call181 = call i8* (i32, ...) @zleentry(i32 3)
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %land.end177
  %103 = load i32, i32* %doputnl, align 4
  %tobool183 = icmp ne i32 %103, 0
  br i1 %tobool183, label %land.lhs.true184, label %if.end188

land.lhs.true184:                                 ; preds = %if.end182
  %104 = load i32, i32* %synch.addr, align 4
  %tobool185 = icmp ne i32 %104, 0
  br i1 %tobool185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %land.lhs.true184
  store i32 1, i32* %doneprint, align 4
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call187 = call i32 @putc(i32 10, %struct._IO_FILE* %105)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %land.lhs.true184, %if.end182
  %106 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs189 = getelementptr inbounds %struct.job, %struct.job* %106, i32 0, i32 4
  %107 = load %struct.process*, %struct.process** %procs189, align 4
  store %struct.process* %107, %struct.process** %pn, align 4
  br label %for.cond190

for.cond190:                                      ; preds = %for.end400, %if.end188
  %108 = load %struct.process*, %struct.process** %pn, align 4
  %tobool191 = icmp ne %struct.process* %108, null
  br i1 %tobool191, label %for.body192, label %for.end402

for.body192:                                      ; preds = %for.cond190
  %109 = load i32, i32* %thisfmt, align 4
  %tobool193 = icmp ne i32 %109, 0
  %cond194 = select i1 %tobool193, i32 5, i32 10
  %110 = load i32, i32* %len, align 4
  %add195 = add nsw i32 %cond194, %110
  store i32 %add195, i32* %len2, align 4
  %111 = load i32, i32* %lng.addr, align 4
  %and196 = and i32 %111, 3
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then198, label %if.else200

if.then198:                                       ; preds = %for.body192
  %112 = load %struct.process*, %struct.process** %pn, align 4
  %next199 = getelementptr inbounds %struct.process, %struct.process* %112, i32 0, i32 0
  %113 = load %struct.process*, %struct.process** %next199, align 4
  store %struct.process* %113, %struct.process** %qn, align 4
  br label %if.end229

if.else200:                                       ; preds = %for.body192
  %114 = load %struct.process*, %struct.process** %pn, align 4
  %next201 = getelementptr inbounds %struct.process, %struct.process* %114, i32 0, i32 0
  %115 = load %struct.process*, %struct.process** %next201, align 4
  store %struct.process* %115, %struct.process** %qn, align 4
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc226, %if.else200
  %116 = load %struct.process*, %struct.process** %qn, align 4
  %tobool203 = icmp ne %struct.process* %116, null
  br i1 %tobool203, label %for.body204, label %for.end228

for.body204:                                      ; preds = %for.cond202
  %117 = load %struct.process*, %struct.process** %qn, align 4
  %status205 = getelementptr inbounds %struct.process, %struct.process* %117, i32 0, i32 3
  %118 = load i32, i32* %status205, align 4
  %119 = load %struct.process*, %struct.process** %pn, align 4
  %status206 = getelementptr inbounds %struct.process, %struct.process* %119, i32 0, i32 3
  %120 = load i32, i32* %status206, align 4
  %cmp207 = icmp ne i32 %118, %120
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %for.body204
  br label %for.end228

if.end210:                                        ; preds = %for.body204
  %121 = load %struct.process*, %struct.process** %qn, align 4
  %text = getelementptr inbounds %struct.process, %struct.process* %121, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text, i32 0, i32 0
  %call211 = call i32 @strlen(i8* %arraydecay)
  %122 = load i32, i32* %len2, align 4
  %add212 = add nsw i32 %call211, %122
  %123 = load %struct.process*, %struct.process** %qn, align 4
  %next213 = getelementptr inbounds %struct.process, %struct.process* %123, i32 0, i32 0
  %124 = load %struct.process*, %struct.process** %next213, align 4
  %tobool214 = icmp ne %struct.process* %124, null
  %cond215 = select i1 %tobool214, i32 3, i32 0
  %add216 = add nsw i32 %add212, %cond215
  %125 = load i32, i32* %lineleng, align 4
  %cmp217 = icmp sgt i32 %add216, %125
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end210
  br label %for.end228

if.end220:                                        ; preds = %if.end210
  %126 = load %struct.process*, %struct.process** %qn, align 4
  %text221 = getelementptr inbounds %struct.process, %struct.process* %126, i32 0, i32 2
  %arraydecay222 = getelementptr inbounds [80 x i8], [80 x i8]* %text221, i32 0, i32 0
  %call223 = call i32 @strlen(i8* %arraydecay222)
  %add224 = add i32 %call223, 2
  %127 = load i32, i32* %len2, align 4
  %add225 = add i32 %127, %add224
  store i32 %add225, i32* %len2, align 4
  br label %for.inc226

for.inc226:                                       ; preds = %if.end220
  %128 = load %struct.process*, %struct.process** %qn, align 4
  %next227 = getelementptr inbounds %struct.process, %struct.process* %128, i32 0, i32 0
  %129 = load %struct.process*, %struct.process** %next227, align 4
  store %struct.process* %129, %struct.process** %qn, align 4
  br label %for.cond202

for.end228:                                       ; preds = %if.then219, %if.then209, %for.cond202
  br label %if.end229

if.end229:                                        ; preds = %for.end228, %if.then198
  store i32 1, i32* %doneprint, align 4
  %130 = load i32, i32* %plainfmt, align 4
  %tobool230 = icmp ne i32 %130, 0
  br i1 %tobool230, label %if.end383, label %if.then231

if.then231:                                       ; preds = %if.end229
  %131 = load i32, i32* %thisfmt, align 4
  %tobool232 = icmp ne i32 %131, 0
  br i1 %tobool232, label %lor.lhs.false233, label %if.then235

lor.lhs.false233:                                 ; preds = %if.then231
  %132 = load i32, i32* %lng.addr, align 4
  %tobool234 = icmp ne i32 %132, 0
  br i1 %tobool234, label %if.then235, label %if.else254

if.then235:                                       ; preds = %lor.lhs.false233, %if.then231
  %133 = load i32, i32* %fline, align 4
  %tobool236 = icmp ne i32 %133, 0
  br i1 %tobool236, label %if.then237, label %if.else248

if.then237:                                       ; preds = %if.then235
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %135 = load i32, i32* %job, align 4
  %136 = load i32, i32* %job, align 4
  %137 = load i32, i32* @curjob, align 4
  %cmp238 = icmp eq i32 %136, %137
  br i1 %cmp238, label %cond.true240, label %cond.false241

cond.true240:                                     ; preds = %if.then237
  br label %cond.end245

cond.false241:                                    ; preds = %if.then237
  %138 = load i32, i32* %job, align 4
  %139 = load i32, i32* @prevjob, align 4
  %cmp242 = icmp eq i32 %138, %139
  %cond244 = select i1 %cmp242, i32 45, i32 32
  br label %cond.end245

cond.end245:                                      ; preds = %cond.false241, %cond.true240
  %cond246 = phi i32 [ 43, %cond.true240 ], [ %cond244, %cond.false241 ]
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %135, i32 %cond246)
  br label %if.end253

if.else248:                                       ; preds = %if.then235
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %141 = load i32, i32* %job, align 4
  %cmp249 = icmp sgt i32 %141, 9
  %cond251 = select i1 %cmp249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* %cond251)
  br label %if.end253

if.end253:                                        ; preds = %if.else248, %cond.end245
  br label %if.end256

if.else254:                                       ; preds = %lor.lhs.false233
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end256

if.end256:                                        ; preds = %if.else254, %if.end253
  %143 = load i32, i32* %lng.addr, align 4
  %and257 = and i32 %143, 1
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %if.then259, label %if.else261

if.then259:                                       ; preds = %if.end256
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %145 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %145, i32 0, i32 1
  %146 = load i32, i32* %pid, align 4
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %146)
  br label %if.end272

if.else261:                                       ; preds = %if.end256
  %147 = load i32, i32* %lng.addr, align 4
  %and262 = and i32 %147, 2
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.then264, label %if.else269

if.then264:                                       ; preds = %if.else261
  %148 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader = getelementptr inbounds %struct.job, %struct.job* %148, i32 0, i32 0
  %149 = load i32, i32* %gleader, align 4
  store i32 %149, i32* %x, align 4
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %151 = load i32, i32* %x, align 4
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %151)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then264
  %152 = load i32, i32* %skip, align 4
  %inc = add nsw i32 %152, 1
  store i32 %inc, i32* %skip, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %153 = load i32, i32* %x, align 4
  %div = sdiv i32 %153, 10
  store i32 %div, i32* %x, align 4
  %tobool266 = icmp ne i32 %div, 0
  br i1 %tobool266, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %154 = load i32, i32* %skip, align 4
  %inc267 = add nsw i32 %154, 1
  store i32 %inc267, i32* %skip, align 4
  %155 = load i32, i32* %lng.addr, align 4
  %and268 = and i32 %155, -4
  store i32 %and268, i32* %lng.addr, align 4
  br label %if.end271

if.else269:                                       ; preds = %if.else261
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %157 = load i32, i32* %skip, align 4
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end271

if.end271:                                        ; preds = %if.else269, %do.end
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then259
  %158 = load %struct.process*, %struct.process** %pn, align 4
  %status273 = getelementptr inbounds %struct.process, %struct.process* %158, i32 0, i32 3
  %159 = load i32, i32* %status273, align 4
  %cmp274 = icmp eq i32 %159, -1
  br i1 %cmp274, label %if.then276, label %if.else287

if.then276:                                       ; preds = %if.end272
  %160 = load i32, i32* %conted, align 4
  %tobool277 = icmp ne i32 %160, 0
  br i1 %tobool277, label %if.else282, label %if.then278

if.then278:                                       ; preds = %if.then276
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %162 = load i32, i32* %len, align 4
  %sub279 = sub nsw i32 %162, 7
  %add280 = add nsw i32 %sub279, 2
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %add280, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end286

if.else282:                                       ; preds = %if.then276
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %164 = load i32, i32* %len, align 4
  %sub283 = sub nsw i32 %164, 9
  %add284 = add nsw i32 %sub283, 2
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %add284, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end286

if.end286:                                        ; preds = %if.else282, %if.then278
  br label %if.end382

if.else287:                                       ; preds = %if.end272
  %165 = load %struct.process*, %struct.process** %pn, align 4
  %status288 = getelementptr inbounds %struct.process, %struct.process* %165, i32 0, i32 3
  %166 = load i32, i32* %status288, align 4
  %and289 = and i32 %166, 127
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.else308, label %if.then291

if.then291:                                       ; preds = %if.else287
  %167 = load %struct.process*, %struct.process** %pn, align 4
  %status292 = getelementptr inbounds %struct.process, %struct.process* %167, i32 0, i32 3
  %168 = load i32, i32* %status292, align 4
  %and293 = and i32 %168, 65280
  %shr294 = ashr i32 %and293, 8
  %tobool295 = icmp ne i32 %shr294, 0
  br i1 %tobool295, label %if.then296, label %if.else303

if.then296:                                       ; preds = %if.then291
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %170 = load %struct.process*, %struct.process** %pn, align 4
  %status297 = getelementptr inbounds %struct.process, %struct.process* %170, i32 0, i32 3
  %171 = load i32, i32* %status297, align 4
  %and298 = and i32 %171, 65280
  %shr299 = ashr i32 %and298, 8
  %172 = load i32, i32* %len, align 4
  %sub300 = sub nsw i32 %172, 9
  %add301 = add nsw i32 %sub300, 2
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %shr299, i32 %add301, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end307

if.else303:                                       ; preds = %if.then291
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %174 = load i32, i32* %len, align 4
  %sub304 = sub nsw i32 %174, 4
  %add305 = add nsw i32 %sub304, 2
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %add305, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end307

if.end307:                                        ; preds = %if.else303, %if.then296
  br label %if.end381

if.else308:                                       ; preds = %if.else287
  %175 = load %struct.process*, %struct.process** %pn, align 4
  %status309 = getelementptr inbounds %struct.process, %struct.process* %175, i32 0, i32 3
  %176 = load i32, i32* %status309, align 4
  %and310 = and i32 %176, 65535
  %mul311 = mul nsw i32 %and310, 65537
  %shr312 = ashr i32 %mul311, 8
  %conv313 = trunc i32 %shr312 to i16
  %conv314 = sext i16 %conv313 to i32
  %cmp315 = icmp sgt i32 %conv314, 32512
  br i1 %cmp315, label %if.then317, label %if.else333

if.then317:                                       ; preds = %if.else308
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %178 = load i32, i32* %len, align 4
  %add318 = add nsw i32 %178, 2
  %179 = load %struct.process*, %struct.process** %pn, align 4
  %status319 = getelementptr inbounds %struct.process, %struct.process* %179, i32 0, i32 3
  %180 = load i32, i32* %status319, align 4
  %and320 = and i32 %180, 65280
  %shr321 = ashr i32 %and320, 8
  %cmp322 = icmp sle i32 %shr321, 31
  br i1 %cmp322, label %cond.true324, label %cond.false329

cond.true324:                                     ; preds = %if.then317
  %181 = load %struct.process*, %struct.process** %pn, align 4
  %status325 = getelementptr inbounds %struct.process, %struct.process* %181, i32 0, i32 3
  %182 = load i32, i32* %status325, align 4
  %and326 = and i32 %182, 65280
  %shr327 = ashr i32 %and326, 8
  %arrayidx328 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %shr327
  %183 = load i8*, i8** %arrayidx328, align 4
  br label %cond.end330

cond.false329:                                    ; preds = %if.then317
  br label %cond.end330

cond.end330:                                      ; preds = %cond.false329, %cond.true324
  %cond331 = phi i8* [ %183, %cond.true324 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false329 ]
  %call332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %add318, i8* %cond331)
  br label %if.end380

if.else333:                                       ; preds = %if.else308
  %184 = load %struct.process*, %struct.process** %pn, align 4
  %status334 = getelementptr inbounds %struct.process, %struct.process* %184, i32 0, i32 3
  %185 = load i32, i32* %status334, align 4
  %and335 = and i32 %185, 128
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %if.then337, label %if.else365

if.then337:                                       ; preds = %if.else333
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %187 = load %struct.process*, %struct.process** %pn, align 4
  %status338 = getelementptr inbounds %struct.process, %struct.process* %187, i32 0, i32 3
  %188 = load i32, i32* %status338, align 4
  %and339 = and i32 %188, 127
  %cmp340 = icmp sle i32 %and339, 31
  br i1 %cmp340, label %cond.true342, label %cond.false346

cond.true342:                                     ; preds = %if.then337
  %189 = load %struct.process*, %struct.process** %pn, align 4
  %status343 = getelementptr inbounds %struct.process, %struct.process* %189, i32 0, i32 3
  %190 = load i32, i32* %status343, align 4
  %and344 = and i32 %190, 127
  %arrayidx345 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %and344
  %191 = load i8*, i8** %arrayidx345, align 4
  br label %cond.end347

cond.false346:                                    ; preds = %if.then337
  br label %cond.end347

cond.end347:                                      ; preds = %cond.false346, %cond.true342
  %cond348 = phi i8* [ %191, %cond.true342 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false346 ]
  %192 = load i32, i32* %len, align 4
  %sub349 = sub nsw i32 %192, 14
  %add350 = add nsw i32 %sub349, 2
  %193 = load %struct.process*, %struct.process** %pn, align 4
  %status351 = getelementptr inbounds %struct.process, %struct.process* %193, i32 0, i32 3
  %194 = load i32, i32* %status351, align 4
  %and352 = and i32 %194, 127
  %cmp353 = icmp sle i32 %and352, 31
  br i1 %cmp353, label %cond.true355, label %cond.false359

cond.true355:                                     ; preds = %cond.end347
  %195 = load %struct.process*, %struct.process** %pn, align 4
  %status356 = getelementptr inbounds %struct.process, %struct.process* %195, i32 0, i32 3
  %196 = load i32, i32* %status356, align 4
  %and357 = and i32 %196, 127
  %arrayidx358 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %and357
  %197 = load i8*, i8** %arrayidx358, align 4
  br label %cond.end360

cond.false359:                                    ; preds = %cond.end347
  br label %cond.end360

cond.end360:                                      ; preds = %cond.false359, %cond.true355
  %cond361 = phi i8* [ %197, %cond.true355 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false359 ]
  %call362 = call i32 @strlen(i8* %cond361)
  %sub363 = sub i32 %add350, %call362
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* %cond348, i32 %sub363, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end379

if.else365:                                       ; preds = %if.else333
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %199 = load i32, i32* %len, align 4
  %add366 = add nsw i32 %199, 2
  %200 = load %struct.process*, %struct.process** %pn, align 4
  %status367 = getelementptr inbounds %struct.process, %struct.process* %200, i32 0, i32 3
  %201 = load i32, i32* %status367, align 4
  %and368 = and i32 %201, 127
  %cmp369 = icmp sle i32 %and368, 31
  br i1 %cmp369, label %cond.true371, label %cond.false375

cond.true371:                                     ; preds = %if.else365
  %202 = load %struct.process*, %struct.process** %pn, align 4
  %status372 = getelementptr inbounds %struct.process, %struct.process* %202, i32 0, i32 3
  %203 = load i32, i32* %status372, align 4
  %and373 = and i32 %203, 127
  %arrayidx374 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %and373
  %204 = load i8*, i8** %arrayidx374, align 4
  br label %cond.end376

cond.false375:                                    ; preds = %if.else365
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false375, %cond.true371
  %cond377 = phi i8* [ %204, %cond.true371 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %cond.false375 ]
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %add366, i8* %cond377)
  br label %if.end379

if.end379:                                        ; preds = %cond.end376, %cond.end360
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %cond.end330
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.end307
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.end286
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %if.end229
  br label %for.cond384

for.cond384:                                      ; preds = %for.inc398, %if.end383
  %205 = load %struct.process*, %struct.process** %pn, align 4
  %206 = load %struct.process*, %struct.process** %qn, align 4
  %cmp385 = icmp ne %struct.process* %205, %206
  br i1 %cmp385, label %for.body387, label %for.end400

for.body387:                                      ; preds = %for.cond384
  %207 = load %struct.process*, %struct.process** %pn, align 4
  %text388 = getelementptr inbounds %struct.process, %struct.process* %207, i32 0, i32 2
  %arraydecay389 = getelementptr inbounds [80 x i8], [80 x i8]* %text388, i32 0, i32 0
  %call390 = call i8* @dupstring(i8* %arraydecay389)
  store i8* %call390, i8** %txt, align 4
  %208 = load i8*, i8** %txt, align 4
  %call391 = call i8* @unmetafy(i8* %208, i32* %txtlen)
  %209 = load i8*, i8** %txt, align 4
  %210 = load i32, i32* %txtlen, align 4
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call392 = call i32 @fwrite(i8* %209, i32 1, i32 %210, %struct._IO_FILE* %211)
  %212 = load %struct.process*, %struct.process** %pn, align 4
  %next393 = getelementptr inbounds %struct.process, %struct.process* %212, i32 0, i32 0
  %213 = load %struct.process*, %struct.process** %next393, align 4
  %tobool394 = icmp ne %struct.process* %213, null
  br i1 %tobool394, label %if.then395, label %if.end397

if.then395:                                       ; preds = %for.body387
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call396 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %214)
  br label %if.end397

if.end397:                                        ; preds = %if.then395, %for.body387
  br label %for.inc398

for.inc398:                                       ; preds = %if.end397
  %215 = load %struct.process*, %struct.process** %pn, align 4
  %next399 = getelementptr inbounds %struct.process, %struct.process* %215, i32 0, i32 0
  %216 = load %struct.process*, %struct.process** %next399, align 4
  store %struct.process* %216, %struct.process** %pn, align 4
  br label %for.cond384

for.end400:                                       ; preds = %for.cond384
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call401 = call i32 @putc(i32 10, %struct._IO_FILE* %217)
  store i32 0, i32* %fline, align 4
  br label %for.cond190

for.end402:                                       ; preds = %for.cond190
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call403 = call i32 @fflush(%struct._IO_FILE* %218)
  br label %if.end415

if.else404:                                       ; preds = %lor.lhs.false164, %land.lhs.true155, %lor.lhs.false153
  %219 = load i32, i32* %doputnl, align 4
  %tobool405 = icmp ne i32 %219, 0
  br i1 %tobool405, label %land.lhs.true406, label %if.end414

land.lhs.true406:                                 ; preds = %if.else404
  %220 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv407 = sext i8 %220 to i32
  %tobool408 = icmp ne i32 %conv407, 0
  br i1 %tobool408, label %land.lhs.true409, label %if.end414

land.lhs.true409:                                 ; preds = %land.lhs.true406
  %221 = load i32, i32* %synch.addr, align 4
  %tobool410 = icmp ne i32 %221, 0
  br i1 %tobool410, label %if.end414, label %if.then411

if.then411:                                       ; preds = %land.lhs.true409
  store i32 1, i32* %doneprint, align 4
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call412 = call i32 @putc(i32 10, %struct._IO_FILE* %222)
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call413 = call i32 @fflush(%struct._IO_FILE* %223)
  br label %if.end414

if.end414:                                        ; preds = %if.then411, %land.lhs.true409, %land.lhs.true406, %if.else404
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %for.end402
  %224 = load i32, i32* %lng.addr, align 4
  %and416 = and i32 %224, 4
  %tobool417 = icmp ne i32 %and416, 0
  br i1 %tobool417, label %if.then430, label %lor.lhs.false418

lor.lhs.false418:                                 ; preds = %if.end415
  %225 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv419 = sext i8 %225 to i32
  %tobool420 = icmp ne i32 %conv419, 0
  br i1 %tobool420, label %land.lhs.true421, label %if.end447

land.lhs.true421:                                 ; preds = %lor.lhs.false418
  %226 = load i32, i32* %job, align 4
  %227 = load i32, i32* @thisjob, align 4
  %cmp422 = icmp eq i32 %226, %227
  br i1 %cmp422, label %land.lhs.true424, label %if.end447

land.lhs.true424:                                 ; preds = %land.lhs.true421
  %228 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd = getelementptr inbounds %struct.job, %struct.job* %228, i32 0, i32 3
  %229 = load i8*, i8** %pwd, align 4
  %tobool425 = icmp ne i8* %229, null
  br i1 %tobool425, label %land.lhs.true426, label %if.end447

land.lhs.true426:                                 ; preds = %land.lhs.true424
  %230 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd427 = getelementptr inbounds %struct.job, %struct.job* %230, i32 0, i32 3
  %231 = load i8*, i8** %pwd427, align 4
  %232 = load i8*, i8** @pwd, align 4
  %call428 = call i32 @strcmp(i8* %231, i8* %232)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.then430, label %if.end447

if.then430:                                       ; preds = %land.lhs.true426, %if.end415
  store i32 1, i32* %doneprint, align 4
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %234 = load i32, i32* %lng.addr, align 4
  %and431 = and i32 %234, 4
  %tobool432 = icmp ne i32 %and431, 0
  %cond433 = select i1 %tobool432, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)
  %call434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %cond433)
  %235 = load i32, i32* %lng.addr, align 4
  %and435 = and i32 %235, 4
  %tobool436 = icmp ne i32 %and435, 0
  br i1 %tobool436, label %land.lhs.true437, label %cond.false442

land.lhs.true437:                                 ; preds = %if.then430
  %236 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd438 = getelementptr inbounds %struct.job, %struct.job* %236, i32 0, i32 3
  %237 = load i8*, i8** %pwd438, align 4
  %tobool439 = icmp ne i8* %237, null
  br i1 %tobool439, label %cond.true440, label %cond.false442

cond.true440:                                     ; preds = %land.lhs.true437
  %238 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd441 = getelementptr inbounds %struct.job, %struct.job* %238, i32 0, i32 3
  %239 = load i8*, i8** %pwd441, align 4
  br label %cond.end443

cond.false442:                                    ; preds = %land.lhs.true437, %if.then430
  %240 = load i8*, i8** @pwd, align 4
  br label %cond.end443

cond.end443:                                      ; preds = %cond.false442, %cond.true440
  %cond444 = phi i8* [ %239, %cond.true440 ], [ %240, %cond.false442 ]
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  call void @fprintdir(i8* %cond444, %struct._IO_FILE* %241)
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call446 = call i32 @fflush(%struct._IO_FILE* %243)
  br label %if.end447

if.end447:                                        ; preds = %cond.end443, %land.lhs.true426, %land.lhs.true424, %land.lhs.true421, %lor.lhs.false418
  %244 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat448 = getelementptr inbounds %struct.job, %struct.job* %244, i32 0, i32 2
  %245 = load i32, i32* %stat448, align 4
  %and449 = and i32 %245, 8
  %tobool450 = icmp ne i32 %and449, 0
  br i1 %tobool450, label %if.then451, label %if.else472

if.then451:                                       ; preds = %if.end447
  %246 = load i32, i32* %synch.addr, align 4
  %cmp452 = icmp sle i32 %246, 1
  br i1 %cmp452, label %if.then454, label %if.end459

if.then454:                                       ; preds = %if.then451
  %247 = load %struct.job*, %struct.job** %jn.addr, align 4
  %248 = load i32, i32* %job, align 4
  %249 = load i32, i32* @thisjob, align 4
  %cmp455 = icmp eq i32 %248, %249
  %conv456 = zext i1 %cmp455 to i32
  %250 = load i32, i32* %job, align 4
  %251 = load i32, i32* @thisjob, align 4
  %cmp457 = icmp eq i32 %250, %251
  %conv458 = zext i1 %cmp457 to i32
  call void @storepipestats(%struct.job* %247, i32 %conv456, i32 %conv458)
  br label %if.end459

if.end459:                                        ; preds = %if.then454, %if.then451
  %252 = load %struct.job*, %struct.job** %jn.addr, align 4
  %call460 = call i32 @should_report_time(%struct.job* %252)
  %tobool461 = icmp ne i32 %call460, 0
  br i1 %tobool461, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end459
  %253 = load %struct.job*, %struct.job** %jn.addr, align 4
  call void @dumptime(%struct.job* %253)
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %if.end459
  %254 = load %struct.job*, %struct.job** %jn.addr, align 4
  call void @deletejob(%struct.job* %254, i32 0)
  %255 = load i32, i32* %job, align 4
  %256 = load i32, i32* @curjob, align 4
  %cmp464 = icmp eq i32 %255, %256
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.end463
  %257 = load i32, i32* @prevjob, align 4
  store i32 %257, i32* @curjob, align 4
  %258 = load i32, i32* %job, align 4
  store i32 %258, i32* @prevjob, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.then466, %if.end463
  %259 = load i32, i32* %job, align 4
  %260 = load i32, i32* @prevjob, align 4
  %cmp468 = icmp eq i32 %259, %260
  br i1 %cmp468, label %if.then470, label %if.end471

if.then470:                                       ; preds = %if.end467
  call void @setprevjob()
  br label %if.end471

if.end471:                                        ; preds = %if.then470, %if.end467
  br label %if.end475

if.else472:                                       ; preds = %if.end447
  %261 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat473 = getelementptr inbounds %struct.job, %struct.job* %261, i32 0, i32 2
  %262 = load i32, i32* %stat473, align 4
  %and474 = and i32 %262, -2
  store i32 %and474, i32* %stat473, align 4
  br label %if.end475

if.end475:                                        ; preds = %if.else472, %if.end471
  %263 = load i32, i32* %doneprint, align 4
  store i32 %263, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end475, %if.end146
  %264 = load i32, i32* %retval, align 4
  ret i32 %264
}

declare i8* @zleentry(i32, ...) #1

declare void @dotrap(i32) #1

; Function Attrs: noinline nounwind
define i32 @get_clktck() #0 {
entry:
  %0 = load i32, i32* @get_clktck.clktck, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @sysconf(i32 2)
  store i32 %call, i32* @get_clktck.clktck, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @get_clktck.clktck, align 4
  ret i32 %1
}

declare i32 @sysconf(i32) #1

declare i32 @strlen(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @should_report_time(%struct.job* %j) #0 {
entry:
  %retval = alloca i32, align 4
  %j.addr = alloca %struct.job*, align 4
  %vbuf = alloca %struct.value, align 4
  %v = alloca %struct.value*, align 4
  %s = alloca i8*, align 4
  %save_errflag = alloca i32, align 4
  %reporttime = alloca i32, align 4
  %sm = alloca i8*, align 4
  %reportmemory = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp14 = alloca %struct.__sigset_t, align 4
  store %struct.job* %j, %struct.job** %j.addr, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8** %s, align 4
  %0 = load i32, i32* @errflag, align 4
  store i32 %0, i32* %save_errflag, align 4
  store i32 -1, i32* %reporttime, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8** %sm, align 4
  store i32 -1, i32* %reportmemory, align 4
  %1 = load %struct.job*, %struct.job** %j.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %1, i32 0, i32 2
  %2 = load i32, i32* %stat, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  store i32 0, i32* @errflag, align 4
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s, i32 0)
  store %struct.value* %call, %struct.value** %v, align 4
  %tobool1 = icmp ne %struct.value* %call, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load %struct.value*, %struct.value** %v, align 4
  %call3 = call i32 @getintvalue(%struct.value* %4)
  store i32 %call3, i32* %reporttime, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %sm, i32 0)
  store %struct.value* %call5, %struct.value** %v, align 4
  %tobool6 = icmp ne %struct.value* %call5, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %5 = load %struct.value*, %struct.value** %v, align 4
  %call8 = call i32 @getintvalue(%struct.value* %5)
  store i32 %call8, i32* %reportmemory, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4
  %6 = load i32, i32* %save_errflag, align 4
  store i32 %6, i32* @errflag, align 4
  br label %do.body

do.body:                                          ; preds = %if.end9
  %7 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool10 = icmp ne i32 %dec, 0
  br i1 %tobool10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %do.body
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body12
  %8 = load i32, i32* @queue_front, align 4
  %9 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %10, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %11 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %11
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %12 = bitcast %struct.__sigset_t* %oset to i8*
  %13 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 128, i32 4, i1 false)
  %14 = load i32, i32* @queue_front, align 4
  %arrayidx13 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %14
  %15 = load i32, i32* %arrayidx13, align 4
  call void @zhandler(i32 %15)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp14, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  %16 = load i32, i32* %reporttime, align 4
  %cmp17 = icmp slt i32 %16, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.end16
  %17 = load i32, i32* %reportmemory, align 4
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true, %do.end16
  %18 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 4
  %19 = load %struct.process*, %struct.process** %procs, align 4
  %tobool21 = icmp ne %struct.process* %19, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %20 = load i32, i32* @zleactive, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  %21 = load i32, i32* %reporttime, align 4
  %cmp27 = icmp sge i32 %21, 0
  br i1 %cmp27, label %if.then28, label %if.end49

if.then28:                                        ; preds = %if.end26
  %22 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs29 = getelementptr inbounds %struct.job, %struct.job* %22, i32 0, i32 4
  %23 = load %struct.process*, %struct.process** %procs29, align 4
  %ti = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 4
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %ti, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %24 = load i32, i32* %tv_sec, align 4
  %25 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs30 = getelementptr inbounds %struct.job, %struct.job* %25, i32 0, i32 4
  %26 = load %struct.process*, %struct.process** %procs30, align 4
  %ti31 = getelementptr inbounds %struct.process, %struct.process* %26, i32 0, i32 4
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %ti31, i32 0, i32 1
  %tv_sec32 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0
  %27 = load i32, i32* %tv_sec32, align 4
  %add33 = add nsw i32 %24, %27
  %28 = load i32, i32* %reporttime, align 4
  %sub = sub nsw i32 %28, %add33
  store i32 %sub, i32* %reporttime, align 4
  %29 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs34 = getelementptr inbounds %struct.job, %struct.job* %29, i32 0, i32 4
  %30 = load %struct.process*, %struct.process** %procs34, align 4
  %ti35 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 4
  %ru_utime36 = getelementptr inbounds %struct.rusage, %struct.rusage* %ti35, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime36, i32 0, i32 1
  %31 = load i32, i32* %tv_usec, align 4
  %32 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs37 = getelementptr inbounds %struct.job, %struct.job* %32, i32 0, i32 4
  %33 = load %struct.process*, %struct.process** %procs37, align 4
  %ti38 = getelementptr inbounds %struct.process, %struct.process* %33, i32 0, i32 4
  %ru_stime39 = getelementptr inbounds %struct.rusage, %struct.rusage* %ti38, i32 0, i32 1
  %tv_usec40 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime39, i32 0, i32 1
  %34 = load i32, i32* %tv_usec40, align 4
  %add41 = add nsw i32 %31, %34
  %cmp42 = icmp sge i32 %add41, 1000000
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then28
  %35 = load i32, i32* %reporttime, align 4
  %dec44 = add nsw i32 %35, -1
  store i32 %dec44, i32* %reporttime, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then28
  %36 = load i32, i32* %reporttime, align 4
  %cmp46 = icmp sle i32 %36, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  store i32 1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end45
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end26
  %37 = load i32, i32* %reportmemory, align 4
  %cmp50 = icmp sge i32 %37, 0
  br i1 %cmp50, label %land.lhs.true51, label %if.end56

land.lhs.true51:                                  ; preds = %if.end49
  %38 = load %struct.job*, %struct.job** %j.addr, align 4
  %procs52 = getelementptr inbounds %struct.job, %struct.job* %38, i32 0, i32 4
  %39 = load %struct.process*, %struct.process** %procs52, align 4
  %ti53 = getelementptr inbounds %struct.process, %struct.process* %39, i32 0, i32 4
  %ru_maxrss = getelementptr inbounds %struct.rusage, %struct.rusage* %ti53, i32 0, i32 2
  %40 = load i32, i32* %ru_maxrss, align 4
  %div = sdiv i32 %40, 1024
  %41 = load i32, i32* %reportmemory, align 4
  %cmp54 = icmp sgt i32 %div, %41
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true51
  store i32 1, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %land.lhs.true51, %if.end49
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then55, %if.then47, %if.then25, %if.then22, %if.then19, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind
define internal void @dumptime(%struct.job* %jn) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %pn = alloca %struct.process*, align 4
  %dtimeval = alloca %struct.timeval, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 4
  %1 = load %struct.process*, %struct.process** %procs, align 4
  %tobool = icmp ne %struct.process* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs1 = getelementptr inbounds %struct.job, %struct.job* %2, i32 0, i32 4
  %3 = load %struct.process*, %struct.process** %procs1, align 4
  store %struct.process* %3, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.process*, %struct.process** %pn, align 4
  %tobool2 = icmp ne %struct.process* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.process*, %struct.process** %pn, align 4
  %bgtime = getelementptr inbounds %struct.process, %struct.process* %5, i32 0, i32 5
  %6 = load %struct.process*, %struct.process** %pn, align 4
  %endtime = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 6
  %call = call %struct.timeval* @dtime(%struct.timeval* %dtimeval, %struct.timeval* %bgtime, %struct.timeval* %endtime)
  %7 = load %struct.process*, %struct.process** %pn, align 4
  %ti = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 4
  %8 = load %struct.process*, %struct.process** %pn, align 4
  %text = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text, i32 0, i32 0
  call void @printtime(%struct.timeval* %call, %struct.rusage* %ti, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %9, i32 0, i32 0
  %10 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %10, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @deletejob(%struct.job* %jn, i32 %disowning) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %disowning.addr = alloca i32, align 4
  %jno = alloca %struct.job*, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 %disowning, i32* %disowning.addr, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %filelist = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 6
  %1 = load %union.linkroot*, %union.linkroot** %filelist, align 4
  %2 = load i32, i32* %disowning.addr, align 4
  call void @deletefilelist(%union.linkroot* %1, i32 %2)
  %3 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %3, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %5)
  call void @adjustwinsize(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat1 = getelementptr inbounds %struct.job, %struct.job* %6, i32 0, i32 2
  %7 = load i32, i32* %stat1, align 4
  %and2 = and i32 %7, 128
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other = getelementptr inbounds %struct.job, %struct.job* %9, i32 0, i32 1
  %10 = load i32, i32* %other, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %8, i32 %10
  store %struct.job* %add.ptr, %struct.job** %jno, align 4
  %11 = load %struct.job*, %struct.job** %jno, align 4
  %stat5 = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 2
  %12 = load i32, i32* %stat5, align 4
  %and6 = and i32 %12, 256
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then4
  %13 = load %struct.job*, %struct.job** %jno, align 4
  %stat9 = getelementptr inbounds %struct.job, %struct.job* %13, i32 0, i32 2
  %14 = load i32, i32* %stat9, align 4
  %or = or i32 %14, 32768
  store i32 %or, i32* %stat9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %15 = load %struct.job*, %struct.job** %jn.addr, align 4
  call void @freejob(%struct.job* %15, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setprevjob() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @maxjob, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 64
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %stat3 = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 2
  %7 = load i32, i32* %stat3, align 4
  %and4 = and i32 %7, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %stat8 = getelementptr inbounds %struct.job, %struct.job* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %stat8, align 4
  %and9 = and i32 %10, 256
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @curjob, align 4
  %cmp = icmp ne i32 %11, %12
  br i1 %cmp, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true11
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @thisjob, align 4
  %cmp13 = icmp ne i32 %13, %14
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true12
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* @prevjob, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true11, %land.lhs.true6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* @maxjob, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc32, %for.end
  %18 = load i32, i32* %i, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond14
  %19 = load %struct.job*, %struct.job** @jobtab, align 4
  %20 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds %struct.job, %struct.job* %19, i32 %20
  %stat18 = getelementptr inbounds %struct.job, %struct.job* %arrayidx17, i32 0, i32 2
  %21 = load i32, i32* %stat18, align 4
  %and19 = and i32 %21, 64
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end31

land.lhs.true21:                                  ; preds = %for.body16
  %22 = load %struct.job*, %struct.job** @jobtab, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds %struct.job, %struct.job* %22, i32 %23
  %stat23 = getelementptr inbounds %struct.job, %struct.job* %arrayidx22, i32 0, i32 2
  %24 = load i32, i32* %stat23, align 4
  %and24 = and i32 %24, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end31, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @curjob, align 4
  %cmp27 = icmp ne i32 %25, %26
  br i1 %cmp27, label %land.lhs.true28, label %if.end31

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* @thisjob, align 4
  %cmp29 = icmp ne i32 %27, %28
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true28
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* @prevjob, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true28, %land.lhs.true26, %land.lhs.true21, %for.body16
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %30 = load i32, i32* %i, align 4
  %dec33 = add nsw i32 %30, -1
  store i32 %dec33, i32* %i, align 4
  br label %for.cond14

for.end34:                                        ; preds = %for.cond14
  store i32 -1, i32* @prevjob, align 4
  br label %return

return:                                           ; preds = %for.end34, %if.then30, %if.then
  ret void
}

declare i32 @putc(i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @dupstring(i8*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @fprintdir(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define void @addfilelist(i8* %name, i32 %fd) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %fd.addr = alloca i32, align 4
  %jf = alloca %struct.jobfile*, align 4
  %ll = alloca %union.linkroot*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %call = call i8* @zalloc(i32 8)
  %0 = bitcast i8* %call to %struct.jobfile*
  store %struct.jobfile* %0, %struct.jobfile** %jf, align 4
  %1 = load %struct.job*, %struct.job** @jobtab, align 4
  %2 = load i32, i32* @thisjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %1, i32 %2
  %filelist = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 6
  %3 = load %union.linkroot*, %union.linkroot** %filelist, align 4
  store %union.linkroot* %3, %union.linkroot** %ll, align 4
  %4 = load %union.linkroot*, %union.linkroot** %ll, align 4
  %tobool = icmp ne %union.linkroot* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %union.linkroot* @znewlinklist()
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* @thisjob, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %filelist3 = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 6
  store %union.linkroot* %call1, %union.linkroot** %filelist3, align 4
  store %union.linkroot* %call1, %union.linkroot** %ll, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %name.addr, align 4
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 4
  %call6 = call i8* @ztrdup(i8* %8)
  %9 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u = getelementptr inbounds %struct.jobfile, %struct.jobfile* %9, i32 0, i32 0
  %name7 = bitcast %union.anon* %u to i8**
  store i8* %call6, i8** %name7, align 4
  %10 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %is_fd = getelementptr inbounds %struct.jobfile, %struct.jobfile* %10, i32 0, i32 1
  store i32 0, i32* %is_fd, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u8 = getelementptr inbounds %struct.jobfile, %struct.jobfile* %12, i32 0, i32 0
  %fd9 = bitcast %union.anon* %u8 to i32*
  store i32 %11, i32* %fd9, align 4
  %13 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %is_fd10 = getelementptr inbounds %struct.jobfile, %struct.jobfile* %13, i32 0, i32 1
  store i32 1, i32* %is_fd10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %14 = load %union.linkroot*, %union.linkroot** %ll, align 4
  %15 = load %union.linkroot*, %union.linkroot** %ll, align 4
  %list = bitcast %union.linkroot* %15 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %last, align 4
  %17 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %18 = bitcast %struct.jobfile* %17 to i8*
  %call12 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %14, %struct.linknode* %16, i8* %18)
  ret void
}

declare %union.linkroot* @znewlinklist() #1

declare i8* @ztrdup(i8*) #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

; Function Attrs: noinline nounwind
define void @pipecleanfilelist(%union.linkroot* %filelist, i32 %proc_subst_only) #0 {
entry:
  %filelist.addr = alloca %union.linkroot*, align 4
  %proc_subst_only.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %jf = alloca %struct.jobfile*, align 4
  %next = alloca %struct.linknode*, align 4
  store %union.linkroot* %filelist, %union.linkroot** %filelist.addr, align 4
  store i32 %proc_subst_only, i32* %proc_subst_only.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %filelist.addr, align 4
  %tobool = icmp ne %union.linkroot* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load %union.linkroot*, %union.linkroot** %filelist.addr, align 4
  %list = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %2, %struct.linknode** %node, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool1 = icmp ne %struct.linknode* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 2
  %5 = load i8*, i8** %dat, align 4
  %6 = bitcast i8* %5 to %struct.jobfile*
  store %struct.jobfile* %6, %struct.jobfile** %jf, align 4
  %7 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %is_fd = getelementptr inbounds %struct.jobfile, %struct.jobfile* %7, i32 0, i32 1
  %8 = load i32, i32* %is_fd, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, i32* %proc_subst_only.addr, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i8*, i8** @fdtable, align 4
  %11 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u = getelementptr inbounds %struct.jobfile, %struct.jobfile* %11, i32 0, i32 0
  %fd = bitcast %union.anon* %u to i32*
  %12 = load i32, i32* %fd, align 4
  %arrayidx = getelementptr inbounds i8, i8* %10, i32 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next6 = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %next6, align 4
  store %struct.linknode* %15, %struct.linknode** %next, align 4
  %16 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u7 = getelementptr inbounds %struct.jobfile, %struct.jobfile* %16, i32 0, i32 0
  %fd8 = bitcast %union.anon* %u7 to i32*
  %17 = load i32, i32* %fd8, align 4
  %call = call i32 @zclose(i32 %17)
  %18 = load %union.linkroot*, %union.linkroot** %filelist.addr, align 4
  %19 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call9 = call i8* @remnode(%union.linkroot* %18, %struct.linknode* %19)
  %20 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %21 = bitcast %struct.jobfile* %20 to i8*
  call void @zfree(i8* %21, i32 8)
  %22 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %22, %struct.linknode** %node, align 4
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false, %while.body
  %23 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next10 = getelementptr inbounds %struct.linknode, %struct.linknode* %23, i32 0, i32 0
  %24 = load %struct.linknode*, %struct.linknode** %next10, align 4
  store %struct.linknode* %24, %struct.linknode** %node, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i32 @zclose(i32) #1

declare i8* @remnode(%union.linkroot*, %struct.linknode*) #1

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @deletefilelist(%union.linkroot* %file_list, i32 %disowning) #0 {
entry:
  %file_list.addr = alloca %union.linkroot*, align 4
  %disowning.addr = alloca i32, align 4
  %jf = alloca %struct.jobfile*, align 4
  store %union.linkroot* %file_list, %union.linkroot** %file_list.addr, align 4
  store i32 %disowning, i32* %disowning.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %file_list.addr, align 4
  %tobool = icmp ne %union.linkroot* %0, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.then
  %1 = load %union.linkroot*, %union.linkroot** %file_list.addr, align 4
  %call = call i8* @getlinknode(%union.linkroot* %1)
  %2 = bitcast i8* %call to %struct.jobfile*
  store %struct.jobfile* %2, %struct.jobfile** %jf, align 4
  %tobool1 = icmp ne %struct.jobfile* %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %is_fd = getelementptr inbounds %struct.jobfile, %struct.jobfile* %3, i32 0, i32 1
  %4 = load i32, i32* %is_fd, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %5 = load i32, i32* %disowning.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %6 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u = getelementptr inbounds %struct.jobfile, %struct.jobfile* %6, i32 0, i32 0
  %fd = bitcast %union.anon* %u to i32*
  %7 = load i32, i32* %fd, align 4
  %call6 = call i32 @zclose(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end14

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %disowning.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.else
  %9 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u9 = getelementptr inbounds %struct.jobfile, %struct.jobfile* %9, i32 0, i32 0
  %name = bitcast %union.anon* %u9 to i8**
  %10 = load i8*, i8** %name, align 4
  %call10 = call i32 @unlink(i8* %10)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else
  %11 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %u12 = getelementptr inbounds %struct.jobfile, %struct.jobfile* %11, i32 0, i32 0
  %name13 = bitcast %union.anon* %u12 to i8**
  %12 = load i8*, i8** %name13, align 4
  call void @zsfree(i8* %12)
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end
  %13 = load %struct.jobfile*, %struct.jobfile** %jf, align 4
  %14 = bitcast %struct.jobfile* %13 to i8*
  call void @zfree(i8* %14, i32 8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %union.linkroot*, %union.linkroot** %file_list.addr, align 4
  %16 = bitcast %union.linkroot* %15 to i8*
  call void @zfree(i8* %16, i32 12)
  br label %if.end15

if.end15:                                         ; preds = %while.end, %entry
  ret void
}

declare i8* @getlinknode(%union.linkroot*) #1

declare i32 @unlink(i8*) #1

declare void @zsfree(i8*) #1

; Function Attrs: noinline nounwind
define void @freejob(%struct.job* %jn, i32 %deleting) #0 {
entry:
  %jn.addr = alloca %struct.job*, align 4
  %deleting.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %nx = alloca %struct.process*, align 4
  %job = alloca i32, align 4
  store %struct.job* %jn, %struct.job** %jn.addr, align 4
  store i32 %deleting, i32* %deleting.addr, align 4
  %0 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %0, i32 0, i32 4
  %1 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %1, %struct.process** %pn, align 4
  %2 = load %struct.job*, %struct.job** %jn.addr, align 4
  %procs1 = getelementptr inbounds %struct.job, %struct.job* %2, i32 0, i32 4
  store %struct.process* null, %struct.process** %procs1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.process*, %struct.process** %pn, align 4
  %tobool = icmp ne %struct.process* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %4, i32 0, i32 0
  %5 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %5, %struct.process** %nx, align 4
  %6 = load %struct.process*, %struct.process** %pn, align 4
  %7 = bitcast %struct.process* %6 to i8*
  call void @zfree(i8* %7, i32 244)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.process*, %struct.process** %nx, align 4
  store %struct.process* %8, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.job*, %struct.job** %jn.addr, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %9, i32 0, i32 5
  %10 = load %struct.process*, %struct.process** %auxprocs, align 4
  store %struct.process* %10, %struct.process** %pn, align 4
  %11 = load %struct.job*, %struct.job** %jn.addr, align 4
  %auxprocs2 = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 5
  store %struct.process* null, %struct.process** %auxprocs2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %12 = load %struct.process*, %struct.process** %pn, align 4
  %tobool4 = icmp ne %struct.process* %12, null
  br i1 %tobool4, label %for.body5, label %for.end8

for.body5:                                        ; preds = %for.cond3
  %13 = load %struct.process*, %struct.process** %pn, align 4
  %next6 = getelementptr inbounds %struct.process, %struct.process* %13, i32 0, i32 0
  %14 = load %struct.process*, %struct.process** %next6, align 4
  store %struct.process* %14, %struct.process** %nx, align 4
  %15 = load %struct.process*, %struct.process** %pn, align 4
  %16 = bitcast %struct.process* %15 to i8*
  call void @zfree(i8* %16, i32 244)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %17 = load %struct.process*, %struct.process** %nx, align 4
  store %struct.process* %17, %struct.process** %pn, align 4
  br label %for.cond3

for.end8:                                         ; preds = %for.cond3
  %18 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 8
  %19 = load %struct.ttyinfo*, %struct.ttyinfo** %ty, align 4
  %tobool9 = icmp ne %struct.ttyinfo* %19, null
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end8
  %20 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty10 = getelementptr inbounds %struct.job, %struct.job* %20, i32 0, i32 8
  %21 = load %struct.ttyinfo*, %struct.ttyinfo** %ty10, align 4
  %22 = bitcast %struct.ttyinfo* %21 to i8*
  call void @zfree(i8* %22, i32 68)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end8
  %23 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd = getelementptr inbounds %struct.job, %struct.job* %23, i32 0, i32 3
  %24 = load i8*, i8** %pwd, align 4
  %tobool11 = icmp ne i8* %24, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %25 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd13 = getelementptr inbounds %struct.job, %struct.job* %25, i32 0, i32 3
  %26 = load i8*, i8** %pwd13, align 4
  call void @zsfree(i8* %26)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %27 = load %struct.job*, %struct.job** %jn.addr, align 4
  %pwd15 = getelementptr inbounds %struct.job, %struct.job* %27, i32 0, i32 3
  store i8* null, i8** %pwd15, align 4
  %28 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %28, i32 0, i32 2
  %29 = load i32, i32* %stat, align 4
  %and = and i32 %29, 512
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end14
  %30 = load %struct.job*, %struct.job** %jn.addr, align 4
  %31 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %30 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %31 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  store i32 %sub.ptr.div, i32* %job, align 4
  %32 = load i32, i32* %deleting.addr, align 4
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  %33 = load %struct.job*, %struct.job** @jobtab, align 4
  %34 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other = getelementptr inbounds %struct.job, %struct.job* %34, i32 0, i32 1
  %35 = load i32, i32* %other, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %33, i32 %35
  call void @deletejob(%struct.job* %add.ptr, i32 0)
  br label %if.end22

if.else:                                          ; preds = %if.then17
  %36 = load %struct.job*, %struct.job** @jobtab, align 4
  %37 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other20 = getelementptr inbounds %struct.job, %struct.job* %37, i32 0, i32 1
  %38 = load i32, i32* %other20, align 4
  %add.ptr21 = getelementptr inbounds %struct.job, %struct.job* %36, i32 %38
  call void @freejob(%struct.job* %add.ptr21, i32 0)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %39 = load %struct.job*, %struct.job** @jobtab, align 4
  %40 = load i32, i32* %job, align 4
  %add.ptr23 = getelementptr inbounds %struct.job, %struct.job* %39, i32 %40
  store %struct.job* %add.ptr23, %struct.job** %jn.addr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end14
  %41 = load %struct.job*, %struct.job** %jn.addr, align 4
  %other25 = getelementptr inbounds %struct.job, %struct.job* %41, i32 0, i32 1
  store i32 0, i32* %other25, align 4
  %42 = load %struct.job*, %struct.job** %jn.addr, align 4
  %gleader = getelementptr inbounds %struct.job, %struct.job* %42, i32 0, i32 0
  store i32 0, i32* %gleader, align 4
  %43 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stty_in_env = getelementptr inbounds %struct.job, %struct.job* %43, i32 0, i32 7
  store i32 0, i32* %stty_in_env, align 4
  %44 = load %struct.job*, %struct.job** %jn.addr, align 4
  %stat26 = getelementptr inbounds %struct.job, %struct.job* %44, i32 0, i32 2
  store i32 0, i32* %stat26, align 4
  %45 = load %struct.job*, %struct.job** %jn.addr, align 4
  %filelist = getelementptr inbounds %struct.job, %struct.job* %45, i32 0, i32 6
  store %union.linkroot* null, %union.linkroot** %filelist, align 4
  %46 = load %struct.job*, %struct.job** %jn.addr, align 4
  %ty27 = getelementptr inbounds %struct.job, %struct.job* %46, i32 0, i32 8
  store %struct.ttyinfo* null, %struct.ttyinfo** %ty27, align 4
  %47 = load i32, i32* @maxjob, align 4
  %48 = load %struct.job*, %struct.job** %jn.addr, align 4
  %49 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast28 = ptrtoint %struct.job* %48 to i32
  %sub.ptr.rhs.cast29 = ptrtoint %struct.job* %49 to i32
  %sub.ptr.sub30 = sub i32 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i32 %sub.ptr.sub30, 36
  %cmp = icmp eq i32 %47, %sub.ptr.div31
  br i1 %cmp, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then32
  %50 = load i32, i32* @maxjob, align 4
  %tobool33 = icmp ne i32 %50, 0
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %51 = load %struct.job*, %struct.job** @jobtab, align 4
  %52 = load i32, i32* @maxjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %51, i32 %52
  %stat34 = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %53 = load i32, i32* %stat34, align 4
  %and35 = and i32 %53, 64
  %tobool36 = icmp ne i32 %and35, 0
  %lnot = xor i1 %tobool36, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %54, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %55 = load i32, i32* @maxjob, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* @maxjob, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end37

if.end37:                                         ; preds = %while.end, %if.end24
  ret void
}

; Function Attrs: noinline nounwind
define void @addproc(i32 %pid, i8* %text, i32 %aux, %struct.timeval* %bgtime) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 4
  %aux.addr = alloca i32, align 4
  %bgtime.addr = alloca %struct.timeval*, align 4
  %pn = alloca %struct.process*, align 4
  %pnlist = alloca %struct.process**, align 4
  %n = alloca %struct.process*, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i8* %text, i8** %text.addr, align 4
  store i32 %aux, i32* %aux.addr, align 4
  store %struct.timeval* %bgtime, %struct.timeval** %bgtime.addr, align 4
  %call = call i8* @zshcalloc(i32 244)
  %0 = bitcast i8* %call to %struct.process*
  store %struct.process* %0, %struct.process** %pn, align 4
  %1 = load i32, i32* %pid.addr, align 4
  %2 = load %struct.process*, %struct.process** %pn, align 4
  %pid1 = getelementptr inbounds %struct.process, %struct.process* %2, i32 0, i32 1
  store i32 %1, i32* %pid1, align 4
  %3 = load i8*, i8** %text.addr, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.process*, %struct.process** %pn, align 4
  %text2 = getelementptr inbounds %struct.process, %struct.process* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text2, i32 0, i32 0
  %5 = load i8*, i8** %text.addr, align 4
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.process*, %struct.process** %pn, align 4
  %text4 = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [80 x i8], [80 x i8]* %text4, i32 0, i32 0
  store i8 0, i8* %arraydecay5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 3
  store i32 -1, i32* %status, align 4
  %8 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  store %struct.process* null, %struct.process** %next, align 4
  %9 = load i32, i32* %aux.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.else15, label %if.then7

if.then7:                                         ; preds = %if.end
  %10 = load %struct.process*, %struct.process** %pn, align 4
  %bgtime8 = getelementptr inbounds %struct.process, %struct.process* %10, i32 0, i32 5
  %11 = load %struct.timeval*, %struct.timeval** %bgtime.addr, align 4
  %12 = bitcast %struct.timeval* %bgtime8 to i8*
  %13 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false)
  %14 = load %struct.job*, %struct.job** @jobtab, align 4
  %15 = load i32, i32* @thisjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %14, i32 %15
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 0
  %16 = load i32, i32* %gleader, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then7
  %17 = load i32, i32* %pid.addr, align 4
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* @thisjob, align 4
  %arrayidx11 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %gleader12 = getelementptr inbounds %struct.job, %struct.job* %arrayidx11, i32 0, i32 0
  store i32 %17, i32* %gleader12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7
  %20 = load %struct.job*, %struct.job** @jobtab, align 4
  %21 = load i32, i32* @thisjob, align 4
  %arrayidx14 = getelementptr inbounds %struct.job, %struct.job* %20, i32 %21
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx14, i32 0, i32 4
  store %struct.process** %procs, %struct.process*** %pnlist, align 4
  br label %if.end17

if.else15:                                        ; preds = %if.end
  %22 = load %struct.job*, %struct.job** @jobtab, align 4
  %23 = load i32, i32* @thisjob, align 4
  %arrayidx16 = getelementptr inbounds %struct.job, %struct.job* %22, i32 %23
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %arrayidx16, i32 0, i32 5
  store %struct.process** %auxprocs, %struct.process*** %pnlist, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end13
  %24 = load %struct.process**, %struct.process*** %pnlist, align 4
  %25 = load %struct.process*, %struct.process** %24, align 4
  %tobool18 = icmp ne %struct.process* %25, null
  br i1 %tobool18, label %if.then19, label %if.else24

if.then19:                                        ; preds = %if.end17
  %26 = load %struct.process**, %struct.process*** %pnlist, align 4
  %27 = load %struct.process*, %struct.process** %26, align 4
  store %struct.process* %27, %struct.process** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %28 = load %struct.process*, %struct.process** %n, align 4
  %next20 = getelementptr inbounds %struct.process, %struct.process* %28, i32 0, i32 0
  %29 = load %struct.process*, %struct.process** %next20, align 4
  %tobool21 = icmp ne %struct.process* %29, null
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load %struct.process*, %struct.process** %n, align 4
  %next22 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 0
  %31 = load %struct.process*, %struct.process** %next22, align 4
  store %struct.process* %31, %struct.process** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.process*, %struct.process** %pn, align 4
  %33 = load %struct.process*, %struct.process** %n, align 4
  %next23 = getelementptr inbounds %struct.process, %struct.process* %33, i32 0, i32 0
  store %struct.process* %32, %struct.process** %next23, align 4
  br label %if.end25

if.else24:                                        ; preds = %if.end17
  %34 = load %struct.process*, %struct.process** %pn, align 4
  %35 = load %struct.process**, %struct.process*** %pnlist, align 4
  store %struct.process* %34, %struct.process** %35, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %for.end
  %36 = load %struct.job*, %struct.job** @jobtab, align 4
  %37 = load i32, i32* @thisjob, align 4
  %arrayidx26 = getelementptr inbounds %struct.job, %struct.job* %36, i32 %37
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx26, i32 0, i32 2
  %38 = load i32, i32* %stat, align 4
  %and = and i32 %38, -9
  store i32 %and, i32* %stat, align 4
  ret void
}

declare i8* @zshcalloc(i32) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @havefiles() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %filelist = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 6
  %7 = load %union.linkroot*, %union.linkroot** %filelist, align 4
  %tobool2 = icmp ne %union.linkroot* %7, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @waitforpid(i32 %pid, i32 %wait_cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %wait_cmd.addr = alloca i32, align 4
  %first = alloca i32, align 4
  %q = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %tmp27 = alloca %struct.__sigset_t, align 4
  %tmp29 = alloca %struct.__sigset_t, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i32 %wait_cmd, i32* %wait_cmd.addr, align 4
  store i32 1, i32* %first, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  store i32 %0, i32* %q, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %1 = load i32, i32* @queue_front, align 4
  %2 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %3, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %4 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %4
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %5 = bitcast %struct.__sigset_t* %oset to i8*
  %6 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 128, i32 4, i1 false)
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %7
  %8 = load i32, i32* %arrayidx2, align 4
  call void @zhandler(i32 %8)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end4

do.end4:                                          ; preds = %do.end
  call void @signal_block(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 @sigchld_mask)
  %9 = load i32, i32* %wait_cmd.addr, align 4
  call void @queue_traps(i32 %9)
  br label %while.cond6

while.cond6:                                      ; preds = %if.end26, %do.end4
  %10 = load i32, i32* @errflag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond6
  %11 = load i32, i32* %pid.addr, align 4
  %call = call i32 @kill(i32 %11, i32 0)
  %cmp7 = icmp sge i32 %call, 0
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call8 = call i32* @__errno_location()
  %12 = load i32, i32* %call8, align 4
  %cmp9 = icmp ne i32 %12, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %cmp9, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond6
  %14 = phi i1 [ false, %while.cond6 ], [ %13, %lor.end ]
  br i1 %14, label %while.body10, label %while.end28

while.body10:                                     ; preds = %land.end
  %15 = load i32, i32* %first, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %while.body10
  store i32 0, i32* %first, align 4
  br label %if.end15

if.else:                                          ; preds = %while.body10
  %16 = load i32, i32* %wait_cmd.addr, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.else
  %17 = load i32, i32* %pid.addr, align 4
  %call14 = call i32 @kill(i32 %17, i32 18)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  store i32 -1, i32* @last_signal, align 4
  %18 = load i32, i32* %wait_cmd.addr, align 4
  %call16 = call i32 @signal_suspend(i32 17, i32 %18)
  %19 = load i32, i32* @last_signal, align 4
  %cmp17 = icmp ne i32 %19, 17
  br i1 %cmp17, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  %20 = load i32, i32* %wait_cmd.addr, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.end26

land.lhs.true19:                                  ; preds = %land.lhs.true
  %21 = load i32, i32* @last_signal, align 4
  %cmp20 = icmp sge i32 %21, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.end26

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %22 = load i32, i32* @last_signal, align 4
  %arrayidx22 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %22
  %23 = load i32, i32* %arrayidx22, align 4
  %and = and i32 %23, 1
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %land.lhs.true21
  %24 = load i32, i32* %q, align 4
  store i32 %24, i32* @queueing_enabled, align 4
  %25 = load i32, i32* @last_signal, align 4
  %add25 = add nsw i32 128, %25
  store i32 %add25, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true21, %land.lhs.true19, %land.lhs.true, %if.end15
  call void @signal_block(%struct.__sigset_t* sret %tmp27, %struct.__sigset_t* byval align 4 @sigchld_mask)
  br label %while.cond6

while.end28:                                      ; preds = %land.end
  call void @unqueue_traps()
  call void @signal_unblock(%struct.__sigset_t* sret %tmp29, %struct.__sigset_t* byval align 4 @sigchld_mask)
  %26 = load i32, i32* %q, align 4
  store i32 %26, i32* @queueing_enabled, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end28, %if.then24
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @zhandler(i32) #1

declare void @signal_block(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @queue_traps(i32) #1

declare i32* @__errno_location() #1

declare i32 @signal_suspend(i32, i32) #1

declare void @unqueue_traps() #1

declare void @signal_unblock(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: noinline nounwind
define void @waitjobs() #0 {
entry:
  %jn = alloca %struct.job*, align 4
  %0 = load %struct.job*, %struct.job** @jobtab, align 4
  %1 = load i32, i32* @thisjob, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %0, i32 %1
  store %struct.job* %add.ptr, %struct.job** %jn, align 4
  %2 = load %struct.job*, %struct.job** %jn, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %2, i32 0, i32 4
  %3 = load %struct.process*, %struct.process** %procs, align 4
  %tobool = icmp ne %struct.process* %3, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.job*, %struct.job** %jn, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %4, i32 0, i32 5
  %5 = load %struct.process*, %struct.process** %auxprocs, align 4
  %tobool1 = icmp ne %struct.process* %5, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* @thisjob, align 4
  %call = call i32 @zwaitjob(i32 %6, i32 0)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.job*, %struct.job** %jn, align 4
  call void @deletejob(%struct.job* %7, i32 0)
  %8 = load i32, i32* @lastval, align 4
  store i32 %8, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @pipestats, i32 0, i32 0), align 4
  store i32 1, i32* @numpipestats, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 -1, i32* @thisjob, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @zwaitjob(i32 %job, i32 %wait_cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca i32, align 4
  %wait_cmd.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %jn = alloca %struct.job*, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp3 = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %tmp65 = alloca %struct.__sigset_t, align 4
  %tmp68 = alloca %struct.__sigset_t, align 4
  store i32 %job, i32* %job.addr, align 4
  store i32 %wait_cmd, i32* %wait_cmd.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  store i32 %0, i32* %q, align 4
  %1 = load %struct.job*, %struct.job** @jobtab, align 4
  %2 = load i32, i32* %job.addr, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %1, i32 %2
  store %struct.job* %add.ptr, %struct.job** %jn, align 4
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask)
  %3 = load i32, i32* %wait_cmd.addr, align 4
  call void @queue_traps(i32 %3)
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %4 = load i32, i32* @queue_front, align 4
  %5 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %7
  call void @signal_setmask(%struct.__sigset_t* sret %tmp3, %struct.__sigset_t* byval align 4 %arrayidx)
  %8 = bitcast %struct.__sigset_t* %oset to i8*
  %9 = bitcast %struct.__sigset_t* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 128, i32 4, i1 false)
  %10 = load i32, i32* @queue_front, align 4
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %10
  %11 = load i32, i32* %arrayidx4, align 4
  call void @zhandler(i32 %11)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end6

do.end6:                                          ; preds = %do.end
  %12 = load %struct.job*, %struct.job** %jn, align 4
  %procs = getelementptr inbounds %struct.job, %struct.job* %12, i32 0, i32 4
  %13 = load %struct.process*, %struct.process** %procs, align 4
  %tobool = icmp ne %struct.process* %13, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %14 = load %struct.job*, %struct.job** %jn, align 4
  %auxprocs = getelementptr inbounds %struct.job, %struct.job* %14, i32 0, i32 5
  %15 = load %struct.process*, %struct.process** %auxprocs, align 4
  %tobool7 = icmp ne %struct.process* %15, null
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  %16 = load %struct.job*, %struct.job** %jn, align 4
  %stat = getelementptr inbounds %struct.job, %struct.job* %16, i32 0, i32 2
  %17 = load i32, i32* %stat, align 4
  %or = or i32 %17, 16
  store i32 %or, i32* %stat, align 4
  %18 = load %struct.job*, %struct.job** %jn, align 4
  %stat8 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 2
  %19 = load i32, i32* %stat8, align 4
  %and = and i32 %19, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %20 = load %struct.job*, %struct.job** %jn, align 4
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool11 = icmp ne i8 %21, 0
  %lnot = xor i1 %tobool11, true
  %lnot12 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot12 to i32
  %call = call i32 @printjob(%struct.job* %20, i32 %lnot.ext, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %22 = load %struct.job*, %struct.job** %jn, align 4
  %filelist = getelementptr inbounds %struct.job, %struct.job* %22, i32 0, i32 6
  %23 = load %union.linkroot*, %union.linkroot** %filelist, align 4
  %tobool13 = icmp ne %union.linkroot* %23, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %24 = load %struct.job*, %struct.job** %jn, align 4
  %filelist15 = getelementptr inbounds %struct.job, %struct.job* %24, i32 0, i32 6
  %25 = load %union.linkroot*, %union.linkroot** %filelist15, align 4
  call void @pipecleanfilelist(%union.linkroot* %25, i32 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end
  br label %while.cond17

while.cond17:                                     ; preds = %if.end64, %if.end16
  %26 = load i32, i32* @errflag, align 4
  %and18 = and i32 %26, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond17
  %27 = load %struct.job*, %struct.job** %jn, align 4
  %stat20 = getelementptr inbounds %struct.job, %struct.job* %27, i32 0, i32 2
  %28 = load i32, i32* %stat20, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %land.lhs.true22, label %land.end33

land.lhs.true22:                                  ; preds = %land.lhs.true
  %29 = load %struct.job*, %struct.job** %jn, align 4
  %stat23 = getelementptr inbounds %struct.job, %struct.job* %29, i32 0, i32 2
  %30 = load i32, i32* %stat23, align 4
  %and24 = and i32 %30, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %land.end33, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true22
  %31 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %31 to i32
  %tobool26 = icmp ne i32 %conv, 0
  br i1 %tobool26, label %land.rhs27, label %land.end

land.rhs27:                                       ; preds = %land.rhs
  %32 = load %struct.job*, %struct.job** %jn, align 4
  %stat28 = getelementptr inbounds %struct.job, %struct.job* %32, i32 0, i32 2
  %33 = load i32, i32* %stat28, align 4
  %and29 = and i32 %33, 2
  %tobool30 = icmp ne i32 %and29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs27, %land.rhs
  %34 = phi i1 [ false, %land.rhs ], [ %tobool30, %land.rhs27 ]
  %lnot31 = xor i1 %34, true
  br label %land.end33

land.end33:                                       ; preds = %land.end, %land.lhs.true22, %land.lhs.true, %while.cond17
  %35 = phi i1 [ false, %land.lhs.true22 ], [ false, %land.lhs.true ], [ false, %while.cond17 ], [ %lnot31, %land.end ]
  br i1 %35, label %while.body34, label %while.end66

while.body34:                                     ; preds = %land.end33
  %36 = load i32, i32* %wait_cmd.addr, align 4
  %call35 = call i32 @signal_suspend(i32 17, i32 %36)
  %37 = load i32, i32* @last_signal, align 4
  %cmp36 = icmp ne i32 %37, 17
  br i1 %cmp36, label %land.lhs.true38, label %if.end49

land.lhs.true38:                                  ; preds = %while.body34
  %38 = load i32, i32* %wait_cmd.addr, align 4
  %tobool39 = icmp ne i32 %38, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end49

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %39 = load i32, i32* @last_signal, align 4
  %cmp41 = icmp sge i32 %39, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end49

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %40 = load i32, i32* @last_signal, align 4
  %arrayidx44 = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %40
  %41 = load i32, i32* %arrayidx44, align 4
  %and45 = and i32 %41, 1
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %land.lhs.true43
  %42 = load i32, i32* %q, align 4
  store i32 %42, i32* @queueing_enabled, align 4
  %43 = load i32, i32* @last_signal, align 4
  %add48 = add nsw i32 128, %43
  store i32 %add48, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %land.lhs.true43, %land.lhs.true40, %land.lhs.true38, %while.body34
  %44 = load i32, i32* @subsh, align 4
  %tobool50 = icmp ne i32 %44, 0
  br i1 %tobool50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end49
  %45 = load %struct.job*, %struct.job** %jn, align 4
  %call52 = call i32 @killjb(%struct.job* %45, i32 18)
  %46 = load %struct.job*, %struct.job** %jn, align 4
  %stat53 = getelementptr inbounds %struct.job, %struct.job* %46, i32 0, i32 2
  %47 = load i32, i32* %stat53, align 4
  %and54 = and i32 %47, -3
  store i32 %and54, i32* %stat53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49
  %48 = load %struct.job*, %struct.job** %jn, align 4
  %stat56 = getelementptr inbounds %struct.job, %struct.job* %48, i32 0, i32 2
  %49 = load i32, i32* %stat56, align 4
  %and57 = and i32 %49, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end55
  %50 = load %struct.job*, %struct.job** %jn, align 4
  %51 = load %struct.job*, %struct.job** @jobtab, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.job* %50 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.job* %51 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %call60 = call i32 @handle_sub(i32 %sub.ptr.div, i32 1)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  br label %while.end66

if.end63:                                         ; preds = %if.then59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end55
  call void @signal_block(%struct.__sigset_t* sret %tmp65, %struct.__sigset_t* byval align 4 @sigchld_mask)
  br label %while.cond17

while.end66:                                      ; preds = %if.then62, %land.end33
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  %52 = load %struct.job*, %struct.job** %jn, align 4
  call void @deletejob(%struct.job* %52, i32 0)
  %53 = load i32, i32* @lastval, align 4
  store i32 %53, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @pipestats, i32 0, i32 0), align 4
  store i32 1, i32* @numpipestats, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %while.end66
  %54 = load i32, i32* %q, align 4
  store i32 %54, i32* @queueing_enabled, align 4
  call void @unqueue_traps()
  call void @signal_unblock(%struct.__sigset_t* sret %tmp68, %struct.__sigset_t* byval align 4 @sigchld_mask)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then47
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind
define void @clearjobtab(i32 %monitor) #0 {
entry:
  %monitor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca i32, align 4
  store i32 %monitor, i32* %monitor.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 135), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @oldmaxjob, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %monitor.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 135), align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %if.else, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %7 = load i32, i32* %stat, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* @oldmaxjob, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %for.body
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %stat7 = getelementptr inbounds %struct.job, %struct.job* %arrayidx6, i32 0, i32 2
  %11 = load i32, i32* %stat7, align 4
  %and = and i32 %11, 64
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %i, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  call void @freejob(%struct.job* %add.ptr, i32 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %monitor.addr, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end25

land.lhs.true13:                                  ; preds = %for.end
  %16 = load i32, i32* @oldmaxjob, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then15, label %if.end25

if.then15:                                        ; preds = %land.lhs.true13
  %17 = load i32, i32* @oldmaxjob, align 4
  %mul = mul i32 %17, 36
  store i32 %mul, i32* %sz, align 4
  %18 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %tobool16 = icmp ne %struct.job* %18, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then15
  %19 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %20 = bitcast %struct.job* %19 to i8*
  call void @free(i8* %20)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15
  %21 = load i32, i32* %sz, align 4
  %call = call i8* @zalloc(i32 %21)
  %22 = bitcast i8* %call to %struct.job*
  store %struct.job* %22, %struct.job** @oldjobtab, align 4
  %23 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %24 = bitcast %struct.job* %23 to i8*
  %25 = load %struct.job*, %struct.job** @jobtab, align 4
  %26 = bitcast %struct.job* %25 to i8*
  %27 = load i32, i32* %sz, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %26, i32 %27, i32 4, i1 false)
  %28 = load i32, i32* @thisjob, align 4
  %cmp19 = icmp ne i32 %28, -1
  br i1 %cmp19, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %if.end18
  %29 = load i32, i32* @thisjob, align 4
  %30 = load i32, i32* @oldmaxjob, align 4
  %cmp21 = icmp slt i32 %29, %30
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true20
  %31 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %32 = load i32, i32* @thisjob, align 4
  %add.ptr23 = getelementptr inbounds %struct.job, %struct.job* %31, i32 %32
  %33 = bitcast %struct.job* %add.ptr23 to i8*
  call void @llvm.memset.p0i8.i32(i8* %33, i8 0, i32 36, i32 4, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true20, %if.end18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true13, %for.end
  %34 = load %struct.job*, %struct.job** @jobtab, align 4
  %35 = bitcast %struct.job* %34 to i8*
  %36 = load i32, i32* @jobtabsize, align 4
  %mul26 = mul i32 %36, 36
  call void @llvm.memset.p0i8.i32(i8* %35, i8 0, i32 %mul26, i32 4, i1 false)
  store i32 0, i32* @maxjob, align 4
  %call27 = call i32 @initjob()
  store i32 %call27, i32* @thisjob, align 4
  ret void
}

declare void @free(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define i32 @initjob() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %call = call i32 @initnewjob(i32 %5)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* @maxjob, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* @jobtabsize, align 4
  %cmp1 = icmp slt i32 %add, %8
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %for.end
  %9 = load i32, i32* @maxjob, align 4
  %add3 = add nsw i32 %9, 1
  %call4 = call i32 @initnewjob(i32 %add3)
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.end
  %call6 = call i32 @expandjobtab()
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %10 = load i32, i32* %i, align 4
  %call9 = call i32 @initnewjob(i32 %10)
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @initnewjob(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.job*, %struct.job** @jobtab, align 4
  %1 = load i32, i32* %i.addr, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %0, i32 %1
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  store i32 64, i32* %stat, align 4
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i.addr, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %pwd = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 3
  %4 = load i8*, i8** %pwd, align 4
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i.addr, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %pwd3 = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 3
  %7 = load i8*, i8** %pwd3, align 4
  call void @zsfree(i8* %7)
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %i.addr, align 4
  %arrayidx4 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %pwd5 = getelementptr inbounds %struct.job, %struct.job* %arrayidx4, i32 0, i32 3
  store i8* null, i8** %pwd5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.job*, %struct.job** @jobtab, align 4
  %11 = load i32, i32* %i.addr, align 4
  %arrayidx6 = getelementptr inbounds %struct.job, %struct.job* %10, i32 %11
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx6, i32 0, i32 0
  store i32 0, i32* %gleader, align 4
  %12 = load i32, i32* %i.addr, align 4
  %13 = load i32, i32* @maxjob, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load i32, i32* %i.addr, align 4
  store i32 %14, i32* @maxjob, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %15 = load i32, i32* %i.addr, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind
define i32 @expandjobtab() #0 {
entry:
  %retval = alloca i32, align 4
  %newsize = alloca i32, align 4
  %newjobtab = alloca %struct.job*, align 4
  %0 = load i32, i32* @jobtabsize, align 4
  %add = add nsw i32 %0, 50
  store i32 %add, i32* %newsize, align 4
  %1 = load i32, i32* %newsize, align 4
  %cmp = icmp sgt i32 %1, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = bitcast %struct.job* %2 to i8*
  %4 = load i32, i32* %newsize, align 4
  %mul = mul i32 %4, 36
  %call = call i8* @zrealloc(i8* %3, i32 %mul)
  %5 = bitcast i8* %call to %struct.job*
  store %struct.job* %5, %struct.job** %newjobtab, align 4
  %6 = load %struct.job*, %struct.job** %newjobtab, align 4
  %tobool = icmp ne %struct.job* %6, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %7 = load %struct.job*, %struct.job** %newjobtab, align 4
  %8 = load i32, i32* @jobtabsize, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %7, i32 %8
  %9 = bitcast %struct.job* %add.ptr to i8*
  call void @llvm.memset.p0i8.i32(i8* %9, i8 0, i32 1800, i32 4, i1 false)
  %10 = load %struct.job*, %struct.job** %newjobtab, align 4
  store %struct.job* %10, %struct.job** @jobtab, align 4
  %11 = load i32, i32* %newsize, align 4
  store i32 %11, i32* @jobtabsize, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare void @zerr(i8*, ...) #1

; Function Attrs: noinline nounwind
define void @setjobpwd() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %pwd = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 3
  %7 = load i8*, i8** %pwd, align 4
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** @pwd, align 4
  %call = call i8* @ztrdup(i8* %8)
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %pwd4 = getelementptr inbounds %struct.job, %struct.job* %arrayidx3, i32 0, i32 3
  store i8* %call, i8** %pwd4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @spawnjob() #0 {
entry:
  %pn = alloca %struct.process*, align 4
  %fout = alloca %struct._IO_FILE*, align 4
  %0 = load i32, i32* @subsh, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @curjob, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* @curjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load i32, i32* @thisjob, align 4
  store i32 %5, i32* @curjob, align 4
  call void @setprevjob()
  br label %if.end10

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* @prevjob, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then9, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.else
  %7 = load %struct.job*, %struct.job** @jobtab, align 4
  %8 = load i32, i32* @prevjob, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %7, i32 %8
  %stat6 = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 2
  %9 = load i32, i32* %stat6, align 4
  %and7 = and i32 %9, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false4, %if.else
  %10 = load i32, i32* @thisjob, align 4
  store i32 %10, i32* @prevjob, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then2
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv = sext i8 %11 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* @thisjob, align 4
  %arrayidx12 = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx12, i32 0, i32 4
  %14 = load %struct.process*, %struct.process** %procs, align 4
  %tobool13 = icmp ne %struct.process* %14, null
  br i1 %tobool13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool15 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %16, %cond.true ], [ %17, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %fout, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %19 = load i32, i32* @thisjob, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %19)
  %20 = load %struct.job*, %struct.job** @jobtab, align 4
  %21 = load i32, i32* @thisjob, align 4
  %arrayidx16 = getelementptr inbounds %struct.job, %struct.job* %20, i32 %21
  %procs17 = getelementptr inbounds %struct.job, %struct.job* %arrayidx16, i32 0, i32 4
  %22 = load %struct.process*, %struct.process** %procs17, align 4
  store %struct.process* %22, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load %struct.process*, %struct.process** %pn, align 4
  %tobool18 = icmp ne %struct.process* %23, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %25 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %25, i32 0, i32 1
  %26 = load i32, i32* %pid, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %27, i32 0, i32 0
  %28 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %28, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call21 = call i32 @fflush(%struct._IO_FILE* %30)
  br label %if.end22

if.end22:                                         ; preds = %for.end, %land.lhs.true, %if.end10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %31 = load i32, i32* @thisjob, align 4
  %call24 = call i32 @hasprocs(i32 %31)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end23
  %32 = load %struct.job*, %struct.job** @jobtab, align 4
  %33 = load i32, i32* @thisjob, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %32, i32 %33
  call void @deletejob(%struct.job* %add.ptr, i32 0)
  br label %if.end31

if.else27:                                        ; preds = %if.end23
  %34 = load %struct.job*, %struct.job** @jobtab, align 4
  %35 = load i32, i32* @thisjob, align 4
  %arrayidx28 = getelementptr inbounds %struct.job, %struct.job* %34, i32 %35
  %stat29 = getelementptr inbounds %struct.job, %struct.job* %arrayidx28, i32 0, i32 2
  %36 = load i32, i32* %stat29, align 4
  %or = or i32 %36, 16
  store i32 %or, i32* %stat29, align 4
  %37 = load %struct.job*, %struct.job** @jobtab, align 4
  %38 = load i32, i32* @thisjob, align 4
  %arrayidx30 = getelementptr inbounds %struct.job, %struct.job* %37, i32 %38
  %filelist = getelementptr inbounds %struct.job, %struct.job* %arrayidx30, i32 0, i32 6
  %39 = load %union.linkroot*, %union.linkroot** %filelist, align 4
  call void @pipecleanfilelist(%union.linkroot* %39, i32 0)
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then26
  store i32 -1, i32* @thisjob, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @shelltime() #0 {
entry:
  %dummy_tz = alloca %struct.timezone, align 4
  %dtimeval = alloca %struct.timeval, align 4
  %now = alloca %struct.timeval, align 4
  %ti = alloca %struct.rusage, align 4
  %0 = bitcast %struct.timezone* %dummy_tz to i8*
  %call = call i32 @gettimeofday(%struct.timeval* %now, i8* %0)
  %call1 = call i32 @getrusage(i32 0, %struct.rusage* %ti)
  %call2 = call %struct.timeval* @dtime(%struct.timeval* %dtimeval, %struct.timeval* @shtimer, %struct.timeval* %now)
  call void @printtime(%struct.timeval* %call2, %struct.rusage* %ti, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call i32 @getrusage(i32 -1, %struct.rusage* %ti)
  call void @printtime(%struct.timeval* %dtimeval, %struct.rusage* %ti, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0))
  ret void
}

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @printtime(%struct.timeval* %real, %struct.rusage* %ti, i8* %desc) #0 {
entry:
  %real.addr = alloca %struct.timeval*, align 4
  %ti.addr = alloca %struct.rusage*, align 4
  %desc.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  %elapsed_time = alloca double, align 8
  %user_time = alloca double, align 8
  %system_time = alloca double, align 8
  %total_time = alloca double, align 8
  %percent = alloca i32, align 4
  %desclen = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp161 = alloca %struct.__sigset_t, align 4
  store %struct.timeval* %real, %struct.timeval** %real.addr, align 4
  store %struct.rusage* %ti, %struct.rusage** %ti.addr, align 4
  store i8* %desc, i8** %desc.addr, align 4
  %0 = load i8*, i8** %desc.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %desc.addr, align 4
  store i32 0, i32* %desclen, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %desc.addr, align 4
  %call = call i8* @dupstring(i8* %1)
  store i8* %call, i8** %desc.addr, align 4
  %2 = load i8*, i8** %desc.addr, align 4
  %call1 = call i8* @unmetafy(i8* %2, i32* %desclen)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.timeval*, %struct.timeval** %real.addr, align 4
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %4 = load i32, i32* %tv_sec, align 4
  %conv = sitofp i32 %4 to double
  %5 = load %struct.timeval*, %struct.timeval** %real.addr, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %6 = load i32, i32* %tv_usec, align 4
  %conv2 = sitofp i32 %6 to double
  %div = fdiv double %conv2, 1.000000e+06
  %add = fadd double %conv, %div
  store double %add, double* %elapsed_time, align 8
  %7 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %tv_sec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %8 = load i32, i32* %tv_sec3, align 4
  %conv4 = sitofp i32 %8 to double
  %9 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_utime5 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 0
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime5, i32 0, i32 1
  %10 = load i32, i32* %tv_usec6, align 4
  %conv7 = sitofp i32 %10 to double
  %div8 = fdiv double %conv7, 1.000000e+06
  %add9 = fadd double %conv4, %div8
  store double %add9, double* %user_time, align 8
  %11 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %11, i32 0, i32 1
  %tv_sec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0
  %12 = load i32, i32* %tv_sec10, align 4
  %conv11 = sitofp i32 %12 to double
  %13 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_stime12 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 1
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime12, i32 0, i32 1
  %14 = load i32, i32* %tv_usec13, align 4
  %conv14 = sitofp i32 %14 to double
  %div15 = fdiv double %conv14, 1.000000e+06
  %add16 = fadd double %conv11, %div15
  store double %add16, double* %system_time, align 8
  %15 = load double, double* %user_time, align 8
  %16 = load double, double* %system_time, align 8
  %add17 = fadd double %15, %16
  store double %add17, double* %total_time, align 8
  %17 = load double, double* %total_time, align 8
  %mul = fmul double 1.000000e+02, %17
  %18 = load %struct.timeval*, %struct.timeval** %real.addr, align 4
  %tv_sec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %19 = load i32, i32* %tv_sec18, align 4
  %conv19 = sitofp i32 %19 to double
  %20 = load %struct.timeval*, %struct.timeval** %real.addr, align 4
  %tv_usec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  %21 = load i32, i32* %tv_usec20, align 4
  %conv21 = sitofp i32 %21 to double
  %div22 = fdiv double %conv21, 1.000000e+06
  %add23 = fadd double %conv19, %div22
  %div24 = fdiv double %mul, %add23
  %conv25 = fptosi double %div24 to i32
  store i32 %conv25, i32* %percent, align 4
  %22 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call26 = call i8* @getsparam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0))
  store i8* %call26, i8** %s, align 4
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0), i8** %s, align 4
  br label %if.end31

if.else29:                                        ; preds = %if.end
  %23 = load i8*, i8** %s, align 4
  %call30 = call i8* @unmetafy(i8* %23, i32* null)
  store i8* %call30, i8** %s, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %24 = load i8*, i8** %s, align 4
  %25 = load i8, i8* %24, align 1
  %tobool32 = icmp ne i8 %25, 0
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %s, align 4
  %27 = load i8, i8* %26, align 1
  %conv33 = sext i8 %27 to i32
  %cmp = icmp eq i32 %conv33, 37
  br i1 %cmp, label %if.then35, label %if.else149

if.then35:                                        ; preds = %for.body
  %28 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  %29 = load i8, i8* %incdec.ptr, align 1
  %conv36 = sext i8 %29 to i32
  switch i32 %conv36, label %sw.default145 [
    i32 69, label %sw.bb
    i32 85, label %sw.bb38
    i32 83, label %sw.bb40
    i32 109, label %sw.bb42
    i32 117, label %sw.bb56
    i32 42, label %sw.bb72
    i32 80, label %sw.bb82
    i32 87, label %sw.bb84
    i32 88, label %sw.bb86
    i32 68, label %sw.bb92
    i32 75, label %sw.bb103
    i32 77, label %sw.bb118
    i32 70, label %sw.bb121
    i32 82, label %sw.bb123
    i32 73, label %sw.bb125
    i32 79, label %sw.bb127
    i32 114, label %sw.bb129
    i32 115, label %sw.bb131
    i32 107, label %sw.bb133
    i32 119, label %sw.bb135
    i32 99, label %sw.bb137
    i32 74, label %sw.bb139
    i32 37, label %sw.bb141
    i32 0, label %sw.bb143
  ]

sw.bb:                                            ; preds = %if.then35
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %31 = load double, double* %elapsed_time, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), double %31)
  br label %sw.epilog148

sw.bb38:                                          ; preds = %if.then35
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %33 = load double, double* %user_time, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), double %33)
  br label %sw.epilog148

sw.bb40:                                          ; preds = %if.then35
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %35 = load double, double* %system_time, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), double %35)
  br label %sw.epilog148

sw.bb42:                                          ; preds = %if.then35
  %36 = load i8*, i8** %s, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr43, i8** %s, align 4
  %37 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = sext i8 %37 to i32
  switch i32 %conv44, label %sw.default [
    i32 69, label %sw.bb45
    i32 85, label %sw.bb48
    i32 83, label %sw.bb51
  ]

sw.bb45:                                          ; preds = %sw.bb42
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %39 = load double, double* %elapsed_time, align 8
  %mul46 = fmul double %39, 1.000000e+03
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), double %mul46)
  br label %sw.epilog

sw.bb48:                                          ; preds = %sw.bb42
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %41 = load double, double* %user_time, align 8
  %mul49 = fmul double %41, 1.000000e+03
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), double %mul49)
  br label %sw.epilog

sw.bb51:                                          ; preds = %sw.bb42
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %43 = load double, double* %system_time, align 8
  %mul52 = fmul double %43, 1.000000e+03
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), double %mul52)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0))
  %45 = load i8*, i8** %s, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %incdec.ptr55, i8** %s, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb51, %sw.bb48, %sw.bb45
  br label %sw.epilog148

sw.bb56:                                          ; preds = %if.then35
  %46 = load i8*, i8** %s, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr57, i8** %s, align 4
  %47 = load i8, i8* %incdec.ptr57, align 1
  %conv58 = sext i8 %47 to i32
  switch i32 %conv58, label %sw.default68 [
    i32 69, label %sw.bb59
    i32 85, label %sw.bb62
    i32 83, label %sw.bb65
  ]

sw.bb59:                                          ; preds = %sw.bb56
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %49 = load double, double* %elapsed_time, align 8
  %mul60 = fmul double %49, 1.000000e+06
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %mul60)
  br label %sw.epilog71

sw.bb62:                                          ; preds = %sw.bb56
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %51 = load double, double* %user_time, align 8
  %mul63 = fmul double %51, 1.000000e+06
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %mul63)
  br label %sw.epilog71

sw.bb65:                                          ; preds = %sw.bb56
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %53 = load double, double* %system_time, align 8
  %mul66 = fmul double %53, 1.000000e+06
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %mul66)
  br label %sw.epilog71

sw.default68:                                     ; preds = %sw.bb56
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0))
  %55 = load i8*, i8** %s, align 4
  %incdec.ptr70 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr70, i8** %s, align 4
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.default68, %sw.bb65, %sw.bb62, %sw.bb59
  br label %sw.epilog148

sw.bb72:                                          ; preds = %if.then35
  %56 = load i8*, i8** %s, align 4
  %incdec.ptr73 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr73, i8** %s, align 4
  %57 = load i8, i8* %incdec.ptr73, align 1
  %conv74 = sext i8 %57 to i32
  switch i32 %conv74, label %sw.default78 [
    i32 69, label %sw.bb75
    i32 85, label %sw.bb76
    i32 83, label %sw.bb77
  ]

sw.bb75:                                          ; preds = %sw.bb72
  %58 = load double, double* %elapsed_time, align 8
  call void @printhhmmss(double %58)
  br label %sw.epilog81

sw.bb76:                                          ; preds = %sw.bb72
  %59 = load double, double* %user_time, align 8
  call void @printhhmmss(double %59)
  br label %sw.epilog81

sw.bb77:                                          ; preds = %sw.bb72
  %60 = load double, double* %system_time, align 8
  call void @printhhmmss(double %60)
  br label %sw.epilog81

sw.default78:                                     ; preds = %sw.bb72
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0))
  %62 = load i8*, i8** %s, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr80, i8** %s, align 4
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %sw.default78, %sw.bb77, %sw.bb76, %sw.bb75
  br label %sw.epilog148

sw.bb82:                                          ; preds = %if.then35
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %64 = load i32, i32* %percent, align 4
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 %64)
  br label %sw.epilog148

sw.bb84:                                          ; preds = %if.then35
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %66 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_nswap = getelementptr inbounds %struct.rusage, %struct.rusage* %66, i32 0, i32 8
  %67 = load i32, i32* %ru_nswap, align 4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %67)
  br label %sw.epilog148

sw.bb86:                                          ; preds = %if.then35
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %69 = load double, double* %total_time, align 8
  %tobool87 = fcmp une double %69, 0.000000e+00
  br i1 %tobool87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb86
  %70 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_ixrss = getelementptr inbounds %struct.rusage, %struct.rusage* %70, i32 0, i32 3
  %71 = load i32, i32* %ru_ixrss, align 4
  %conv88 = sitofp i32 %71 to double
  %72 = load double, double* %total_time, align 8
  %div89 = fdiv double %conv88, %72
  %conv90 = fptosi double %div89 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv90, %cond.true ], [ 0, %cond.false ]
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %cond)
  br label %sw.epilog148

sw.bb92:                                          ; preds = %if.then35
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %74 = load double, double* %total_time, align 8
  %tobool93 = fcmp une double %74, 0.000000e+00
  br i1 %tobool93, label %cond.true94, label %cond.false99

cond.true94:                                      ; preds = %sw.bb92
  %75 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_idrss = getelementptr inbounds %struct.rusage, %struct.rusage* %75, i32 0, i32 4
  %76 = load i32, i32* %ru_idrss, align 4
  %77 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_isrss = getelementptr inbounds %struct.rusage, %struct.rusage* %77, i32 0, i32 5
  %78 = load i32, i32* %ru_isrss, align 4
  %add95 = add nsw i32 %76, %78
  %conv96 = sitofp i32 %add95 to double
  %79 = load double, double* %total_time, align 8
  %div97 = fdiv double %conv96, %79
  %conv98 = fptosi double %div97 to i32
  br label %cond.end100

cond.false99:                                     ; preds = %sw.bb92
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.true94
  %cond101 = phi i32 [ %conv98, %cond.true94 ], [ 0, %cond.false99 ]
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %cond101)
  br label %sw.epilog148

sw.bb103:                                         ; preds = %if.then35
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %81 = load double, double* %total_time, align 8
  %tobool104 = fcmp une double %81, 0.000000e+00
  br i1 %tobool104, label %cond.true105, label %cond.false114

cond.true105:                                     ; preds = %sw.bb103
  %82 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_ixrss106 = getelementptr inbounds %struct.rusage, %struct.rusage* %82, i32 0, i32 3
  %83 = load i32, i32* %ru_ixrss106, align 4
  %84 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_idrss107 = getelementptr inbounds %struct.rusage, %struct.rusage* %84, i32 0, i32 4
  %85 = load i32, i32* %ru_idrss107, align 4
  %add108 = add nsw i32 %83, %85
  %86 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_isrss109 = getelementptr inbounds %struct.rusage, %struct.rusage* %86, i32 0, i32 5
  %87 = load i32, i32* %ru_isrss109, align 4
  %add110 = add nsw i32 %add108, %87
  %conv111 = sitofp i32 %add110 to double
  %88 = load double, double* %total_time, align 8
  %div112 = fdiv double %conv111, %88
  %conv113 = fptosi double %div112 to i32
  br label %cond.end115

cond.false114:                                    ; preds = %sw.bb103
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %cond.true105
  %cond116 = phi i32 [ %conv113, %cond.true105 ], [ 0, %cond.false114 ]
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %cond116)
  br label %sw.epilog148

sw.bb118:                                         ; preds = %if.then35
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %90 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_maxrss = getelementptr inbounds %struct.rusage, %struct.rusage* %90, i32 0, i32 2
  %91 = load i32, i32* %ru_maxrss, align 4
  %div119 = sdiv i32 %91, 1024
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %div119)
  br label %sw.epilog148

sw.bb121:                                         ; preds = %if.then35
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %93 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_majflt = getelementptr inbounds %struct.rusage, %struct.rusage* %93, i32 0, i32 7
  %94 = load i32, i32* %ru_majflt, align 4
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %94)
  br label %sw.epilog148

sw.bb123:                                         ; preds = %if.then35
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %96 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_minflt = getelementptr inbounds %struct.rusage, %struct.rusage* %96, i32 0, i32 6
  %97 = load i32, i32* %ru_minflt, align 4
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %97)
  br label %sw.epilog148

sw.bb125:                                         ; preds = %if.then35
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %99 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_inblock = getelementptr inbounds %struct.rusage, %struct.rusage* %99, i32 0, i32 9
  %100 = load i32, i32* %ru_inblock, align 4
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %100)
  br label %sw.epilog148

sw.bb127:                                         ; preds = %if.then35
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %102 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_oublock = getelementptr inbounds %struct.rusage, %struct.rusage* %102, i32 0, i32 10
  %103 = load i32, i32* %ru_oublock, align 4
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %103)
  br label %sw.epilog148

sw.bb129:                                         ; preds = %if.then35
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %105 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_msgrcv = getelementptr inbounds %struct.rusage, %struct.rusage* %105, i32 0, i32 12
  %106 = load i32, i32* %ru_msgrcv, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %106)
  br label %sw.epilog148

sw.bb131:                                         ; preds = %if.then35
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %108 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_msgsnd = getelementptr inbounds %struct.rusage, %struct.rusage* %108, i32 0, i32 11
  %109 = load i32, i32* %ru_msgsnd, align 4
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %109)
  br label %sw.epilog148

sw.bb133:                                         ; preds = %if.then35
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %111 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_nsignals = getelementptr inbounds %struct.rusage, %struct.rusage* %111, i32 0, i32 13
  %112 = load i32, i32* %ru_nsignals, align 4
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %112)
  br label %sw.epilog148

sw.bb135:                                         ; preds = %if.then35
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %114 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_nvcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %114, i32 0, i32 14
  %115 = load i32, i32* %ru_nvcsw, align 4
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %115)
  br label %sw.epilog148

sw.bb137:                                         ; preds = %if.then35
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %117 = load %struct.rusage*, %struct.rusage** %ti.addr, align 4
  %ru_nivcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %117, i32 0, i32 15
  %118 = load i32, i32* %ru_nivcsw, align 4
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 %118)
  br label %sw.epilog148

sw.bb139:                                         ; preds = %if.then35
  %119 = load i8*, i8** %desc.addr, align 4
  %120 = load i32, i32* %desclen, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call140 = call i32 @fwrite(i8* %119, i32 1, i32 %120, %struct._IO_FILE* %121)
  br label %sw.epilog148

sw.bb141:                                         ; preds = %if.then35
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call142 = call i32 @putc(i32 37, %struct._IO_FILE* %122)
  br label %sw.epilog148

sw.bb143:                                         ; preds = %if.then35
  %123 = load i8*, i8** %s, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr144, i8** %s, align 4
  br label %sw.epilog148

sw.default145:                                    ; preds = %if.then35
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %125 = load i8*, i8** %s, align 4
  %126 = load i8, i8* %125, align 1
  %conv146 = sext i8 %126 to i32
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 %conv146)
  br label %sw.epilog148

sw.epilog148:                                     ; preds = %sw.default145, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb125, %sw.bb123, %sw.bb121, %sw.bb118, %cond.end115, %cond.end100, %cond.end, %sw.bb84, %sw.bb82, %sw.epilog81, %sw.epilog71, %sw.epilog, %sw.bb40, %sw.bb38, %sw.bb
  br label %if.end152

if.else149:                                       ; preds = %for.body
  %127 = load i8*, i8** %s, align 4
  %128 = load i8, i8* %127, align 1
  %conv150 = sext i8 %128 to i32
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call151 = call i32 @putc(i32 %conv150, %struct._IO_FILE* %129)
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %sw.epilog148
  br label %for.inc

for.inc:                                          ; preds = %if.end152
  %130 = load i8*, i8** %s, align 4
  %incdec.ptr153 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr153, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %131 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %131, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool154 = icmp ne i32 %dec, 0
  br i1 %tobool154, label %if.end162, label %if.then155

if.then155:                                       ; preds = %do.body
  br label %do.body156

do.body156:                                       ; preds = %if.then155
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body156
  %132 = load i32, i32* @queue_front, align 4
  %133 = load i32, i32* @queue_rear, align 4
  %cmp157 = icmp ne i32 %132, %133
  br i1 %cmp157, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %134 = load i32, i32* @queue_front, align 4
  %add159 = add nsw i32 %134, 1
  %rem = srem i32 %add159, 128
  store i32 %rem, i32* @queue_front, align 4
  %135 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %135
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %136 = bitcast %struct.__sigset_t* %oset to i8*
  %137 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %136, i8* %137, i32 128, i32 4, i1 false)
  %138 = load i32, i32* @queue_front, align 4
  %arrayidx160 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %138
  %139 = load i32, i32* %arrayidx160, align 4
  call void @zhandler(i32 %139)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp161, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end162

if.end162:                                        ; preds = %do.end, %do.body
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call164 = call i32 @putc(i32 10, %struct._IO_FILE* %140)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call165 = call i32 @fflush(%struct._IO_FILE* %141)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.timeval* @dtime(%struct.timeval* %dt, %struct.timeval* %t1, %struct.timeval* %t2) #0 {
entry:
  %dt.addr = alloca %struct.timeval*, align 4
  %t1.addr = alloca %struct.timeval*, align 4
  %t2.addr = alloca %struct.timeval*, align 4
  store %struct.timeval* %dt, %struct.timeval** %dt.addr, align 4
  store %struct.timeval* %t1, %struct.timeval** %t1.addr, align 4
  store %struct.timeval* %t2, %struct.timeval** %t2.addr, align 4
  %0 = load %struct.timeval*, %struct.timeval** %t2.addr, align 4
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %0, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4
  %2 = load %struct.timeval*, %struct.timeval** %t1.addr, align 4
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %3 = load i32, i32* %tv_sec1, align 4
  %sub = sub nsw i32 %1, %3
  %4 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %sub, i32* %tv_sec2, align 4
  %5 = load %struct.timeval*, %struct.timeval** %t2.addr, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %6 = load i32, i32* %tv_usec, align 4
  %7 = load %struct.timeval*, %struct.timeval** %t1.addr, align 4
  %tv_usec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %8 = load i32, i32* %tv_usec3, align 4
  %sub4 = sub nsw i32 %6, %8
  %9 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  %tv_usec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %sub4, i32* %tv_usec5, align 4
  %10 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %11 = load i32, i32* %tv_usec6, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  %tv_usec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %13 = load i32, i32* %tv_usec7, align 4
  %conv = sitofp i32 %13 to double
  %add = fadd double %conv, 1.000000e+06
  %conv8 = fptosi double %add to i32
  store i32 %conv8, i32* %tv_usec7, align 4
  %14 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  %tv_sec9 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %15 = load i32, i32* %tv_sec9, align 4
  %conv10 = sitofp i32 %15 to double
  %sub11 = fsub double %conv10, 1.000000e+00
  %conv12 = fptosi double %sub11 to i32
  store i32 %conv12, i32* %tv_sec9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.timeval*, %struct.timeval** %dt.addr, align 4
  ret %struct.timeval* %16
}

; Function Attrs: noinline nounwind
define void @scanjobs() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %i, align 4
  %add.ptr = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool1 = icmp ne i8 %7, 0
  %lnot = xor i1 %tobool1, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %call = call i32 @printjob(%struct.job* %add.ptr, i32 %lnot.ext, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define i32 @getjob(i8* %s, i8* %prog) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %prog.addr = alloca i8*, align 4
  %jobnum = alloca i32, align 4
  %returnval = alloca i32, align 4
  %mymaxjob = alloca i32, align 4
  %myjobtab = alloca %struct.job*, align 4
  %pn = alloca %struct.process*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i8* %prog, i8** %prog.addr, align 4
  %0 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %tobool = icmp ne %struct.job* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.job*, %struct.job** @oldjobtab, align 4
  store %struct.job* %1, %struct.job** %myjobtab, align 4
  %2 = load i32, i32* @oldmaxjob, align 4
  store i32 %2, i32* %mymaxjob, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  store %struct.job* %3, %struct.job** %myjobtab, align 4
  %4 = load i32, i32* @maxjob, align 4
  store i32 %4, i32* %mymaxjob, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 37
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %jump

if.end3:                                          ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %8 = load i8*, i8** %s.addr, align 4
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 37
  br i1 %cmp5, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %s.addr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool11 = icmp ne i8 %13, 0
  br i1 %tobool11, label %if.end20, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end3
  %14 = load i32, i32* @curjob, align 4
  %cmp13 = icmp eq i32 %14, -1
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then12
  %15 = load i8*, i8** %prog.addr, align 4
  %tobool16 = icmp ne i8* %15, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then15
  %16 = load i8*, i8** %prog.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15
  store i32 -1, i32* %returnval, align 4
  br label %done

if.end19:                                         ; preds = %if.then12
  %17 = load i32, i32* @curjob, align 4
  store i32 %17, i32* %returnval, align 4
  br label %done

if.end20:                                         ; preds = %lor.lhs.false10
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 45
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end20
  %20 = load i32, i32* @prevjob, align 4
  %cmp25 = icmp eq i32 %20, -1
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.then24
  %21 = load i8*, i8** %prog.addr, align 4
  %tobool28 = icmp ne i8* %21, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %22 = load i8*, i8** %prog.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  store i32 -1, i32* %returnval, align 4
  br label %done

if.end31:                                         ; preds = %if.then24
  %23 = load i32, i32* @prevjob, align 4
  store i32 %23, i32* %returnval, align 4
  br label %done

if.end32:                                         ; preds = %if.end20
  %24 = load i8*, i8** %s.addr, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv33 = sext i16 %26 to i32
  %and = and i32 %conv33, 1
  %tobool34 = icmp ne i32 %and, 0
  br i1 %tobool34, label %if.then35, label %if.end58

if.then35:                                        ; preds = %if.end32
  %27 = load i8*, i8** %s.addr, align 4
  %call = call i32 @atoi(i8* %27)
  store i32 %call, i32* %jobnum, align 4
  %28 = load i32, i32* %jobnum, align 4
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.then35
  %29 = load i32, i32* %jobnum, align 4
  %30 = load i32, i32* %mymaxjob, align 4
  %cmp37 = icmp sle i32 %29, %30
  br i1 %cmp37, label %land.lhs.true39, label %if.end54

land.lhs.true39:                                  ; preds = %land.lhs.true
  %31 = load %struct.job*, %struct.job** %myjobtab, align 4
  %32 = load i32, i32* %jobnum, align 4
  %arrayidx40 = getelementptr inbounds %struct.job, %struct.job* %31, i32 %32
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx40, i32 0, i32 2
  %33 = load i32, i32* %stat, align 4
  %tobool41 = icmp ne i32 %33, 0
  br i1 %tobool41, label %land.lhs.true42, label %if.end54

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %34 = load %struct.job*, %struct.job** %myjobtab, align 4
  %35 = load i32, i32* %jobnum, align 4
  %arrayidx43 = getelementptr inbounds %struct.job, %struct.job* %34, i32 %35
  %stat44 = getelementptr inbounds %struct.job, %struct.job* %arrayidx43, i32 0, i32 2
  %36 = load i32, i32* %stat44, align 4
  %and45 = and i32 %36, 256
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.end54, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %37 = load %struct.job*, %struct.job** %myjobtab, align 4
  %38 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %cmp48 = icmp eq %struct.job* %37, %38
  br i1 %cmp48, label %if.then53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true47
  %39 = load i32, i32* %jobnum, align 4
  %40 = load i32, i32* @thisjob, align 4
  %cmp51 = icmp ne i32 %39, %40
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false50, %land.lhs.true47
  %41 = load i32, i32* %jobnum, align 4
  store i32 %41, i32* %returnval, align 4
  br label %done

if.end54:                                         ; preds = %lor.lhs.false50, %land.lhs.true42, %land.lhs.true39, %land.lhs.true, %if.then35
  %42 = load i8*, i8** %prog.addr, align 4
  %tobool55 = icmp ne i8* %42, null
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  %43 = load i8*, i8** %prog.addr, align 4
  %44 = load i8*, i8** %s.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* %44)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54
  store i32 -1, i32* %returnval, align 4
  br label %done

if.end58:                                         ; preds = %if.end32
  %45 = load i8*, i8** %s.addr, align 4
  %46 = load i8, i8* %45, align 1
  %conv59 = sext i8 %46 to i32
  %cmp60 = icmp eq i32 %conv59, 63
  br i1 %cmp60, label %if.then62, label %if.end91

if.then62:                                        ; preds = %if.end58
  %47 = load i32, i32* %mymaxjob, align 4
  store i32 %47, i32* %jobnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %if.then62
  %48 = load i32, i32* %jobnum, align 4
  %cmp63 = icmp sge i32 %48, 0
  br i1 %cmp63, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  %49 = load %struct.job*, %struct.job** %myjobtab, align 4
  %50 = load i32, i32* %jobnum, align 4
  %arrayidx65 = getelementptr inbounds %struct.job, %struct.job* %49, i32 %50
  %stat66 = getelementptr inbounds %struct.job, %struct.job* %arrayidx65, i32 0, i32 2
  %51 = load i32, i32* %stat66, align 4
  %tobool67 = icmp ne i32 %51, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.end85

land.lhs.true68:                                  ; preds = %for.body
  %52 = load %struct.job*, %struct.job** %myjobtab, align 4
  %53 = load i32, i32* %jobnum, align 4
  %arrayidx69 = getelementptr inbounds %struct.job, %struct.job* %52, i32 %53
  %stat70 = getelementptr inbounds %struct.job, %struct.job* %arrayidx69, i32 0, i32 2
  %54 = load i32, i32* %stat70, align 4
  %and71 = and i32 %54, 256
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.end85, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %55 = load i32, i32* %jobnum, align 4
  %56 = load i32, i32* @thisjob, align 4
  %cmp74 = icmp ne i32 %55, %56
  br i1 %cmp74, label %if.then76, label %if.end85

if.then76:                                        ; preds = %land.lhs.true73
  %57 = load %struct.job*, %struct.job** %myjobtab, align 4
  %58 = load i32, i32* %jobnum, align 4
  %arrayidx77 = getelementptr inbounds %struct.job, %struct.job* %57, i32 %58
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx77, i32 0, i32 4
  %59 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %59, %struct.process** %pn, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc, %if.then76
  %60 = load %struct.process*, %struct.process** %pn, align 4
  %tobool79 = icmp ne %struct.process* %60, null
  br i1 %tobool79, label %for.body80, label %for.end

for.body80:                                       ; preds = %for.cond78
  %61 = load %struct.process*, %struct.process** %pn, align 4
  %text = getelementptr inbounds %struct.process, %struct.process* %61, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text, i32 0, i32 0
  %62 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %62, i32 1
  %call81 = call i8* @strstr(i8* %arraydecay, i8* %add.ptr)
  %tobool82 = icmp ne i8* %call81, null
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body80
  %63 = load i32, i32* %jobnum, align 4
  store i32 %63, i32* %returnval, align 4
  br label %done

if.end84:                                         ; preds = %for.body80
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %64 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %64, i32 0, i32 0
  %65 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %65, %struct.process** %pn, align 4
  br label %for.cond78

for.end:                                          ; preds = %for.cond78
  br label %if.end85

if.end85:                                         ; preds = %for.end, %land.lhs.true73, %land.lhs.true68, %for.body
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %66 = load i32, i32* %jobnum, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %jobnum, align 4
  br label %for.cond

for.end87:                                        ; preds = %for.cond
  %67 = load i8*, i8** %prog.addr, align 4
  %tobool88 = icmp ne i8* %67, null
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %for.end87
  %68 = load i8*, i8** %prog.addr, align 4
  %69 = load i8*, i8** %s.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* %69)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %for.end87
  store i32 -1, i32* %returnval, align 4
  br label %done

if.end91:                                         ; preds = %if.end58
  br label %jump

jump:                                             ; preds = %if.end91, %if.then2
  %70 = load i8*, i8** %s.addr, align 4
  %call92 = call i32 @findjobnam(i8* %70)
  store i32 %call92, i32* %jobnum, align 4
  %cmp93 = icmp ne i32 %call92, -1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %jump
  %71 = load i32, i32* %jobnum, align 4
  store i32 %71, i32* %returnval, align 4
  br label %done

if.end96:                                         ; preds = %jump
  %72 = load i8*, i8** %prog.addr, align 4
  %73 = load i8*, i8** %s.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* %73)
  store i32 -1, i32* %returnval, align 4
  br label %done

done:                                             ; preds = %if.end96, %if.then95, %if.end90, %if.then83, %if.end57, %if.then53, %if.end31, %if.end30, %if.end19, %if.end18
  %74 = load i32, i32* %returnval, align 4
  ret i32 %74
}

declare void @zwarnnam(i8*, i8*, ...) #1

declare i32 @atoi(i8*) #1

declare i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @findjobnam(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %jobnum = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i32, i32* @maxjob, align 4
  store i32 %0, i32* %jobnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %jobnum, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %3 = load i32, i32* %jobnum, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %2, i32 %3
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %stat, align 4
  %and = and i32 %4, 288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.job*, %struct.job** @jobtab, align 4
  %6 = load i32, i32* %jobnum, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %5, i32 %6
  %stat2 = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 2
  %7 = load i32, i32* %stat2, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %jobnum, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 4
  %10 = load %struct.process*, %struct.process** %procs, align 4
  %tobool6 = icmp ne %struct.process* %10, null
  br i1 %tobool6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %11 = load i32, i32* %jobnum, align 4
  %12 = load i32, i32* @thisjob, align 4
  %cmp8 = icmp ne i32 %11, %12
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %13 = load %struct.job*, %struct.job** @jobtab, align 4
  %14 = load i32, i32* %jobnum, align 4
  %arrayidx10 = getelementptr inbounds %struct.job, %struct.job* %13, i32 %14
  %procs11 = getelementptr inbounds %struct.job, %struct.job* %arrayidx10, i32 0, i32 4
  %15 = load %struct.process*, %struct.process** %procs11, align 4
  %text = getelementptr inbounds %struct.process, %struct.process* %15, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [80 x i8], [80 x i8]* %text, i32 0, i32 0
  %16 = load i8, i8* %arrayidx12, align 4
  %conv = sext i8 %16 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %17 = load i8*, i8** %s.addr, align 4
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* %jobnum, align 4
  %arrayidx15 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %procs16 = getelementptr inbounds %struct.job, %struct.job* %arrayidx15, i32 0, i32 4
  %20 = load %struct.process*, %struct.process** %procs16, align 4
  %text17 = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text17, i32 0, i32 0
  %call = call i32 @strpfx(i8* %17, i8* %arraydecay)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true14
  %21 = load i32, i32* %jobnum, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true14, %land.lhs.true9, %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %jobnum, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %jobnum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define void @init_jobs(i8** %argv, i8** %envp) #0 {
entry:
  %argv.addr = alloca i8**, align 4
  %envp.addr = alloca i8**, align 4
  %p = alloca i8*, align 4
  %q = alloca i8*, align 4
  %init_bytes = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i8** %envp, i8*** %envp.addr, align 4
  store i32 1800, i32* %init_bytes, align 4
  %0 = load i32, i32* %init_bytes, align 4
  %call = call i8* @zalloc(i32 %0)
  %1 = bitcast i8* %call to %struct.job*
  store %struct.job* %1, %struct.job** @jobtab, align 4
  %2 = load %struct.job*, %struct.job** @jobtab, align 4
  %tobool = icmp ne %struct.job* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  store i32 50, i32* @jobtabsize, align 4
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = bitcast %struct.job* %3 to i8*
  %5 = load i32, i32* %init_bytes, align 4
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 %5, i32 4, i1 false)
  %6 = load i8**, i8*** %argv.addr, align 4
  %7 = load i8*, i8** %6, align 4
  store i8* %7, i8** @hackzero, align 4
  %8 = load i8*, i8** @hackzero, align 4
  %call1 = call i8* @strchr(i8* %8, i32 0)
  store i8* %call1, i8** %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %9 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  %10 = load i8*, i8** %incdec.ptr, align 4
  %tobool2 = icmp ne i8* %10, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8**, i8*** %argv.addr, align 4
  %12 = load i8*, i8** %11, align 4
  store i8* %12, i8** %q, align 4
  %13 = load i8*, i8** %q, align 4
  %14 = load i8*, i8** %p, align 4
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 1
  %cmp = icmp ne i8* %13, %add.ptr
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  br label %done

if.end4:                                          ; preds = %while.body
  %15 = load i8*, i8** %q, align 4
  %call5 = call i8* @strchr(i8* %15, i32 0)
  store i8* %call5, i8** %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %done

done:                                             ; preds = %while.end, %if.then3
  %16 = load i8*, i8** %p, align 4
  %17 = load i8*, i8** @hackzero, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* @hackspace, align 4
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i8* @strchr(i8*, i32) #1

declare i8* @zrealloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @maybeshrinkjobtab() #0 {
entry:
  %jobbound = alloca i32, align 4
  %newjobtab = alloca %struct.job*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp12 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32, i32* @maxjob, align 4
  %add = add nsw i32 %1, 50
  %2 = load i32, i32* @maxjob, align 4
  %rem = srem i32 %2, 50
  %sub = sub nsw i32 %add, %rem
  store i32 %sub, i32* %jobbound, align 4
  %3 = load i32, i32* %jobbound, align 4
  %4 = load i32, i32* @jobtabsize, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %jobbound, align 4
  %6 = load i32, i32* @maxjob, align 4
  %add1 = add nsw i32 %6, 20
  %cmp2 = icmp sgt i32 %5, %add1
  br i1 %cmp2, label %if.then, label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.job*, %struct.job** @jobtab, align 4
  %8 = bitcast %struct.job* %7 to i8*
  %9 = load i32, i32* %jobbound, align 4
  %mul = mul i32 %9, 36
  %call = call i8* @zrealloc(i8* %8, i32 %mul)
  %10 = bitcast i8* %call to %struct.job*
  store %struct.job* %10, %struct.job** %newjobtab, align 4
  %11 = load %struct.job*, %struct.job** %newjobtab, align 4
  %tobool = icmp ne %struct.job* %11, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %12 = load %struct.job*, %struct.job** %newjobtab, align 4
  store %struct.job* %12, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %jobbound, align 4
  store i32 %13, i32* @jobtabsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end4
  %14 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end13, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
  %15 = load i32, i32* @queue_front, align 4
  %16 = load i32, i32* @queue_rear, align 4
  %cmp8 = icmp ne i32 %15, %16
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* @queue_front, align 4
  %add9 = add nsw i32 %17, 1
  %rem10 = srem i32 %add9, 128
  store i32 %rem10, i32* @queue_front, align 4
  %18 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %18
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %19 = bitcast %struct.__sigset_t* %oset to i8*
  %20 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 4, i1 false)
  %21 = load i32, i32* @queue_front, align 4
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %21
  %22 = load i32, i32* %arrayidx11, align 4
  call void @zhandler(i32 %22)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp12, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  ret void
}

; Function Attrs: noinline nounwind
define void @addbgstatus(i32 %pid, i32 %status) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %bgstatus_entry = alloca %struct.bgstatus*, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* @addbgstatus.child_max, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @sysconf(i32 1)
  store i32 %call, i32* @addbgstatus.child_max, align 4
  %1 = load i32, i32* @addbgstatus.child_max, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1024, i32* @addbgstatus.child_max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %2 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %tobool4 = icmp ne %union.linkroot* %2, null
  br i1 %tobool4, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call6, %union.linkroot** @bgstatus_list, align 4
  %3 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %tobool7 = icmp ne %union.linkroot* %3, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then5
  br label %return

if.end9:                                          ; preds = %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end3
  %4 = load i32, i32* @bgstatus_count, align 4
  %5 = load i32, i32* @addbgstatus.child_max, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end10
  %6 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %list = bitcast %union.linkroot* %6 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %7 = load %struct.linknode*, %struct.linknode** %first, align 4
  call void @rembgstatus(%struct.linknode* %7)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10
  %call13 = call i8* @zalloc(i32 8)
  %8 = bitcast i8* %call13 to %struct.bgstatus*
  store %struct.bgstatus* %8, %struct.bgstatus** %bgstatus_entry, align 4
  %9 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %tobool14 = icmp ne %struct.bgstatus* %9, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  br label %return

if.end16:                                         ; preds = %if.end12
  %10 = load i32, i32* %pid.addr, align 4
  %11 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %pid17 = getelementptr inbounds %struct.bgstatus, %struct.bgstatus* %11, i32 0, i32 0
  store i32 %10, i32* %pid17, align 4
  %12 = load i32, i32* %status.addr, align 4
  %13 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %status18 = getelementptr inbounds %struct.bgstatus, %struct.bgstatus* %13, i32 0, i32 1
  store i32 %12, i32* %status18, align 4
  %14 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %15 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %list19 = bitcast %union.linkroot* %15 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list19, i32 0, i32 1
  %16 = load %struct.linknode*, %struct.linknode** %last, align 4
  %17 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %18 = bitcast %struct.bgstatus* %17 to i8*
  %call20 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %14, %struct.linknode* %16, i8* %18)
  %tobool21 = icmp ne %struct.linknode* %call20, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end16
  %19 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %20 = bitcast %struct.bgstatus* %19 to i8*
  call void @zfree(i8* %20, i32 8)
  br label %return

if.end23:                                         ; preds = %if.end16
  %21 = load i32, i32* @bgstatus_count, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @bgstatus_count, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then8
  ret void
}

; Function Attrs: noinline nounwind
define internal void @rembgstatus(%struct.linknode* %node) #0 {
entry:
  %node.addr = alloca %struct.linknode*, align 4
  store %struct.linknode* %node, %struct.linknode** %node.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %1 = load %struct.linknode*, %struct.linknode** %node.addr, align 4
  %call = call i8* @remnode(%union.linkroot* %0, %struct.linknode* %1)
  call void @zfree(i8* %call, i32 8)
  %2 = load i32, i32* @bgstatus_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @bgstatus_count, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @bin_fg(i8* %name, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %job = alloca i32, align 4
  %lng = alloca i32, align 4
  %firstjob = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %ofunc = alloca i32, align 4
  %len = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp21 = alloca %struct.__sigset_t, align 4
  %oset101 = alloca %struct.__sigset_t, align 4
  %tmp105 = alloca %struct.__sigset_t, align 4
  %tmp107 = alloca %struct.__sigset_t, align 4
  %jobptr = alloca %struct.job*, align 4
  %curmaxjob = alloca i32, align 4
  %ignorejob = alloca i32, align 4
  %oset198 = alloca %struct.__sigset_t, align 4
  %tmp202 = alloca %struct.__sigset_t, align 4
  %tmp204 = alloca %struct.__sigset_t, align 4
  %oset241 = alloca %struct.__sigset_t, align 4
  %tmp245 = alloca %struct.__sigset_t, align 4
  %tmp247 = alloca %struct.__sigset_t, align 4
  %stopped = alloca i32, align 4
  %ocj = alloca i32, align 4
  %jstat = alloca i32, align 4
  %pid = alloca i32, align 4
  %j = alloca %struct.job*, align 4
  %p = alloca %struct.process*, align 4
  %oset325 = alloca %struct.__sigset_t, align 4
  %tmp329 = alloca %struct.__sigset_t, align 4
  %tmp331 = alloca %struct.__sigset_t, align 4
  %oset372 = alloca %struct.__sigset_t, align 4
  %tmp376 = alloca %struct.__sigset_t, align 4
  %tmp378 = alloca %struct.__sigset_t, align 4
  %pn = alloca %struct.process*, align 4
  %next = alloca %struct.process*, align 4
  %oset438 = alloca %struct.__sigset_t, align 4
  %tmp442 = alloca %struct.__sigset_t, align 4
  %tmp444 = alloca %struct.__sigset_t, align 4
  %fout = alloca %struct._IO_FILE*, align 4
  %buf = alloca [20 x i8], align 1
  %pids = alloca i8*, align 4
  %pn611 = alloca %struct.process*, align 4
  %oset678 = alloca %struct.__sigset_t, align 4
  %tmp682 = alloca %struct.__sigset_t, align 4
  %tmp684 = alloca %struct.__sigset_t, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 -1, i32* %firstjob, align 4
  store i32 0, i32* %retval1, align 4
  %0 = load i32, i32* %func.addr, align 4
  store i32 %0, i32* %ofunc, align 4
  %1 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 90
  %2 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i8**, i8*** %argv.addr, align 4
  %arrayidx4 = getelementptr inbounds i8*, i8** %5, i32 0
  %6 = load i8*, i8** %arrayidx4, align 4
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i8**, i8*** %argv.addr, align 4
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i32 1
  %8 = load i8*, i8** %arrayidx6, align 4
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %11 = load i8**, i8*** %argv.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %call = call i8* @unmetafy(i8* %12, i32* %len)
  %13 = load i32, i32* %len, align 4
  %14 = load i32, i32* @hackspace, align 4
  %cmp10 = icmp sgt i32 %13, %14
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %15 = load i32, i32* @hackspace, align 4
  store i32 %15, i32* %len, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %16 = load i8*, i8** @hackzero, align 4
  %17 = load i8**, i8*** %argv.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %19 = load i32, i32* %len, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %18, i32 %19, i32 1, i1 false)
  %20 = load i8*, i8** @hackzero, align 4
  %21 = load i32, i32* %len, align 4
  %add.ptr = getelementptr inbounds i8, i8* %20, i32 %21
  %22 = load i32, i32* @hackspace, align 4
  %23 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %22, %23
  call void @llvm.memset.p0i8.i32(i8* %add.ptr, i8 0, i32 %sub, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end13
  %24 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool14 = icmp ne i32 %dec, 0
  br i1 %tobool14, label %if.end22, label %if.then15

if.then15:                                        ; preds = %do.body
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body16
  %25 = load i32, i32* @queue_front, align 4
  %26 = load i32, i32* @queue_rear, align 4
  %cmp17 = icmp ne i32 %25, %26
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %27, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %28 = load i32, i32* @queue_front, align 4
  %arrayidx19 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %28
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx19)
  %29 = bitcast %struct.__sigset_t* %oset to i8*
  %30 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 128, i32 4, i1 false)
  %31 = load i32, i32* @queue_front, align 4
  %arrayidx20 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %31
  %32 = load i32, i32* %arrayidx20, align 4
  call void @zhandler(i32 %32)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp21, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end22

if.end22:                                         ; preds = %do.end, %do.body
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  store i32 0, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %entry
  %33 = load i32, i32* %func.addr, align 4
  %cmp25 = icmp eq i32 %33, 3
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  %34 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind28 = getelementptr inbounds %struct.options, %struct.options* %34, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [128 x i8], [128 x i8]* %ind28, i32 0, i32 108
  %35 = load i8, i8* %arrayidx29, align 4
  %conv30 = zext i8 %35 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then27
  br label %cond.end

cond.false:                                       ; preds = %if.then27
  %36 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind33 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [128 x i8], [128 x i8]* %ind33, i32 0, i32 112
  %37 = load i8, i8* %arrayidx34, align 4
  %conv35 = zext i8 %37 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  %cond = select i1 %cmp36, i32 2, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond38, i32* %lng, align 4
  %38 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind39 = getelementptr inbounds %struct.options, %struct.options* %38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [128 x i8], [128 x i8]* %ind39, i32 0, i32 100
  %39 = load i8, i8* %arrayidx40, align 4
  %conv41 = zext i8 %39 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %cond.end
  %40 = load i32, i32* %lng, align 4
  %or = or i32 %40, 4
  store i32 %or, i32* %lng, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %cond.end
  br label %if.end48

if.else:                                          ; preds = %if.end24
  %41 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 112), align 1
  %tobool46 = icmp ne i8 %41, 0
  %lnot = xor i1 %tobool46, true
  %lnot47 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot47 to i32
  store i32 %lnot.ext, i32* %lng, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end45
  %42 = load i32, i32* %func.addr, align 4
  %cmp49 = icmp eq i32 %42, 2
  br i1 %cmp49, label %land.lhs.true, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end48
  %43 = load i32, i32* %func.addr, align 4
  %cmp52 = icmp eq i32 %43, 1
  br i1 %cmp52, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %lor.lhs.false51, %if.end48
  %44 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool54 = icmp ne i8 %44, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %land.lhs.true
  %45 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %land.lhs.true, %lor.lhs.false51
  %46 = load i32, i32* @queueing_enabled, align 4
  %inc57 = add nsw i32 %46, 1
  store i32 %inc57, i32* @queueing_enabled, align 4
  call void @wait_for_processes()
  %47 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 122), align 1
  %tobool58 = icmp ne i8 %47, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @scanjobs()
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end56
  %48 = load i32, i32* %func.addr, align 4
  %cmp61 = icmp ne i32 %48, 3
  br i1 %cmp61, label %if.then68, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end60
  %49 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %conv64 = sext i8 %49 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %if.then68, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %50 = load i32, i32* @oldmaxjob, align 4
  %tobool67 = icmp ne i32 %50, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false66, %lor.lhs.false63, %if.end60
  call void @setcurjob()
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %lor.lhs.false66
  %51 = load i32, i32* %func.addr, align 4
  %cmp70 = icmp eq i32 %51, 3
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end69
  store i32 2, i32* @stopmsg, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69
  %52 = load i8**, i8*** %argv.addr, align 4
  %53 = load i8*, i8** %52, align 4
  %tobool74 = icmp ne i8* %53, null
  br i1 %tobool74, label %if.end253, label %if.then75

if.then75:                                        ; preds = %if.end73
  %54 = load i32, i32* %func.addr, align 4
  %cmp76 = icmp eq i32 %54, 2
  br i1 %cmp76, label %if.then84, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.then75
  %55 = load i32, i32* %func.addr, align 4
  %cmp79 = icmp eq i32 %55, 1
  br i1 %cmp79, label %if.then84, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %56 = load i32, i32* %func.addr, align 4
  %cmp82 = icmp eq i32 %56, 5
  br i1 %cmp82, label %if.then84, label %if.else113

if.then84:                                        ; preds = %lor.lhs.false81, %lor.lhs.false78, %if.then75
  %57 = load i32, i32* @curjob, align 4
  %cmp85 = icmp eq i32 %57, -1
  br i1 %cmp85, label %if.then90, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.then84
  %58 = load %struct.job*, %struct.job** @jobtab, align 4
  %59 = load i32, i32* @curjob, align 4
  %arrayidx88 = getelementptr inbounds %struct.job, %struct.job* %58, i32 %59
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx88, i32 0, i32 2
  %60 = load i32, i32* %stat, align 4
  %and = and i32 %60, 32
  %tobool89 = icmp ne i32 %and, 0
  br i1 %tobool89, label %if.then90, label %if.end112

if.then90:                                        ; preds = %lor.lhs.false87, %if.then84
  %61 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0))
  br label %do.body91

do.body91:                                        ; preds = %if.then90
  %62 = load i32, i32* @queueing_enabled, align 4
  %dec92 = add nsw i32 %62, -1
  store i32 %dec92, i32* @queueing_enabled, align 4
  %tobool93 = icmp ne i32 %dec92, 0
  br i1 %tobool93, label %if.end110, label %if.then94

if.then94:                                        ; preds = %do.body91
  br label %do.body95

do.body95:                                        ; preds = %if.then94
  br label %while.cond96

while.cond96:                                     ; preds = %while.body99, %do.body95
  %63 = load i32, i32* @queue_front, align 4
  %64 = load i32, i32* @queue_rear, align 4
  %cmp97 = icmp ne i32 %63, %64
  br i1 %cmp97, label %while.body99, label %while.end108

while.body99:                                     ; preds = %while.cond96
  %65 = load i32, i32* @queue_front, align 4
  %add102 = add nsw i32 %65, 1
  %rem103 = srem i32 %add102, 128
  store i32 %rem103, i32* @queue_front, align 4
  %66 = load i32, i32* @queue_front, align 4
  %arrayidx104 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %66
  call void @signal_setmask(%struct.__sigset_t* sret %tmp105, %struct.__sigset_t* byval align 4 %arrayidx104)
  %67 = bitcast %struct.__sigset_t* %oset101 to i8*
  %68 = bitcast %struct.__sigset_t* %tmp105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %67, i8* %68, i32 128, i32 4, i1 false)
  %69 = load i32, i32* @queue_front, align 4
  %arrayidx106 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %69
  %70 = load i32, i32* %arrayidx106, align 4
  call void @zhandler(i32 %70)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp107, %struct.__sigset_t* byval align 4 %oset101)
  br label %while.cond96

while.end108:                                     ; preds = %while.cond96
  br label %do.end109

do.end109:                                        ; preds = %while.end108
  br label %if.end110

if.end110:                                        ; preds = %do.end109, %do.body91
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  store i32 1, i32* %retval, align 4
  br label %return

if.end112:                                        ; preds = %lor.lhs.false87
  %71 = load i32, i32* @curjob, align 4
  store i32 %71, i32* %firstjob, align 4
  br label %if.end252

if.else113:                                       ; preds = %lor.lhs.false81
  %72 = load i32, i32* %func.addr, align 4
  %cmp114 = icmp eq i32 %72, 3
  br i1 %cmp114, label %if.then116, label %if.else209

if.then116:                                       ; preds = %if.else113
  %73 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool120 = icmp ne i8 %73, 0
  br i1 %tobool120, label %if.else130, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.then116
  %74 = load i32, i32* @oldmaxjob, align 4
  %tobool122 = icmp ne i32 %74, 0
  br i1 %tobool122, label %if.then123, label %if.else130

if.then123:                                       ; preds = %land.lhs.true121
  %75 = load %struct.job*, %struct.job** @oldjobtab, align 4
  store %struct.job* %75, %struct.job** %jobptr, align 4
  %76 = load i32, i32* @oldmaxjob, align 4
  %tobool124 = icmp ne i32 %76, 0
  br i1 %tobool124, label %cond.true125, label %cond.false127

cond.true125:                                     ; preds = %if.then123
  %77 = load i32, i32* @oldmaxjob, align 4
  %sub126 = sub nsw i32 %77, 1
  br label %cond.end128

cond.false127:                                    ; preds = %if.then123
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true125
  %cond129 = phi i32 [ %sub126, %cond.true125 ], [ 0, %cond.false127 ]
  store i32 %cond129, i32* %curmaxjob, align 4
  store i32 0, i32* %ignorejob, align 4
  br label %if.end131

if.else130:                                       ; preds = %land.lhs.true121, %if.then116
  %78 = load %struct.job*, %struct.job** @jobtab, align 4
  store %struct.job* %78, %struct.job** %jobptr, align 4
  %79 = load i32, i32* @maxjob, align 4
  store i32 %79, i32* %curmaxjob, align 4
  %80 = load i32, i32* @thisjob, align 4
  store i32 %80, i32* %ignorejob, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else130, %cond.end128
  store i32 0, i32* %job, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end131
  %81 = load i32, i32* %job, align 4
  %82 = load i32, i32* %curmaxjob, align 4
  %cmp132 = icmp sle i32 %81, %82
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %job, align 4
  %84 = load i32, i32* %ignorejob, align 4
  %cmp134 = icmp ne i32 %83, %84
  br i1 %cmp134, label %land.lhs.true136, label %if.end186

land.lhs.true136:                                 ; preds = %for.body
  %85 = load %struct.job*, %struct.job** %jobptr, align 4
  %stat137 = getelementptr inbounds %struct.job, %struct.job* %85, i32 0, i32 2
  %86 = load i32, i32* %stat137, align 4
  %tobool138 = icmp ne i32 %86, 0
  br i1 %tobool138, label %if.then139, label %if.end186

if.then139:                                       ; preds = %land.lhs.true136
  %87 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind140 = getelementptr inbounds %struct.options, %struct.options* %87, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [128 x i8], [128 x i8]* %ind140, i32 0, i32 114
  %88 = load i8, i8* %arrayidx141, align 2
  %conv142 = zext i8 %88 to i32
  %cmp143 = icmp ne i32 %conv142, 0
  br i1 %cmp143, label %lor.lhs.false151, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %if.then139
  %89 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind146 = getelementptr inbounds %struct.options, %struct.options* %89, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [128 x i8], [128 x i8]* %ind146, i32 0, i32 115
  %90 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %90 to i32
  %cmp149 = icmp ne i32 %conv148, 0
  br i1 %cmp149, label %lor.lhs.false151, label %if.then183

lor.lhs.false151:                                 ; preds = %land.lhs.true145, %if.then139
  %91 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind152 = getelementptr inbounds %struct.options, %struct.options* %91, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [128 x i8], [128 x i8]* %ind152, i32 0, i32 114
  %92 = load i8, i8* %arrayidx153, align 2
  %conv154 = zext i8 %92 to i32
  %cmp155 = icmp ne i32 %conv154, 0
  br i1 %cmp155, label %land.lhs.true157, label %lor.lhs.false163

land.lhs.true157:                                 ; preds = %lor.lhs.false151
  %93 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind158 = getelementptr inbounds %struct.options, %struct.options* %93, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [128 x i8], [128 x i8]* %ind158, i32 0, i32 115
  %94 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %94 to i32
  %cmp161 = icmp ne i32 %conv160, 0
  br i1 %cmp161, label %if.then183, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %land.lhs.true157, %lor.lhs.false151
  %95 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind164 = getelementptr inbounds %struct.options, %struct.options* %95, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [128 x i8], [128 x i8]* %ind164, i32 0, i32 114
  %96 = load i8, i8* %arrayidx165, align 2
  %conv166 = zext i8 %96 to i32
  %cmp167 = icmp ne i32 %conv166, 0
  br i1 %cmp167, label %land.lhs.true169, label %lor.lhs.false173

land.lhs.true169:                                 ; preds = %lor.lhs.false163
  %97 = load %struct.job*, %struct.job** %jobptr, align 4
  %stat170 = getelementptr inbounds %struct.job, %struct.job* %97, i32 0, i32 2
  %98 = load i32, i32* %stat170, align 4
  %and171 = and i32 %98, 2
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %lor.lhs.false173, label %if.then183

lor.lhs.false173:                                 ; preds = %land.lhs.true169, %lor.lhs.false163
  %99 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind174 = getelementptr inbounds %struct.options, %struct.options* %99, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [128 x i8], [128 x i8]* %ind174, i32 0, i32 115
  %100 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %100 to i32
  %cmp177 = icmp ne i32 %conv176, 0
  br i1 %cmp177, label %land.lhs.true179, label %if.end185

land.lhs.true179:                                 ; preds = %lor.lhs.false173
  %101 = load %struct.job*, %struct.job** %jobptr, align 4
  %stat180 = getelementptr inbounds %struct.job, %struct.job* %101, i32 0, i32 2
  %102 = load i32, i32* %stat180, align 4
  %and181 = and i32 %102, 2
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %if.then183, label %if.end185

if.then183:                                       ; preds = %land.lhs.true179, %land.lhs.true169, %land.lhs.true157, %land.lhs.true145
  %103 = load %struct.job*, %struct.job** %jobptr, align 4
  %104 = load i32, i32* %lng, align 4
  %call184 = call i32 @printjob(%struct.job* %103, i32 %104, i32 2)
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %land.lhs.true179, %lor.lhs.false173
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %land.lhs.true136, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end186
  %105 = load i32, i32* %job, align 4
  %inc187 = add nsw i32 %105, 1
  store i32 %inc187, i32* %job, align 4
  %106 = load %struct.job*, %struct.job** %jobptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.job, %struct.job* %106, i32 1
  store %struct.job* %incdec.ptr, %struct.job** %jobptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body188

do.body188:                                       ; preds = %for.end
  %107 = load i32, i32* @queueing_enabled, align 4
  %dec189 = add nsw i32 %107, -1
  store i32 %dec189, i32* @queueing_enabled, align 4
  %tobool190 = icmp ne i32 %dec189, 0
  br i1 %tobool190, label %if.end207, label %if.then191

if.then191:                                       ; preds = %do.body188
  br label %do.body192

do.body192:                                       ; preds = %if.then191
  br label %while.cond193

while.cond193:                                    ; preds = %while.body196, %do.body192
  %108 = load i32, i32* @queue_front, align 4
  %109 = load i32, i32* @queue_rear, align 4
  %cmp194 = icmp ne i32 %108, %109
  br i1 %cmp194, label %while.body196, label %while.end205

while.body196:                                    ; preds = %while.cond193
  %110 = load i32, i32* @queue_front, align 4
  %add199 = add nsw i32 %110, 1
  %rem200 = srem i32 %add199, 128
  store i32 %rem200, i32* @queue_front, align 4
  %111 = load i32, i32* @queue_front, align 4
  %arrayidx201 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %111
  call void @signal_setmask(%struct.__sigset_t* sret %tmp202, %struct.__sigset_t* byval align 4 %arrayidx201)
  %112 = bitcast %struct.__sigset_t* %oset198 to i8*
  %113 = bitcast %struct.__sigset_t* %tmp202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 128, i32 4, i1 false)
  %114 = load i32, i32* @queue_front, align 4
  %arrayidx203 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %114
  %115 = load i32, i32* %arrayidx203, align 4
  call void @zhandler(i32 %115)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp204, %struct.__sigset_t* byval align 4 %oset198)
  br label %while.cond193

while.end205:                                     ; preds = %while.cond193
  br label %do.end206

do.end206:                                        ; preds = %while.end205
  br label %if.end207

if.end207:                                        ; preds = %do.end206, %do.body188
  br label %do.end208

do.end208:                                        ; preds = %if.end207
  store i32 0, i32* %retval, align 4
  br label %return

if.else209:                                       ; preds = %if.else113
  store i32 0, i32* %job, align 4
  br label %for.cond210

for.cond210:                                      ; preds = %for.inc228, %if.else209
  %116 = load i32, i32* %job, align 4
  %117 = load i32, i32* @maxjob, align 4
  %cmp211 = icmp sle i32 %116, %117
  br i1 %cmp211, label %for.body213, label %for.end230

for.body213:                                      ; preds = %for.cond210
  %118 = load i32, i32* %job, align 4
  %119 = load i32, i32* @thisjob, align 4
  %cmp214 = icmp ne i32 %118, %119
  br i1 %cmp214, label %land.lhs.true216, label %if.end227

land.lhs.true216:                                 ; preds = %for.body213
  %120 = load %struct.job*, %struct.job** @jobtab, align 4
  %121 = load i32, i32* %job, align 4
  %arrayidx217 = getelementptr inbounds %struct.job, %struct.job* %120, i32 %121
  %stat218 = getelementptr inbounds %struct.job, %struct.job* %arrayidx217, i32 0, i32 2
  %122 = load i32, i32* %stat218, align 4
  %tobool219 = icmp ne i32 %122, 0
  br i1 %tobool219, label %land.lhs.true220, label %if.end227

land.lhs.true220:                                 ; preds = %land.lhs.true216
  %123 = load %struct.job*, %struct.job** @jobtab, align 4
  %124 = load i32, i32* %job, align 4
  %arrayidx221 = getelementptr inbounds %struct.job, %struct.job* %123, i32 %124
  %stat222 = getelementptr inbounds %struct.job, %struct.job* %arrayidx221, i32 0, i32 2
  %125 = load i32, i32* %stat222, align 4
  %and223 = and i32 %125, 32
  %tobool224 = icmp ne i32 %and223, 0
  br i1 %tobool224, label %if.end227, label %if.then225

if.then225:                                       ; preds = %land.lhs.true220
  %126 = load i32, i32* %job, align 4
  %call226 = call i32 @zwaitjob(i32 %126, i32 1)
  store i32 %call226, i32* %retval1, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then225, %land.lhs.true220, %land.lhs.true216, %for.body213
  br label %for.inc228

for.inc228:                                       ; preds = %if.end227
  %127 = load i32, i32* %job, align 4
  %inc229 = add nsw i32 %127, 1
  store i32 %inc229, i32* %job, align 4
  br label %for.cond210

for.end230:                                       ; preds = %for.cond210
  br label %do.body231

do.body231:                                       ; preds = %for.end230
  %128 = load i32, i32* @queueing_enabled, align 4
  %dec232 = add nsw i32 %128, -1
  store i32 %dec232, i32* @queueing_enabled, align 4
  %tobool233 = icmp ne i32 %dec232, 0
  br i1 %tobool233, label %if.end250, label %if.then234

if.then234:                                       ; preds = %do.body231
  br label %do.body235

do.body235:                                       ; preds = %if.then234
  br label %while.cond236

while.cond236:                                    ; preds = %while.body239, %do.body235
  %129 = load i32, i32* @queue_front, align 4
  %130 = load i32, i32* @queue_rear, align 4
  %cmp237 = icmp ne i32 %129, %130
  br i1 %cmp237, label %while.body239, label %while.end248

while.body239:                                    ; preds = %while.cond236
  %131 = load i32, i32* @queue_front, align 4
  %add242 = add nsw i32 %131, 1
  %rem243 = srem i32 %add242, 128
  store i32 %rem243, i32* @queue_front, align 4
  %132 = load i32, i32* @queue_front, align 4
  %arrayidx244 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %132
  call void @signal_setmask(%struct.__sigset_t* sret %tmp245, %struct.__sigset_t* byval align 4 %arrayidx244)
  %133 = bitcast %struct.__sigset_t* %oset241 to i8*
  %134 = bitcast %struct.__sigset_t* %tmp245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %133, i8* %134, i32 128, i32 4, i1 false)
  %135 = load i32, i32* @queue_front, align 4
  %arrayidx246 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %135
  %136 = load i32, i32* %arrayidx246, align 4
  call void @zhandler(i32 %136)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp247, %struct.__sigset_t* byval align 4 %oset241)
  br label %while.cond236

while.end248:                                     ; preds = %while.cond236
  br label %do.end249

do.end249:                                        ; preds = %while.end248
  br label %if.end250

if.end250:                                        ; preds = %do.end249, %do.body231
  br label %do.end251

do.end251:                                        ; preds = %if.end250
  %137 = load i32, i32* %retval1, align 4
  store i32 %137, i32* %retval, align 4
  br label %return

if.end252:                                        ; preds = %if.end112
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end73
  br label %for.cond254

for.cond254:                                      ; preds = %land.end, %if.end253
  %138 = load i32, i32* %firstjob, align 4
  %cmp255 = icmp ne i32 %138, -1
  br i1 %cmp255, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond254
  %139 = load i8**, i8*** %argv.addr, align 4
  %140 = load i8*, i8** %139, align 4
  %tobool257 = icmp ne i8* %140, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond254
  %141 = phi i1 [ true, %for.cond254 ], [ %tobool257, %lor.rhs ]
  br i1 %141, label %for.body258, label %for.end667

for.body258:                                      ; preds = %lor.end
  %142 = load i32, i32* @thisjob, align 4
  store i32 %142, i32* %ocj, align 4
  %143 = load i32, i32* %ofunc, align 4
  store i32 %143, i32* %func.addr, align 4
  %144 = load i32, i32* %func.addr, align 4
  %cmp262 = icmp eq i32 %144, 4
  br i1 %cmp262, label %land.lhs.true264, label %if.end308

land.lhs.true264:                                 ; preds = %for.body258
  %145 = load i8**, i8*** %argv.addr, align 4
  %146 = load i8*, i8** %145, align 4
  %call265 = call i32 @isanum(i8* %146)
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then267, label %if.end308

if.then267:                                       ; preds = %land.lhs.true264
  %147 = load i8**, i8*** %argv.addr, align 4
  %148 = load i8*, i8** %147, align 4
  %call269 = call i32 @atoi(i8* %148)
  store i32 %call269, i32* %pid, align 4
  %149 = load i32, i32* %pid, align 4
  %call272 = call i32 @findproc(i32 %149, %struct.job** %j, %struct.process** %p, i32 0)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.then274, label %if.else301

if.then274:                                       ; preds = %if.then267
  %150 = load %struct.job*, %struct.job** %j, align 4
  %stat275 = getelementptr inbounds %struct.job, %struct.job* %150, i32 0, i32 2
  %151 = load i32, i32* %stat275, align 4
  %and276 = and i32 %151, 2
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %if.then278, label %if.end286

if.then278:                                       ; preds = %if.then274
  %152 = load %struct.job*, %struct.job** %j, align 4
  %call279 = call i32 @killjb(%struct.job* %152, i32 18)
  %cmp280 = icmp ne i32 %call279, 0
  %conv281 = zext i1 %cmp280 to i32
  store i32 %conv281, i32* %retval1, align 4
  %153 = load i32, i32* %retval1, align 4
  %cmp282 = icmp eq i32 %153, 0
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %if.then278
  %154 = load %struct.job*, %struct.job** %j, align 4
  call void @makerunning(%struct.job* %154)
  br label %if.end285

if.end285:                                        ; preds = %if.then284, %if.then278
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.then274
  %155 = load i32, i32* %retval1, align 4
  %cmp287 = icmp eq i32 %155, 0
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %if.end286
  %156 = load i32, i32* %pid, align 4
  %call290 = call i32 @waitforpid(i32 %156, i32 1)
  store i32 %call290, i32* %retval1, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.end286
  %157 = load i32, i32* %retval1, align 4
  %cmp292 = icmp eq i32 %157, 0
  br i1 %cmp292, label %if.then294, label %if.end300

if.then294:                                       ; preds = %if.end291
  %158 = load i32, i32* %pid, align 4
  %call295 = call i32 @getbgstatus(i32 %158)
  store i32 %call295, i32* %retval1, align 4
  %cmp296 = icmp slt i32 %call295, 0
  br i1 %cmp296, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.then294
  %159 = load i32, i32* @lastval2, align 4
  store i32 %159, i32* %retval1, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %if.then294
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %if.end291
  br label %if.end307

if.else301:                                       ; preds = %if.then267
  %160 = load i32, i32* %pid, align 4
  %call302 = call i32 @getbgstatus(i32 %160)
  store i32 %call302, i32* %retval1, align 4
  %cmp303 = icmp slt i32 %call302, 0
  br i1 %cmp303, label %if.then305, label %if.end306

if.then305:                                       ; preds = %if.else301
  %161 = load i8*, i8** %name.addr, align 4
  %162 = load i32, i32* %pid, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i32 %162)
  store i32 1, i32* %retval1, align 4
  br label %if.end306

if.end306:                                        ; preds = %if.then305, %if.else301
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.end300
  %163 = load i32, i32* %ocj, align 4
  store i32 %163, i32* @thisjob, align 4
  br label %for.inc663

if.end308:                                        ; preds = %land.lhs.true264, %for.body258
  %164 = load i32, i32* %func.addr, align 4
  %cmp309 = icmp ne i32 %164, 3
  br i1 %cmp309, label %land.lhs.true311, label %if.end336

land.lhs.true311:                                 ; preds = %if.end308
  %165 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %cmp312 = icmp ne %struct.job* %165, null
  br i1 %cmp312, label %if.then314, label %if.end336

if.then314:                                       ; preds = %land.lhs.true311
  %166 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0))
  br label %do.body315

do.body315:                                       ; preds = %if.then314
  %167 = load i32, i32* @queueing_enabled, align 4
  %dec316 = add nsw i32 %167, -1
  store i32 %dec316, i32* @queueing_enabled, align 4
  %tobool317 = icmp ne i32 %dec316, 0
  br i1 %tobool317, label %if.end334, label %if.then318

if.then318:                                       ; preds = %do.body315
  br label %do.body319

do.body319:                                       ; preds = %if.then318
  br label %while.cond320

while.cond320:                                    ; preds = %while.body323, %do.body319
  %168 = load i32, i32* @queue_front, align 4
  %169 = load i32, i32* @queue_rear, align 4
  %cmp321 = icmp ne i32 %168, %169
  br i1 %cmp321, label %while.body323, label %while.end332

while.body323:                                    ; preds = %while.cond320
  %170 = load i32, i32* @queue_front, align 4
  %add326 = add nsw i32 %170, 1
  %rem327 = srem i32 %add326, 128
  store i32 %rem327, i32* @queue_front, align 4
  %171 = load i32, i32* @queue_front, align 4
  %arrayidx328 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %171
  call void @signal_setmask(%struct.__sigset_t* sret %tmp329, %struct.__sigset_t* byval align 4 %arrayidx328)
  %172 = bitcast %struct.__sigset_t* %oset325 to i8*
  %173 = bitcast %struct.__sigset_t* %tmp329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %172, i8* %173, i32 128, i32 4, i1 false)
  %174 = load i32, i32* @queue_front, align 4
  %arrayidx330 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %174
  %175 = load i32, i32* %arrayidx330, align 4
  call void @zhandler(i32 %175)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp331, %struct.__sigset_t* byval align 4 %oset325)
  br label %while.cond320

while.end332:                                     ; preds = %while.cond320
  br label %do.end333

do.end333:                                        ; preds = %while.end332
  br label %if.end334

if.end334:                                        ; preds = %do.end333, %do.body315
  br label %do.end335

do.end335:                                        ; preds = %if.end334
  store i32 1, i32* %retval, align 4
  br label %return

if.end336:                                        ; preds = %land.lhs.true311, %if.end308
  %176 = load i8**, i8*** %argv.addr, align 4
  %177 = load i8*, i8** %176, align 4
  %tobool337 = icmp ne i8* %177, null
  br i1 %tobool337, label %cond.true338, label %cond.false340

cond.true338:                                     ; preds = %if.end336
  %178 = load i8**, i8*** %argv.addr, align 4
  %179 = load i8*, i8** %178, align 4
  %180 = load i8*, i8** %name.addr, align 4
  %call339 = call i32 @getjob(i8* %179, i8* %180)
  br label %cond.end341

cond.false340:                                    ; preds = %if.end336
  %181 = load i32, i32* %firstjob, align 4
  br label %cond.end341

cond.end341:                                      ; preds = %cond.false340, %cond.true338
  %cond342 = phi i32 [ %call339, %cond.true338 ], [ %181, %cond.false340 ]
  store i32 %cond342, i32* %job, align 4
  store i32 -1, i32* %firstjob, align 4
  %182 = load i32, i32* %job, align 4
  %cmp343 = icmp eq i32 %182, -1
  br i1 %cmp343, label %if.then345, label %if.end346

if.then345:                                       ; preds = %cond.end341
  store i32 1, i32* %retval1, align 4
  br label %for.end667

if.end346:                                        ; preds = %cond.end341
  %183 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %tobool347 = icmp ne %struct.job* %183, null
  br i1 %tobool347, label %cond.true348, label %cond.false351

cond.true348:                                     ; preds = %if.end346
  %184 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %185 = load i32, i32* %job, align 4
  %arrayidx349 = getelementptr inbounds %struct.job, %struct.job* %184, i32 %185
  %stat350 = getelementptr inbounds %struct.job, %struct.job* %arrayidx349, i32 0, i32 2
  %186 = load i32, i32* %stat350, align 4
  br label %cond.end354

cond.false351:                                    ; preds = %if.end346
  %187 = load %struct.job*, %struct.job** @jobtab, align 4
  %188 = load i32, i32* %job, align 4
  %arrayidx352 = getelementptr inbounds %struct.job, %struct.job* %187, i32 %188
  %stat353 = getelementptr inbounds %struct.job, %struct.job* %arrayidx352, i32 0, i32 2
  %189 = load i32, i32* %stat353, align 4
  br label %cond.end354

cond.end354:                                      ; preds = %cond.false351, %cond.true348
  %cond355 = phi i32 [ %186, %cond.true348 ], [ %189, %cond.false351 ]
  store i32 %cond355, i32* %jstat, align 4
  %190 = load i32, i32* %jstat, align 4
  %and356 = and i32 %190, 64
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %lor.lhs.false358, label %if.then361

lor.lhs.false358:                                 ; preds = %cond.end354
  %191 = load i32, i32* %jstat, align 4
  %and359 = and i32 %191, 32
  %tobool360 = icmp ne i32 %and359, 0
  br i1 %tobool360, label %if.then361, label %if.end383

if.then361:                                       ; preds = %lor.lhs.false358, %cond.end354
  %192 = load i8*, i8** %name.addr, align 4
  %193 = load i8**, i8*** %argv.addr, align 4
  %194 = load i8*, i8** %193, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* %194)
  br label %do.body362

do.body362:                                       ; preds = %if.then361
  %195 = load i32, i32* @queueing_enabled, align 4
  %dec363 = add nsw i32 %195, -1
  store i32 %dec363, i32* @queueing_enabled, align 4
  %tobool364 = icmp ne i32 %dec363, 0
  br i1 %tobool364, label %if.end381, label %if.then365

if.then365:                                       ; preds = %do.body362
  br label %do.body366

do.body366:                                       ; preds = %if.then365
  br label %while.cond367

while.cond367:                                    ; preds = %while.body370, %do.body366
  %196 = load i32, i32* @queue_front, align 4
  %197 = load i32, i32* @queue_rear, align 4
  %cmp368 = icmp ne i32 %196, %197
  br i1 %cmp368, label %while.body370, label %while.end379

while.body370:                                    ; preds = %while.cond367
  %198 = load i32, i32* @queue_front, align 4
  %add373 = add nsw i32 %198, 1
  %rem374 = srem i32 %add373, 128
  store i32 %rem374, i32* @queue_front, align 4
  %199 = load i32, i32* @queue_front, align 4
  %arrayidx375 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %199
  call void @signal_setmask(%struct.__sigset_t* sret %tmp376, %struct.__sigset_t* byval align 4 %arrayidx375)
  %200 = bitcast %struct.__sigset_t* %oset372 to i8*
  %201 = bitcast %struct.__sigset_t* %tmp376 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %200, i8* %201, i32 128, i32 4, i1 false)
  %202 = load i32, i32* @queue_front, align 4
  %arrayidx377 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %202
  %203 = load i32, i32* %arrayidx377, align 4
  call void @zhandler(i32 %203)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp378, %struct.__sigset_t* byval align 4 %oset372)
  br label %while.cond367

while.end379:                                     ; preds = %while.cond367
  br label %do.end380

do.end380:                                        ; preds = %while.end379
  br label %if.end381

if.end381:                                        ; preds = %do.end380, %do.body362
  br label %do.end382

do.end382:                                        ; preds = %if.end381
  store i32 1, i32* %retval, align 4
  br label %return

if.end383:                                        ; preds = %lor.lhs.false358
  %204 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 8), align 1
  %conv384 = sext i8 %204 to i32
  %tobool385 = icmp ne i32 %conv384, 0
  br i1 %tobool385, label %land.lhs.true386, label %if.end393

land.lhs.true386:                                 ; preds = %if.end383
  %205 = load i32, i32* %func.addr, align 4
  %cmp387 = icmp eq i32 %205, 5
  br i1 %cmp387, label %land.lhs.true389, label %if.end393

land.lhs.true389:                                 ; preds = %land.lhs.true386
  %206 = load i32, i32* %jstat, align 4
  %and390 = and i32 %206, 2
  %tobool391 = icmp ne i32 %and390, 0
  br i1 %tobool391, label %if.then392, label %if.end393

if.then392:                                       ; preds = %land.lhs.true389
  store i32 1, i32* %func.addr, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.then392, %land.lhs.true389, %land.lhs.true386, %if.end383
  %207 = load i32, i32* %func.addr, align 4
  switch i32 %207, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb580
    i32 5, label %sw.bb588
  ]

sw.bb:                                            ; preds = %if.end393, %if.end393, %if.end393
  %208 = load i32, i32* %func.addr, align 4
  %cmp394 = icmp eq i32 %208, 1
  br i1 %cmp394, label %if.then396, label %if.end403

if.then396:                                       ; preds = %sw.bb
  %209 = load %struct.job*, %struct.job** @jobtab, align 4
  %210 = load i32, i32* %job, align 4
  %arrayidx397 = getelementptr inbounds %struct.job, %struct.job* %209, i32 %210
  %stat398 = getelementptr inbounds %struct.job, %struct.job* %arrayidx397, i32 0, i32 2
  %211 = load i32, i32* %stat398, align 4
  %or399 = or i32 %211, 2048
  store i32 %or399, i32* %stat398, align 4
  %212 = load %struct.job*, %struct.job** @jobtab, align 4
  %213 = load i32, i32* %job, align 4
  %arrayidx400 = getelementptr inbounds %struct.job, %struct.job* %212, i32 %213
  %stat401 = getelementptr inbounds %struct.job, %struct.job* %arrayidx400, i32 0, i32 2
  %214 = load i32, i32* %stat401, align 4
  %and402 = and i32 %214, -1025
  store i32 %and402, i32* %stat401, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then396, %sw.bb
  %215 = load %struct.job*, %struct.job** @jobtab, align 4
  %216 = load i32, i32* %job, align 4
  %arrayidx404 = getelementptr inbounds %struct.job, %struct.job* %215, i32 %216
  %stat405 = getelementptr inbounds %struct.job, %struct.job* %arrayidx404, i32 0, i32 2
  %217 = load i32, i32* %stat405, align 4
  %and406 = and i32 %217, 2
  store i32 %and406, i32* %stopped, align 4
  %tobool407 = icmp ne i32 %and406, 0
  br i1 %tobool407, label %if.then408, label %if.else424

if.then408:                                       ; preds = %if.end403
  %218 = load %struct.job*, %struct.job** @jobtab, align 4
  %219 = load i32, i32* %job, align 4
  %add.ptr409 = getelementptr inbounds %struct.job, %struct.job* %218, i32 %219
  call void @makerunning(%struct.job* %add.ptr409)
  %220 = load i32, i32* %func.addr, align 4
  %cmp410 = icmp eq i32 %220, 1
  br i1 %cmp410, label %if.then412, label %if.end423

if.then412:                                       ; preds = %if.then408
  %221 = load %struct.job*, %struct.job** @jobtab, align 4
  %222 = load i32, i32* %job, align 4
  %arrayidx414 = getelementptr inbounds %struct.job, %struct.job* %221, i32 %222
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx414, i32 0, i32 4
  %223 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %223, %struct.process** %pn, align 4
  br label %for.cond415

for.cond415:                                      ; preds = %if.end421, %if.then412
  %224 = load %struct.process*, %struct.process** %pn, align 4
  %next417 = getelementptr inbounds %struct.process, %struct.process* %224, i32 0, i32 0
  %225 = load %struct.process*, %struct.process** %next417, align 4
  store %struct.process* %225, %struct.process** %next, align 4
  %226 = load %struct.process*, %struct.process** %next, align 4
  %tobool418 = icmp ne %struct.process* %226, null
  br i1 %tobool418, label %if.end421, label %if.then419

if.then419:                                       ; preds = %for.cond415
  %227 = load %struct.process*, %struct.process** %pn, align 4
  %pid420 = getelementptr inbounds %struct.process, %struct.process* %227, i32 0, i32 1
  %228 = load i32, i32* %pid420, align 4
  store i32 %228, i32* @lastpid, align 4
  br label %for.end422

if.end421:                                        ; preds = %for.cond415
  %229 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %229, %struct.process** %pn, align 4
  br label %for.cond415

for.end422:                                       ; preds = %if.then419
  br label %if.end423

if.end423:                                        ; preds = %for.end422, %if.then408
  br label %if.end450

if.else424:                                       ; preds = %if.end403
  %230 = load i32, i32* %func.addr, align 4
  %cmp425 = icmp eq i32 %230, 1
  br i1 %cmp425, label %if.then427, label %if.end449

if.then427:                                       ; preds = %if.else424
  %231 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  %232 = load i32, i32* %ocj, align 4
  store i32 %232, i32* @thisjob, align 4
  br label %do.body428

do.body428:                                       ; preds = %if.then427
  %233 = load i32, i32* @queueing_enabled, align 4
  %dec429 = add nsw i32 %233, -1
  store i32 %dec429, i32* @queueing_enabled, align 4
  %tobool430 = icmp ne i32 %dec429, 0
  br i1 %tobool430, label %if.end447, label %if.then431

if.then431:                                       ; preds = %do.body428
  br label %do.body432

do.body432:                                       ; preds = %if.then431
  br label %while.cond433

while.cond433:                                    ; preds = %while.body436, %do.body432
  %234 = load i32, i32* @queue_front, align 4
  %235 = load i32, i32* @queue_rear, align 4
  %cmp434 = icmp ne i32 %234, %235
  br i1 %cmp434, label %while.body436, label %while.end445

while.body436:                                    ; preds = %while.cond433
  %236 = load i32, i32* @queue_front, align 4
  %add439 = add nsw i32 %236, 1
  %rem440 = srem i32 %add439, 128
  store i32 %rem440, i32* @queue_front, align 4
  %237 = load i32, i32* @queue_front, align 4
  %arrayidx441 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %237
  call void @signal_setmask(%struct.__sigset_t* sret %tmp442, %struct.__sigset_t* byval align 4 %arrayidx441)
  %238 = bitcast %struct.__sigset_t* %oset438 to i8*
  %239 = bitcast %struct.__sigset_t* %tmp442 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %238, i8* %239, i32 128, i32 4, i1 false)
  %240 = load i32, i32* @queue_front, align 4
  %arrayidx443 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %240
  %241 = load i32, i32* %arrayidx443, align 4
  call void @zhandler(i32 %241)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp444, %struct.__sigset_t* byval align 4 %oset438)
  br label %while.cond433

while.end445:                                     ; preds = %while.cond433
  br label %do.end446

do.end446:                                        ; preds = %while.end445
  br label %if.end447

if.end447:                                        ; preds = %do.end446, %do.body428
  br label %do.end448

do.end448:                                        ; preds = %if.end447
  store i32 1, i32* %retval, align 4
  br label %return

if.end449:                                        ; preds = %if.else424
  br label %if.end450

if.end450:                                        ; preds = %if.end449, %if.end423
  %242 = load i32, i32* @curjob, align 4
  %243 = load i32, i32* %job, align 4
  %cmp451 = icmp eq i32 %242, %243
  br i1 %cmp451, label %if.then453, label %if.end460

if.then453:                                       ; preds = %if.end450
  %244 = load i32, i32* @prevjob, align 4
  store i32 %244, i32* @curjob, align 4
  %245 = load i32, i32* %func.addr, align 4
  %cmp454 = icmp eq i32 %245, 1
  br i1 %cmp454, label %cond.true456, label %cond.false457

cond.true456:                                     ; preds = %if.then453
  br label %cond.end458

cond.false457:                                    ; preds = %if.then453
  %246 = load i32, i32* %job, align 4
  br label %cond.end458

cond.end458:                                      ; preds = %cond.false457, %cond.true456
  %cond459 = phi i32 [ -1, %cond.true456 ], [ %246, %cond.false457 ]
  store i32 %cond459, i32* @prevjob, align 4
  br label %if.end460

if.end460:                                        ; preds = %cond.end458, %if.end450
  %247 = load i32, i32* @prevjob, align 4
  %248 = load i32, i32* %job, align 4
  %cmp461 = icmp eq i32 %247, %248
  br i1 %cmp461, label %if.then466, label %lor.lhs.false463

lor.lhs.false463:                                 ; preds = %if.end460
  %249 = load i32, i32* @prevjob, align 4
  %cmp464 = icmp eq i32 %249, -1
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %lor.lhs.false463, %if.end460
  call void @setprevjob()
  br label %if.end467

if.end467:                                        ; preds = %if.then466, %lor.lhs.false463
  %250 = load i32, i32* @curjob, align 4
  %cmp468 = icmp eq i32 %250, -1
  br i1 %cmp468, label %if.then470, label %if.end471

if.then470:                                       ; preds = %if.end467
  %251 = load i32, i32* @prevjob, align 4
  store i32 %251, i32* @curjob, align 4
  call void @setprevjob()
  br label %if.end471

if.end471:                                        ; preds = %if.then470, %if.end467
  %252 = load i32, i32* %func.addr, align 4
  %cmp472 = icmp ne i32 %252, 4
  br i1 %cmp472, label %if.then474, label %if.end482

if.then474:                                       ; preds = %if.end471
  %253 = load %struct.job*, %struct.job** @jobtab, align 4
  %254 = load i32, i32* %job, align 4
  %add.ptr475 = getelementptr inbounds %struct.job, %struct.job* %253, i32 %254
  %255 = load i32, i32* %stopped, align 4
  %tobool476 = icmp ne i32 %255, 0
  br i1 %tobool476, label %cond.true477, label %cond.false478

cond.true477:                                     ; preds = %if.then474
  br label %cond.end479

cond.false478:                                    ; preds = %if.then474
  %256 = load i32, i32* %lng, align 4
  br label %cond.end479

cond.end479:                                      ; preds = %cond.false478, %cond.true477
  %cond480 = phi i32 [ -1, %cond.true477 ], [ %256, %cond.false478 ]
  %call481 = call i32 @printjob(%struct.job* %add.ptr475, i32 %cond480, i32 3)
  br label %if.end482

if.end482:                                        ; preds = %cond.end479, %if.end471
  %257 = load i32, i32* %func.addr, align 4
  %cmp483 = icmp ne i32 %257, 1
  br i1 %cmp483, label %if.then485, label %if.end546

if.then485:                                       ; preds = %if.end482
  %258 = load %struct.job*, %struct.job** @jobtab, align 4
  %259 = load i32, i32* %job, align 4
  %arrayidx486 = getelementptr inbounds %struct.job, %struct.job* %258, i32 %259
  %pwd = getelementptr inbounds %struct.job, %struct.job* %arrayidx486, i32 0, i32 3
  %260 = load i8*, i8** %pwd, align 4
  %tobool487 = icmp ne i8* %260, null
  br i1 %tobool487, label %land.lhs.true488, label %if.end508

land.lhs.true488:                                 ; preds = %if.then485
  %261 = load %struct.job*, %struct.job** @jobtab, align 4
  %262 = load i32, i32* %job, align 4
  %arrayidx489 = getelementptr inbounds %struct.job, %struct.job* %261, i32 %262
  %pwd490 = getelementptr inbounds %struct.job, %struct.job* %arrayidx489, i32 0, i32 3
  %263 = load i8*, i8** %pwd490, align 4
  %264 = load i8*, i8** @pwd, align 4
  %call491 = call i32 @strcmp(i8* %263, i8* %264)
  %tobool492 = icmp ne i32 %call491, 0
  br i1 %tobool492, label %if.then493, label %if.end508

if.then493:                                       ; preds = %land.lhs.true488
  %265 = load i32, i32* %func.addr, align 4
  %cmp495 = icmp eq i32 %265, 3
  br i1 %cmp495, label %cond.true499, label %lor.lhs.false497

lor.lhs.false497:                                 ; preds = %if.then493
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %tobool498 = icmp ne %struct._IO_FILE* %266, null
  br i1 %tobool498, label %cond.false500, label %cond.true499

cond.true499:                                     ; preds = %lor.lhs.false497, %if.then493
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  br label %cond.end501

cond.false500:                                    ; preds = %lor.lhs.false497
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  br label %cond.end501

cond.end501:                                      ; preds = %cond.false500, %cond.true499
  %cond502 = phi %struct._IO_FILE* [ %267, %cond.true499 ], [ %268, %cond.false500 ]
  store %struct._IO_FILE* %cond502, %struct._IO_FILE** %fout, align 4
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call503 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0))
  %270 = load %struct.job*, %struct.job** @jobtab, align 4
  %271 = load i32, i32* %job, align 4
  %arrayidx504 = getelementptr inbounds %struct.job, %struct.job* %270, i32 %271
  %pwd505 = getelementptr inbounds %struct.job, %struct.job* %arrayidx504, i32 0, i32 3
  %272 = load i8*, i8** %pwd505, align 4
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  call void @fprintdir(i8* %272, %struct._IO_FILE* %273)
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 4
  %call507 = call i32 @fflush(%struct._IO_FILE* %275)
  br label %if.end508

if.end508:                                        ; preds = %cond.end501, %land.lhs.true488, %if.then485
  %276 = load i32, i32* %func.addr, align 4
  %cmp509 = icmp ne i32 %276, 4
  br i1 %cmp509, label %if.then511, label %if.end545

if.then511:                                       ; preds = %if.end508
  %277 = load i32, i32* %job, align 4
  store i32 %277, i32* @thisjob, align 4
  %278 = load %struct.job*, %struct.job** @jobtab, align 4
  %279 = load i32, i32* %job, align 4
  %arrayidx512 = getelementptr inbounds %struct.job, %struct.job* %278, i32 %279
  %stat513 = getelementptr inbounds %struct.job, %struct.job* %arrayidx512, i32 0, i32 2
  %280 = load i32, i32* %stat513, align 4
  %and514 = and i32 %280, 128
  %tobool515 = icmp ne i32 %and514, 0
  br i1 %tobool515, label %land.lhs.true516, label %if.else541

land.lhs.true516:                                 ; preds = %if.then511
  %281 = load %struct.job*, %struct.job** @jobtab, align 4
  %282 = load i32, i32* %job, align 4
  %arrayidx517 = getelementptr inbounds %struct.job, %struct.job* %281, i32 %282
  %procs518 = getelementptr inbounds %struct.job, %struct.job* %arrayidx517, i32 0, i32 4
  %283 = load %struct.process*, %struct.process** %procs518, align 4
  %next519 = getelementptr inbounds %struct.process, %struct.process* %283, i32 0, i32 0
  %284 = load %struct.process*, %struct.process** %next519, align 4
  %tobool520 = icmp ne %struct.process* %284, null
  br i1 %tobool520, label %lor.lhs.false521, label %land.lhs.true531

lor.lhs.false521:                                 ; preds = %land.lhs.true516
  %285 = load %struct.job*, %struct.job** @jobtab, align 4
  %286 = load i32, i32* %job, align 4
  %arrayidx522 = getelementptr inbounds %struct.job, %struct.job* %285, i32 %286
  %stat523 = getelementptr inbounds %struct.job, %struct.job* %arrayidx522, i32 0, i32 2
  %287 = load i32, i32* %stat523, align 4
  %and524 = and i32 %287, 8192
  %tobool525 = icmp ne i32 %and524, 0
  br i1 %tobool525, label %land.lhs.true531, label %lor.lhs.false526

lor.lhs.false526:                                 ; preds = %lor.lhs.false521
  %288 = load %struct.job*, %struct.job** @jobtab, align 4
  %289 = load i32, i32* %job, align 4
  %arrayidx527 = getelementptr inbounds %struct.job, %struct.job* %288, i32 %289
  %gleader = getelementptr inbounds %struct.job, %struct.job* %arrayidx527, i32 0, i32 0
  %290 = load i32, i32* %gleader, align 4
  %call528 = call i32 @killpg(i32 %290, i32 0)
  %cmp529 = icmp eq i32 %call528, -1
  br i1 %cmp529, label %land.lhs.true531, label %if.else541

land.lhs.true531:                                 ; preds = %lor.lhs.false526, %lor.lhs.false521, %land.lhs.true516
  %291 = load %struct.job*, %struct.job** @jobtab, align 4
  %292 = load %struct.job*, %struct.job** @jobtab, align 4
  %293 = load i32, i32* %job, align 4
  %arrayidx532 = getelementptr inbounds %struct.job, %struct.job* %292, i32 %293
  %other = getelementptr inbounds %struct.job, %struct.job* %arrayidx532, i32 0, i32 1
  %294 = load i32, i32* %other, align 4
  %arrayidx533 = getelementptr inbounds %struct.job, %struct.job* %291, i32 %294
  %gleader534 = getelementptr inbounds %struct.job, %struct.job* %arrayidx533, i32 0, i32 0
  %295 = load i32, i32* %gleader534, align 4
  %tobool535 = icmp ne i32 %295, 0
  br i1 %tobool535, label %if.then536, label %if.else541

if.then536:                                       ; preds = %land.lhs.true531
  %296 = load %struct.job*, %struct.job** @jobtab, align 4
  %297 = load %struct.job*, %struct.job** @jobtab, align 4
  %298 = load i32, i32* %job, align 4
  %arrayidx537 = getelementptr inbounds %struct.job, %struct.job* %297, i32 %298
  %other538 = getelementptr inbounds %struct.job, %struct.job* %arrayidx537, i32 0, i32 1
  %299 = load i32, i32* %other538, align 4
  %arrayidx539 = getelementptr inbounds %struct.job, %struct.job* %296, i32 %299
  %gleader540 = getelementptr inbounds %struct.job, %struct.job* %arrayidx539, i32 0, i32 0
  %300 = load i32, i32* %gleader540, align 4
  call void @attachtty(i32 %300)
  br label %if.end544

if.else541:                                       ; preds = %land.lhs.true531, %lor.lhs.false526, %if.then511
  %301 = load %struct.job*, %struct.job** @jobtab, align 4
  %302 = load i32, i32* %job, align 4
  %arrayidx542 = getelementptr inbounds %struct.job, %struct.job* %301, i32 %302
  %gleader543 = getelementptr inbounds %struct.job, %struct.job* %arrayidx542, i32 0, i32 0
  %303 = load i32, i32* %gleader543, align 4
  call void @attachtty(i32 %303)
  br label %if.end544

if.end544:                                        ; preds = %if.else541, %if.then536
  br label %if.end545

if.end545:                                        ; preds = %if.end544, %if.end508
  br label %if.end546

if.end546:                                        ; preds = %if.end545, %if.end482
  %304 = load i32, i32* %stopped, align 4
  %tobool547 = icmp ne i32 %304, 0
  br i1 %tobool547, label %if.then548, label %if.end560

if.then548:                                       ; preds = %if.end546
  %305 = load i32, i32* %func.addr, align 4
  %cmp549 = icmp ne i32 %305, 1
  br i1 %cmp549, label %land.lhs.true551, label %if.end557

land.lhs.true551:                                 ; preds = %if.then548
  %306 = load %struct.job*, %struct.job** @jobtab, align 4
  %307 = load i32, i32* %job, align 4
  %arrayidx552 = getelementptr inbounds %struct.job, %struct.job* %306, i32 %307
  %ty = getelementptr inbounds %struct.job, %struct.job* %arrayidx552, i32 0, i32 8
  %308 = load %struct.ttyinfo*, %struct.ttyinfo** %ty, align 4
  %tobool553 = icmp ne %struct.ttyinfo* %308, null
  br i1 %tobool553, label %if.then554, label %if.end557

if.then554:                                       ; preds = %land.lhs.true551
  %309 = load %struct.job*, %struct.job** @jobtab, align 4
  %310 = load i32, i32* %job, align 4
  %arrayidx555 = getelementptr inbounds %struct.job, %struct.job* %309, i32 %310
  %ty556 = getelementptr inbounds %struct.job, %struct.job* %arrayidx555, i32 0, i32 8
  %311 = load %struct.ttyinfo*, %struct.ttyinfo** %ty556, align 4
  call void @settyinfo(%struct.ttyinfo* %311)
  br label %if.end557

if.end557:                                        ; preds = %if.then554, %land.lhs.true551, %if.then548
  %312 = load %struct.job*, %struct.job** @jobtab, align 4
  %313 = load i32, i32* %job, align 4
  %add.ptr558 = getelementptr inbounds %struct.job, %struct.job* %312, i32 %313
  %call559 = call i32 @killjb(%struct.job* %add.ptr558, i32 18)
  br label %if.end560

if.end560:                                        ; preds = %if.end557, %if.end546
  %314 = load i32, i32* %func.addr, align 4
  %cmp561 = icmp eq i32 %314, 4
  br i1 %cmp561, label %if.then563, label %if.else568

if.then563:                                       ; preds = %if.end560
  %315 = load i32, i32* %job, align 4
  %call564 = call i32 @zwaitjob(i32 %315, i32 1)
  store i32 %call564, i32* %retval1, align 4
  %316 = load i32, i32* %retval1, align 4
  %tobool565 = icmp ne i32 %316, 0
  br i1 %tobool565, label %if.end567, label %if.then566

if.then566:                                       ; preds = %if.then563
  %317 = load i32, i32* @lastval2, align 4
  store i32 %317, i32* %retval1, align 4
  br label %if.end567

if.end567:                                        ; preds = %if.then566, %if.then563
  br label %if.end579

if.else568:                                       ; preds = %if.end560
  %318 = load i32, i32* %func.addr, align 4
  %cmp569 = icmp ne i32 %318, 1
  br i1 %cmp569, label %if.then571, label %if.else572

if.then571:                                       ; preds = %if.else568
  call void @waitjobs()
  %319 = load i32, i32* @lastval2, align 4
  store i32 %319, i32* %retval1, align 4
  br label %if.end578

if.else572:                                       ; preds = %if.else568
  %320 = load i32, i32* %ofunc, align 4
  %cmp573 = icmp eq i32 %320, 5
  br i1 %cmp573, label %if.then575, label %if.end577

if.then575:                                       ; preds = %if.else572
  %321 = load %struct.job*, %struct.job** @jobtab, align 4
  %322 = load i32, i32* %job, align 4
  %add.ptr576 = getelementptr inbounds %struct.job, %struct.job* %321, i32 %322
  call void @deletejob(%struct.job* %add.ptr576, i32 1)
  br label %if.end577

if.end577:                                        ; preds = %if.then575, %if.else572
  br label %if.end578

if.end578:                                        ; preds = %if.end577, %if.then571
  br label %if.end579

if.end579:                                        ; preds = %if.end578, %if.end567
  br label %sw.epilog

sw.bb580:                                         ; preds = %if.end393
  %323 = load i32, i32* %job, align 4
  %324 = load %struct.job*, %struct.job** @oldjobtab, align 4
  %tobool581 = icmp ne %struct.job* %324, null
  br i1 %tobool581, label %cond.true582, label %cond.false583

cond.true582:                                     ; preds = %sw.bb580
  %325 = load %struct.job*, %struct.job** @oldjobtab, align 4
  br label %cond.end584

cond.false583:                                    ; preds = %sw.bb580
  %326 = load %struct.job*, %struct.job** @jobtab, align 4
  br label %cond.end584

cond.end584:                                      ; preds = %cond.false583, %cond.true582
  %cond585 = phi %struct.job* [ %325, %cond.true582 ], [ %326, %cond.false583 ]
  %add.ptr586 = getelementptr inbounds %struct.job, %struct.job* %cond585, i32 %323
  %327 = load i32, i32* %lng, align 4
  %call587 = call i32 @printjob(%struct.job* %add.ptr586, i32 %327, i32 2)
  br label %sw.epilog

sw.bb588:                                         ; preds = %if.end393
  %328 = load %struct.job*, %struct.job** @jobtab, align 4
  %329 = load i32, i32* %job, align 4
  %arrayidx589 = getelementptr inbounds %struct.job, %struct.job* %328, i32 %329
  %stat590 = getelementptr inbounds %struct.job, %struct.job* %arrayidx589, i32 0, i32 2
  %330 = load i32, i32* %stat590, align 4
  %and591 = and i32 %330, 128
  %tobool592 = icmp ne i32 %and591, 0
  br i1 %tobool592, label %if.then593, label %if.end597

if.then593:                                       ; preds = %sw.bb588
  %331 = load %struct.job*, %struct.job** @jobtab, align 4
  %332 = load i32, i32* %job, align 4
  %arrayidx594 = getelementptr inbounds %struct.job, %struct.job* %331, i32 %332
  %stat595 = getelementptr inbounds %struct.job, %struct.job* %arrayidx594, i32 0, i32 2
  %333 = load i32, i32* %stat595, align 4
  %or596 = or i32 %333, 65536
  store i32 %or596, i32* %stat595, align 4
  br label %for.inc663

if.end597:                                        ; preds = %sw.bb588
  %334 = load %struct.job*, %struct.job** @jobtab, align 4
  %335 = load i32, i32* %job, align 4
  %arrayidx598 = getelementptr inbounds %struct.job, %struct.job* %334, i32 %335
  %stat599 = getelementptr inbounds %struct.job, %struct.job* %arrayidx598, i32 0, i32 2
  %336 = load i32, i32* %stat599, align 4
  %and600 = and i32 %336, 2
  %tobool601 = icmp ne i32 %and600, 0
  br i1 %tobool601, label %if.then602, label %if.end661

if.then602:                                       ; preds = %if.end597
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %pids, align 4
  %337 = load %struct.job*, %struct.job** @jobtab, align 4
  %338 = load i32, i32* %job, align 4
  %arrayidx605 = getelementptr inbounds %struct.job, %struct.job* %337, i32 %338
  %stat606 = getelementptr inbounds %struct.job, %struct.job* %arrayidx605, i32 0, i32 2
  %339 = load i32, i32* %stat606, align 4
  %and607 = and i32 %339, 128
  %tobool608 = icmp ne i32 %and607, 0
  br i1 %tobool608, label %if.then609, label %if.else654

if.then609:                                       ; preds = %if.then602
  %340 = load %struct.job*, %struct.job** @jobtab, align 4
  %341 = load %struct.job*, %struct.job** @jobtab, align 4
  %342 = load i32, i32* %job, align 4
  %arrayidx612 = getelementptr inbounds %struct.job, %struct.job* %341, i32 %342
  %other613 = getelementptr inbounds %struct.job, %struct.job* %arrayidx612, i32 0, i32 1
  %343 = load i32, i32* %other613, align 4
  %arrayidx614 = getelementptr inbounds %struct.job, %struct.job* %340, i32 %343
  %procs615 = getelementptr inbounds %struct.job, %struct.job* %arrayidx614, i32 0, i32 4
  %344 = load %struct.process*, %struct.process** %procs615, align 4
  store %struct.process* %344, %struct.process** %pn611, align 4
  br label %for.cond616

for.cond616:                                      ; preds = %for.inc623, %if.then609
  %345 = load %struct.process*, %struct.process** %pn611, align 4
  %tobool617 = icmp ne %struct.process* %345, null
  br i1 %tobool617, label %for.body618, label %for.end625

for.body618:                                      ; preds = %for.cond616
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %346 = load %struct.process*, %struct.process** %pn611, align 4
  %pid619 = getelementptr inbounds %struct.process, %struct.process* %346, i32 0, i32 1
  %347 = load i32, i32* %pid619, align 4
  %call620 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 %347)
  %348 = load i8*, i8** %pids, align 4
  %arraydecay621 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call622 = call i8* @dyncat(i8* %348, i8* %arraydecay621)
  store i8* %call622, i8** %pids, align 4
  br label %for.inc623

for.inc623:                                       ; preds = %for.body618
  %349 = load %struct.process*, %struct.process** %pn611, align 4
  %next624 = getelementptr inbounds %struct.process, %struct.process* %349, i32 0, i32 0
  %350 = load %struct.process*, %struct.process** %next624, align 4
  store %struct.process* %350, %struct.process** %pn611, align 4
  br label %for.cond616

for.end625:                                       ; preds = %for.cond616
  %351 = load %struct.job*, %struct.job** @jobtab, align 4
  %352 = load i32, i32* %job, align 4
  %arrayidx626 = getelementptr inbounds %struct.job, %struct.job* %351, i32 %352
  %procs627 = getelementptr inbounds %struct.job, %struct.job* %arrayidx626, i32 0, i32 4
  %353 = load %struct.process*, %struct.process** %procs627, align 4
  store %struct.process* %353, %struct.process** %pn611, align 4
  br label %for.cond628

for.cond628:                                      ; preds = %for.inc637, %for.end625
  %354 = load %struct.process*, %struct.process** %pn611, align 4
  %next629 = getelementptr inbounds %struct.process, %struct.process* %354, i32 0, i32 0
  %355 = load %struct.process*, %struct.process** %next629, align 4
  %tobool630 = icmp ne %struct.process* %355, null
  br i1 %tobool630, label %for.body631, label %for.end639

for.body631:                                      ; preds = %for.cond628
  %arraydecay632 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %356 = load %struct.process*, %struct.process** %pn611, align 4
  %pid633 = getelementptr inbounds %struct.process, %struct.process* %356, i32 0, i32 1
  %357 = load i32, i32* %pid633, align 4
  %call634 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay632, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 %357)
  %358 = load i8*, i8** %pids, align 4
  %arraydecay635 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call636 = call i8* @dyncat(i8* %358, i8* %arraydecay635)
  store i8* %call636, i8** %pids, align 4
  br label %for.inc637

for.inc637:                                       ; preds = %for.body631
  %359 = load %struct.process*, %struct.process** %pn611, align 4
  %next638 = getelementptr inbounds %struct.process, %struct.process* %359, i32 0, i32 0
  %360 = load %struct.process*, %struct.process** %next638, align 4
  store %struct.process* %360, %struct.process** %pn611, align 4
  br label %for.cond628

for.end639:                                       ; preds = %for.cond628
  %361 = load %struct.job*, %struct.job** @jobtab, align 4
  %362 = load %struct.job*, %struct.job** @jobtab, align 4
  %363 = load i32, i32* %job, align 4
  %arrayidx640 = getelementptr inbounds %struct.job, %struct.job* %362, i32 %363
  %other641 = getelementptr inbounds %struct.job, %struct.job* %arrayidx640, i32 0, i32 1
  %364 = load i32, i32* %other641, align 4
  %arrayidx642 = getelementptr inbounds %struct.job, %struct.job* %361, i32 %364
  %procs643 = getelementptr inbounds %struct.job, %struct.job* %arrayidx642, i32 0, i32 4
  %365 = load %struct.process*, %struct.process** %procs643, align 4
  %tobool644 = icmp ne %struct.process* %365, null
  br i1 %tobool644, label %if.end653, label %land.lhs.true645

land.lhs.true645:                                 ; preds = %for.end639
  %366 = load %struct.process*, %struct.process** %pn611, align 4
  %tobool646 = icmp ne %struct.process* %366, null
  br i1 %tobool646, label %if.then647, label %if.end653

if.then647:                                       ; preds = %land.lhs.true645
  %arraydecay648 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %367 = load %struct.process*, %struct.process** %pn611, align 4
  %pid649 = getelementptr inbounds %struct.process, %struct.process* %367, i32 0, i32 1
  %368 = load i32, i32* %pid649, align 4
  %call650 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay648, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 %368)
  %369 = load i8*, i8** %pids, align 4
  %arraydecay651 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call652 = call i8* @dyncat(i8* %369, i8* %arraydecay651)
  store i8* %call652, i8** %pids, align 4
  br label %if.end653

if.end653:                                        ; preds = %if.then647, %land.lhs.true645, %for.end639
  br label %if.end660

if.else654:                                       ; preds = %if.then602
  %arraydecay655 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %370 = load %struct.job*, %struct.job** @jobtab, align 4
  %371 = load i32, i32* %job, align 4
  %arrayidx656 = getelementptr inbounds %struct.job, %struct.job* %370, i32 %371
  %gleader657 = getelementptr inbounds %struct.job, %struct.job* %arrayidx656, i32 0, i32 0
  %372 = load i32, i32* %gleader657, align 4
  %call658 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay655, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 %372)
  %arraydecay659 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay659, i8** %pids, align 4
  br label %if.end660

if.end660:                                        ; preds = %if.else654, %if.end653
  %373 = load i8*, i8** %name.addr, align 4
  %374 = load i8*, i8** %pids, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %373, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0), i8* %374)
  br label %if.end661

if.end661:                                        ; preds = %if.end660, %if.end597
  %375 = load %struct.job*, %struct.job** @jobtab, align 4
  %376 = load i32, i32* %job, align 4
  %add.ptr662 = getelementptr inbounds %struct.job, %struct.job* %375, i32 %376
  call void @deletejob(%struct.job* %add.ptr662, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end393, %if.end661, %cond.end584, %if.end579
  %377 = load i32, i32* %ocj, align 4
  store i32 %377, i32* @thisjob, align 4
  br label %for.inc663

for.inc663:                                       ; preds = %sw.epilog, %if.then593, %if.end307
  %378 = load i8**, i8*** %argv.addr, align 4
  %379 = load i8*, i8** %378, align 4
  %tobool664 = icmp ne i8* %379, null
  br i1 %tobool664, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.inc663
  %380 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr665 = getelementptr inbounds i8*, i8** %380, i32 1
  store i8** %incdec.ptr665, i8*** %argv.addr, align 4
  %tobool666 = icmp ne i8** %380, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.inc663
  %381 = phi i1 [ false, %for.inc663 ], [ %tobool666, %land.rhs ]
  %land.ext = zext i1 %381 to i32
  br label %for.cond254

for.end667:                                       ; preds = %if.then345, %lor.end
  br label %do.body668

do.body668:                                       ; preds = %for.end667
  %382 = load i32, i32* @queueing_enabled, align 4
  %dec669 = add nsw i32 %382, -1
  store i32 %dec669, i32* @queueing_enabled, align 4
  %tobool670 = icmp ne i32 %dec669, 0
  br i1 %tobool670, label %if.end687, label %if.then671

if.then671:                                       ; preds = %do.body668
  br label %do.body672

do.body672:                                       ; preds = %if.then671
  br label %while.cond673

while.cond673:                                    ; preds = %while.body676, %do.body672
  %383 = load i32, i32* @queue_front, align 4
  %384 = load i32, i32* @queue_rear, align 4
  %cmp674 = icmp ne i32 %383, %384
  br i1 %cmp674, label %while.body676, label %while.end685

while.body676:                                    ; preds = %while.cond673
  %385 = load i32, i32* @queue_front, align 4
  %add679 = add nsw i32 %385, 1
  %rem680 = srem i32 %add679, 128
  store i32 %rem680, i32* @queue_front, align 4
  %386 = load i32, i32* @queue_front, align 4
  %arrayidx681 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %386
  call void @signal_setmask(%struct.__sigset_t* sret %tmp682, %struct.__sigset_t* byval align 4 %arrayidx681)
  %387 = bitcast %struct.__sigset_t* %oset678 to i8*
  %388 = bitcast %struct.__sigset_t* %tmp682 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %387, i8* %388, i32 128, i32 4, i1 false)
  %389 = load i32, i32* @queue_front, align 4
  %arrayidx683 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %389
  %390 = load i32, i32* %arrayidx683, align 4
  call void @zhandler(i32 %390)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp684, %struct.__sigset_t* byval align 4 %oset678)
  br label %while.cond673

while.end685:                                     ; preds = %while.cond673
  br label %do.end686

do.end686:                                        ; preds = %while.end685
  br label %if.end687

if.end687:                                        ; preds = %do.end686, %do.body668
  br label %do.end688

do.end688:                                        ; preds = %if.end687
  %391 = load i32, i32* %retval1, align 4
  store i32 %391, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end688, %do.end448, %do.end382, %do.end335, %do.end251, %do.end208, %do.end111, %if.then55, %do.end23, %if.then8, %if.then3
  %392 = load i32, i32* %retval, align 4
  ret i32 %392
}

declare void @wait_for_processes() #1

; Function Attrs: noinline nounwind
define internal void @setcurjob() #0 {
entry:
  %0 = load i32, i32* @curjob, align 4
  %1 = load i32, i32* @thisjob, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @curjob, align 4
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* @curjob, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %stat, align 4
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* @prevjob, align 4
  store i32 %6, i32* @curjob, align 4
  call void @setprevjob()
  %7 = load i32, i32* @curjob, align 4
  %8 = load i32, i32* @thisjob, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %if.then12, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.then
  %9 = load i32, i32* @curjob, align 4
  %cmp4 = icmp ne i32 %9, -1
  br i1 %cmp4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %lor.lhs.false3
  %10 = load %struct.job*, %struct.job** @jobtab, align 4
  %11 = load i32, i32* @curjob, align 4
  %arrayidx6 = getelementptr inbounds %struct.job, %struct.job* %10, i32 %11
  %stat7 = getelementptr inbounds %struct.job, %struct.job* %arrayidx6, i32 0, i32 2
  %12 = load i32, i32* %stat7, align 4
  %and8 = and i32 %12, 64
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.then12

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %13 = load i32, i32* @curjob, align 4
  %14 = load i32, i32* @thisjob, align 4
  %cmp11 = icmp ne i32 %13, %14
  br i1 %cmp11, label %if.end, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10, %land.lhs.true5, %if.then
  %15 = load i32, i32* @prevjob, align 4
  store i32 %15, i32* @curjob, align 4
  call void @setprevjob()
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %lor.lhs.false3
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @isanum(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %4 to i32
  %and = and i32 %conv2, 1
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %5 = phi i1 [ true, %while.cond ], [ %tobool, %lor.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %6 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %7 = load i8*, i8** %s.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

declare i32 @killjb(%struct.job*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @getbgstatus(i32 %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %bgstatus_entry = alloca %struct.bgstatus*, align 4
  %status = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %tobool = icmp ne %union.linkroot* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.linkroot*, %union.linkroot** @bgstatus_list, align 4
  %list = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %2, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool1 = icmp ne %struct.linknode* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 2
  %5 = load i8*, i8** %dat, align 4
  %6 = bitcast i8* %5 to %struct.bgstatus*
  store %struct.bgstatus* %6, %struct.bgstatus** %bgstatus_entry, align 4
  %7 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %pid2 = getelementptr inbounds %struct.bgstatus, %struct.bgstatus* %7, i32 0, i32 0
  %8 = load i32, i32* %pid2, align 4
  %9 = load i32, i32* %pid.addr, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  %10 = load %struct.bgstatus*, %struct.bgstatus** %bgstatus_entry, align 4
  %status4 = getelementptr inbounds %struct.bgstatus, %struct.bgstatus* %10, i32 0, i32 1
  %11 = load i32, i32* %status4, align 4
  store i32 %11, i32* %status, align 4
  %12 = load %struct.linknode*, %struct.linknode** %node, align 4
  call void @rembgstatus(%struct.linknode* %12)
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %14 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %15, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare void @settyinfo(%struct.ttyinfo*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @dyncat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @bin_kill(i8* %nam, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %sig = alloca i32, align 4
  %returnval = alloca i32, align 4
  %endp = alloca i8*, align 4
  %signame = alloca i8*, align 4
  %i = alloca i32, align 4
  %endp128 = alloca i8*, align 4
  %i188 = alloca i32, align 4
  %p = alloca i32, align 4
  %pid = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp311 = alloca %struct.__sigset_t, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 15, i32* %sig, align 4
  store i32 0, i32* %returnval, align 4
  %0 = load i8**, i8*** %argv.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end214

land.lhs.true:                                    ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.end214

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8**, i8*** %argv.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 1
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx2 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %8 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %8 to i32
  %and = and i32 %conv3, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %9 = load i8**, i8*** %argv.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %add.ptr = getelementptr inbounds i8, i8* %10, i32 1
  %call = call i32 @zstrtol(i8* %add.ptr, i8** %endp, i32 10)
  store i32 %call, i32* %sig, align 4
  %11 = load i8*, i8** %endp, align 4
  %12 = load i8, i8* %11, align 1
  %tobool6 = icmp ne i8 %12, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %13 = load i8*, i8** %nam.addr, align 4
  %14 = load i8**, i8*** %argv.addr, align 4
  %15 = load i8*, i8** %14, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* %15)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then5
  br label %if.end212

if.else:                                          ; preds = %if.then
  %16 = load i8**, i8*** %argv.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i32 1
  %18 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %18 to i32
  %cmp10 = icmp ne i32 %conv9, 45
  br i1 %cmp10, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load i8**, i8*** %argv.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i32 2
  %21 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %21 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.end211

if.then15:                                        ; preds = %lor.lhs.false, %if.else
  %22 = load i8**, i8*** %argv.addr, align 4
  %23 = load i8*, i8** %22, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i32 1
  %24 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %24 to i32
  %cmp18 = icmp eq i32 %conv17, 108
  br i1 %cmp18, label %land.lhs.true20, label %if.end117

land.lhs.true20:                                  ; preds = %if.then15
  %25 = load i8**, i8*** %argv.addr, align 4
  %26 = load i8*, i8** %25, align 4
  %arrayidx21 = getelementptr inbounds i8, i8* %26, i32 2
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.end117

if.then25:                                        ; preds = %land.lhs.true20
  %28 = load i8**, i8*** %argv.addr, align 4
  %arrayidx26 = getelementptr inbounds i8*, i8** %28, i32 1
  %29 = load i8*, i8** %arrayidx26, align 4
  %tobool27 = icmp ne i8* %29, null
  br i1 %tobool27, label %if.then28, label %if.end105

if.then28:                                        ; preds = %if.then25
  br label %while.cond

while.cond:                                       ; preds = %if.end104, %if.then28
  %30 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 4
  %31 = load i8*, i8** %incdec.ptr, align 4
  %tobool29 = icmp ne i8* %31, null
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8**, i8*** %argv.addr, align 4
  %33 = load i8*, i8** %32, align 4
  %call30 = call i32 @zstrtol(i8* %33, i8** %signame, i32 10)
  store i32 %call30, i32* %sig, align 4
  %34 = load i8*, i8** %signame, align 4
  %35 = load i8**, i8*** %argv.addr, align 4
  %36 = load i8*, i8** %35, align 4
  %cmp31 = icmp eq i8* %34, %36
  br i1 %cmp31, label %if.then33, label %if.else71

if.then33:                                        ; preds = %while.body
  %37 = load i8*, i8** %signame, align 4
  %call34 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 3)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.then33
  %38 = load i8*, i8** %signame, align 4
  %add.ptr37 = getelementptr inbounds i8, i8* %38, i32 3
  store i8* %add.ptr37, i8** %signame, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33
  store i32 1, i32* %sig, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end38
  %39 = load i32, i32* %sig, align 4
  %cmp39 = icmp sle i32 %39, 31
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %sig, align 4
  %arrayidx41 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %40
  %41 = load i8*, i8** %arrayidx41, align 4
  %42 = load i8*, i8** %signame, align 4
  %call42 = call i32 @strcasecmp(i8* %41, i8* %42)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %for.body
  br label %for.end

if.end45:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %43 = load i32, i32* %sig, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %sig, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then44, %for.cond
  %44 = load i32, i32* %sig, align 4
  %cmp46 = icmp sgt i32 %44, 31
  br i1 %cmp46, label %if.then48, label %if.end63

if.then48:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %if.then48
  %45 = load i32, i32* %i, align 4
  %arrayidx50 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %45
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx50, i32 0, i32 0
  %46 = load i8*, i8** %name, align 4
  %tobool51 = icmp ne i8* %46, null
  br i1 %tobool51, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond49
  %47 = load i32, i32* %i, align 4
  %arrayidx53 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %47
  %name54 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx53, i32 0, i32 0
  %48 = load i8*, i8** %name54, align 4
  %49 = load i8*, i8** %signame, align 4
  %call55 = call i32 @strcasecmp(i8* %48, i8* %49)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end59, label %if.then57

if.then57:                                        ; preds = %for.body52
  %50 = load i32, i32* %i, align 4
  %arrayidx58 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %50
  %num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx58, i32 0, i32 1
  %51 = load i32, i32* %num, align 4
  store i32 %51, i32* %sig, align 4
  br label %for.end62

if.end59:                                         ; preds = %for.body52
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %52 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %52, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond49

for.end62:                                        ; preds = %if.then57, %for.cond49
  br label %if.end63

if.end63:                                         ; preds = %for.end62, %for.end
  %53 = load i32, i32* %sig, align 4
  %cmp64 = icmp sgt i32 %53, 31
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.end63
  %54 = load i8*, i8** %nam.addr, align 4
  %55 = load i8*, i8** %signame, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %55)
  %56 = load i32, i32* %returnval, align 4
  %inc67 = add nsw i32 %56, 1
  store i32 %inc67, i32* %returnval, align 4
  br label %if.end70

if.else68:                                        ; preds = %if.end63
  %57 = load i32, i32* %sig, align 4
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 %57)
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then66
  br label %if.end104

if.else71:                                        ; preds = %while.body
  %58 = load i8*, i8** %signame, align 4
  %59 = load i8, i8* %58, align 1
  %tobool72 = icmp ne i8 %59, 0
  br i1 %tobool72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.else71
  %60 = load i8*, i8** %nam.addr, align 4
  %61 = load i8*, i8** %signame, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %61)
  %62 = load i32, i32* %returnval, align 4
  %inc74 = add nsw i32 %62, 1
  store i32 %inc74, i32* %returnval, align 4
  br label %if.end103

if.else75:                                        ; preds = %if.else71
  %63 = load i32, i32* %sig, align 4
  %and76 = and i32 %63, 65535
  %sub = sub i32 %and76, 1
  %cmp77 = icmp ult i32 %sub, 255
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.else75
  %64 = load i32, i32* %sig, align 4
  %and80 = and i32 %64, 127
  store i32 %and80, i32* %sig, align 4
  br label %if.end91

if.else81:                                        ; preds = %if.else75
  %65 = load i32, i32* %sig, align 4
  %and82 = and i32 %65, 65535
  %mul = mul nsw i32 %and82, 65537
  %shr = ashr i32 %mul, 8
  %conv83 = trunc i32 %shr to i16
  %conv84 = sext i16 %conv83 to i32
  %cmp85 = icmp sgt i32 %conv84, 32512
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.else81
  %66 = load i32, i32* %sig, align 4
  %and88 = and i32 %66, 65280
  %shr89 = ashr i32 %and88, 8
  store i32 %shr89, i32* %sig, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.else81
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then79
  %67 = load i32, i32* %sig, align 4
  %cmp92 = icmp sle i32 1, %67
  br i1 %cmp92, label %land.lhs.true94, label %if.else100

land.lhs.true94:                                  ; preds = %if.end91
  %68 = load i32, i32* %sig, align 4
  %cmp95 = icmp sle i32 %68, 31
  br i1 %cmp95, label %if.then97, label %if.else100

if.then97:                                        ; preds = %land.lhs.true94
  %69 = load i32, i32* %sig, align 4
  %arrayidx98 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %69
  %70 = load i8*, i8** %arrayidx98, align 4
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* %70)
  br label %if.end102

if.else100:                                       ; preds = %land.lhs.true94, %if.end91
  %71 = load i32, i32* %sig, align 4
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 %71)
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then97
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then73
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end70
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i32, i32* %returnval, align 4
  store i32 %72, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.then25
  %73 = load i8*, i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @sigs, i32 0, i32 1), align 4
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* %73)
  store i32 2, i32* %sig, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc113, %if.end105
  %74 = load i32, i32* %sig, align 4
  %cmp108 = icmp sle i32 %74, 31
  br i1 %cmp108, label %for.body110, label %for.end115

for.body110:                                      ; preds = %for.cond107
  %75 = load i32, i32* %sig, align 4
  %arrayidx111 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %75
  %76 = load i8*, i8** %arrayidx111, align 4
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* %76)
  br label %for.inc113

for.inc113:                                       ; preds = %for.body110
  %77 = load i32, i32* %sig, align 4
  %inc114 = add nsw i32 %77, 1
  store i32 %inc114, i32* %sig, align 4
  br label %for.cond107

for.end115:                                       ; preds = %for.cond107
  %call116 = call i32 @putchar(i32 10)
  store i32 0, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %land.lhs.true20, %if.then15
  %78 = load i8**, i8*** %argv.addr, align 4
  %79 = load i8*, i8** %78, align 4
  %arrayidx118 = getelementptr inbounds i8, i8* %79, i32 1
  %80 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %80 to i32
  %cmp120 = icmp eq i32 %conv119, 110
  br i1 %cmp120, label %land.lhs.true122, label %if.else137

land.lhs.true122:                                 ; preds = %if.end117
  %81 = load i8**, i8*** %argv.addr, align 4
  %82 = load i8*, i8** %81, align 4
  %arrayidx123 = getelementptr inbounds i8, i8* %82, i32 2
  %83 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %83 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %if.then127, label %if.else137

if.then127:                                       ; preds = %land.lhs.true122
  %84 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr129 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %incdec.ptr129, i8*** %argv.addr, align 4
  %85 = load i8*, i8** %incdec.ptr129, align 4
  %tobool130 = icmp ne i8* %85, null
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.then127
  %86 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.then127
  %87 = load i8**, i8*** %argv.addr, align 4
  %88 = load i8*, i8** %87, align 4
  %call133 = call i32 @zstrtol(i8* %88, i8** %endp128, i32 10)
  store i32 %call133, i32* %sig, align 4
  %89 = load i8*, i8** %endp128, align 4
  %90 = load i8, i8* %89, align 1
  %tobool134 = icmp ne i8 %90, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  %91 = load i8*, i8** %nam.addr, align 4
  %92 = load i8**, i8*** %argv.addr, align 4
  %93 = load i8*, i8** %92, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* %93)
  store i32 1, i32* %retval, align 4
  br label %return

if.end136:                                        ; preds = %if.end132
  br label %if.end210

if.else137:                                       ; preds = %land.lhs.true122, %if.end117
  %94 = load i8**, i8*** %argv.addr, align 4
  %95 = load i8*, i8** %94, align 4
  %arrayidx138 = getelementptr inbounds i8, i8* %95, i32 1
  %96 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %96 to i32
  %cmp140 = icmp eq i32 %conv139, 115
  br i1 %cmp140, label %land.lhs.true142, label %if.then147

land.lhs.true142:                                 ; preds = %if.else137
  %97 = load i8**, i8*** %argv.addr, align 4
  %98 = load i8*, i8** %97, align 4
  %arrayidx143 = getelementptr inbounds i8, i8* %98, i32 2
  %99 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %99 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %if.else149, label %if.then147

if.then147:                                       ; preds = %land.lhs.true142, %if.else137
  %100 = load i8**, i8*** %argv.addr, align 4
  %101 = load i8*, i8** %100, align 4
  %add.ptr148 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %add.ptr148, i8** %signame, align 4
  br label %if.end155

if.else149:                                       ; preds = %land.lhs.true142
  %102 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr150 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %incdec.ptr150, i8*** %argv.addr, align 4
  %103 = load i8*, i8** %incdec.ptr150, align 4
  %tobool151 = icmp ne i8* %103, null
  br i1 %tobool151, label %if.else153, label %if.then152

if.then152:                                       ; preds = %if.else149
  %104 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else153:                                       ; preds = %if.else149
  %105 = load i8**, i8*** %argv.addr, align 4
  %106 = load i8*, i8** %105, align 4
  store i8* %106, i8** %signame, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.else153
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then147
  %107 = load i8*, i8** %signame, align 4
  %108 = load i8, i8* %107, align 1
  %tobool156 = icmp ne i8 %108, 0
  br i1 %tobool156, label %if.end158, label %if.then157

if.then157:                                       ; preds = %if.end155
  %109 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end158:                                        ; preds = %if.end155
  %110 = load i8*, i8** %signame, align 4
  %call159 = call i8* @casemodify(i8* %110, i32 1)
  store i8* %call159, i8** %signame, align 4
  %111 = load i8*, i8** %signame, align 4
  %call160 = call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 3)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end164, label %if.then162

if.then162:                                       ; preds = %if.end158
  %112 = load i8*, i8** %signame, align 4
  %add.ptr163 = getelementptr inbounds i8, i8* %112, i32 3
  store i8* %add.ptr163, i8** %signame, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.end158
  store i32 1, i32* %sig, align 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc174, %if.end164
  %113 = load i32, i32* %sig, align 4
  %cmp166 = icmp sle i32 %113, 31
  br i1 %cmp166, label %for.body168, label %for.end176

for.body168:                                      ; preds = %for.cond165
  %114 = load i32, i32* %sig, align 4
  %add.ptr169 = getelementptr inbounds i8*, i8** getelementptr inbounds ([35 x i8*], [35 x i8*]* @sigs, i32 0, i32 0), i32 %114
  %115 = load i8*, i8** %add.ptr169, align 4
  %116 = load i8*, i8** %signame, align 4
  %call170 = call i32 @strcmp(i8* %115, i8* %116)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end173, label %if.then172

if.then172:                                       ; preds = %for.body168
  br label %for.end176

if.end173:                                        ; preds = %for.body168
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %117 = load i32, i32* %sig, align 4
  %inc175 = add nsw i32 %117, 1
  store i32 %inc175, i32* %sig, align 4
  br label %for.cond165

for.end176:                                       ; preds = %if.then172, %for.cond165
  %118 = load i8*, i8** %signame, align 4
  %119 = load i8, i8* %118, align 1
  %conv177 = sext i8 %119 to i32
  %cmp178 = icmp eq i32 %conv177, 48
  br i1 %cmp178, label %land.lhs.true180, label %if.end184

land.lhs.true180:                                 ; preds = %for.end176
  %120 = load i8*, i8** %signame, align 4
  %arrayidx181 = getelementptr inbounds i8, i8* %120, i32 1
  %121 = load i8, i8* %arrayidx181, align 1
  %tobool182 = icmp ne i8 %121, 0
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %land.lhs.true180
  store i32 0, i32* %sig, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %land.lhs.true180, %for.end176
  %122 = load i32, i32* %sig, align 4
  %cmp185 = icmp sgt i32 %122, 31
  br i1 %cmp185, label %if.then187, label %if.end205

if.then187:                                       ; preds = %if.end184
  store i32 0, i32* %i188, align 4
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc202, %if.then187
  %123 = load i32, i32* %i188, align 4
  %arrayidx190 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %123
  %name191 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx190, i32 0, i32 0
  %124 = load i8*, i8** %name191, align 4
  %tobool192 = icmp ne i8* %124, null
  br i1 %tobool192, label %for.body193, label %for.end204

for.body193:                                      ; preds = %for.cond189
  %125 = load i32, i32* %i188, align 4
  %arrayidx194 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %125
  %name195 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx194, i32 0, i32 0
  %126 = load i8*, i8** %name195, align 4
  %127 = load i8*, i8** %signame, align 4
  %call196 = call i32 @strcmp(i8* %126, i8* %127)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.end201, label %if.then198

if.then198:                                       ; preds = %for.body193
  %128 = load i32, i32* %i188, align 4
  %arrayidx199 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %128
  %num200 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx199, i32 0, i32 1
  %129 = load i32, i32* %num200, align 4
  store i32 %129, i32* %sig, align 4
  br label %for.end204

if.end201:                                        ; preds = %for.body193
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %130 = load i32, i32* %i188, align 4
  %inc203 = add nsw i32 %130, 1
  store i32 %inc203, i32* %i188, align 4
  br label %for.cond189

for.end204:                                       ; preds = %if.then198, %for.cond189
  br label %if.end205

if.end205:                                        ; preds = %for.end204, %if.end184
  %131 = load i32, i32* %sig, align 4
  %cmp206 = icmp sgt i32 %131, 31
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.end205
  %132 = load i8*, i8** %nam.addr, align 4
  %133 = load i8*, i8** %signame, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %133)
  %134 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end209:                                        ; preds = %if.end205
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end136
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %lor.lhs.false
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end
  %135 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr213 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %incdec.ptr213, i8*** %argv.addr, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.end212, %land.lhs.true, %entry
  %136 = load i8**, i8*** %argv.addr, align 4
  %137 = load i8*, i8** %136, align 4
  %tobool215 = icmp ne i8* %137, null
  br i1 %tobool215, label %land.lhs.true216, label %if.end231

land.lhs.true216:                                 ; preds = %if.end214
  %138 = load i8**, i8*** %argv.addr, align 4
  %139 = load i8*, i8** %138, align 4
  %arrayidx217 = getelementptr inbounds i8, i8* %139, i32 0
  %140 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %140 to i32
  %cmp219 = icmp eq i32 %conv218, 45
  br i1 %cmp219, label %land.lhs.true221, label %if.end231

land.lhs.true221:                                 ; preds = %land.lhs.true216
  %141 = load i8**, i8*** %argv.addr, align 4
  %142 = load i8*, i8** %141, align 4
  %arrayidx222 = getelementptr inbounds i8, i8* %142, i32 1
  %143 = load i8, i8* %arrayidx222, align 1
  %tobool223 = icmp ne i8 %143, 0
  br i1 %tobool223, label %lor.lhs.false224, label %if.then229

lor.lhs.false224:                                 ; preds = %land.lhs.true221
  %144 = load i8**, i8*** %argv.addr, align 4
  %145 = load i8*, i8** %144, align 4
  %arrayidx225 = getelementptr inbounds i8, i8* %145, i32 1
  %146 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %146 to i32
  %cmp227 = icmp eq i32 %conv226, 45
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %lor.lhs.false224, %land.lhs.true221
  %147 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr230 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %incdec.ptr230, i8*** %argv.addr, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %lor.lhs.false224, %land.lhs.true216, %if.end214
  %148 = load i8**, i8*** %argv.addr, align 4
  %149 = load i8*, i8** %148, align 4
  %tobool232 = icmp ne i8* %149, null
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end231
  %150 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end234:                                        ; preds = %if.end231
  %151 = load i32, i32* @queueing_enabled, align 4
  %inc235 = add nsw i32 %151, 1
  store i32 %inc235, i32* @queueing_enabled, align 4
  call void @setcurjob()
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc299, %if.end234
  %152 = load i8**, i8*** %argv.addr, align 4
  %153 = load i8*, i8** %152, align 4
  %tobool237 = icmp ne i8* %153, null
  br i1 %tobool237, label %for.body238, label %for.end301

for.body238:                                      ; preds = %for.cond236
  %154 = load i8**, i8*** %argv.addr, align 4
  %155 = load i8*, i8** %154, align 4
  %156 = load i8, i8* %155, align 1
  %conv239 = sext i8 %156 to i32
  %cmp240 = icmp eq i32 %conv239, 37
  br i1 %cmp240, label %if.then242, label %if.else283

if.then242:                                       ; preds = %for.body238
  %157 = load i8**, i8*** %argv.addr, align 4
  %158 = load i8*, i8** %157, align 4
  %159 = load i8*, i8** %nam.addr, align 4
  %call243 = call i32 @getjob(i8* %158, i8* %159)
  store i32 %call243, i32* %p, align 4
  %cmp244 = icmp eq i32 %call243, -1
  br i1 %cmp244, label %if.then246, label %if.end248

if.then246:                                       ; preds = %if.then242
  %160 = load i32, i32* %returnval, align 4
  %inc247 = add nsw i32 %160, 1
  store i32 %inc247, i32* %returnval, align 4
  br label %for.inc299

if.end248:                                        ; preds = %if.then242
  %161 = load %struct.job*, %struct.job** @jobtab, align 4
  %162 = load i32, i32* %p, align 4
  %add.ptr249 = getelementptr inbounds %struct.job, %struct.job* %161, i32 %162
  %163 = load i32, i32* %sig, align 4
  %call250 = call i32 @killjb(%struct.job* %add.ptr249, i32 %163)
  %cmp251 = icmp eq i32 %call250, -1
  br i1 %cmp251, label %if.then253, label %if.end256

if.then253:                                       ; preds = %if.end248
  %164 = load i8**, i8*** %argv.addr, align 4
  %165 = load i8*, i8** %164, align 4
  %call254 = call i32* @__errno_location()
  %166 = load i32, i32* %call254, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* %165, i32 %166)
  %167 = load i32, i32* %returnval, align 4
  %inc255 = add nsw i32 %167, 1
  store i32 %inc255, i32* %returnval, align 4
  br label %for.inc299

if.end256:                                        ; preds = %if.end248
  %168 = load %struct.job*, %struct.job** @jobtab, align 4
  %169 = load i32, i32* %p, align 4
  %arrayidx257 = getelementptr inbounds %struct.job, %struct.job* %168, i32 %169
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx257, i32 0, i32 2
  %170 = load i32, i32* %stat, align 4
  %and258 = and i32 %170, 2
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %if.then260, label %if.end282

if.then260:                                       ; preds = %if.end256
  %171 = load i32, i32* %sig, align 4
  %cmp261 = icmp ne i32 %171, 9
  br i1 %cmp261, label %land.lhs.true263, label %if.end281

land.lhs.true263:                                 ; preds = %if.then260
  %172 = load i32, i32* %sig, align 4
  %cmp264 = icmp ne i32 %172, 18
  br i1 %cmp264, label %land.lhs.true266, label %if.end281

land.lhs.true266:                                 ; preds = %land.lhs.true263
  %173 = load i32, i32* %sig, align 4
  %cmp267 = icmp ne i32 %173, 20
  br i1 %cmp267, label %land.lhs.true269, label %if.end281

land.lhs.true269:                                 ; preds = %land.lhs.true266
  %174 = load i32, i32* %sig, align 4
  %cmp270 = icmp ne i32 %174, 22
  br i1 %cmp270, label %land.lhs.true272, label %if.end281

land.lhs.true272:                                 ; preds = %land.lhs.true269
  %175 = load i32, i32* %sig, align 4
  %cmp273 = icmp ne i32 %175, 21
  br i1 %cmp273, label %land.lhs.true275, label %if.end281

land.lhs.true275:                                 ; preds = %land.lhs.true272
  %176 = load i32, i32* %sig, align 4
  %cmp276 = icmp ne i32 %176, 19
  br i1 %cmp276, label %if.then278, label %if.end281

if.then278:                                       ; preds = %land.lhs.true275
  %177 = load %struct.job*, %struct.job** @jobtab, align 4
  %178 = load i32, i32* %p, align 4
  %add.ptr279 = getelementptr inbounds %struct.job, %struct.job* %177, i32 %178
  %call280 = call i32 @killjb(%struct.job* %add.ptr279, i32 18)
  br label %if.end281

if.end281:                                        ; preds = %if.then278, %land.lhs.true275, %land.lhs.true272, %land.lhs.true269, %land.lhs.true266, %land.lhs.true263, %if.then260
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.end256
  br label %if.end298

if.else283:                                       ; preds = %for.body238
  %179 = load i8**, i8*** %argv.addr, align 4
  %180 = load i8*, i8** %179, align 4
  %call284 = call i32 @isanum(i8* %180)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.else288, label %if.then286

if.then286:                                       ; preds = %if.else283
  %181 = load i8**, i8*** %argv.addr, align 4
  %182 = load i8*, i8** %181, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* %182)
  %183 = load i32, i32* %returnval, align 4
  %inc287 = add nsw i32 %183, 1
  store i32 %inc287, i32* %returnval, align 4
  br label %if.end297

if.else288:                                       ; preds = %if.else283
  %184 = load i8**, i8*** %argv.addr, align 4
  %185 = load i8*, i8** %184, align 4
  %call289 = call i32 @atoi(i8* %185)
  store i32 %call289, i32* %pid, align 4
  %186 = load i32, i32* %pid, align 4
  %187 = load i32, i32* %sig, align 4
  %call290 = call i32 @kill(i32 %186, i32 %187)
  %cmp291 = icmp eq i32 %call290, -1
  br i1 %cmp291, label %if.then293, label %if.end296

if.then293:                                       ; preds = %if.else288
  %188 = load i8**, i8*** %argv.addr, align 4
  %189 = load i8*, i8** %188, align 4
  %call294 = call i32* @__errno_location()
  %190 = load i32, i32* %call294, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* %189, i32 %190)
  %191 = load i32, i32* %returnval, align 4
  %inc295 = add nsw i32 %191, 1
  store i32 %inc295, i32* %returnval, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.then293, %if.else288
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.then286
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end282
  br label %for.inc299

for.inc299:                                       ; preds = %if.end298, %if.then253, %if.then246
  %192 = load i8**, i8*** %argv.addr, align 4
  %incdec.ptr300 = getelementptr inbounds i8*, i8** %192, i32 1
  store i8** %incdec.ptr300, i8*** %argv.addr, align 4
  br label %for.cond236

for.end301:                                       ; preds = %for.cond236
  br label %do.body

do.body:                                          ; preds = %for.end301
  %193 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %193, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool302 = icmp ne i32 %dec, 0
  br i1 %tobool302, label %if.end313, label %if.then303

if.then303:                                       ; preds = %do.body
  br label %do.body304

do.body304:                                       ; preds = %if.then303
  br label %while.cond305

while.cond305:                                    ; preds = %while.body308, %do.body304
  %194 = load i32, i32* @queue_front, align 4
  %195 = load i32, i32* @queue_rear, align 4
  %cmp306 = icmp ne i32 %194, %195
  br i1 %cmp306, label %while.body308, label %while.end312

while.body308:                                    ; preds = %while.cond305
  %196 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %196, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %197 = load i32, i32* @queue_front, align 4
  %arrayidx309 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %197
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx309)
  %198 = bitcast %struct.__sigset_t* %oset to i8*
  %199 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %198, i8* %199, i32 128, i32 4, i1 false)
  %200 = load i32, i32* @queue_front, align 4
  %arrayidx310 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %200
  %201 = load i32, i32* %arrayidx310, align 4
  call void @zhandler(i32 %201)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp311, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond305

while.end312:                                     ; preds = %while.cond305
  br label %do.end

do.end:                                           ; preds = %while.end312
  br label %if.end313

if.end313:                                        ; preds = %do.end, %do.body
  br label %do.end314

do.end314:                                        ; preds = %if.end313
  %202 = load i32, i32* %returnval, align 4
  %cmp315 = icmp slt i32 %202, 126
  br i1 %cmp315, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end314
  %203 = load i32, i32* %returnval, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end314
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %203, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then233, %if.then208, %if.then157, %if.then152, %if.then135, %if.then131, %for.end115, %while.end, %if.then7
  %204 = load i32, i32* %retval, align 4
  ret i32 %204
}

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @strcasecmp(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

declare i8* @casemodify(i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @getsignum(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @atoi(i8* %0)
  store i32 %call, i32* %x, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %x, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %5, 34
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load i32, i32* %x, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %7 = load i8*, i8** %s.addr, align 4
  %call5 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 3
  store i8* %add.ptr, i8** %s.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %9, 34
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %s.addr, align 4
  %11 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %11
  %12 = load i8*, i8** %arrayidx11, align 4
  %call12 = call i32 @strcmp(i8* %10, i8* %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %for.end
  %15 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %15
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx17, i32 0, i32 0
  %16 = load i8*, i8** %name, align 4
  %tobool18 = icmp ne i8* %16, null
  br i1 %tobool18, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond16
  %17 = load i8*, i8** %s.addr, align 4
  %18 = load i32, i32* %i, align 4
  %arrayidx20 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %18
  %name21 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 0
  %19 = load i8*, i8** %name21, align 4
  %call22 = call i32 @strcmp(i8* %17, i8* %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %for.body19
  %20 = load i32, i32* %i, align 4
  %arrayidx25 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %20
  %num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx25, i32 0, i32 1
  %21 = load i32, i32* %num, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %for.body19
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %22 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond16

for.end29:                                        ; preds = %for.cond16
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end29, %if.then24, %if.then14, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define i8* @getsigname(i32 %sig) #0 {
entry:
  %retval = alloca i8*, align 4
  %sig.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %2
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1, i32 0, i32 0
  %3 = load i8*, i8** %name, align 4
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %sig.addr, align 4
  %5 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %5
  %num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 1
  %6 = load i32, i32* %num, align 4
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %7
  %name6 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 0
  %8 = load i8*, i8** %name6, align 4
  store i8* %8, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end8

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %sig.addr, align 4
  %arrayidx7 = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %10
  %11 = load i8*, i8** %arrayidx7, align 4
  store i8* %11, i8** %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.else, %if.then4
  %12 = load i8*, i8** %retval, align 4
  ret i8* %12
}

; Function Attrs: noinline nounwind
define %struct.hashnode* @gettrapnode(i32 %sig, i32 %ignoredisable) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %sig.addr = alloca i32, align 4
  %ignoredisable.addr = alloca i32, align 4
  %fname = alloca [20 x i8], align 1
  %hn = alloca %struct.hashnode*, align 4
  %getptr = alloca %struct.hashnode* (%struct.hashtable*, i8*)*, align 4
  %i = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  store i32 %ignoredisable, i32* %ignoredisable.addr, align 4
  %0 = load i32, i32* %ignoredisable.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 10
  %getnode21 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %2 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode21, align 4
  store %struct.hashnode* (%struct.hashtable*, i8*)* %2, %struct.hashnode* (%struct.hashtable*, i8*)** %getptr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 9
  %getnode3 = bitcast {}** %getnode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %4 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode3, align 4
  store %struct.hashnode* (%struct.hashtable*, i8*)* %4, %struct.hashnode* (%struct.hashtable*, i8*)** %getptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %fname, i32 0, i32 0
  %5 = load i32, i32* %sig.addr, align 4
  %arrayidx = getelementptr inbounds [35 x i8*], [35 x i8*]* @sigs, i32 0, i32 %5
  %6 = load i8*, i8** %arrayidx, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* %6)
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getptr, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %fname, i32 0, i32 0
  %call5 = call %struct.hashnode* %7(%struct.hashtable* %8, i8* %arraydecay4)
  store %struct.hashnode* %call5, %struct.hashnode** %hn, align 4
  %tobool6 = icmp ne %struct.hashnode* %call5, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  store %struct.hashnode* %9, %struct.hashnode** %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %10 = load i32, i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %10
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 0
  %11 = load i8*, i8** %name, align 4
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %12
  %num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx11, i32 0, i32 1
  %13 = load i32, i32* %num, align 4
  %14 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %13, %14
  br i1 %cmp, label %if.then12, label %if.end22

if.then12:                                        ; preds = %for.body
  %arraydecay13 = getelementptr inbounds [20 x i8], [20 x i8]* %fname, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %arrayidx14 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @alt_sigs, i32 0, i32 %15
  %name15 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx14, i32 0, i32 0
  %16 = load i8*, i8** %name15, align 4
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* %16)
  %17 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getptr, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %fname, i32 0, i32 0
  %call18 = call %struct.hashnode* %17(%struct.hashtable* %18, i8* %arraydecay17)
  store %struct.hashnode* %call18, %struct.hashnode** %hn, align 4
  %tobool19 = icmp ne %struct.hashnode* %call18, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then12
  %19 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  store %struct.hashnode* %19, %struct.hashnode** %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then12
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then20, %if.then7
  %21 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %21
}

; Function Attrs: noinline nounwind
define void @removetrapnode(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %call = call %struct.hashnode* @gettrapnode(i32 %0, i32 1)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %1 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %3 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %5, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  %call2 = call %struct.hashnode* %3(%struct.hashtable* %4, i8* %6)
  %7 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 14
  %8 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %8(%struct.hashnode* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i32 @bin_suspend(i8* %name, i8** %argv, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 111), align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 102
  %2 = load i8, i8* %arrayidx, align 2
  %conv1 = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool3 = icmp ne i8 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call = call void (i32)* @signal(i32 21, void (i32)* null)
  %call5 = call void (i32)* @signal(i32 20, void (i32)* null)
  %call6 = call void (i32)* @signal(i32 22, void (i32)* null)
  call void @release_pgrp()
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %5 = load i32, i32* @origpgrp, align 4
  %call8 = call i32 @killpg(i32 %5, i32 20)
  %6 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  %tobool9 = icmp ne i8 %6, 0
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @acquire_pgrp()
  %call11 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i32 1 to void (i32)*))
  %call12 = call void (i32)* @signal(i32 20, void (i32)* inttoptr (i32 1 to void (i32)*))
  %call13 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i32 1 to void (i32)*))
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind
define void @release_pgrp() #0 {
entry:
  %0 = load i32, i32* @origpgrp, align 4
  %1 = load i32, i32* @mypgrp, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @origpgrp, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* @origpgrp, align 4
  call void @attachtty(i32 %3)
  %4 = load i32, i32* @origpgrp, align 4
  %call = call i32 @setpgid(i32 0, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load i32, i32* @origpgrp, align 4
  store i32 %5, i32* @mypgrp, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @acquire_pgrp() #0 {
entry:
  %ttpgrp = alloca i32, align 4
  %blockset = alloca %struct.__sigset_t, align 4
  %oldset = alloca %struct.__sigset_t, align 4
  %lastpgrp = alloca i32, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp12 = alloca %struct.__sigset_t, align 4
  %tmp13 = alloca %struct.__sigset_t, align 4
  %tmp19 = alloca %struct.__sigset_t, align 4
  %tmp24 = alloca %struct.__sigset_t, align 4
  %tmp37 = alloca %struct.__sigset_t, align 4
  %call = call i32 @getpgrp()
  store i32 %call, i32* @mypgrp, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else38

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @mypgrp, align 4
  store i32 %0, i32* %lastpgrp, align 4
  %call1 = call i32 @sigemptyset(%struct.__sigset_t* %blockset)
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %blockset, i32 21)
  %call3 = call i32 @sigaddset(%struct.__sigset_t* %blockset, i32 22)
  %call4 = call i32 @sigaddset(%struct.__sigset_t* %blockset, i32 20)
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %blockset)
  %1 = bitcast %struct.__sigset_t* %oldset to i8*
  %2 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 128, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.then
  %call5 = call i32 @gettygrp()
  store i32 %call5, i32* %ttpgrp, align 4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %ttpgrp, align 4
  %4 = load i32, i32* @mypgrp, align 4
  %cmp7 = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call8 = call i32 @getpgrp()
  store i32 %call8, i32* @mypgrp, align 4
  %6 = load i32, i32* @mypgrp, align 4
  %7 = load i32, i32* @mypid, align 4
  %cmp9 = icmp eq i32 %6, %7
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %while.body
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then10
  br label %while.end

if.end:                                           ; preds = %if.then10
  call void @signal_setmask(%struct.__sigset_t* sret %tmp12, %struct.__sigset_t* byval align 4 %oldset)
  %9 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %9)
  call void @signal_block(%struct.__sigset_t* sret %tmp13, %struct.__sigset_t* byval align 4 %blockset)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.body
  %10 = load i32, i32* @mypgrp, align 4
  %call15 = call i32 @gettygrp()
  %cmp16 = icmp eq i32 %10, %call15
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  br label %while.end

if.end18:                                         ; preds = %if.end14
  call void @signal_setmask(%struct.__sigset_t* sret %tmp19, %struct.__sigset_t* byval align 4 %oldset)
  %call20 = call i32 @read(i32 0, i8* null, i32 0)
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  call void @signal_block(%struct.__sigset_t* sret %tmp24, %struct.__sigset_t* byval align 4 %blockset)
  %call25 = call i32 @getpgrp()
  store i32 %call25, i32* @mypgrp, align 4
  %11 = load i32, i32* @mypgrp, align 4
  %12 = load i32, i32* %lastpgrp, align 4
  %cmp26 = icmp eq i32 %11, %12
  br i1 %cmp26, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end23
  %13 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool27 = icmp ne i8 %13, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  br label %while.end

if.end29:                                         ; preds = %land.lhs.true, %if.end23
  %14 = load i32, i32* @mypgrp, align 4
  store i32 %14, i32* %lastpgrp, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then28, %if.then17, %if.then11, %land.end
  %15 = load i32, i32* @mypgrp, align 4
  %16 = load i32, i32* @mypid, align 4
  %cmp30 = icmp ne i32 %15, %16
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %while.end
  %call32 = call i32 @setpgid(i32 0, i32 0)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then31
  %17 = load i32, i32* @mypid, align 4
  store i32 %17, i32* @mypgrp, align 4
  %18 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %18)
  br label %if.end35

if.else:                                          ; preds = %if.then31
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %while.end
  call void @signal_setmask(%struct.__sigset_t* sret %tmp37, %struct.__sigset_t* byval align 4 %oldset)
  br label %if.end39

if.else38:                                        ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 117), align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.end36
  ret void
}

declare i32 @strpfx(i8*, i8*) #1

declare i32 @getpgrp() #1

declare i32 @sigemptyset(%struct.__sigset_t*) #1

declare i32 @sigaddset(%struct.__sigset_t*, i32) #1

declare i32 @read(i32, i8*, i32) #1

declare i32 @setpgid(i32, i32) #1

declare %struct.value* @getvalue(%struct.value*, i8**, i32) #1

declare i32 @getintvalue(%struct.value*) #1

declare i8* @getsparam(i8*) #1

; Function Attrs: noinline nounwind
define internal void @printhhmmss(double %secs) #0 {
entry:
  %secs.addr = alloca double, align 8
  %mins = alloca i32, align 4
  %hours = alloca i32, align 4
  store double %secs, double* %secs.addr, align 8
  %0 = load double, double* %secs.addr, align 8
  %conv = fptosi double %0 to i32
  %div = sdiv i32 %conv, 60
  store i32 %div, i32* %mins, align 4
  %1 = load i32, i32* %mins, align 4
  %div1 = sdiv i32 %1, 60
  store i32 %div1, i32* %hours, align 4
  %2 = load i32, i32* %mins, align 4
  %mul = mul nsw i32 60, %2
  %conv2 = sitofp i32 %mul to double
  %3 = load double, double* %secs.addr, align 8
  %sub = fsub double %3, %conv2
  store double %sub, double* %secs.addr, align 8
  %4 = load i32, i32* %hours, align 4
  %mul3 = mul nsw i32 60, %4
  %5 = load i32, i32* %mins, align 4
  %sub4 = sub nsw i32 %5, %mul3
  store i32 %sub4, i32* %mins, align 4
  %6 = load i32, i32* %hours, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %8 = load i32, i32* %hours, align 4
  %9 = load i32, i32* %mins, align 4
  %10 = load double, double* %secs.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i32 %8, i32 %9, double %10)
  br label %if.end10

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %mins, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %13 = load i32, i32* %mins, align 4
  %14 = load double, double* %secs.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %13, double %14)
  br label %if.end

if.else8:                                         ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %16 = load double, double* %secs.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), double %16)
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret void
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
