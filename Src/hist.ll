; ModuleID = 'hist.c'
source_filename = "hist.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.__sigset_t = type { [32 x i32] }
%struct._IO_FILE = type opaque
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, {}*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.histfile_stats = type { i8*, i32, i32, i32, i32, i32 }
%struct.histsave = type { %struct.histfile_stats, i8*, %struct.hashtable*, %struct.histent*, i32, i32, i32, i32, i32 }
%struct.hist_stack = type { i32, i32, i32, i32, i32, i8*, i8*, i16*, i32, i32, i32 ()*, void (i32)*, void (i32)*, void (i32)*, void ()*, void ()*, void (i32)*, i8*, i32, i32 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.__mbstate_t = type { i32, i32 }
%struct.flock = type { i16, i16, i32, i32, i32 }
%struct.alias = type { %struct.hashnode, i8*, i32 }

@chline = common global i8* null, align 4
@zle_chline = common global i8* null, align 4
@hptr = common global i8* null, align 4
@histactive = common global i32 0, align 4
@histdone = common global i32 0, align 4
@stophist = common global i32 0, align 4
@chwords = common global i16* null, align 4
@chwordlen = common global i32 0, align 4
@chwordpos = common global i32 0, align 4
@hgetc = common global i32 ()* null, align 4
@hungetc = common global void (i32)* null, align 4
@hwaddc = common global void (i32)* null, align 4
@hwbegin = common global void (i32)* null, align 4
@hwabort = common global void ()* null, align 4
@hwend = common global void ()* null, align 4
@addtoline = common global void (i32)* null, align 4
@hlinesz = common global i32 0, align 4
@defev = internal global i32 0, align 4
@hist_keep_comment = internal global i32 0, align 4
@cmdstack = external global i8*, align 4
@cmdsp = external global i32, align 4
@expanding = common global i32 0, align 4
@lexstop = external global i32, align 4
@qbang = common global i32 0, align 4
@bangchar = external global i8, align 1
@exlast = common global i32 0, align 4
@excs = common global i32 0, align 4
@zlemetacs = external global i32, align 4
@inbufct = external global i32, align 4
@typtab = external global [256 x i16], align 2
@ztokens = external global [0 x i8], align 1
@strin = external global i32, align 4
@lex_add_raw = external global i32, align 4
@isfirstch = external global i32, align 4
@isfirstln = external global i32, align 4
@errflag = external global i32, align 4
@opts = external global [181 x i8], align 1
@hist_ring = common global %struct.histent* null, align 4
@mypgrp = external global i32, align 4
@curhist = common global i32 0, align 4
@histsave_stack_pos = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HISTFILE\00", align 1
@curline = common global %struct.histent zeroinitializer, align 4
@histlinect = common global i32 0, align 4
@histsiz = common global i32 0, align 4
@queueing_enabled = external global i32, align 4
@shttyinfo = external global %struct.ttyinfo, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@hist_ignore_all_dups = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"zshaddhistory\00", align 1
@shout = external global %struct._IO_FILE*, align 4
@bufstack = external global %union.linkroot*, align 4
@histtab = common global %struct.hashtable* null, align 4
@inbufflags = external global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lasthist = internal global %struct.histfile_stats zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"locking failed for %s: %e: reading anyway\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"locking failed for %s: %e\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@histfile_linect = internal global i32 0, align 4
@hist_skip_flags = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"corrupt history file %s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"can't read history file %s\00", align 1
@zleactive = external global i32, align 4
@savehistsiz = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".new\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"rewriting %s would change its ownership -- skipped\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"rewriting %s would change its ownership -- history not saved\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"HISTORY_IGNORE\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c": %ld:%ld;\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"can't rename %s.new to $HISTFILE\00", align 1
@flock_fd = internal global i32 -1, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"failed to write history file %s.new: %e\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"failed to write history file %s: %e\00", align 1
@lockhistct = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c".LOCK\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"/pid-%ld/host-\00", align 1
@mypid = external global i32, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s.LOCK\00", align 1
@noerrs = external global i32, align 4
@wb = external global i32, align 4
@we = external global i32, align 4
@addedx = external global i32, align 4
@nocomments = external global i32, align 4
@noaliases = external global i32, align 4
@zlemetall = external global i32, align 4
@lexflags = external global i32, align 4
@incond = external global i32, align 4
@tok = external global i32, align 4
@tokstr = external global i8*, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"=(\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@tokfd = external global i32, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@tokstrings = external global [63 x i8*], align 4
@.str.30 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@histsave_stack_size = internal global i32 0, align 4
@histsave_stack = internal global %struct.histsave* null, align 4
@locallevel = external global i32, align 4
@nohistsave = external global i32, align 4
@hsubl = common global i8* null, align 4
@hsubr = common global i8* null, align 4
@exit_pending = external global i32, align 4
@histsubchar.marg = internal global i32 -1, align 4
@histsubchar.mev = internal global i32 -1, align 4
@hatchar = external global i8, align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"no such event: %s\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"event not found: %s\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"ambiguous history reference\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"'s' or '&' modifier expected after 'g'\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"modifier failed: a\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"modifier failed: A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"modifier failed: c\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"modifier failed: h\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"modifier failed: e\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"modifier failed: r\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"modifier failed: t\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"no previous substitution\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"illegal modifier: %c\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"'}' expected\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"no such event: %d\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"no such word in event\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"history event too long, can't index requested words\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"substitution failed\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Ambiguous history reference\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%% with no previous word matched\00", align 1
@putoldhistentryontop.next = internal global %struct.histent* null, align 4
@putoldhistentryontop.max_unique_ct = internal global i32 0, align 4
@aliasspaceflag = external global i32, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"builtin \00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@shfunctab = external global %struct.hashtable*, align 4
@.str.53 = private unnamed_addr constant [3 x i8] c"fc\00", align 1

; Function Attrs: noinline nounwind
define void @hist_context_save(%struct.hist_stack* %hs, i32 %toplevel) #0 {
entry:
  %hs.addr = alloca %struct.hist_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.hist_stack* %hs, %struct.hist_stack** %hs.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @chline, align 4
  store i8* %1, i8** @zle_chline, align 4
  %2 = load i8*, i8** @hptr, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** @hptr, align 4
  store i8 0, i8* %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @histactive, align 4
  %5 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %histactive = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %5, i32 0, i32 0
  store i32 %4, i32* %histactive, align 4
  %6 = load i32, i32* @histdone, align 4
  %7 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %histdone = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %7, i32 0, i32 1
  store i32 %6, i32* %histdone, align 4
  %8 = load i32, i32* @stophist, align 4
  %9 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %stophist = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %9, i32 0, i32 2
  store i32 %8, i32* %stophist, align 4
  %10 = load i8*, i8** @chline, align 4
  %11 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hline = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %11, i32 0, i32 5
  store i8* %10, i8** %hline, align 4
  %12 = load i8*, i8** @hptr, align 4
  %13 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hptr = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %13, i32 0, i32 6
  store i8* %12, i8** %hptr, align 4
  %14 = load i16*, i16** @chwords, align 4
  %15 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwords = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %15, i32 0, i32 7
  store i16* %14, i16** %chwords, align 4
  %16 = load i32, i32* @chwordlen, align 4
  %17 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwordlen = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %17, i32 0, i32 8
  store i32 %16, i32* %chwordlen, align 4
  %18 = load i32, i32* @chwordpos, align 4
  %19 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwordpos = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %19, i32 0, i32 9
  store i32 %18, i32* %chwordpos, align 4
  %20 = load i32 ()*, i32 ()** @hgetc, align 4
  %21 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hgetc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %21, i32 0, i32 10
  store i32 ()* %20, i32 ()** %hgetc, align 4
  %22 = load void (i32)*, void (i32)** @hungetc, align 4
  %23 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hungetc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %23, i32 0, i32 11
  store void (i32)* %22, void (i32)** %hungetc, align 4
  %24 = load void (i32)*, void (i32)** @hwaddc, align 4
  %25 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwaddc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %25, i32 0, i32 12
  store void (i32)* %24, void (i32)** %hwaddc, align 4
  %26 = load void (i32)*, void (i32)** @hwbegin, align 4
  %27 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwbegin = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %27, i32 0, i32 13
  store void (i32)* %26, void (i32)** %hwbegin, align 4
  %28 = load void ()*, void ()** @hwabort, align 4
  %29 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwabort = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %29, i32 0, i32 14
  store void ()* %28, void ()** %hwabort, align 4
  %30 = load void ()*, void ()** @hwend, align 4
  %31 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwend = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %31, i32 0, i32 15
  store void ()* %30, void ()** %hwend, align 4
  %32 = load void (i32)*, void (i32)** @addtoline, align 4
  %33 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %addtoline = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %33, i32 0, i32 16
  store void (i32)* %32, void (i32)** %addtoline, align 4
  %34 = load i32, i32* @hlinesz, align 4
  %35 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hlinesz = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %35, i32 0, i32 3
  store i32 %34, i32* %hlinesz, align 4
  %36 = load i32, i32* @defev, align 4
  %37 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %defev = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %37, i32 0, i32 4
  store i32 %36, i32* %defev, align 4
  %38 = load i32, i32* @hist_keep_comment, align 4
  %39 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hist_keep_comment = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %39, i32 0, i32 19
  store i32 %38, i32* %hist_keep_comment, align 4
  %40 = load i8*, i8** @cmdstack, align 4
  %41 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %cstack = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %41, i32 0, i32 17
  store i8* %40, i8** %cstack, align 4
  %42 = load i32, i32* @cmdsp, align 4
  %43 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %csp = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %43, i32 0, i32 18
  store i32 %42, i32* %csp, align 4
  store i32 0, i32* @stophist, align 4
  store i8* null, i8** @chline, align 4
  store i8* null, i8** @hptr, align 4
  store i32 0, i32* @histactive, align 4
  %call = call i8* @zalloc(i32 256)
  store i8* %call, i8** @cmdstack, align 4
  store i32 0, i32* @cmdsp, align 4
  ret void
}

declare i8* @zalloc(i32) #1

; Function Attrs: noinline nounwind
define void @hist_context_restore(%struct.hist_stack* %hs, i32 %toplevel) #0 {
entry:
  %hs.addr = alloca %struct.hist_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.hist_stack* %hs, %struct.hist_stack** %hs.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** @zle_chline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %histactive = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %1, i32 0, i32 0
  %2 = load i32, i32* %histactive, align 4
  store i32 %2, i32* @histactive, align 4
  %3 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %histdone = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %3, i32 0, i32 1
  %4 = load i32, i32* %histdone, align 4
  store i32 %4, i32* @histdone, align 4
  %5 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %stophist = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %5, i32 0, i32 2
  %6 = load i32, i32* %stophist, align 4
  store i32 %6, i32* @stophist, align 4
  %7 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hline = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %7, i32 0, i32 5
  %8 = load i8*, i8** %hline, align 4
  store i8* %8, i8** @chline, align 4
  %9 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hptr = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %9, i32 0, i32 6
  %10 = load i8*, i8** %hptr, align 4
  store i8* %10, i8** @hptr, align 4
  %11 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwords = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %11, i32 0, i32 7
  %12 = load i16*, i16** %chwords, align 4
  store i16* %12, i16** @chwords, align 4
  %13 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwordlen = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %13, i32 0, i32 8
  %14 = load i32, i32* %chwordlen, align 4
  store i32 %14, i32* @chwordlen, align 4
  %15 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %chwordpos = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %15, i32 0, i32 9
  %16 = load i32, i32* %chwordpos, align 4
  store i32 %16, i32* @chwordpos, align 4
  %17 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hgetc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %17, i32 0, i32 10
  %18 = load i32 ()*, i32 ()** %hgetc, align 4
  store i32 ()* %18, i32 ()** @hgetc, align 4
  %19 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hungetc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %19, i32 0, i32 11
  %20 = load void (i32)*, void (i32)** %hungetc, align 4
  store void (i32)* %20, void (i32)** @hungetc, align 4
  %21 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwaddc = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %21, i32 0, i32 12
  %22 = load void (i32)*, void (i32)** %hwaddc, align 4
  store void (i32)* %22, void (i32)** @hwaddc, align 4
  %23 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwbegin = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %23, i32 0, i32 13
  %24 = load void (i32)*, void (i32)** %hwbegin, align 4
  store void (i32)* %24, void (i32)** @hwbegin, align 4
  %25 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwabort = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %25, i32 0, i32 14
  %26 = load void ()*, void ()** %hwabort, align 4
  store void ()* %26, void ()** @hwabort, align 4
  %27 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hwend = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %27, i32 0, i32 15
  %28 = load void ()*, void ()** %hwend, align 4
  store void ()* %28, void ()** @hwend, align 4
  %29 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %addtoline = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %29, i32 0, i32 16
  %30 = load void (i32)*, void (i32)** %addtoline, align 4
  store void (i32)* %30, void (i32)** @addtoline, align 4
  %31 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hlinesz = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %31, i32 0, i32 3
  %32 = load i32, i32* %hlinesz, align 4
  store i32 %32, i32* @hlinesz, align 4
  %33 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %defev = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %33, i32 0, i32 4
  %34 = load i32, i32* %defev, align 4
  store i32 %34, i32* @defev, align 4
  %35 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %hist_keep_comment = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %35, i32 0, i32 19
  %36 = load i32, i32* %hist_keep_comment, align 4
  store i32 %36, i32* @hist_keep_comment, align 4
  %37 = load i8*, i8** @cmdstack, align 4
  %tobool1 = icmp ne i8* %37, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %38 = load i8*, i8** @cmdstack, align 4
  call void @zfree(i8* %38, i32 256)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %39 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %cstack = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %39, i32 0, i32 17
  %40 = load i8*, i8** %cstack, align 4
  store i8* %40, i8** @cmdstack, align 4
  %41 = load %struct.hist_stack*, %struct.hist_stack** %hs.addr, align 4
  %csp = getelementptr inbounds %struct.hist_stack, %struct.hist_stack* %41, i32 0, i32 18
  %42 = load i32, i32* %csp, align 4
  store i32 %42, i32* @cmdsp, align 4
  ret void
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @hist_in_word(i32 %yesno) #0 {
entry:
  %yesno.addr = alloca i32, align 4
  store i32 %yesno, i32* %yesno.addr, align 4
  %0 = load i32, i32* %yesno.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @histactive, align 4
  %or = or i32 %1, 4
  store i32 %or, i32* @histactive, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @histactive, align 4
  %and = and i32 %2, -5
  store i32 %and, i32* @histactive, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @iaddtoline(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @expanding, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @lexstop, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @qbang, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %c.addr, align 4
  %4 = load i8, i8* @bangchar, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* @stophist, align 4
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  %6 = load i32, i32* @exlast, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @exlast, align 4
  %call = call i8* (i32, ...) @zleentry(i32 2, i32 92)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true4, %land.lhs.true, %if.end
  %7 = load i32, i32* @excs, align 4
  %8 = load i32, i32* @zlemetacs, align 4
  %cmp9 = icmp sgt i32 %7, %8
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  %9 = load i32, i32* @inbufct, align 4
  %add = add nsw i32 1, %9
  %10 = load i32, i32* @exlast, align 4
  %sub = sub nsw i32 %add, %10
  %11 = load i32, i32* @excs, align 4
  %add12 = add nsw i32 %11, %sub
  store i32 %add12, i32* @excs, align 4
  %12 = load i32, i32* @excs, align 4
  %13 = load i32, i32* @zlemetacs, align 4
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  %14 = load i32, i32* @zlemetacs, align 4
  store i32 %14, i32* @excs, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8
  %15 = load i32, i32* @inbufct, align 4
  store i32 %15, i32* @exlast, align 4
  %16 = load i32, i32* %c.addr, align 4
  %conv18 = trunc i32 %16 to i8
  %idxprom = zext i8 %conv18 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %17 = load i16, i16* %arrayidx, align 2
  %conv19 = sext i16 %17 to i32
  %and = and i32 %conv19, 16
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end17
  %18 = load i32, i32* %c.addr, align 4
  %sub21 = sub nsw i32 %18, -124
  %arrayidx22 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub21
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %19 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %20 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %20, %cond.false ]
  %call24 = call i8* (i32, ...) @zleentry(i32 2, i32 %cond)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

declare i8* @zleentry(i32, ...) #1

; Function Attrs: noinline nounwind
define void @herrflush() #0 {
entry:
  %c = alloca i32, align 4
  call void @inpopalias()
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %1 = load i32, i32* @inbufct, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* @strin, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i32, i32* @lex_add_raw, align 4
  %tobool3 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %4 = phi i1 [ true, %land.rhs ], [ %tobool3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %4, %lor.end ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @ingetc()
  store i32 %call, i32* %c, align 4
  %6 = load i32, i32* @lexstop, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %while.body
  %7 = load void (i32)*, void (i32)** @hwaddc, align 4
  %8 = load i32, i32* %c, align 4
  call void %7(i32 %8)
  %9 = load void (i32)*, void (i32)** @addtoline, align 4
  %10 = load i32, i32* %c, align 4
  call void %9(i32 %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

declare void @inpopalias() #1

declare i32 @ingetc() #1

; Function Attrs: noinline nounwind
define void @strinbeg(i32 %dohist) #0 {
entry:
  %dohist.addr = alloca i32, align 4
  store i32 %dohist, i32* %dohist.addr, align 4
  %0 = load i32, i32* @strin, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @strin, align 4
  %1 = load i32, i32* %dohist.addr, align 4
  call void @hbegin(i32 %1)
  call void @lexinit()
  call void @init_parse_status()
  ret void
}

; Function Attrs: noinline nounwind
define void @hbegin(i32 %dohist) #0 {
entry:
  %dohist.addr = alloca i32, align 4
  %hf = alloca i8*, align 4
  store i32 %dohist, i32* %dohist.addr, align 4
  store i32 1, i32* @isfirstch, align 4
  store i32 1, i32* @isfirstln, align 4
  %0 = load i32, i32* @errflag, align 4
  %and = and i32 %0, -2
  store i32 %and, i32* @errflag, align 4
  store i32 0, i32* @histdone, align 4
  %1 = load i32, i32* %dohist.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, i32* @stophist, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %dohist.addr, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then1, label %if.else4

if.then1:                                         ; preds = %if.else
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then1
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool3 = icmp ne i8 %4, 0
  %lnot = xor i1 %tobool3, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %5 = phi i1 [ true, %if.then1 ], [ %lnot, %lor.rhs ]
  %cond = select i1 %5, i32 2, i32 0
  store i32 %cond, i32* @stophist, align 4
  br label %if.end

if.else4:                                         ; preds = %if.else
  store i32 0, i32* @stophist, align 4
  br label %if.end

if.end:                                           ; preds = %if.else4, %lor.end
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* @stophist, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end5
  store i8* null, i8** @hptr, align 4
  store i8* null, i8** @chline, align 4
  store i32 0, i32* @hlinesz, align 4
  store i16* null, i16** @chwords, align 4
  store i32 0, i32* @chwordlen, align 4
  store i32 ()* @ingetc, i32 ()** @hgetc, align 4
  store void (i32)* @inungetc, void (i32)** @hungetc, align 4
  store void (i32)* @nohw, void (i32)** @hwaddc, align 4
  store void (i32)* @nohw, void (i32)** @hwbegin, align 4
  store void ()* @nohwabort, void ()** @hwabort, align 4
  store void ()* @nohwe, void ()** @hwend, align 4
  store void (i32)* @nohw, void (i32)** @addtoline, align 4
  br label %if.end13

if.else8:                                         ; preds = %if.end5
  store i32 64, i32* @hlinesz, align 4
  %call = call i8* @zshcalloc(i32 64)
  store i8* %call, i8** @hptr, align 4
  store i8* %call, i8** @chline, align 4
  store i32 64, i32* @chwordlen, align 4
  %call9 = call i8* @zalloc(i32 128)
  %7 = bitcast i8* %call9 to i16*
  store i16* %7, i16** @chwords, align 4
  store i32 ()* @ihgetc, i32 ()** @hgetc, align 4
  store void (i32)* @ihungetc, void (i32)** @hungetc, align 4
  store void (i32)* @ihwaddc, void (i32)** @hwaddc, align 4
  store void (i32)* @ihwbegin, void (i32)** @hwbegin, align 4
  store void ()* @ihwabort, void ()** @hwabort, align 4
  store void ()* @ihwend, void ()** @hwend, align 4
  store void (i32)* @iaddtoline, void (i32)** @addtoline, align 4
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 18), align 1
  %tobool10 = icmp ne i8 %8, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.else8
  store i32 4, i32* @stophist, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  store i32 0, i32* @chwordpos, align 4
  %9 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool14 = icmp ne %struct.histent* %9, null
  br i1 %tobool14, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %10 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %ftim = getelementptr inbounds %struct.histent, %struct.histent* %10, i32 0, i32 5
  %11 = load i32, i32* %ftim, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.end21, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* @strin, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %if.end21, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %call19 = call i32 @time(i32* null)
  %13 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %ftim20 = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 5
  store i32 %call19, i32* %ftim20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %land.lhs.true, %if.end13
  %14 = load i32, i32* %dohist.addr, align 4
  %cmp22 = icmp eq i32 %14, 2
  br i1 %cmp22, label %land.lhs.true27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %15 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %15 to i32
  %tobool23 = icmp ne i32 %conv, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.else31

land.lhs.true24:                                  ; preds = %lor.lhs.false
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv25 = sext i8 %16 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.else31

land.lhs.true27:                                  ; preds = %land.lhs.true24, %if.end21
  %17 = load i32, i32* @strin, align 4
  %tobool28 = icmp ne i32 %17, 0
  br i1 %tobool28, label %if.else31, label %if.then29

if.then29:                                        ; preds = %land.lhs.true27
  store i32 1, i32* @histactive, align 4
  %18 = load i32, i32* @mypgrp, align 4
  call void @attachtty(i32 %18)
  call void @linkcurline()
  %19 = load i32, i32* @curhist, align 4
  %call30 = call i32 @addhistnum(i32 %19, i32 -1, i32 16)
  store i32 %call30, i32* @defev, align 4
  br label %if.end32

if.else31:                                        ; preds = %land.lhs.true27, %land.lhs.true24, %lor.lhs.false
  store i32 3, i32* @histactive, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then29
  %20 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 93), align 1
  %conv33 = sext i8 %20 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.end49

land.lhs.true35:                                  ; preds = %if.end32
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %tobool36 = icmp ne i8 %21, 0
  br i1 %tobool36, label %if.end49, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %22 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 92), align 1
  %tobool38 = icmp ne i8 %22, 0
  br i1 %tobool38, label %if.end49, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %23 = load i32, i32* @histactive, align 4
  %and40 = and i32 %23, 2
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end49, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %24 = load i32, i32* @strin, align 4
  %tobool43 = icmp ne i32 %24, 0
  br i1 %tobool43, label %if.end49, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %25 = load i32, i32* @histsave_stack_pos, align 4
  %cmp45 = icmp eq i32 %25, 0
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %land.lhs.true44
  %call48 = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call48, i8** %hf, align 4
  %26 = load i8*, i8** %hf, align 4
  call void @savehistfile(i8* %26, i32 0, i32 32784)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true44, %land.lhs.true42, %land.lhs.true39, %land.lhs.true37, %land.lhs.true35, %if.end32
  ret void
}

declare void @lexinit() #1

declare void @init_parse_status() #1

; Function Attrs: noinline nounwind
define void @strinend() #0 {
entry:
  %call = call i32 @hend(%struct.eprog* null)
  %0 = load i32, i32* @strin, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @strin, align 4
  store i32 1, i32* @isfirstch, align 4
  store i32 0, i32* @histdone, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @hend(%struct.eprog* %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.eprog*, align 4
  %flag = alloca i32, align 4
  %hookret = alloca i32, align 4
  %stack_pos = alloca i32, align 4
  %save = alloca i32, align 4
  %hf = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp12 = alloca %struct.__sigset_t, align 4
  %hookargs = alloca %union.linkroot*, align 4
  %save_errflag = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %he = alloca %struct.histent*, align 4
  %he130 = alloca %struct.histent*, align 4
  %newflags = alloca i32, align 4
  %oset228 = alloca %struct.__sigset_t, align 4
  %tmp232 = alloca %struct.__sigset_t, align 4
  %tmp234 = alloca %struct.__sigset_t, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  %0 = load i32, i32* @histsave_stack_pos, align 4
  store i32 %0, i32* %stack_pos, align 4
  store i32 1, i32* %save, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load i32, i32* @histdone, align 4
  %and = and i32 %2, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @settyinfo(%struct.ttyinfo* @shttyinfo)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @histactive, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @unlinkcurline()
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, i32* @histactive, align 4
  %and5 = and i32 %4, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end4
  %5 = load i8*, i8** @chline, align 4
  %6 = load i32, i32* @hlinesz, align 4
  call void @zfree(i8* %5, i32 %6)
  %7 = load i16*, i16** @chwords, align 4
  %8 = bitcast i16* %7 to i8*
  %9 = load i32, i32* @chwordlen, align 4
  %mul = mul i32 %9, 2
  call void @zfree(i8* %8, i32 %mul)
  store i8* null, i8** @hptr, align 4
  store i8* null, i8** @chline, align 4
  store i16* null, i16** @chwords, align 4
  store i32 0, i32* @histactive, align 4
  br label %do.body

do.body:                                          ; preds = %if.then7
  %10 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool8 = icmp ne i32 %dec, 0
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %do.body
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body10
  %11 = load i32, i32* @queue_front, align 4
  %12 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %13, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %14 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %14
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %15 = bitcast %struct.__sigset_t* %oset to i8*
  %16 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 4, i1 false)
  %17 = load i32, i32* @queue_front, align 4
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %17
  %18 = load i32, i32* %arrayidx11, align 4
  call void @zhandler(i32 %18)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp12, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end4
  %19 = load i32, i32* @hist_ignore_all_dups, align 4
  %20 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 77), align 1
  %conv = sext i8 %20 to i32
  %cmp16 = icmp ne i32 %19, %conv
  br i1 %cmp16, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 77), align 1
  %conv18 = sext i8 %21 to i32
  store i32 %conv18, i32* @hist_ignore_all_dups, align 4
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @histremovedups()
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true, %if.end15
  %22 = load i8*, i8** @hptr, align 4
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %23 = load i8*, i8** @hptr, align 4
  store i8 0, i8* %23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %24 = load i8*, i8** @chline, align 4
  %25 = load i8, i8* %24, align 1
  %tobool26 = icmp ne i8 %25, 0
  br i1 %tobool26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end25
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %hookargs, align 4
  %26 = load i32, i32* @errflag, align 4
  store i32 %26, i32* %save_errflag, align 4
  store i32 0, i32* @errflag, align 4
  %27 = load %union.linkroot*, %union.linkroot** %hookargs, align 4
  %28 = load %union.linkroot*, %union.linkroot** %hookargs, align 4
  %list = bitcast %union.linkroot* %28 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %29 = load %struct.linknode*, %struct.linknode** %last, align 4
  %call30 = call %struct.linknode* @insertlinknode(%union.linkroot* %27, %struct.linknode* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %30 = load %union.linkroot*, %union.linkroot** %hookargs, align 4
  %31 = load %union.linkroot*, %union.linkroot** %hookargs, align 4
  %list31 = bitcast %union.linkroot* %31 to %struct.linklist*
  %last32 = getelementptr inbounds %struct.linklist, %struct.linklist* %list31, i32 0, i32 1
  %32 = load %struct.linknode*, %struct.linknode** %last32, align 4
  %33 = load i8*, i8** @chline, align 4
  %call33 = call %struct.linknode* @insertlinknode(%union.linkroot* %30, %struct.linknode* %32, i8* %33)
  %34 = load %union.linkroot*, %union.linkroot** %hookargs, align 4
  %call34 = call i32 @callhookfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %union.linkroot* %34, i32 1, i32* %hookret)
  %35 = load i32, i32* @errflag, align 4
  %and35 = and i32 %35, -2
  store i32 %and35, i32* @errflag, align 4
  %36 = load i32, i32* %save_errflag, align 4
  %37 = load i32, i32* @errflag, align 4
  %or = or i32 %37, %36
  store i32 %or, i32* @errflag, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end25
  %call37 = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call37, i8** %hf, align 4
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %conv38 = sext i8 %38 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end45

land.lhs.true40:                                  ; preds = %if.end36
  %39 = load i8*, i8** %hf, align 4
  %call41 = call i32 @lockhistfile(i8* %39, i32 0)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  %40 = load i8*, i8** %hf, align 4
  call void @readhistfile(i8* %40, i32 0, i32 32784)
  %41 = load i32, i32* @curhist, align 4
  %add44 = add nsw i32 %41, 1
  store i32 %add44, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 8), align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true40, %if.end36
  %42 = load i32, i32* @histdone, align 4
  store i32 %42, i32* %flag, align 4
  store i32 0, i32* @histdone, align 4
  %43 = load i8*, i8** @hptr, align 4
  %44 = load i8*, i8** @chline, align 4
  %add.ptr = getelementptr inbounds i8, i8* %44, i32 1
  %cmp46 = icmp ult i8* %43, %add.ptr
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  store i32 0, i32* %save, align 4
  br label %if.end80

if.else:                                          ; preds = %if.end45
  %45 = load i8*, i8** @hptr, align 4
  %arrayidx49 = getelementptr inbounds i8, i8* %45, i32 -1
  %46 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %46 to i32
  %cmp51 = icmp eq i32 %conv50, 10
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.else
  %47 = load i8*, i8** @chline, align 4
  %arrayidx54 = getelementptr inbounds i8, i8* %47, i32 1
  %48 = load i8, i8* %arrayidx54, align 1
  %tobool55 = icmp ne i8 %48, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.then53
  %49 = load i8*, i8** @hptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %incdec.ptr, i8** @hptr, align 4
  store i8 0, i8* %incdec.ptr, align 1
  br label %if.end58

if.else57:                                        ; preds = %if.then53
  store i32 0, i32* %save, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then56
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.else
  %50 = load i32, i32* @chwordpos, align 4
  %cmp60 = icmp sle i32 %50, 2
  br i1 %cmp60, label %land.lhs.true62, label %if.else65

land.lhs.true62:                                  ; preds = %if.end59
  %51 = load i32, i32* @hist_keep_comment, align 4
  %tobool63 = icmp ne i32 %51, 0
  br i1 %tobool63, label %if.else65, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i32 0, i32* %save, align 4
  br label %if.end79

if.else65:                                        ; preds = %land.lhs.true62, %if.end59
  %52 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %call66 = call i32 @should_ignore_line(%struct.eprog* %52)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else65
  store i32 -1, i32* %save, align 4
  br label %if.end78

if.else69:                                        ; preds = %if.else65
  %53 = load i32, i32* %hookret, align 4
  %cmp70 = icmp eq i32 %53, 2
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.else69
  store i32 -2, i32* %save, align 4
  br label %if.end77

if.else73:                                        ; preds = %if.else69
  %54 = load i32, i32* %hookret, align 4
  %tobool74 = icmp ne i32 %54, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.else73
  store i32 -1, i32* %save, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.else73
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then68
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then64
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then48
  %55 = load i32, i32* %flag, align 4
  %and81 = and i32 %55, 5
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then83, label %if.end100

if.then83:                                        ; preds = %if.end80
  %56 = load i8*, i8** @chline, align 4
  %call85 = call i8* @ztrdup(i8* %56)
  store i8* %call85, i8** %ptr, align 4
  %57 = load i32, i32* %flag, align 4
  %and86 = and i32 %57, 5
  %cmp87 = icmp eq i32 %and86, 1
  br i1 %cmp87, label %if.then89, label %if.end93

if.then89:                                        ; preds = %if.then83
  %58 = load i8*, i8** %ptr, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call90 = call i32 @zputs(i8* %58, %struct._IO_FILE* %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call91 = call i32 @fputc(i32 10, %struct._IO_FILE* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @shout, align 4
  %call92 = call i32 @fflush(%struct._IO_FILE* %61)
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.then83
  %62 = load i32, i32* %flag, align 4
  %and94 = and i32 %62, 4
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.else98

if.then96:                                        ; preds = %if.end93
  %63 = load %union.linkroot*, %union.linkroot** @bufstack, align 4
  %64 = load %union.linkroot*, %union.linkroot** @bufstack, align 4
  %node = bitcast %union.linkroot* %64 to %struct.linknode*
  %65 = load i8*, i8** %ptr, align 4
  %call97 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %63, %struct.linknode* %node, i8* %65)
  store i32 0, i32* %save, align 4
  br label %if.end99

if.else98:                                        ; preds = %if.end93
  %66 = load i8*, i8** %ptr, align 4
  call void @zsfree(i8* %66)
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.then96
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end80
  %67 = load i32, i32* %save, align 4
  %tobool101 = icmp ne i32 %67, 0
  br i1 %tobool101, label %if.then105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end100
  %68 = load i8*, i8** @chline, align 4
  %69 = load i8, i8* %68, align 1
  %conv102 = sext i8 %69 to i32
  %cmp103 = icmp eq i32 %conv102, 32
  br i1 %cmp103, label %if.then105, label %if.end126

if.then105:                                       ; preds = %lor.lhs.false, %if.end100
  %70 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %70, %struct.histent** %he, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then105
  %71 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool107 = icmp ne %struct.histent* %71, null
  br i1 %tobool107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %72 = load %struct.histent*, %struct.histent** %he, align 4
  %node108 = getelementptr inbounds %struct.histent, %struct.histent* %72, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node108, i32 0, i32 2
  %73 = load i32, i32* %flags, align 4
  %and109 = and i32 %73, 16
  %tobool110 = icmp ne i32 %and109, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %74 = phi i1 [ false, %for.cond ], [ %tobool110, %land.rhs ]
  br i1 %74, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load %struct.histent*, %struct.histent** %he, align 4
  %call111 = call %struct.histent* @up_histent(%struct.histent* %75)
  store %struct.histent* %call111, %struct.histent** %he, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %76 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool112 = icmp ne %struct.histent* %76, null
  br i1 %tobool112, label %land.lhs.true113, label %if.end125

land.lhs.true113:                                 ; preds = %for.end
  %77 = load %struct.histent*, %struct.histent** %he, align 4
  %node114 = getelementptr inbounds %struct.histent, %struct.histent* %77, i32 0, i32 0
  %flags115 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node114, i32 0, i32 2
  %78 = load i32, i32* %flags115, align 4
  %and116 = and i32 %78, 32
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.end125

if.then118:                                       ; preds = %land.lhs.true113
  %79 = load %struct.histent*, %struct.histent** %he, align 4
  %80 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp119 = icmp eq %struct.histent* %79, %80
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.then118
  %81 = load i32, i32* @curhist, align 4
  %dec122 = add nsw i32 %81, -1
  store i32 %dec122, i32* @curhist, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 8), align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.then118
  %82 = load %struct.histent*, %struct.histent** %he, align 4
  %node124 = getelementptr inbounds %struct.histent, %struct.histent* %82, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node124)
  br label %if.end125

if.end125:                                        ; preds = %if.end123, %land.lhs.true113, %for.end
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %lor.lhs.false
  %83 = load i32, i32* %save, align 4
  %tobool127 = icmp ne i32 %83, 0
  br i1 %tobool127, label %if.then128, label %if.end196

if.then128:                                       ; preds = %if.end126
  %84 = load i32, i32* @chwordpos, align 4
  %cmp132 = icmp sgt i32 %84, 1
  br i1 %cmp132, label %land.lhs.true134, label %if.end143

land.lhs.true134:                                 ; preds = %if.then128
  %85 = load i8*, i8** @chline, align 4
  %86 = load i16*, i16** @chwords, align 4
  %87 = load i32, i32* @chwordpos, align 4
  %sub = sub nsw i32 %87, 2
  %arrayidx135 = getelementptr inbounds i16, i16* %86, i32 %sub
  %88 = load i16, i16* %arrayidx135, align 2
  %idxprom = sext i16 %88 to i32
  %arrayidx136 = getelementptr inbounds i8, i8* %85, i32 %idxprom
  %89 = load i8, i8* %arrayidx136, align 1
  %tobool137 = icmp ne i8 %89, 0
  br i1 %tobool137, label %if.end143, label %if.then138

if.then138:                                       ; preds = %land.lhs.true134
  %90 = load i32, i32* @chwordpos, align 4
  %sub139 = sub nsw i32 %90, 2
  store i32 %sub139, i32* @chwordpos, align 4
  %91 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 83), align 1
  %tobool140 = icmp ne i8 %91, 0
  br i1 %tobool140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.then138
  call void @histreduceblanks()
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.then138
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %land.lhs.true134, %if.then128
  %92 = load i32, i32* %save, align 4
  %cmp144 = icmp eq i32 %92, -1
  br i1 %cmp144, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.end143
  store i32 32, i32* %newflags, align 4
  br label %if.end153

if.else147:                                       ; preds = %if.end143
  %93 = load i32, i32* %save, align 4
  %cmp148 = icmp eq i32 %93, -2
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.else147
  store i32 64, i32* %newflags, align 4
  br label %if.end152

if.else151:                                       ; preds = %if.else147
  store i32 0, i32* %newflags, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then150
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then146
  %94 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 78), align 1
  %conv154 = sext i8 %94 to i32
  %tobool155 = icmp ne i32 %conv154, 0
  br i1 %tobool155, label %land.lhs.true159, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %if.end153
  %95 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 77), align 1
  %conv157 = sext i8 %95 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %land.lhs.true159, label %if.else174

land.lhs.true159:                                 ; preds = %lor.lhs.false156, %if.end153
  %96 = load i32, i32* %save, align 4
  %cmp160 = icmp sgt i32 %96, 0
  br i1 %cmp160, label %land.lhs.true162, label %if.else174

land.lhs.true162:                                 ; preds = %land.lhs.true159
  %97 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool163 = icmp ne %struct.histent* %97, null
  br i1 %tobool163, label %land.lhs.true164, label %if.else174

land.lhs.true164:                                 ; preds = %land.lhs.true162
  %98 = load i8*, i8** @chline, align 4
  %99 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node165 = getelementptr inbounds %struct.histent, %struct.histent* %99, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node165, i32 0, i32 1
  %100 = load i8*, i8** %nam, align 4
  %call166 = call i32 @histstrcmp(i8* %98, i8* %100)
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then169, label %if.else174

if.then169:                                       ; preds = %land.lhs.true164
  %101 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %101, %struct.histent** %he130, align 4
  %102 = load %struct.histent*, %struct.histent** %he130, align 4
  %node170 = getelementptr inbounds %struct.histent, %struct.histent* %102, i32 0, i32 0
  %flags171 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node170, i32 0, i32 2
  %103 = load i32, i32* %flags171, align 4
  %and172 = and i32 %103, 2
  %104 = load i32, i32* %newflags, align 4
  %or173 = or i32 %104, %and172
  store i32 %or173, i32* %newflags, align 4
  %105 = load %struct.histent*, %struct.histent** %he130, align 4
  call void @freehistdata(%struct.histent* %105, i32 0)
  %106 = load i32, i32* @curhist, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 8), align 4
  br label %if.end176

if.else174:                                       ; preds = %land.lhs.true164, %land.lhs.true162, %land.lhs.true159, %lor.lhs.false156
  %call175 = call %struct.histent* @prepnexthistent()
  store %struct.histent* %call175, %struct.histent** %he130, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.else174, %if.then169
  %107 = load i8*, i8** @chline, align 4
  %call177 = call i8* @ztrdup(i8* %107)
  %108 = load %struct.histent*, %struct.histent** %he130, align 4
  %node178 = getelementptr inbounds %struct.histent, %struct.histent* %108, i32 0, i32 0
  %nam179 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node178, i32 0, i32 1
  store i8* %call177, i8** %nam179, align 4
  %call180 = call i32 @time(i32* null)
  %109 = load %struct.histent*, %struct.histent** %he130, align 4
  %stim = getelementptr inbounds %struct.histent, %struct.histent* %109, i32 0, i32 4
  store i32 %call180, i32* %stim, align 4
  %110 = load %struct.histent*, %struct.histent** %he130, align 4
  %ftim = getelementptr inbounds %struct.histent, %struct.histent* %110, i32 0, i32 5
  store i32 0, i32* %ftim, align 4
  %111 = load i32, i32* %newflags, align 4
  %112 = load %struct.histent*, %struct.histent** %he130, align 4
  %node181 = getelementptr inbounds %struct.histent, %struct.histent* %112, i32 0, i32 0
  %flags182 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node181, i32 0, i32 2
  store i32 %111, i32* %flags182, align 4
  %113 = load i32, i32* @chwordpos, align 4
  %div = sdiv i32 %113, 2
  %114 = load %struct.histent*, %struct.histent** %he130, align 4
  %nwords = getelementptr inbounds %struct.histent, %struct.histent* %114, i32 0, i32 7
  store i32 %div, i32* %nwords, align 4
  %tobool183 = icmp ne i32 %div, 0
  br i1 %tobool183, label %if.then184, label %if.end189

if.then184:                                       ; preds = %if.end176
  %115 = load i32, i32* @chwordpos, align 4
  %mul185 = mul i32 %115, 2
  %call186 = call i8* @zalloc(i32 %mul185)
  %116 = bitcast i8* %call186 to i16*
  %117 = load %struct.histent*, %struct.histent** %he130, align 4
  %words = getelementptr inbounds %struct.histent, %struct.histent* %117, i32 0, i32 6
  store i16* %116, i16** %words, align 4
  %118 = load %struct.histent*, %struct.histent** %he130, align 4
  %words187 = getelementptr inbounds %struct.histent, %struct.histent* %118, i32 0, i32 6
  %119 = load i16*, i16** %words187, align 4
  %120 = bitcast i16* %119 to i8*
  %121 = load i16*, i16** @chwords, align 4
  %122 = bitcast i16* %121 to i8*
  %123 = load i32, i32* @chwordpos, align 4
  %mul188 = mul i32 %123, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %122, i32 %mul188, i32 2, i1 false)
  br label %if.end189

if.end189:                                        ; preds = %if.then184, %if.end176
  %124 = load i32, i32* %newflags, align 4
  %and190 = and i32 %124, 32
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.end195, label %if.then192

if.then192:                                       ; preds = %if.end189
  %125 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %126 = load %struct.histent*, %struct.histent** %he130, align 4
  %node193 = getelementptr inbounds %struct.histent, %struct.histent* %126, i32 0, i32 0
  %nam194 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node193, i32 0, i32 1
  %127 = load i8*, i8** %nam194, align 4
  %128 = load %struct.histent*, %struct.histent** %he130, align 4
  %129 = bitcast %struct.histent* %128 to i8*
  call void @addhistnode(%struct.hashtable* %125, i8* %127, i8* %129)
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end189
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end126
  %130 = load i8*, i8** @chline, align 4
  %131 = load i32, i32* @hlinesz, align 4
  call void @zfree(i8* %130, i32 %131)
  %132 = load i16*, i16** @chwords, align 4
  %133 = bitcast i16* %132 to i8*
  %134 = load i32, i32* @chwordlen, align 4
  %mul197 = mul i32 %134, 2
  call void @zfree(i8* %133, i32 %mul197)
  store i8* null, i8** @hptr, align 4
  store i8* null, i8** @chline, align 4
  store i16* null, i16** @chwords, align 4
  store i32 0, i32* @histactive, align 4
  %135 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %conv198 = sext i8 %135 to i32
  %tobool199 = icmp ne i32 %conv198, 0
  br i1 %tobool199, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end196
  %call200 = call i32 @histfileIsLocked()
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then210, label %if.end211

cond.false:                                       ; preds = %if.end196
  %136 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 92), align 1
  %conv202 = sext i8 %136 to i32
  %tobool203 = icmp ne i32 %conv202, 0
  br i1 %tobool203, label %if.then210, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %cond.false
  %137 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 93), align 1
  %conv205 = sext i8 %137 to i32
  %tobool206 = icmp ne i32 %conv205, 0
  br i1 %tobool206, label %land.lhs.true207, label %if.end211

land.lhs.true207:                                 ; preds = %lor.lhs.false204
  %138 = load i32, i32* @histsave_stack_pos, align 4
  %cmp208 = icmp ne i32 %138, 0
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %land.lhs.true207, %cond.false, %cond.true
  %139 = load i8*, i8** %hf, align 4
  call void @savehistfile(i8* %139, i32 0, i32 32784)
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %land.lhs.true207, %lor.lhs.false204, %cond.true
  %140 = load i8*, i8** %hf, align 4
  call void @unlockhistfile(i8* %140)
  br label %while.cond212

while.cond212:                                    ; preds = %while.body215, %if.end211
  %141 = load i32, i32* @histsave_stack_pos, align 4
  %142 = load i32, i32* %stack_pos, align 4
  %cmp213 = icmp sgt i32 %141, %142
  br i1 %cmp213, label %while.body215, label %while.end217

while.body215:                                    ; preds = %while.cond212
  %call216 = call i32 @pophiststack()
  br label %while.cond212

while.end217:                                     ; preds = %while.cond212
  store i32 0, i32* @hist_keep_comment, align 4
  br label %do.body218

do.body218:                                       ; preds = %while.end217
  %143 = load i32, i32* @queueing_enabled, align 4
  %dec219 = add nsw i32 %143, -1
  store i32 %dec219, i32* @queueing_enabled, align 4
  %tobool220 = icmp ne i32 %dec219, 0
  br i1 %tobool220, label %if.end237, label %if.then221

if.then221:                                       ; preds = %do.body218
  br label %do.body222

do.body222:                                       ; preds = %if.then221
  br label %while.cond223

while.cond223:                                    ; preds = %while.body226, %do.body222
  %144 = load i32, i32* @queue_front, align 4
  %145 = load i32, i32* @queue_rear, align 4
  %cmp224 = icmp ne i32 %144, %145
  br i1 %cmp224, label %while.body226, label %while.end235

while.body226:                                    ; preds = %while.cond223
  %146 = load i32, i32* @queue_front, align 4
  %add229 = add nsw i32 %146, 1
  %rem230 = srem i32 %add229, 128
  store i32 %rem230, i32* @queue_front, align 4
  %147 = load i32, i32* @queue_front, align 4
  %arrayidx231 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %147
  call void @signal_setmask(%struct.__sigset_t* sret %tmp232, %struct.__sigset_t* byval align 4 %arrayidx231)
  %148 = bitcast %struct.__sigset_t* %oset228 to i8*
  %149 = bitcast %struct.__sigset_t* %tmp232 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %148, i8* %149, i32 128, i32 4, i1 false)
  %150 = load i32, i32* @queue_front, align 4
  %arrayidx233 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %150
  %151 = load i32, i32* %arrayidx233, align 4
  call void @zhandler(i32 %151)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp234, %struct.__sigset_t* byval align 4 %oset228)
  br label %while.cond223

while.end235:                                     ; preds = %while.cond223
  br label %do.end236

do.end236:                                        ; preds = %while.end235
  br label %if.end237

if.end237:                                        ; preds = %do.end236, %do.body218
  br label %do.end238

do.end238:                                        ; preds = %if.end237
  %152 = load i32, i32* %flag, align 4
  %and239 = and i32 %152, 2
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end238
  %153 = load i32, i32* @errflag, align 4
  %tobool241 = icmp ne i32 %153, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end238
  %154 = phi i1 [ true, %do.end238 ], [ %tobool241, %lor.rhs ]
  %lnot = xor i1 %154, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %do.end14
  %155 = load i32, i32* %retval, align 4
  ret i32 %155
}

declare void @inungetc(i32) #1

; Function Attrs: noinline nounwind
define internal void @nohw(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @nohwabort() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind
define internal void @nohwe() #0 {
entry:
  ret void
}

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define internal i32 @ihgetc() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %call = call i32 @ingetc()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* @exit_pending, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @lexstop, align 4
  %1 = load i32, i32* @errflag, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* @errflag, align 4
  store i32 32, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @qbang, align 4
  %2 = load i32, i32* @stophist, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @inbufflags, align 4
  %and = and i32 %3, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %c, align 4
  %call4 = call i32 @histsubchar(i32 %4)
  store i32 %call4, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  store i32 1, i32* @lexstop, align 4
  %6 = load i32, i32* @errflag, align 4
  %or6 = or i32 %6, 1
  store i32 %or6, i32* @errflag, align 4
  store i32 32, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %if.end
  %7 = load i32, i32* @inbufflags, align 4
  %and9 = and i32 %7, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %if.end8
  %8 = load i32, i32* @stophist, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  store i32 0, i32* @qbang, align 4
  %9 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %9, 92
  br i1 %cmp14, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %if.then13
  %call16 = call i32 @ingetc()
  store i32 %call16, i32* %c, align 4
  %10 = load i8, i8* @bangchar, align 1
  %conv = zext i8 %10 to i32
  %cmp17 = icmp eq i32 %call16, %conv
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* @qbang, align 4
  br i1 %cmp17, label %if.end20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true15
  %11 = load i32, i32* %c, align 4
  call void @safeinungetc(i32 %11)
  store i32 92, i32* %c, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true15, %if.then13
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true11, %if.end8
  %12 = load i32, i32* @stophist, align 4
  %tobool21 = icmp ne i32 %12, 0
  br i1 %tobool21, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %13 = load i32, i32* @inbufflags, align 4
  %and22 = and i32 %13, 2
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end30

if.then24:                                        ; preds = %lor.lhs.false, %if.else
  %14 = load i32, i32* %c, align 4
  %15 = load i8, i8* @bangchar, align 1
  %conv25 = zext i8 %15 to i32
  %cmp26 = icmp eq i32 %14, %conv25
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then24
  %16 = load i32, i32* @stophist, align 4
  %cmp28 = icmp slt i32 %16, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then24
  %17 = phi i1 [ false, %if.then24 ], [ %cmp28, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* @qbang, align 4
  br label %if.end30

if.end30:                                         ; preds = %land.end, %lor.lhs.false
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end20
  %18 = load void (i32)*, void (i32)** @hwaddc, align 4
  %19 = load i32, i32* %c, align 4
  call void %18(i32 %19)
  %20 = load void (i32)*, void (i32)** @addtoline, align 4
  %21 = load i32, i32* %c, align 4
  call void %20(i32 %21)
  %22 = load i32, i32* %c, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then5, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define internal void @ihungetc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %doit = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 1, i32* %doit, align 4
  br label %while.cond

while.cond:                                       ; preds = %land.end64, %entry
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @errflag, align 4
  %tobool1 = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i8*, i8** @hptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 -1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %5 = load i32, i32* %c.addr, align 4
  %conv2 = trunc i32 %5 to i8
  %conv3 = sext i8 %conv2 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %6 = load i32, i32* @stophist, align 4
  %cmp5 = icmp slt i32 %6, 4
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** @hptr, align 4
  %8 = load i8*, i8** @chline, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 1
  %cmp8 = icmp ugt i8* %7, %add.ptr
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = load i8*, i8** @hptr, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i32 -1
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %11 = load i8*, i8** @hptr, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i32 -2
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 92
  br i1 %cmp18, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %13 = load i32, i32* @histactive, align 4
  %and = and i32 %13, 8
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %14 = load i32, i32* @inbufflags, align 4
  %and23 = and i32 %14, 6
  %cmp24 = icmp ne i32 %and23, 2
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true22
  %15 = load i32, i32* @histactive, align 4
  %or = or i32 %15, 8
  store i32 %or, i32* @histactive, align 4
  %16 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %16(i32 10)
  %17 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %17(i32 92)
  %18 = load i32, i32* @histactive, align 4
  %and26 = and i32 %18, -9
  store i32 %and26, i32* @histactive, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true22, %land.lhs.true20, %land.lhs.true15, %land.lhs.true10, %land.lhs.true7, %land.lhs.true, %while.body
  %19 = load i32, i32* @expanding, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end
  %20 = load i32, i32* @zlemetacs, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* @zlemetacs, align 4
  %21 = load i32, i32* @zlemetall, align 4
  %dec29 = add nsw i32 %21, -1
  store i32 %dec29, i32* @zlemetall, align 4
  %22 = load i32, i32* @exlast, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @exlast, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end
  %23 = load i32, i32* @inbufflags, align 4
  %and31 = and i32 %23, 6
  %cmp32 = icmp ne i32 %and31, 2
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  %24 = load i8*, i8** @hptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %incdec.ptr, i8** @hptr, align 4
  %25 = load i32, i32* %c.addr, align 4
  %26 = load i8, i8* @bangchar, align 1
  %conv35 = zext i8 %26 to i32
  %cmp36 = icmp eq i32 %25, %conv35
  br i1 %cmp36, label %land.lhs.true38, label %land.end49

land.lhs.true38:                                  ; preds = %if.then34
  %27 = load i32, i32* @stophist, align 4
  %cmp39 = icmp slt i32 %27, 2
  br i1 %cmp39, label %land.lhs.true41, label %land.end49

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %28 = load i8*, i8** @hptr, align 4
  %29 = load i8*, i8** @chline, align 4
  %cmp42 = icmp ugt i8* %28, %29
  br i1 %cmp42, label %land.rhs44, label %land.end49

land.rhs44:                                       ; preds = %land.lhs.true41
  %30 = load i8*, i8** @hptr, align 4
  %arrayidx45 = getelementptr inbounds i8, i8* %30, i32 -1
  %31 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %31 to i32
  %cmp47 = icmp eq i32 %conv46, 92
  br label %land.end49

land.end49:                                       ; preds = %land.rhs44, %land.lhs.true41, %land.lhs.true38, %if.then34
  %32 = phi i1 [ false, %land.lhs.true41 ], [ false, %land.lhs.true38 ], [ false, %if.then34 ], [ %cmp47, %land.rhs44 ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* @qbang, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end30
  store i32 0, i32* @qbang, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %land.end49
  %33 = load i32, i32* %doit, align 4
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  %34 = load i32, i32* %c.addr, align 4
  call void @inungetc(i32 %34)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50
  %35 = load i32, i32* @qbang, align 4
  %tobool54 = icmp ne i32 %35, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end53
  br label %while.end

if.end56:                                         ; preds = %if.end53
  %36 = load i32, i32* @stophist, align 4
  %tobool57 = icmp ne i32 %36, 0
  br i1 %tobool57, label %land.end64, label %land.rhs58

land.rhs58:                                       ; preds = %if.end56
  %37 = load i32, i32* @inbufflags, align 4
  %and59 = and i32 %37, 4
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs58
  %38 = load i32, i32* @inbufflags, align 4
  %and61 = and i32 %38, 2
  %tobool62 = icmp ne i32 %and61, 0
  %lnot63 = xor i1 %tobool62, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs58
  %39 = phi i1 [ true, %land.rhs58 ], [ %lnot63, %lor.rhs ]
  br label %land.end64

land.end64:                                       ; preds = %lor.end, %if.end56
  %40 = phi i1 [ false, %if.end56 ], [ %39, %lor.end ]
  %land.ext65 = zext i1 %40 to i32
  store i32 %land.ext65, i32* %doit, align 4
  store i32 92, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then55, %land.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ihwaddc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %oldsiz = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i8*, i8** @chline, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @errflag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* @lexstop, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.end17, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* @inbufflags, align 4
  %and = and i32 %3, 6
  %cmp = icmp ne i32 %and, 2
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true3
  %4 = load i32, i32* %c.addr, align 4
  %5 = load i8, i8* @bangchar, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %4, %conv
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %if.then
  %6 = load i32, i32* @stophist, align 4
  %cmp7 = icmp slt i32 %6, 2
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %7 = load i32, i32* @qbang, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true9
  %8 = load void (i32)*, void (i32)** @hwaddc, align 4
  call void %8(i32 92)
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true9, %land.lhs.true6, %if.then
  %9 = load i32, i32* %c.addr, align 4
  %conv12 = trunc i32 %9 to i8
  %10 = load i8*, i8** @hptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** @hptr, align 4
  store i8 %conv12, i8* %10, align 1
  %11 = load i8*, i8** @hptr, align 4
  %12 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load i32, i32* @hlinesz, align 4
  %cmp13 = icmp sge i32 %sub.ptr.sub, %13
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %14 = load i32, i32* @hlinesz, align 4
  store i32 %14, i32* %oldsiz, align 4
  %15 = load i8*, i8** @chline, align 4
  %16 = load i32, i32* %oldsiz, align 4
  %add = add nsw i32 %16, 64
  store i32 %add, i32* @hlinesz, align 4
  %call = call i8* @realloc(i8* %15, i32 %add)
  store i8* %call, i8** @chline, align 4
  %17 = load i8*, i8** @chline, align 4
  %18 = load i32, i32* %oldsiz, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %18
  store i8* %add.ptr, i8** @hptr, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true3, %lor.lhs.false, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @ihwbegin(i32 %offset) #0 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* @stophist, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @histactive, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* @inbufflags, align 4
  %and2 = and i32 %2, 6
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load i32, i32* @chwordpos, align 4
  %rem = srem i32 %3, 2
  %tobool4 = icmp ne i32 %rem, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* @chwordpos, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @chwordpos, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %5 = load i8*, i8** @hptr, align 4
  %6 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %sub.ptr.sub, %7
  %conv = trunc i32 %add to i16
  %8 = load i16*, i16** @chwords, align 4
  %9 = load i32, i32* @chwordpos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @chwordpos, align 4
  %arrayidx = getelementptr inbounds i16, i16* %8, i32 %9
  store i16 %conv, i16* %arrayidx, align 2
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @ihwabort() #0 {
entry:
  %0 = load i32, i32* @chwordpos, align 4
  %rem = srem i32 %0, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @chwordpos, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @chwordpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @hist_keep_comment, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @ihwend() #0 {
entry:
  %0 = load i32, i32* @stophist, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @histactive, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* @inbufflags, align 4
  %and2 = and i32 %2, 6
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  br label %if.end17

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load i32, i32* @chwordpos, align 4
  %rem = srem i32 %3, 2
  %tobool4 = icmp ne i32 %rem, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** @chline, align 4
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** @hptr, align 4
  %6 = load i8*, i8** @chline, align 4
  %7 = load i16*, i16** @chwords, align 4
  %8 = load i32, i32* @chwordpos, align 4
  %sub = sub nsw i32 %8, 1
  %arrayidx = getelementptr inbounds i16, i16* %7, i32 %sub
  %9 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %9 to i32
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %conv
  %cmp7 = icmp ugt i8* %5, %add.ptr
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %10 = load i8*, i8** @hptr, align 4
  %11 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i32 %sub.ptr.sub to i16
  %12 = load i16*, i16** @chwords, align 4
  %13 = load i32, i32* @chwordpos, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @chwordpos, align 4
  %arrayidx11 = getelementptr inbounds i16, i16* %12, i32 %13
  store i16 %conv10, i16* %arrayidx11, align 2
  %14 = load i32, i32* @chwordpos, align 4
  %15 = load i32, i32* @chwordlen, align 4
  %cmp12 = icmp sge i32 %14, %15
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then9
  %16 = load i16*, i16** @chwords, align 4
  %17 = bitcast i16* %16 to i8*
  %18 = load i32, i32* @chwordlen, align 4
  %add = add nsw i32 %18, 32
  store i32 %add, i32* @chwordlen, align 4
  %mul = mul i32 %add, 2
  %call = call i8* @realloc(i8* %17, i32 %mul)
  %19 = bitcast i8* %call to i16*
  store i16* %19, i16** @chwords, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then9
  br label %if.end16

if.else:                                          ; preds = %if.then6
  %20 = load i32, i32* @chwordpos, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* @chwordpos, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end15
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.end16, %land.lhs.true, %if.end
  ret void
}

declare i32 @time(i32*) #1

declare void @attachtty(i32) #1

; Function Attrs: noinline nounwind
define internal void @linkcurline() #0 {
entry:
  %0 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool = icmp ne %struct.histent* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.histent* @curline, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 2), align 4
  store %struct.histent* @curline, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 1), align 4
  store %struct.histent* @curline, %struct.histent** @hist_ring, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %1, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 1), align 4
  %2 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 2
  %3 = load %struct.histent*, %struct.histent** %down, align 4
  store %struct.histent* %3, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 2), align 4
  %4 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down1 = getelementptr inbounds %struct.histent, %struct.histent* %4, i32 0, i32 2
  %5 = load %struct.histent*, %struct.histent** %down1, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 1
  store %struct.histent* @curline, %struct.histent** %up, align 4
  %6 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down2 = getelementptr inbounds %struct.histent, %struct.histent* %6, i32 0, i32 2
  store %struct.histent* @curline, %struct.histent** %down2, align 4
  store %struct.histent* @curline, %struct.histent** @hist_ring, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @curhist, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @curhist, align 4
  store i32 %inc, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 8), align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @addhistnum(i32 %hl, i32 %n, i32 %xflags) #0 {
entry:
  %retval = alloca i32, align 4
  %hl.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %xflags.addr = alloca i32, align 4
  %dir = alloca i32, align 4
  %he = alloca %struct.histent*, align 4
  store i32 %hl, i32* %hl.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %xflags, i32* %xflags.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  %cond = select i1 %cmp1, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond2, i32* %dir, align 4
  %2 = load i32, i32* %hl.addr, align 4
  %3 = load i32, i32* %dir, align 4
  %call = call %struct.histent* @gethistent(i32 %2, i32 %3)
  store %struct.histent* %call, %struct.histent** %he, align 4
  %4 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool = icmp ne %struct.histent* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 8
  %6 = load i32, i32* %histnum, align 4
  %7 = load i32, i32* %hl.addr, align 4
  %cmp3 = icmp ne i32 %6, %7
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %dir, align 4
  %9 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %n.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load i32, i32* %n.addr, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.histent*, %struct.histent** %he, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %xflags.addr, align 4
  %call8 = call %struct.histent* @movehistent(%struct.histent* %11, i32 %12, i32 %13)
  store %struct.histent* %call8, %struct.histent** %he, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %14 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool10 = icmp ne %struct.histent* %14, null
  br i1 %tobool10, label %if.end24, label %if.then11

if.then11:                                        ; preds = %if.end9
  %15 = load i32, i32* %dir, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %cond.true13, label %cond.false21

cond.true13:                                      ; preds = %if.then11
  %16 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool14 = icmp ne %struct.histent* %16, null
  br i1 %tobool14, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %cond.true13
  %17 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %17, i32 0, i32 2
  %18 = load %struct.histent*, %struct.histent** %down, align 4
  %histnum16 = getelementptr inbounds %struct.histent, %struct.histent* %18, i32 0, i32 8
  %19 = load i32, i32* %histnum16, align 4
  br label %cond.end18

cond.false17:                                     ; preds = %cond.true13
  %20 = load i32, i32* @curhist, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true15
  %cond19 = phi i32 [ %19, %cond.true15 ], [ %20, %cond.false17 ]
  %sub20 = sub nsw i32 %cond19, 1
  br label %cond.end22

cond.false21:                                     ; preds = %if.then11
  %21 = load i32, i32* @curhist, align 4
  %add = add nsw i32 %21, 1
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end18
  %cond23 = phi i32 [ %sub20, %cond.end18 ], [ %add, %cond.false21 ]
  store i32 %cond23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end9
  %22 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum25 = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 8
  %23 = load i32, i32* %histnum25, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %cond.end22, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare i8* @getsparam(i8*) #1

; Function Attrs: noinline nounwind
define void @savehistfile(i8* %fn, i32 %err, i32 %writeflags) #0 {
entry:
  %fn.addr = alloca i8*, align 4
  %err.addr = alloca i32, align 4
  %writeflags.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %tmpfile = alloca i8*, align 4
  %start = alloca i8*, align 4
  %out = alloca %struct._IO_FILE*, align 4
  %he = alloca %struct.histent*, align 4
  %xcurhist = alloca i32, align 4
  %extended_history = alloca i32, align 4
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %fd72 = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %old_exists = alloca i32, align 4
  %euid = alloca i32, align 4
  %fd124 = alloca i32, align 4
  %history_ignore = alloca i8*, align 4
  %histpat = alloca %struct.patprog*, align 4
  %count_backslashes = alloca i32, align 4
  %sb314 = alloca %struct.stat, align 8
  %remember_histactive = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 4
  store i32 %err, i32* %err.addr, align 4
  store i32 %writeflags, i32* %writeflags.addr, align 4
  store i8* null, i8** %start, align 4
  %0 = load i32, i32* @curhist, align 4
  %1 = load i32, i32* @histactive, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %sub = sub nsw i32 %0, %lnot.ext
  store i32 %sub, i32* %xcurhist, align 4
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 55), align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %extended_history, align 4
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool2 = icmp ne i8 %3, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* @savehistsiz, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool5 = icmp ne %struct.histent* %5, null
  br i1 %tobool5, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %6 = load i8*, i8** %fn.addr, align 4
  %tobool7 = icmp ne i8* %6, null
  br i1 %tobool7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %call = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %fn.addr, align 4
  %tobool8 = icmp ne i8* %call, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false4, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false6
  %7 = load i32, i32* %writeflags.addr, align 4
  %and9 = and i32 %7, 16
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 5), align 4
  %call12 = call %struct.histent* @gethistent(i32 %8, i32 1)
  store %struct.histent* %call12, %struct.histent** %he, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then11
  %9 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool13 = icmp ne %struct.histent* %9, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %10, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %11 = load i32, i32* %flags, align 4
  %and14 = and i32 %11, 2
  %tobool15 = icmp ne i32 %and14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool15, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 8
  %14 = load i32, i32* %histnum, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 5), align 4
  %15 = load %struct.histent*, %struct.histent** %he, align 4
  %call16 = call %struct.histent* @down_histent(%struct.histent* %15)
  store %struct.histent* %call16, %struct.histent** %he, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool17 = icmp ne %struct.histent* %16, null
  br i1 %tobool17, label %lor.lhs.false18, label %if.then21

lor.lhs.false18:                                  ; preds = %while.end
  %17 = load i8*, i8** %fn.addr, align 4
  %call19 = call i32 @lockhistfile(i8* %17, i32 0)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false18, %while.end
  br label %return

if.end22:                                         ; preds = %lor.lhs.false18
  %18 = load i32, i32* @histfile_linect, align 4
  %19 = load i32, i32* @savehistsiz, align 4
  %20 = load i32, i32* @savehistsiz, align 4
  %div = sdiv i32 %20, 5
  %add23 = add nsw i32 %19, %div
  %cmp24 = icmp sgt i32 %18, %add23
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  %21 = load i32, i32* %writeflags.addr, align 4
  %and27 = and i32 %21, -17
  store i32 %and27, i32* %writeflags.addr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22
  br label %if.end34

if.else:                                          ; preds = %if.end
  %22 = load i8*, i8** %fn.addr, align 4
  %call29 = call i32 @lockhistfile(i8* %22, i32 1)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.else
  %23 = load i8*, i8** %fn.addr, align 4
  %call32 = call i32* @__errno_location()
  %24 = load i32, i32* %call32, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %23, i32 %24)
  br label %return

if.end33:                                         ; preds = %if.else
  %25 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %25, i32 0, i32 2
  %26 = load %struct.histent*, %struct.histent** %down, align 4
  store %struct.histent* %26, %struct.histent** %he, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end28
  %27 = load i32, i32* %writeflags.addr, align 4
  %and35 = and i32 %27, 32768
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end59

if.then37:                                        ; preds = %if.end34
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 6), align 1
  %conv38 = sext i8 %28 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %if.then49, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.then37
  %29 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 92), align 1
  %conv41 = sext i8 %29 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %if.then49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %30 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 93), align 1
  %conv44 = sext i8 %30 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  br i1 %tobool45, label %if.then49, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %31 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %conv47 = sext i8 %31 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false40, %if.then37
  %32 = load i32, i32* %writeflags.addr, align 4
  %or = or i32 %32, 3
  store i32 %or, i32* %writeflags.addr, align 4
  br label %if.end51

if.else50:                                        ; preds = %lor.lhs.false46
  store i32 0, i32* @histfile_linect, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then49
  %33 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 85), align 1
  %tobool52 = icmp ne i8 %33, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %34 = load i32, i32* %writeflags.addr, align 4
  %or54 = or i32 %34, 4
  store i32 %or54, i32* %writeflags.addr, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %35 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %tobool56 = icmp ne i8 %35, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  store i32 1, i32* %extended_history, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end34
  %call60 = call i32* @__errno_location()
  store i32 0, i32* %call60, align 4
  %36 = load i32, i32* %writeflags.addr, align 4
  %and61 = and i32 %36, 1
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then63, label %if.else69

if.then63:                                        ; preds = %if.end59
  %37 = load i8*, i8** %fn.addr, align 4
  %call64 = call i8* @unmeta(i8* %37)
  %call65 = call i32 (i8*, i32, ...) @open(i8* %call64, i32 1345, i32 384)
  store i32 %call65, i32* %fd, align 4
  store i8* null, i8** %tmpfile, align 4
  %38 = load i32, i32* %fd, align 4
  %cmp66 = icmp sge i32 %38, 0
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then63
  %39 = load i32, i32* %fd, align 4
  %call68 = call %struct._IO_FILE* @fdopen(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.then63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %call68, %cond.true ], [ null, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %out, align 4
  br label %if.end157

if.else69:                                        ; preds = %if.end59
  %40 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 84), align 1
  %tobool70 = icmp ne i8 %40, 0
  br i1 %tobool70, label %if.else82, label %if.then71

if.then71:                                        ; preds = %if.else69
  %41 = load i8*, i8** %fn.addr, align 4
  %call73 = call i8* @unmeta(i8* %41)
  %call74 = call i32 (i8*, i32, ...) @open(i8* %call73, i32 833, i32 384)
  store i32 %call74, i32* %fd72, align 4
  store i8* null, i8** %tmpfile, align 4
  %42 = load i32, i32* %fd72, align 4
  %cmp75 = icmp sge i32 %42, 0
  br i1 %cmp75, label %cond.true77, label %cond.false79

cond.true77:                                      ; preds = %if.then71
  %43 = load i32, i32* %fd72, align 4
  %call78 = call %struct._IO_FILE* @fdopen(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %cond.end80

cond.false79:                                     ; preds = %if.then71
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true77
  %cond81 = phi %struct._IO_FILE* [ %call78, %cond.true77 ], [ null, %cond.false79 ]
  store %struct._IO_FILE* %cond81, %struct._IO_FILE** %out, align 4
  br label %if.end156

if.else82:                                        ; preds = %if.else69
  %44 = load i8*, i8** %fn.addr, align 4
  %call83 = call i8* @unmeta(i8* %44)
  %call84 = call i8* @bicat(i8* %call83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call84, i8** %tmpfile, align 4
  %45 = load i8*, i8** %tmpfile, align 4
  %call85 = call i32 @unlink(i8* %45)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.else93

land.lhs.true88:                                  ; preds = %if.else82
  %call89 = call i32* @__errno_location()
  %46 = load i32, i32* %call89, align 4
  %cmp90 = icmp ne i32 %46, 2
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %land.lhs.true88
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 4
  br label %if.end155

if.else93:                                        ; preds = %land.lhs.true88, %if.else82
  %47 = load i8*, i8** %fn.addr, align 4
  %call94 = call i8* @unmeta(i8* %47)
  %call95 = call i32 @stat(i8* %call94, %struct.stat* %sb)
  %cmp96 = icmp eq i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  store i32 %conv97, i32* %old_exists, align 4
  %call98 = call i32 @geteuid()
  store i32 %call98, i32* %euid, align 4
  %48 = load i32, i32* %old_exists, align 4
  %tobool99 = icmp ne i32 %48, 0
  br i1 %tobool99, label %land.lhs.true100, label %if.else123

land.lhs.true100:                                 ; preds = %if.else93
  %49 = load i32, i32* %euid, align 4
  %tobool101 = icmp ne i32 %49, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.else123

land.lhs.true102:                                 ; preds = %land.lhs.true100
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 7
  %50 = load i32, i32* %st_uid, align 4
  %51 = load i32, i32* %euid, align 4
  %cmp103 = icmp ne i32 %50, %51
  br i1 %cmp103, label %if.then105, label %if.else123

if.then105:                                       ; preds = %land.lhs.true102
  %52 = load i8*, i8** %tmpfile, align 4
  call void @free(i8* %52)
  store i8* null, i8** %tmpfile, align 4
  %53 = load i32, i32* %err.addr, align 4
  %tobool106 = icmp ne i32 %53, 0
  br i1 %tobool106, label %if.then107, label %if.end122

if.then107:                                       ; preds = %if.then105
  %54 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 6), align 1
  %conv108 = sext i8 %54 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %if.then119, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.then107
  %55 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 92), align 1
  %conv111 = sext i8 %55 to i32
  %tobool112 = icmp ne i32 %conv111, 0
  br i1 %tobool112, label %if.then119, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %56 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 93), align 1
  %conv114 = sext i8 %56 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %if.then119, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false113
  %57 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 158), align 1
  %conv117 = sext i8 %57 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br i1 %tobool118, label %if.then119, label %if.else120

if.then119:                                       ; preds = %lor.lhs.false116, %lor.lhs.false113, %lor.lhs.false110, %if.then107
  %58 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i8* %58)
  br label %if.end121

if.else120:                                       ; preds = %lor.lhs.false116
  %59 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0), i8* %59)
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then119
  store i32 0, i32* %err.addr, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then105
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 4
  br label %if.end136

if.else123:                                       ; preds = %land.lhs.true102, %land.lhs.true100, %if.else93
  %60 = load i8*, i8** %tmpfile, align 4
  %call125 = call i32 (i8*, i32, ...) @open(i8* %60, i32 193, i32 384)
  store i32 %call125, i32* %fd124, align 4
  %61 = load i32, i32* %fd124, align 4
  %cmp126 = icmp sge i32 %61, 0
  br i1 %cmp126, label %if.then128, label %if.else134

if.then128:                                       ; preds = %if.else123
  %62 = load i32, i32* %fd124, align 4
  %call129 = call %struct._IO_FILE* @fdopen(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call129, %struct._IO_FILE** %out, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %tobool130 = icmp ne %struct._IO_FILE* %63, null
  br i1 %tobool130, label %if.end133, label %if.then131

if.then131:                                       ; preds = %if.then128
  %64 = load i32, i32* %fd124, align 4
  %call132 = call i32 @close(i32 %64)
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.then128
  br label %if.end135

if.else134:                                       ; preds = %if.else123
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else134, %if.end133
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end122
  %65 = load i32, i32* %old_exists, align 4
  %tobool137 = icmp ne i32 %65, 0
  br i1 %tobool137, label %land.lhs.true138, label %if.end154

land.lhs.true138:                                 ; preds = %if.end136
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %tobool139 = icmp ne %struct._IO_FILE* %66, null
  br i1 %tobool139, label %if.then140, label %if.end154

if.then140:                                       ; preds = %land.lhs.true138
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call141 = call i32 @fileno(%struct._IO_FILE* %67)
  %st_uid142 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 7
  %68 = load i32, i32* %st_uid142, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %69 = load i32, i32* %st_gid, align 8
  %call143 = call i32 @fchown(i32 %call141, i32 %68, i32 %69)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.then140
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then140
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call148 = call i32 @fileno(%struct._IO_FILE* %70)
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 6
  %71 = load i32, i32* %st_mode, align 8
  %call149 = call i32 @fchmod(i32 %call148, i32 %71)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end147
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end147
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %land.lhs.true138, %if.end136
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then92
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %cond.end80
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %cond.end
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %tobool158 = icmp ne %struct._IO_FILE* %72, null
  br i1 %tobool158, label %if.then159, label %if.else373

if.then159:                                       ; preds = %if.end157
  store %struct.patprog* null, %struct.patprog** %histpat, align 4
  call void @pushheap()
  %call160 = call i8* @getsparam(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call160, i8** %history_ignore, align 4
  %cmp161 = icmp ne i8* %call160, null
  br i1 %cmp161, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.then159
  %73 = load i8*, i8** %history_ignore, align 4
  %call164 = call i8* @dupstring(i8* %73)
  store i8* %call164, i8** %history_ignore, align 4
  call void @tokenize(i8* %call164)
  %74 = load i8*, i8** %history_ignore, align 4
  call void @remnulargs(i8* %74)
  %75 = load i8*, i8** %history_ignore, align 4
  %call165 = call %struct.patprog* @patcompile(i8* %75, i32 0, i8** null)
  store %struct.patprog* %call165, %struct.patprog** %histpat, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.then159
  store i32 0, i32* %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc303, %if.end166
  %76 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool167 = icmp ne %struct.histent* %76, null
  br i1 %tobool167, label %land.rhs168, label %land.end172

land.rhs168:                                      ; preds = %for.cond
  %77 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum169 = getelementptr inbounds %struct.histent, %struct.histent* %77, i32 0, i32 8
  %78 = load i32, i32* %histnum169, align 4
  %79 = load i32, i32* %xcurhist, align 4
  %cmp170 = icmp sle i32 %78, %79
  br label %land.end172

land.end172:                                      ; preds = %land.rhs168, %for.cond
  %80 = phi i1 [ false, %for.cond ], [ %cmp170, %land.rhs168 ]
  br i1 %80, label %for.body, label %for.end305

for.body:                                         ; preds = %land.end172
  store i32 0, i32* %count_backslashes, align 4
  %81 = load i32, i32* %writeflags.addr, align 4
  %and173 = and i32 %81, 4
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %land.lhs.true175, label %lor.lhs.false180

land.lhs.true175:                                 ; preds = %for.body
  %82 = load %struct.histent*, %struct.histent** %he, align 4
  %node176 = getelementptr inbounds %struct.histent, %struct.histent* %82, i32 0, i32 0
  %flags177 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node176, i32 0, i32 2
  %83 = load i32, i32* %flags177, align 4
  %and178 = and i32 %83, 8
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.then193, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %land.lhs.true175, %for.body
  %84 = load i32, i32* %writeflags.addr, align 4
  %and181 = and i32 %84, 8
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %land.lhs.true183, label %lor.lhs.false188

land.lhs.true183:                                 ; preds = %lor.lhs.false180
  %85 = load %struct.histent*, %struct.histent** %he, align 4
  %node184 = getelementptr inbounds %struct.histent, %struct.histent* %85, i32 0, i32 0
  %flags185 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node184, i32 0, i32 2
  %86 = load i32, i32* %flags185, align 4
  %and186 = and i32 %86, 16
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then193, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %land.lhs.true183, %lor.lhs.false180
  %87 = load %struct.histent*, %struct.histent** %he, align 4
  %node189 = getelementptr inbounds %struct.histent, %struct.histent* %87, i32 0, i32 0
  %flags190 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node189, i32 0, i32 2
  %88 = load i32, i32* %flags190, align 4
  %and191 = and i32 %88, 32
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %lor.lhs.false188, %land.lhs.true183, %land.lhs.true175
  br label %for.inc303

if.end194:                                        ; preds = %lor.lhs.false188
  %89 = load %struct.patprog*, %struct.patprog** %histpat, align 4
  %tobool195 = icmp ne %struct.patprog* %89, null
  br i1 %tobool195, label %land.lhs.true196, label %if.end202

land.lhs.true196:                                 ; preds = %if.end194
  %90 = load %struct.patprog*, %struct.patprog** %histpat, align 4
  %91 = load %struct.histent*, %struct.histent** %he, align 4
  %node197 = getelementptr inbounds %struct.histent, %struct.histent* %91, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node197, i32 0, i32 1
  %92 = load i8*, i8** %nam, align 4
  %call198 = call i8* @metafy(i8* %92, i32 -1, i32 6)
  %call199 = call i32 @pattry(%struct.patprog* %90, i8* %call198)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %land.lhs.true196
  br label %for.inc303

if.end202:                                        ; preds = %land.lhs.true196, %if.end194
  %93 = load i32, i32* %writeflags.addr, align 4
  %and203 = and i32 %93, 2
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then205, label %if.end221

if.then205:                                       ; preds = %if.end202
  %94 = load %struct.histent*, %struct.histent** %he, align 4
  %node206 = getelementptr inbounds %struct.histent, %struct.histent* %94, i32 0, i32 0
  %flags207 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node206, i32 0, i32 2
  %95 = load i32, i32* %flags207, align 4
  %and208 = and i32 %95, 66
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.then205
  br label %for.inc303

if.end211:                                        ; preds = %if.then205
  %96 = load %struct.histent*, %struct.histent** %he, align 4
  %node212 = getelementptr inbounds %struct.histent, %struct.histent* %96, i32 0, i32 0
  %flags213 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node212, i32 0, i32 2
  %97 = load i32, i32* %flags213, align 4
  %or214 = or i32 %97, 2
  store i32 %or214, i32* %flags213, align 4
  %98 = load i32, i32* %writeflags.addr, align 4
  %and215 = and i32 %98, 32768
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.end211
  %99 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum218 = getelementptr inbounds %struct.histent, %struct.histent* %99, i32 0, i32 8
  %100 = load i32, i32* %histnum218, align 4
  %add219 = add nsw i32 %100, 1
  store i32 %add219, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 5), align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end211
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.end202
  %101 = load i32, i32* %writeflags.addr, align 4
  %and222 = and i32 %101, 32768
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %if.then224, label %if.end226

if.then224:                                       ; preds = %if.end221
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call225 = call i32 @ftell(%struct._IO_FILE* %102)
  store i32 %call225, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 3), align 4
  %103 = load %struct.histent*, %struct.histent** %he, align 4
  %stim = getelementptr inbounds %struct.histent, %struct.histent* %103, i32 0, i32 4
  %104 = load i32, i32* %stim, align 4
  store i32 %104, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 1), align 4
  %105 = load i32, i32* @histfile_linect, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* @histfile_linect, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then224, %if.end221
  %106 = load %struct.histent*, %struct.histent** %he, align 4
  %node227 = getelementptr inbounds %struct.histent, %struct.histent* %106, i32 0, i32 0
  %nam228 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node227, i32 0, i32 1
  %107 = load i8*, i8** %nam228, align 4
  store i8* %107, i8** %start, align 4
  store i8* %107, i8** %t, align 4
  %108 = load i32, i32* %extended_history, align 4
  %tobool229 = icmp ne i32 %108, 0
  br i1 %tobool229, label %if.then230, label %if.else241

if.then230:                                       ; preds = %if.end226
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %110 = load %struct.histent*, %struct.histent** %he, align 4
  %stim231 = getelementptr inbounds %struct.histent, %struct.histent* %110, i32 0, i32 4
  %111 = load i32, i32* %stim231, align 4
  %112 = load %struct.histent*, %struct.histent** %he, align 4
  %ftim = getelementptr inbounds %struct.histent, %struct.histent* %112, i32 0, i32 5
  %113 = load i32, i32* %ftim, align 4
  %tobool232 = icmp ne i32 %113, 0
  br i1 %tobool232, label %cond.true233, label %cond.false237

cond.true233:                                     ; preds = %if.then230
  %114 = load %struct.histent*, %struct.histent** %he, align 4
  %ftim234 = getelementptr inbounds %struct.histent, %struct.histent* %114, i32 0, i32 5
  %115 = load i32, i32* %ftim234, align 4
  %116 = load %struct.histent*, %struct.histent** %he, align 4
  %stim235 = getelementptr inbounds %struct.histent, %struct.histent* %116, i32 0, i32 4
  %117 = load i32, i32* %stim235, align 4
  %sub236 = sub nsw i32 %115, %117
  br label %cond.end238

cond.false237:                                    ; preds = %if.then230
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false237, %cond.true233
  %cond239 = phi i32 [ %sub236, %cond.true233 ], [ 0, %cond.false237 ]
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 %111, i32 %cond239)
  store i32 %call240, i32* %ret, align 4
  br label %if.end248

if.else241:                                       ; preds = %if.end226
  %118 = load i8*, i8** %t, align 4
  %119 = load i8, i8* %118, align 1
  %conv242 = sext i8 %119 to i32
  %cmp243 = icmp eq i32 %conv242, 58
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %if.else241
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call246 = call i32 @fputc(i32 92, %struct._IO_FILE* %120)
  store i32 %call246, i32* %ret, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %if.else241
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %cond.end238
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc, %if.end248
  %121 = load i32, i32* %ret, align 4
  %cmp250 = icmp sge i32 %121, 0
  br i1 %cmp250, label %land.rhs252, label %land.end255

land.rhs252:                                      ; preds = %for.cond249
  %122 = load i8*, i8** %t, align 4
  %123 = load i8, i8* %122, align 1
  %conv253 = sext i8 %123 to i32
  %tobool254 = icmp ne i32 %conv253, 0
  br label %land.end255

land.end255:                                      ; preds = %land.rhs252, %for.cond249
  %124 = phi i1 [ false, %for.cond249 ], [ %tobool254, %land.rhs252 ]
  br i1 %124, label %for.body256, label %for.end

for.body256:                                      ; preds = %land.end255
  %125 = load i8*, i8** %t, align 4
  %126 = load i8, i8* %125, align 1
  %conv257 = sext i8 %126 to i32
  %cmp258 = icmp eq i32 %conv257, 10
  br i1 %cmp258, label %if.then260, label %if.end266

if.then260:                                       ; preds = %for.body256
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call261 = call i32 @fputc(i32 92, %struct._IO_FILE* %127)
  store i32 %call261, i32* %ret, align 4
  %cmp262 = icmp slt i32 %call261, 0
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.then260
  br label %for.end

if.end265:                                        ; preds = %if.then260
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %for.body256
  %128 = load i8*, i8** %t, align 4
  %129 = load i8, i8* %128, align 1
  %conv267 = sext i8 %129 to i32
  %cmp268 = icmp eq i32 %conv267, 92
  br i1 %cmp268, label %if.then270, label %if.else272

if.then270:                                       ; preds = %if.end266
  %130 = load i32, i32* %count_backslashes, align 4
  %inc271 = add nsw i32 %130, 1
  store i32 %inc271, i32* %count_backslashes, align 4
  br label %if.end273

if.else272:                                       ; preds = %if.end266
  store i32 0, i32* %count_backslashes, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.else272, %if.then270
  %131 = load i8*, i8** %t, align 4
  %132 = load i8, i8* %131, align 1
  %conv274 = sext i8 %132 to i32
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call275 = call i32 @fputc(i32 %conv274, %struct._IO_FILE* %133)
  store i32 %call275, i32* %ret, align 4
  %cmp276 = icmp slt i32 %call275, 0
  br i1 %cmp276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %if.end273
  br label %for.end

if.end279:                                        ; preds = %if.end273
  br label %for.inc

for.inc:                                          ; preds = %if.end279
  %134 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %for.cond249

for.end:                                          ; preds = %if.then278, %if.then264, %land.end255
  %135 = load i32, i32* %ret, align 4
  %cmp280 = icmp slt i32 %135, 0
  br i1 %cmp280, label %if.then282, label %if.end283

if.then282:                                       ; preds = %for.end
  br label %for.end305

if.end283:                                        ; preds = %for.end
  %136 = load i32, i32* %count_backslashes, align 4
  %tobool284 = icmp ne i32 %136, 0
  br i1 %tobool284, label %land.lhs.true285, label %if.end294

land.lhs.true285:                                 ; preds = %if.end283
  %137 = load i32, i32* %count_backslashes, align 4
  %rem = srem i32 %137, 2
  %cmp286 = icmp eq i32 %rem, 0
  br i1 %cmp286, label %if.then288, label %if.end294

if.then288:                                       ; preds = %land.lhs.true285
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call289 = call i32 @fputc(i32 32, %struct._IO_FILE* %138)
  store i32 %call289, i32* %ret, align 4
  %cmp290 = icmp slt i32 %call289, 0
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.then288
  br label %for.end305

if.end293:                                        ; preds = %if.then288
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %land.lhs.true285, %if.end283
  %139 = load i32, i32* %ret, align 4
  %cmp295 = icmp slt i32 %139, 0
  br i1 %cmp295, label %if.then301, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %if.end294
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call298 = call i32 @fputc(i32 10, %struct._IO_FILE* %140)
  store i32 %call298, i32* %ret, align 4
  %cmp299 = icmp slt i32 %call298, 0
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %lor.lhs.false297, %if.end294
  br label %for.end305

if.end302:                                        ; preds = %lor.lhs.false297
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302, %if.then210, %if.then201, %if.then193
  %141 = load %struct.histent*, %struct.histent** %he, align 4
  %call304 = call %struct.histent* @down_histent(%struct.histent* %141)
  store %struct.histent* %call304, %struct.histent** %he, align 4
  br label %for.cond

for.end305:                                       ; preds = %if.then301, %if.then292, %if.then282, %land.end172
  %142 = load i32, i32* %ret, align 4
  %cmp306 = icmp sge i32 %142, 0
  br i1 %cmp306, label %land.lhs.true308, label %if.end327

land.lhs.true308:                                 ; preds = %for.end305
  %143 = load i8*, i8** %start, align 4
  %tobool309 = icmp ne i8* %143, null
  br i1 %tobool309, label %land.lhs.true310, label %if.end327

land.lhs.true310:                                 ; preds = %land.lhs.true308
  %144 = load i32, i32* %writeflags.addr, align 4
  %and311 = and i32 %144, 32768
  %tobool312 = icmp ne i32 %and311, 0
  br i1 %tobool312, label %if.then313, label %if.end327

if.then313:                                       ; preds = %land.lhs.true310
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call315 = call i32 @fflush(%struct._IO_FILE* %145)
  store i32 %call315, i32* %ret, align 4
  %cmp316 = icmp sge i32 %call315, 0
  br i1 %cmp316, label %if.then318, label %if.end326

if.then318:                                       ; preds = %if.then313
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call319 = call i32 @fileno(%struct._IO_FILE* %146)
  %call320 = call i32 @fstat(i32 %call319, %struct.stat* %sb314)
  %cmp321 = icmp eq i32 %call320, 0
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %if.then318
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb314, i32 0, i32 12
  %147 = load i32, i32* %st_size, align 8
  store i32 %147, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 4), align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %sb314, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %148 = load i32, i32* %tv_sec, align 8
  store i32 %148, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 2), align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then323, %if.then318
  %149 = load i8*, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  call void @zsfree(i8* %149)
  %150 = load i8*, i8** %start, align 4
  %call325 = call i8* @ztrdup(i8* %150)
  store i8* %call325, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  br label %if.end326

if.end326:                                        ; preds = %if.end324, %if.then313
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %land.lhs.true310, %land.lhs.true308, %for.end305
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 4
  %call328 = call i32 @fclose(%struct._IO_FILE* %151)
  %cmp329 = icmp slt i32 %call328, 0
  br i1 %cmp329, label %land.lhs.true331, label %if.end335

land.lhs.true331:                                 ; preds = %if.end327
  %152 = load i32, i32* %ret, align 4
  %cmp332 = icmp sge i32 %152, 0
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %land.lhs.true331
  store i32 -1, i32* %ret, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then334, %land.lhs.true331, %if.end327
  %153 = load i32, i32* %ret, align 4
  %cmp336 = icmp sge i32 %153, 0
  br i1 %cmp336, label %if.then338, label %if.end372

if.then338:                                       ; preds = %if.end335
  %154 = load i8*, i8** %tmpfile, align 4
  %tobool339 = icmp ne i8* %154, null
  br i1 %tobool339, label %if.then340, label %if.end353

if.then340:                                       ; preds = %if.then338
  %155 = load i8*, i8** %tmpfile, align 4
  %156 = load i8*, i8** %fn.addr, align 4
  %call341 = call i8* @unmeta(i8* %156)
  %call342 = call i32 @rename(i8* %155, i8* %call341)
  %cmp343 = icmp slt i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.else346

if.then345:                                       ; preds = %if.then340
  %157 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* %157)
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %err.addr, align 4
  br label %if.end352

if.else346:                                       ; preds = %if.then340
  %158 = load i32, i32* @flock_fd, align 4
  %cmp347 = icmp sge i32 %158, 0
  br i1 %cmp347, label %if.then349, label %if.end351

if.then349:                                       ; preds = %if.else346
  %159 = load i32, i32* @flock_fd, align 4
  %call350 = call i32 @close(i32 %159)
  store i32 -1, i32* @flock_fd, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.then349, %if.else346
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %if.then345
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.then338
  %160 = load i32, i32* %ret, align 4
  %cmp354 = icmp sge i32 %160, 0
  br i1 %cmp354, label %land.lhs.true356, label %if.end371

land.lhs.true356:                                 ; preds = %if.end353
  %161 = load i32, i32* %writeflags.addr, align 4
  %and357 = and i32 %161, 2
  %tobool358 = icmp ne i32 %and357, 0
  br i1 %tobool358, label %land.lhs.true359, label %if.end371

land.lhs.true359:                                 ; preds = %land.lhs.true356
  %162 = load i32, i32* %writeflags.addr, align 4
  %and360 = and i32 %162, 48
  %tobool361 = icmp ne i32 %and360, 0
  br i1 %tobool361, label %if.end371, label %if.then362

if.then362:                                       ; preds = %land.lhs.true359
  %163 = load i32, i32* @histactive, align 4
  store i32 %163, i32* %remember_histactive, align 4
  store i32 0, i32* @histactive, align 4
  %164 = load i32, i32* @savehistsiz, align 4
  %165 = load i32, i32* @savehistsiz, align 4
  %call363 = call i32 @pushhiststack(i8* null, i32 %164, i32 %165, i32 -1)
  %166 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 85), align 1
  %conv364 = sext i8 %166 to i32
  %167 = load i32, i32* @hist_ignore_all_dups, align 4
  %or365 = or i32 %167, %conv364
  store i32 %or365, i32* @hist_ignore_all_dups, align 4
  %168 = load i8*, i8** %fn.addr, align 4
  %169 = load i32, i32* %err.addr, align 4
  call void @readhistfile(i8* %168, i32 %169, i32 0)
  %170 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 77), align 1
  %conv366 = sext i8 %170 to i32
  store i32 %conv366, i32* @hist_ignore_all_dups, align 4
  %171 = load i32, i32* @histlinect, align 4
  %tobool367 = icmp ne i32 %171, 0
  br i1 %tobool367, label %if.then368, label %if.end369

if.then368:                                       ; preds = %if.then362
  %172 = load i8*, i8** %fn.addr, align 4
  %173 = load i32, i32* %err.addr, align 4
  call void @savehistfile(i8* %172, i32 %173, i32 0)
  br label %if.end369

if.end369:                                        ; preds = %if.then368, %if.then362
  %call370 = call i32 @pophiststack()
  %174 = load i32, i32* %remember_histactive, align 4
  store i32 %174, i32* @histactive, align 4
  br label %if.end371

if.end371:                                        ; preds = %if.end369, %land.lhs.true359, %land.lhs.true356, %if.end353
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %if.end335
  call void @popheap()
  br label %if.end374

if.else373:                                       ; preds = %if.end157
  store i32 -1, i32* %ret, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.else373, %if.end372
  %175 = load i32, i32* %ret, align 4
  %cmp375 = icmp slt i32 %175, 0
  br i1 %cmp375, label %land.lhs.true377, label %if.end386

land.lhs.true377:                                 ; preds = %if.end374
  %176 = load i32, i32* %err.addr, align 4
  %tobool378 = icmp ne i32 %176, 0
  br i1 %tobool378, label %if.then379, label %if.end386

if.then379:                                       ; preds = %land.lhs.true377
  %177 = load i8*, i8** %tmpfile, align 4
  %tobool380 = icmp ne i8* %177, null
  br i1 %tobool380, label %if.then381, label %if.else383

if.then381:                                       ; preds = %if.then379
  %178 = load i8*, i8** %fn.addr, align 4
  %call382 = call i32* @__errno_location()
  %179 = load i32, i32* %call382, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i8* %178, i32 %179)
  br label %if.end385

if.else383:                                       ; preds = %if.then379
  %180 = load i8*, i8** %fn.addr, align 4
  %call384 = call i32* @__errno_location()
  %181 = load i32, i32* %call384, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8* %180, i32 %181)
  br label %if.end385

if.end385:                                        ; preds = %if.else383, %if.then381
  br label %if.end386

if.end386:                                        ; preds = %if.end385, %land.lhs.true377, %if.end374
  %182 = load i8*, i8** %tmpfile, align 4
  %tobool387 = icmp ne i8* %182, null
  br i1 %tobool387, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.end386
  %183 = load i8*, i8** %tmpfile, align 4
  call void @free(i8* %183)
  br label %if.end389

if.end389:                                        ; preds = %if.then388, %if.end386
  %184 = load i8*, i8** %fn.addr, align 4
  call void @unlockhistfile(i8* %184)
  br label %return

return:                                           ; preds = %if.end389, %if.then31, %if.then21, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @histreduceblanks() #0 {
entry:
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %needblank = alloca i32, align 4
  %spacecount = alloca i32, align 4
  %trunc_ok = alloca i32, align 4
  %lastptr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  store i32 0, i32* %spacecount, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 79), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i8*, i8** @chline, align 4
  %2 = load i32, i32* %spacecount, align 4
  %arrayidx = getelementptr inbounds i8, i8* %1, i32 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %spacecount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %spacecount, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  store i32 0, i32* %i, align 4
  %5 = load i32, i32* %spacecount, align 4
  store i32 %5, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @chwordpos, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16*, i16** @chwords, align 4
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i32 %add
  %10 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %10 to i32
  %11 = load i16*, i16** @chwords, align 4
  %12 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i32 %12
  %13 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %13 to i32
  %sub = sub nsw i32 %conv5, %conv7
  %14 = load i32, i32* %i, align 4
  %cmp8 = icmp sgt i32 %14, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %15 = load i16*, i16** @chwords, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx10 = getelementptr inbounds i16, i16* %15, i32 %16
  %17 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %17 to i32
  %18 = load i16*, i16** @chwords, align 4
  %19 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 %19, 1
  %arrayidx13 = getelementptr inbounds i16, i16* %18, i32 %sub12
  %20 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %20 to i32
  %cmp15 = icmp sgt i32 %conv11, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %21 = phi i1 [ false, %for.body ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  %add17 = add nsw i32 %sub, %land.ext
  %22 = load i32, i32* %len, align 4
  %add18 = add nsw i32 %22, %add17
  store i32 %add18, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %23 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %23, 2
  store i32 %add19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** @chline, align 4
  %25 = load i32, i32* %len, align 4
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i32 %25
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  br label %if.end101

if.end25:                                         ; preds = %for.end
  %27 = load i32, i32* @chwordpos, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %28 = load i8*, i8** @chline, align 4
  %29 = load i16*, i16** @chwords, align 4
  %30 = load i32, i32* @chwordpos, align 4
  %sub28 = sub nsw i32 %30, 1
  %arrayidx29 = getelementptr inbounds i16, i16* %29, i32 %sub28
  %31 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %31 to i32
  %add.ptr = getelementptr inbounds i8, i8* %28, i32 %conv30
  store i8* %add.ptr, i8** %lastptr, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end25
  %32 = load i8*, i8** @chline, align 4
  store i8* %32, i8** %lastptr, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  store i32 0, i32* %i, align 4
  %33 = load i32, i32* %spacecount, align 4
  store i32 %33, i32* %pos, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc77, %if.end31
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* @chwordpos, align 4
  %cmp33 = icmp slt i32 %34, %35
  br i1 %cmp33, label %for.body35, label %for.end79

for.body35:                                       ; preds = %for.cond32
  %36 = load i16*, i16** @chwords, align 4
  %37 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %37, 1
  %arrayidx37 = getelementptr inbounds i16, i16* %36, i32 %add36
  %38 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %38 to i32
  %39 = load i16*, i16** @chwords, align 4
  %40 = load i32, i32* %i, align 4
  %arrayidx39 = getelementptr inbounds i16, i16* %39, i32 %40
  %41 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %41 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  store i32 %sub41, i32* %len, align 4
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* @chwordpos, align 4
  %sub42 = sub nsw i32 %43, 2
  %cmp43 = icmp slt i32 %42, %sub42
  br i1 %cmp43, label %land.rhs45, label %land.end54

land.rhs45:                                       ; preds = %for.body35
  %44 = load i16*, i16** @chwords, align 4
  %45 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %45, 2
  %arrayidx47 = getelementptr inbounds i16, i16* %44, i32 %add46
  %46 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %46 to i32
  %47 = load i16*, i16** @chwords, align 4
  %48 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %48, 1
  %arrayidx50 = getelementptr inbounds i16, i16* %47, i32 %add49
  %49 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %49 to i32
  %cmp52 = icmp sgt i32 %conv48, %conv51
  br label %land.end54

land.end54:                                       ; preds = %land.rhs45, %for.body35
  %50 = phi i1 [ false, %for.body35 ], [ %cmp52, %land.rhs45 ]
  %land.ext55 = zext i1 %50 to i32
  store i32 %land.ext55, i32* %needblank, align 4
  %51 = load i32, i32* %pos, align 4
  %52 = load i16*, i16** @chwords, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx56 = getelementptr inbounds i16, i16* %52, i32 %53
  %54 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %54 to i32
  %cmp58 = icmp ne i32 %51, %conv57
  br i1 %cmp58, label %if.then60, label %if.end74

if.then60:                                        ; preds = %land.end54
  %55 = load i8*, i8** @chline, align 4
  %56 = load i32, i32* %pos, align 4
  %add.ptr61 = getelementptr inbounds i8, i8* %55, i32 %56
  %57 = load i8*, i8** @chline, align 4
  %58 = load i16*, i16** @chwords, align 4
  %59 = load i32, i32* %i, align 4
  %arrayidx62 = getelementptr inbounds i16, i16* %58, i32 %59
  %60 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %60 to i32
  %add.ptr64 = getelementptr inbounds i8, i8* %57, i32 %conv63
  %61 = load i32, i32* %len, align 4
  %62 = load i32, i32* %needblank, align 4
  %add65 = add nsw i32 %61, %62
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %add.ptr61, i8* %add.ptr64, i32 %add65, i32 1, i1 false)
  %63 = load i32, i32* %pos, align 4
  %conv66 = trunc i32 %63 to i16
  %64 = load i16*, i16** @chwords, align 4
  %65 = load i32, i32* %i, align 4
  %arrayidx67 = getelementptr inbounds i16, i16* %64, i32 %65
  store i16 %conv66, i16* %arrayidx67, align 2
  %66 = load i16*, i16** @chwords, align 4
  %67 = load i32, i32* %i, align 4
  %arrayidx68 = getelementptr inbounds i16, i16* %66, i32 %67
  %68 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %68 to i32
  %69 = load i32, i32* %len, align 4
  %add70 = add nsw i32 %conv69, %69
  %conv71 = trunc i32 %add70 to i16
  %70 = load i16*, i16** @chwords, align 4
  %71 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %71, 1
  %arrayidx73 = getelementptr inbounds i16, i16* %70, i32 %add72
  store i16 %conv71, i16* %arrayidx73, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then60, %land.end54
  %72 = load i32, i32* %len, align 4
  %73 = load i32, i32* %needblank, align 4
  %add75 = add nsw i32 %72, %73
  %74 = load i32, i32* %pos, align 4
  %add76 = add nsw i32 %74, %add75
  store i32 %add76, i32* %pos, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %if.end74
  %75 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %75, 2
  store i32 %add78, i32* %i, align 4
  br label %for.cond32

for.end79:                                        ; preds = %for.cond32
  store i32 1, i32* %trunc_ok, align 4
  %76 = load i8*, i8** %lastptr, align 4
  store i8* %76, i8** %ptr, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc88, %for.end79
  %77 = load i8*, i8** %ptr, align 4
  %78 = load i8, i8* %77, align 1
  %tobool81 = icmp ne i8 %78, 0
  br i1 %tobool81, label %for.body82, label %for.end89

for.body82:                                       ; preds = %for.cond80
  %79 = load i8*, i8** %ptr, align 4
  %80 = load i8, i8* %79, align 1
  %idxprom = zext i8 %80 to i32
  %arrayidx83 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %81 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %81 to i32
  %and = and i32 %conv84, 8
  %tobool85 = icmp ne i32 %and, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %for.body82
  store i32 0, i32* %trunc_ok, align 4
  br label %for.end89

if.end87:                                         ; preds = %for.body82
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %82 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %for.cond80

for.end89:                                        ; preds = %if.then86, %for.cond80
  %83 = load i32, i32* %trunc_ok, align 4
  %tobool90 = icmp ne i32 %83, 0
  br i1 %tobool90, label %if.then91, label %if.else93

if.then91:                                        ; preds = %for.end89
  %84 = load i8*, i8** @chline, align 4
  %85 = load i32, i32* %pos, align 4
  %arrayidx92 = getelementptr inbounds i8, i8* %84, i32 %85
  store i8 0, i8* %arrayidx92, align 1
  br label %if.end101

if.else93:                                        ; preds = %for.end89
  %86 = load i8*, i8** @chline, align 4
  %87 = load i32, i32* %pos, align 4
  %add.ptr94 = getelementptr inbounds i8, i8* %86, i32 %87
  store i8* %add.ptr94, i8** %ptr, align 4
  br label %while.cond95

while.cond95:                                     ; preds = %while.body99, %if.else93
  %88 = load i8*, i8** %lastptr, align 4
  %incdec.ptr96 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr96, i8** %lastptr, align 4
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %ptr, align 4
  %incdec.ptr97 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr97, i8** %ptr, align 4
  store i8 %89, i8* %90, align 1
  %tobool98 = icmp ne i8 %89, 0
  br i1 %tobool98, label %while.body99, label %while.end100

while.body99:                                     ; preds = %while.cond95
  br label %while.cond95

while.end100:                                     ; preds = %while.cond95
  br label %if.end101

if.end101:                                        ; preds = %if.then24, %while.end100, %if.then91
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define void @histremovedups() #0 {
entry:
  %he = alloca %struct.histent*, align 4
  %next = alloca %struct.histent*, align 4
  %0 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %0, %struct.histent** %he, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool = icmp ne %struct.histent* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.histent*, %struct.histent** %he, align 4
  %call = call %struct.histent* @up_histent(%struct.histent* %2)
  store %struct.histent* %call, %struct.histent** %next, align 4
  %3 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 8
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.histent*, %struct.histent** %he, align 4
  %node2 = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.histent*, %struct.histent** %next, align 4
  store %struct.histent* %6, %struct.histent** %he, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define %struct.histent* @up_histent(%struct.histent* %he) #0 {
entry:
  %he.addr = alloca %struct.histent*, align 4
  store %struct.histent* %he, %struct.histent** %he.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %tobool = icmp ne %struct.histent* %0, null
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %1, i32 0, i32 1
  %2 = load %struct.histent*, %struct.histent** %up, align 4
  %3 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %up1 = getelementptr inbounds %struct.histent, %struct.histent* %4, i32 0, i32 1
  %5 = load %struct.histent*, %struct.histent** %up1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.histent* [ null, %cond.true ], [ %5, %cond.false ]
  ret %struct.histent* %cond
}

declare void @freehistnode(%struct.hashnode*) #1

; Function Attrs: noinline nounwind
define %struct.histent* @gethistent(i32 %ev, i32 %nearmatch) #0 {
entry:
  %retval = alloca %struct.histent*, align 4
  %ev.addr = alloca i32, align 4
  %nearmatch.addr = alloca i32, align 4
  %he = alloca %struct.histent*, align 4
  store i32 %ev, i32* %ev.addr, align 4
  store i32 %nearmatch, i32* %nearmatch.addr, align 4
  %0 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool = icmp ne %struct.histent* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.histent* null, %struct.histent** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ev.addr, align 4
  %2 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 2
  %3 = load %struct.histent*, %struct.histent** %down, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 8
  %4 = load i32, i32* %histnum, align 4
  %sub = sub nsw i32 %1, %4
  %5 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %histnum1 = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 8
  %6 = load i32, i32* %histnum1, align 4
  %7 = load i32, i32* %ev.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  %cmp = icmp slt i32 %sub, %sub2
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down4 = getelementptr inbounds %struct.histent, %struct.histent* %8, i32 0, i32 2
  %9 = load %struct.histent*, %struct.histent** %down4, align 4
  store %struct.histent* %9, %struct.histent** %he, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum5 = getelementptr inbounds %struct.histent, %struct.histent* %10, i32 0, i32 8
  %11 = load i32, i32* %histnum5, align 4
  %12 = load i32, i32* %ev.addr, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.histent*, %struct.histent** %he, align 4
  %down7 = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 2
  %14 = load %struct.histent*, %struct.histent** %down7, align 4
  store %struct.histent* %14, %struct.histent** %he, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum8 = getelementptr inbounds %struct.histent, %struct.histent* %15, i32 0, i32 8
  %16 = load i32, i32* %histnum8, align 4
  %17 = load i32, i32* %ev.addr, align 4
  %cmp9 = icmp ne i32 %16, %17
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %for.end
  %18 = load i32, i32* %nearmatch.addr, align 4
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %19 = load i32, i32* %nearmatch.addr, align 4
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = load %struct.histent*, %struct.histent** %he, align 4
  %call = call %struct.histent* @up_histent(%struct.histent* %20)
  store %struct.histent* %call, %struct.histent** %he, align 4
  %cmp13 = icmp eq %struct.histent* %call, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true, %if.then10
  store %struct.histent* null, %struct.histent** %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.end
  br label %if.end35

if.else:                                          ; preds = %if.end
  %21 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %21, %struct.histent** %he, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc21, %if.else
  %22 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum18 = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 8
  %23 = load i32, i32* %histnum18, align 4
  %24 = load i32, i32* %ev.addr, align 4
  %cmp19 = icmp sgt i32 %23, %24
  br i1 %cmp19, label %for.body20, label %for.end22

for.body20:                                       ; preds = %for.cond17
  br label %for.inc21

for.inc21:                                        ; preds = %for.body20
  %25 = load %struct.histent*, %struct.histent** %he, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %25, i32 0, i32 1
  %26 = load %struct.histent*, %struct.histent** %up, align 4
  store %struct.histent* %26, %struct.histent** %he, align 4
  br label %for.cond17

for.end22:                                        ; preds = %for.cond17
  %27 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum23 = getelementptr inbounds %struct.histent, %struct.histent* %27, i32 0, i32 8
  %28 = load i32, i32* %histnum23, align 4
  %29 = load i32, i32* %ev.addr, align 4
  %cmp24 = icmp ne i32 %28, %29
  br i1 %cmp24, label %if.then25, label %if.end34

if.then25:                                        ; preds = %for.end22
  %30 = load i32, i32* %nearmatch.addr, align 4
  %cmp26 = icmp eq i32 %30, 0
  br i1 %cmp26, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.then25
  %31 = load i32, i32* %nearmatch.addr, align 4
  %cmp28 = icmp sgt i32 %31, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end33

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %32 = load %struct.histent*, %struct.histent** %he, align 4
  %call30 = call %struct.histent* @down_histent(%struct.histent* %32)
  store %struct.histent* %call30, %struct.histent** %he, align 4
  %cmp31 = icmp eq %struct.histent* %call30, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true29, %if.then25
  store %struct.histent* null, %struct.histent** %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true29, %lor.lhs.false27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %for.end22
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  %33 = load %struct.histent*, %struct.histent** %he, align 4
  call void @checkcurline(%struct.histent* %33)
  %34 = load %struct.histent*, %struct.histent** %he, align 4
  store %struct.histent* %34, %struct.histent** %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then32, %if.then14, %if.then
  %35 = load %struct.histent*, %struct.histent** %retval, align 4
  ret %struct.histent* %35
}

; Function Attrs: noinline nounwind
define %struct.histent* @movehistent(%struct.histent* %he, i32 %n, i32 %xflags) #0 {
entry:
  %retval = alloca %struct.histent*, align 4
  %he.addr = alloca %struct.histent*, align 4
  %n.addr = alloca i32, align 4
  %xflags.addr = alloca i32, align 4
  store %struct.histent* %he, %struct.histent** %he.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %xflags, i32* %xflags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %call = call %struct.histent* @up_histent(%struct.histent* %1)
  store %struct.histent* %call, %struct.histent** %he.addr, align 4
  %tobool = icmp ne %struct.histent* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store %struct.histent* null, %struct.histent** %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %2 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %4 = load i32, i32* %xflags.addr, align 4
  %and = and i32 %3, %4
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %n.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %if.end16, %while.end
  %6 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %while.body6, label %while.end17

while.body6:                                      ; preds = %while.cond4
  %7 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %call7 = call %struct.histent* @down_histent(%struct.histent* %7)
  store %struct.histent* %call7, %struct.histent** %he.addr, align 4
  %tobool8 = icmp ne %struct.histent* %call7, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.body6
  store %struct.histent* null, %struct.histent** %retval, align 4
  br label %return

if.end10:                                         ; preds = %while.body6
  %8 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %node11 = getelementptr inbounds %struct.histent, %struct.histent* %8, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  %9 = load i32, i32* %flags12, align 4
  %10 = load i32, i32* %xflags.addr, align 4
  %and13 = and i32 %9, %10
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  %11 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end10
  br label %while.cond4

while.end17:                                      ; preds = %while.cond4
  %12 = load %struct.histent*, %struct.histent** %he.addr, align 4
  call void @checkcurline(%struct.histent* %12)
  %13 = load %struct.histent*, %struct.histent** %he.addr, align 4
  store %struct.histent* %13, %struct.histent** %retval, align 4
  br label %return

return:                                           ; preds = %while.end17, %if.then9, %if.then
  %14 = load %struct.histent*, %struct.histent** %retval, align 4
  ret %struct.histent* %14
}

; Function Attrs: noinline nounwind
define %struct.histent* @down_histent(%struct.histent* %he) #0 {
entry:
  %he.addr = alloca %struct.histent*, align 4
  store %struct.histent* %he, %struct.histent** %he.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 2
  %3 = load %struct.histent*, %struct.histent** %down, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.histent* [ null, %cond.true ], [ %3, %cond.false ]
  ret %struct.histent* %cond
}

; Function Attrs: noinline nounwind
define void @checkcurline(%struct.histent* %he) #0 {
entry:
  %he.addr = alloca %struct.histent*, align 4
  store %struct.histent* %he, %struct.histent** %he.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %0, i32 0, i32 8
  %1 = load i32, i32* %histnum, align 4
  %2 = load i32, i32* @curhist, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @histactive, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** @chline, align 4
  store i8* %4, i8** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 0, i32 1), align 4
  %5 = load i32, i32* @chwordpos, align 4
  %div = sdiv i32 %5, 2
  store i32 %div, i32* getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 7), align 4
  %6 = load i16*, i16** @chwords, align 4
  store i16* %6, i16** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 6), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define %struct.histent* @prepnexthistent() #0 {
entry:
  %he = alloca %struct.histent*, align 4
  %curline_in_ring = alloca i32, align 4
  %0 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %0, @curline
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %curline_in_ring, align 4
  %1 = load i32, i32* %curline_in_ring, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @unlinkcurline()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool1 = icmp ne %struct.histent* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 32
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* @curhist, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @curhist, align 4
  %6 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node4 = getelementptr inbounds %struct.histent, %struct.histent* %6, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node4)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %7 = load i32, i32* @histlinect, align 4
  %8 = load i32, i32* @histsiz, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %9 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool8 = icmp ne %struct.histent* %9, null
  br i1 %tobool8, label %if.else19, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  %call = call i8* @zshcalloc(i32 44)
  %10 = bitcast i8* %call to %struct.histent*
  store %struct.histent* %10, %struct.histent** %he, align 4
  %11 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool10 = icmp ne %struct.histent* %11, null
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %12 = load %struct.histent*, %struct.histent** %he, align 4
  %13 = load %struct.histent*, %struct.histent** %he, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 2
  store %struct.histent* %12, %struct.histent** %down, align 4
  %14 = load %struct.histent*, %struct.histent** %he, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %14, i32 0, i32 1
  store %struct.histent* %12, %struct.histent** %up, align 4
  store %struct.histent* %12, %struct.histent** @hist_ring, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then9
  %15 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %16 = load %struct.histent*, %struct.histent** %he, align 4
  %up12 = getelementptr inbounds %struct.histent, %struct.histent* %16, i32 0, i32 1
  store %struct.histent* %15, %struct.histent** %up12, align 4
  %17 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down13 = getelementptr inbounds %struct.histent, %struct.histent* %17, i32 0, i32 2
  %18 = load %struct.histent*, %struct.histent** %down13, align 4
  %19 = load %struct.histent*, %struct.histent** %he, align 4
  %down14 = getelementptr inbounds %struct.histent, %struct.histent* %19, i32 0, i32 2
  store %struct.histent* %18, %struct.histent** %down14, align 4
  %20 = load %struct.histent*, %struct.histent** %he, align 4
  %21 = load %struct.histent*, %struct.histent** %he, align 4
  %down15 = getelementptr inbounds %struct.histent, %struct.histent* %21, i32 0, i32 2
  %22 = load %struct.histent*, %struct.histent** %down15, align 4
  %up16 = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 1
  store %struct.histent* %20, %struct.histent** %up16, align 4
  %23 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down17 = getelementptr inbounds %struct.histent, %struct.histent* %23, i32 0, i32 2
  store %struct.histent* %20, %struct.histent** %down17, align 4
  %24 = load %struct.histent*, %struct.histent** %he, align 4
  store %struct.histent* %24, %struct.histent** @hist_ring, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %25 = load i32, i32* @histlinect, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* @histlinect, align 4
  br label %if.end20

if.else19:                                        ; preds = %lor.lhs.false
  call void @putoldhistentryontop(i16 signext 0)
  %26 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  call void @freehistdata(%struct.histent* %26, i32 0)
  %27 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %27, %struct.histent** %he, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.end18
  %28 = load i32, i32* @curhist, align 4
  %inc21 = add nsw i32 %28, 1
  store i32 %inc21, i32* @curhist, align 4
  %29 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %29, i32 0, i32 8
  store i32 %inc21, i32* %histnum, align 4
  %30 = load i32, i32* %curline_in_ring, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @linkcurline()
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %31 = load %struct.histent*, %struct.histent** %he, align 4
  ret %struct.histent* %31
}

; Function Attrs: noinline nounwind
define internal void @unlinkcurline() #0 {
entry:
  %0 = load %struct.histent*, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 2), align 4
  %1 = load %struct.histent*, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 1), align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %1, i32 0, i32 2
  store %struct.histent* %0, %struct.histent** %down, align 4
  %2 = load %struct.histent*, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 1), align 4
  %3 = load %struct.histent*, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 2), align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 1
  store %struct.histent* %2, %struct.histent** %up, align 4
  %4 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %4, @curline
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @histlinect, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  store %struct.histent* null, %struct.histent** @hist_ring, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.histent*, %struct.histent** getelementptr inbounds (%struct.histent, %struct.histent* @curline, i32 0, i32 1), align 4
  store %struct.histent* %6, %struct.histent** @hist_ring, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %7 = load i32, i32* @curhist, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* @curhist, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @putoldhistentryontop(i16 signext %keep_going) #0 {
entry:
  %keep_going.addr = alloca i16, align 2
  %he = alloca %struct.histent*, align 4
  store i16 %keep_going, i16* %keep_going.addr, align 2
  %0 = load i16, i16* %keep_going.addr, align 2
  %conv = sext i16 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool1 = icmp ne %struct.histent* %1, null
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load %struct.histent*, %struct.histent** @putoldhistentryontop.next, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 2
  %4 = load %struct.histent*, %struct.histent** %down, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.histent* [ %2, %cond.true ], [ %4, %cond.false ]
  store %struct.histent* %cond, %struct.histent** %he, align 4
  %5 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool2 = icmp ne %struct.histent* %5, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load %struct.histent*, %struct.histent** %he, align 4
  %down3 = getelementptr inbounds %struct.histent, %struct.histent* %6, i32 0, i32 2
  %7 = load %struct.histent*, %struct.histent** %down3, align 4
  store %struct.histent* %7, %struct.histent** @putoldhistentryontop.next, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 74), align 1
  %conv4 = sext i8 %8 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %9, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 8
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end23, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %11 = load i16, i16* %keep_going.addr, align 2
  %tobool8 = icmp ne i16 %11, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  %12 = load i32, i32* @savehistsiz, align 4
  store i32 %12, i32* @putoldhistentryontop.max_unique_ct, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end10
  %13 = load i32, i32* @putoldhistentryontop.max_unique_ct, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @putoldhistentryontop.max_unique_ct, align 4
  %cmp = icmp sle i32 %13, 0
  br i1 %cmp, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %do.body
  %14 = load %struct.histent*, %struct.histent** %he, align 4
  %15 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp13 = icmp eq %struct.histent* %14, %15
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false12, %do.body
  store i32 0, i32* @putoldhistentryontop.max_unique_ct, align 4
  %16 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down16 = getelementptr inbounds %struct.histent, %struct.histent* %16, i32 0, i32 2
  %17 = load %struct.histent*, %struct.histent** %down16, align 4
  store %struct.histent* %17, %struct.histent** %he, align 4
  %18 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  store %struct.histent* %18, %struct.histent** @putoldhistentryontop.next, align 4
  br label %do.end

if.end17:                                         ; preds = %lor.lhs.false12
  %19 = load %struct.histent*, %struct.histent** @putoldhistentryontop.next, align 4
  store %struct.histent* %19, %struct.histent** %he, align 4
  %20 = load %struct.histent*, %struct.histent** %he, align 4
  %down18 = getelementptr inbounds %struct.histent, %struct.histent* %20, i32 0, i32 2
  %21 = load %struct.histent*, %struct.histent** %down18, align 4
  store %struct.histent* %21, %struct.histent** @putoldhistentryontop.next, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  %22 = load %struct.histent*, %struct.histent** %he, align 4
  %node19 = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %23 = load i32, i32* %flags20, align 4
  %and21 = and i32 %23, 8
  %tobool22 = icmp ne i32 %and21, 0
  %lnot = xor i1 %tobool22, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then15
  br label %if.end23

if.end23:                                         ; preds = %do.end, %land.lhs.true, %if.end
  %24 = load %struct.histent*, %struct.histent** %he, align 4
  %25 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down24 = getelementptr inbounds %struct.histent, %struct.histent* %25, i32 0, i32 2
  %26 = load %struct.histent*, %struct.histent** %down24, align 4
  %cmp25 = icmp ne %struct.histent* %24, %26
  br i1 %cmp25, label %if.then27, label %if.end39

if.then27:                                        ; preds = %if.end23
  %27 = load %struct.histent*, %struct.histent** %he, align 4
  %down28 = getelementptr inbounds %struct.histent, %struct.histent* %27, i32 0, i32 2
  %28 = load %struct.histent*, %struct.histent** %down28, align 4
  %29 = load %struct.histent*, %struct.histent** %he, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %29, i32 0, i32 1
  %30 = load %struct.histent*, %struct.histent** %up, align 4
  %down29 = getelementptr inbounds %struct.histent, %struct.histent* %30, i32 0, i32 2
  store %struct.histent* %28, %struct.histent** %down29, align 4
  %31 = load %struct.histent*, %struct.histent** %he, align 4
  %up30 = getelementptr inbounds %struct.histent, %struct.histent* %31, i32 0, i32 1
  %32 = load %struct.histent*, %struct.histent** %up30, align 4
  %33 = load %struct.histent*, %struct.histent** %he, align 4
  %down31 = getelementptr inbounds %struct.histent, %struct.histent* %33, i32 0, i32 2
  %34 = load %struct.histent*, %struct.histent** %down31, align 4
  %up32 = getelementptr inbounds %struct.histent, %struct.histent* %34, i32 0, i32 1
  store %struct.histent* %32, %struct.histent** %up32, align 4
  %35 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %36 = load %struct.histent*, %struct.histent** %he, align 4
  %up33 = getelementptr inbounds %struct.histent, %struct.histent* %36, i32 0, i32 1
  store %struct.histent* %35, %struct.histent** %up33, align 4
  %37 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down34 = getelementptr inbounds %struct.histent, %struct.histent* %37, i32 0, i32 2
  %38 = load %struct.histent*, %struct.histent** %down34, align 4
  %39 = load %struct.histent*, %struct.histent** %he, align 4
  %down35 = getelementptr inbounds %struct.histent, %struct.histent* %39, i32 0, i32 2
  store %struct.histent* %38, %struct.histent** %down35, align 4
  %40 = load %struct.histent*, %struct.histent** %he, align 4
  %41 = load %struct.histent*, %struct.histent** %he, align 4
  %down36 = getelementptr inbounds %struct.histent, %struct.histent* %41, i32 0, i32 2
  %42 = load %struct.histent*, %struct.histent** %down36, align 4
  %up37 = getelementptr inbounds %struct.histent, %struct.histent* %42, i32 0, i32 1
  store %struct.histent* %40, %struct.histent** %up37, align 4
  %43 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %down38 = getelementptr inbounds %struct.histent, %struct.histent* %43, i32 0, i32 2
  store %struct.histent* %40, %struct.histent** %down38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then27, %if.end23
  %44 = load %struct.histent*, %struct.histent** %he, align 4
  store %struct.histent* %44, %struct.histent** @hist_ring, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.else
  ret void
}

declare void @freehistdata(%struct.histent*, i32) #1

declare void @settyinfo(%struct.ttyinfo*) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i32 @callhookfunc(i8*, %union.linkroot*, i32, i32*) #1

; Function Attrs: noinline nounwind
define i32 @lockhistfile(i8* %fn, i32 %keep_trying) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca i8*, align 4
  %keep_trying.addr = alloca i32, align 4
  %ct = alloca i32, align 4
  %ret = alloca i32, align 4
  %sleep_us = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  %lockfile = alloca i8*, align 4
  %pidbuf = alloca [32 x i8], align 1
  %lnk = alloca i8*, align 4
  store i8* %fn, i8** %fn.addr, align 4
  store i32 %keep_trying, i32* %keep_trying.addr, align 4
  %0 = load i32, i32* @lockhistct, align 4
  store i32 %0, i32* %ct, align 4
  store i32 0, i32* %ret, align 4
  store i32 65536, i32* %sleep_us, align 4
  %1 = load i8*, i8** %fn.addr, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %fn.addr, align 4
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* @lockhistct, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @lockhistct, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.end38, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 75), align 1
  %tobool4 = icmp ne i8 %3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %4 = load i8*, i8** %fn.addr, align 4
  %5 = load i32, i32* %keep_trying.addr, align 4
  %call6 = call i32 @flockhistfile(i8* %4, i32 %5)
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %6 = load i8*, i8** %fn.addr, align 4
  %call8 = call i8* @unmeta(i8* %6)
  %call9 = call i8* @bicat(i8* %call8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call9, i8** %lockfile, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %pidbuf, i32 0, i32 0
  %7 = load i32, i32* @mypid, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %7)
  %call11 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  store i8* %call11, i8** %lnk, align 4
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %pidbuf, i32 0, i32 0
  %8 = load i8*, i8** %lnk, align 4
  %tobool13 = icmp ne i8* %8, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end7
  %9 = load i8*, i8** %lnk, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %cond.false ]
  %call14 = call i8* @bicat(i8* %arraydecay12, i8* %cond)
  store i8* %call14, i8** %lnk, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.then28, %cond.end
  %10 = load i8*, i8** %lnk, align 4
  %11 = load i8*, i8** %lockfile, align 4
  %call15 = call i32 @symlink(i8* %10, i8* %11)
  store i32 %call15, i32* %fd, align 4
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call16 = call i32* @__errno_location()
  %12 = load i32, i32* %call16, align 4
  %cmp17 = icmp ne i32 %12, 17
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  store i32 2, i32* %ret, align 4
  br label %while.end

if.else:                                          ; preds = %while.body
  %13 = load i32, i32* %keep_trying.addr, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  %14 = load i8*, i8** %lockfile, align 4
  %call23 = call i32 @lstat(i8* %14, %struct.stat* %sb)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  %call26 = call i32* @__errno_location()
  %15 = load i32, i32* %call26, align 4
  %cmp27 = icmp eq i32 %15, 2
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  br label %while.cond

if.end29:                                         ; preds = %if.then25
  br label %while.end

if.end30:                                         ; preds = %if.end22
  %16 = load i8*, i8** %lockfile, align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %17 = load i32, i32* %tv_sec, align 8
  %call31 = call i32 @checklocktime(i8* %16, i32* %sleep_us, i32 %17)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end34:                                         ; preds = %if.end30
  br label %while.cond

while.end:                                        ; preds = %if.then33, %if.end29, %if.then20, %if.then18, %while.cond
  %18 = load i32, i32* %fd, align 4
  %cmp35 = icmp slt i32 %18, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  %19 = load i32, i32* @lockhistct, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* @lockhistct, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  %20 = load i8*, i8** %lnk, align 4
  call void @free(i8* %20)
  %21 = load i8*, i8** %lockfile, align 4
  call void @free(i8* %21)
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  %22 = load i32, i32* %ct, align 4
  %23 = load i32, i32* @lockhistct, align 4
  %cmp39 = icmp eq i32 %22, %23
  br i1 %cmp39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end38
  %24 = load i32, i32* @flock_fd, align 4
  %cmp41 = icmp sge i32 %24, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then40
  %25 = load i32, i32* @flock_fd, align 4
  %call43 = call i32 @close(i32 %25)
  store i32 -1, i32* @flock_fd, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end38
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.end44, %if.then5, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind
define void @readhistfile(i8* %fn, i32 %err, i32 %readflags) #0 {
entry:
  %fn.addr = alloca i8*, align 4
  %err.addr = alloca i32, align 4
  %readflags.addr = alloca i32, align 4
  %buf = alloca i8*, align 4
  %start = alloca i8*, align 4
  %in = alloca %struct._IO_FILE*, align 4
  %he = alloca %struct.histent*, align 4
  %stim = alloca i32, align 4
  %ftim = alloca i32, align 4
  %tim = alloca i32, align 4
  %fpos = alloca i32, align 4
  %words = alloca i16*, align 4
  %sb = alloca %struct.stat, align 8
  %nwordpos = alloca i32, align 4
  %nwords = alloca i32, align 4
  %bufsiz = alloca i32, align 4
  %searching = alloca i32, align 4
  %newflags = alloca i32, align 4
  %l = alloca i32, align 4
  %ret = alloca i32, align 4
  %uselex = alloca i32, align 4
  %pt = alloca i8*, align 4
  %remeta = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 4
  store i32 %err, i32* %err.addr, align 4
  store i32 %readflags, i32* %readflags.addr, align 4
  store i8* null, i8** %start, align 4
  %call = call i32 @time(i32* null)
  store i32 %call, i32* %tim, align 4
  %0 = load i8*, i8** %fn.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call1, i8** %fn.addr, align 4
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %if.end242

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load i8*, i8** %fn.addr, align 4
  %call3 = call i8* @unmeta(i8* %1)
  %call4 = call i32 @stat(i8* %call3, %struct.stat* %sb)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 12
  %2 = load i32, i32* %st_size, align 8
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  br label %if.end242

if.end7:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %readflags.addr, align 4
  %and = and i32 %3, 16
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %4 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 4), align 4
  %st_size10 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 12
  %5 = load i32, i32* %st_size10, align 8
  %cmp11 = icmp eq i32 %4, %5
  br i1 %cmp11, label %land.lhs.true12, label %lor.lhs.false14

land.lhs.true12:                                  ; preds = %if.then9
  %6 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 2), align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %7 = load i32, i32* %tv_sec, align 8
  %cmp13 = icmp eq i32 %6, %7
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true12, %if.then9
  %8 = load i8*, i8** %fn.addr, align 4
  %call15 = call i32 @lockhistfile(i8* %8, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %land.lhs.true12
  br label %if.end242

if.end18:                                         ; preds = %lor.lhs.false14
  %st_size19 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 12
  %9 = load i32, i32* %st_size19, align 8
  store i32 %9, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 4), align 4
  %st_mtim20 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 19
  %tv_sec21 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim20, i32 0, i32 0
  %10 = load i32, i32* %tv_sec21, align 8
  store i32 %10, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 2), align 4
  br label %if.end32

if.else:                                          ; preds = %if.end7
  %11 = load i8*, i8** %fn.addr, align 4
  %call22 = call i32 @lockhistfile(i8* %11, i32 1)
  store i32 %call22, i32* %ret, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.else
  %12 = load i32, i32* %ret, align 4
  %cmp25 = icmp eq i32 %12, 2
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then24
  %13 = load i8*, i8** %fn.addr, align 4
  %call27 = call i32* @__errno_location()
  %14 = load i32, i32* %call27, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* %13, i32 %14)
  br label %if.end30

if.else28:                                        ; preds = %if.then24
  %15 = load i8*, i8** %fn.addr, align 4
  %call29 = call i32* @__errno_location()
  %16 = load i32, i32* %call29, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %15, i32 %16)
  br label %if.end242

if.end30:                                         ; preds = %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end18
  %17 = load i8*, i8** %fn.addr, align 4
  %call33 = call i8* @unmeta(i8* %17)
  %call34 = call %struct._IO_FILE* @fopen(i8* %call33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %in, align 4
  %tobool35 = icmp ne %struct._IO_FILE* %call34, null
  br i1 %tobool35, label %if.then36, label %if.else234

if.then36:                                        ; preds = %if.end32
  store i32 64, i32* %nwords, align 4
  %18 = load i32, i32* %nwords, align 4
  %mul = mul i32 %18, 2
  %call37 = call i8* @zalloc(i32 %mul)
  %19 = bitcast i8* %call37 to i16*
  store i16* %19, i16** %words, align 4
  store i32 1024, i32* %bufsiz, align 4
  %20 = load i32, i32* %bufsiz, align 4
  %call38 = call i8* @zalloc(i32 %20)
  store i8* %call38, i8** %buf, align 4
  call void @pushheap()
  %21 = load i32, i32* %readflags.addr, align 4
  %and39 = and i32 %21, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.else49

land.lhs.true41:                                  ; preds = %if.then36
  %22 = load i8*, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  %tobool42 = icmp ne i8* %22, null
  br i1 %tobool42, label %if.then43, label %if.else49

if.then43:                                        ; preds = %land.lhs.true41
  %23 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 3), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 4), align 4
  %cmp44 = icmp slt i32 %23, %24
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then43
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 3), align 4
  %call46 = call i32 @fseek(%struct._IO_FILE* %25, i32 %26, i32 0)
  store i32 1, i32* %searching, align 4
  br label %if.end48

if.else47:                                        ; preds = %if.then43
  store i32 0, i32* @histfile_linect, align 4
  store i32 -1, i32* %searching, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then45
  br label %if.end50

if.else49:                                        ; preds = %land.lhs.true41, %if.then36
  store i32 0, i32* %searching, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.end48
  store i32 6, i32* %newflags, align 4
  %27 = load i32, i32* %readflags.addr, align 4
  %and51 = and i32 %27, 16
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  %28 = load i32, i32* %newflags, align 4
  %or = or i32 %28, 16
  store i32 %or, i32* %newflags, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %29 = load i32, i32* %readflags.addr, align 4
  %and55 = and i32 %29, 2
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %30 = load i32, i32* @hist_ignore_all_dups, align 4
  %tobool58 = icmp ne i32 %30, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end64

land.lhs.true59:                                  ; preds = %lor.lhs.false57
  %31 = load i32, i32* %newflags, align 4
  %32 = load i32, i32* @hist_skip_flags, align 4
  %and60 = and i32 %31, %32
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true59, %if.end54
  %33 = load i32, i32* %newflags, align 4
  %or63 = or i32 %33, 1
  store i32 %or63, i32* %newflags, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true59, %lor.lhs.false57
  br label %while.cond

while.cond:                                       ; preds = %if.end224, %if.then162, %if.end158, %if.end64
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call65 = call i32 @ftell(%struct._IO_FILE* %34)
  store i32 %call65, i32* %fpos, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call66 = call i32 @readhistline(i32 0, i8** %buf, i32* %bufsiz, %struct._IO_FILE* %35)
  store i32 %call66, i32* %l, align 4
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %remeta, align 4
  %36 = load i32, i32* %l, align 4
  %cmp68 = icmp slt i32 %36, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %while.body
  %37 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* %37)
  br label %while.end

if.end70:                                         ; preds = %while.body
  %38 = load i8*, i8** %buf, align 4
  store i8* %38, i8** %pt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end70
  %39 = load i8*, i8** %pt, align 4
  %40 = load i8, i8* %39, align 1
  %tobool71 = icmp ne i8 %40, 0
  br i1 %tobool71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %pt, align 4
  %42 = load i8, i8* %41, align 1
  %conv = sext i8 %42 to i32
  %cmp72 = icmp eq i32 %conv, -125
  br i1 %cmp72, label %land.lhs.true74, label %if.else78

land.lhs.true74:                                  ; preds = %for.body
  %43 = load i8*, i8** %pt, align 4
  %arrayidx = getelementptr inbounds i8, i8* %43, i32 1
  %44 = load i8, i8* %arrayidx, align 1
  %conv75 = sext i8 %44 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %land.lhs.true74
  %45 = load i8*, i8** %pt, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %pt, align 4
  br label %if.end85

if.else78:                                        ; preds = %land.lhs.true74, %for.body
  %46 = load i8*, i8** %pt, align 4
  %47 = load i8, i8* %46, align 1
  %idxprom = zext i8 %47 to i32
  %arrayidx79 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %48 = load i16, i16* %arrayidx79, align 2
  %conv80 = sext i16 %48 to i32
  %and81 = and i32 %conv80, 4096
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else78
  store i32 1, i32* %remeta, align 4
  br label %for.end

if.end84:                                         ; preds = %if.else78
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then77
  br label %for.inc

for.inc:                                          ; preds = %if.end85
  %49 = load i8*, i8** %pt, align 4
  %incdec.ptr86 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr86, i8** %pt, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then83, %for.cond
  %50 = load i32, i32* %remeta, align 4
  %tobool87 = icmp ne i32 %50, 0
  br i1 %tobool87, label %if.then88, label %if.else91

if.then88:                                        ; preds = %for.end
  %51 = load i8*, i8** %buf, align 4
  %call89 = call i8* @unmetafy(i8* %51, i32* %remeta)
  %52 = load i8*, i8** %buf, align 4
  %53 = load i32, i32* %remeta, align 4
  %call90 = call i8* @metafy(i8* %52, i32 %53, i32 1)
  store i8* %call90, i8** %pt, align 4
  br label %if.end92

if.else91:                                        ; preds = %for.end
  %54 = load i8*, i8** %buf, align 4
  store i8* %54, i8** %pt, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then88
  %55 = load i8*, i8** %pt, align 4
  %56 = load i8, i8* %55, align 1
  %conv93 = sext i8 %56 to i32
  %cmp94 = icmp eq i32 %conv93, 58
  br i1 %cmp94, label %if.then96, label %if.else131

if.then96:                                        ; preds = %if.end92
  %57 = load i8*, i8** %pt, align 4
  %incdec.ptr97 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr97, i8** %pt, align 4
  %58 = load i8*, i8** %pt, align 4
  %call98 = call i32 @zstrtol(i8* %58, i8** null, i32 0)
  store i32 %call98, i32* %stim, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc106, %if.then96
  %59 = load i8*, i8** %pt, align 4
  %60 = load i8, i8* %59, align 1
  %conv100 = sext i8 %60 to i32
  %cmp101 = icmp ne i32 %conv100, 58
  br i1 %cmp101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond99
  %61 = load i8*, i8** %pt, align 4
  %62 = load i8, i8* %61, align 1
  %conv103 = sext i8 %62 to i32
  %tobool104 = icmp ne i32 %conv103, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond99
  %63 = phi i1 [ false, %for.cond99 ], [ %tobool104, %land.rhs ]
  br i1 %63, label %for.body105, label %for.end108

for.body105:                                      ; preds = %land.end
  br label %for.inc106

for.inc106:                                       ; preds = %for.body105
  %64 = load i8*, i8** %pt, align 4
  %incdec.ptr107 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr107, i8** %pt, align 4
  br label %for.cond99

for.end108:                                       ; preds = %land.end
  %65 = load i8*, i8** %pt, align 4
  %66 = load i8, i8* %65, align 1
  %tobool109 = icmp ne i8 %66, 0
  br i1 %tobool109, label %if.then110, label %if.else129

if.then110:                                       ; preds = %for.end108
  %67 = load i8*, i8** %pt, align 4
  %incdec.ptr111 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr111, i8** %pt, align 4
  %68 = load i8*, i8** %pt, align 4
  %call112 = call i32 @zstrtol(i8* %68, i8** null, i32 0)
  store i32 %call112, i32* %ftim, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc122, %if.then110
  %69 = load i8*, i8** %pt, align 4
  %70 = load i8, i8* %69, align 1
  %conv114 = sext i8 %70 to i32
  %cmp115 = icmp ne i32 %conv114, 59
  br i1 %cmp115, label %land.rhs117, label %land.end120

land.rhs117:                                      ; preds = %for.cond113
  %71 = load i8*, i8** %pt, align 4
  %72 = load i8, i8* %71, align 1
  %conv118 = sext i8 %72 to i32
  %tobool119 = icmp ne i32 %conv118, 0
  br label %land.end120

land.end120:                                      ; preds = %land.rhs117, %for.cond113
  %73 = phi i1 [ false, %for.cond113 ], [ %tobool119, %land.rhs117 ]
  br i1 %73, label %for.body121, label %for.end124

for.body121:                                      ; preds = %land.end120
  br label %for.inc122

for.inc122:                                       ; preds = %for.body121
  %74 = load i8*, i8** %pt, align 4
  %incdec.ptr123 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr123, i8** %pt, align 4
  br label %for.cond113

for.end124:                                       ; preds = %land.end120
  %75 = load i8*, i8** %pt, align 4
  %76 = load i8, i8* %75, align 1
  %tobool125 = icmp ne i8 %76, 0
  br i1 %tobool125, label %if.then126, label %if.end128

if.then126:                                       ; preds = %for.end124
  %77 = load i8*, i8** %pt, align 4
  %incdec.ptr127 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr127, i8** %pt, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %for.end124
  br label %if.end130

if.else129:                                       ; preds = %for.end108
  %78 = load i32, i32* %stim, align 4
  store i32 %78, i32* %ftim, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %if.end128
  br label %if.end143

if.else131:                                       ; preds = %if.end92
  %79 = load i8*, i8** %pt, align 4
  %80 = load i8, i8* %79, align 1
  %conv132 = sext i8 %80 to i32
  %cmp133 = icmp eq i32 %conv132, 92
  br i1 %cmp133, label %land.lhs.true135, label %if.end142

land.lhs.true135:                                 ; preds = %if.else131
  %81 = load i8*, i8** %pt, align 4
  %arrayidx136 = getelementptr inbounds i8, i8* %81, i32 1
  %82 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %82 to i32
  %cmp138 = icmp eq i32 %conv137, 58
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %land.lhs.true135
  %83 = load i8*, i8** %pt, align 4
  %incdec.ptr141 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr141, i8** %pt, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %land.lhs.true135, %if.else131
  store i32 0, i32* %ftim, align 4
  store i32 0, i32* %stim, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end130
  %84 = load i32, i32* %searching, align 4
  %tobool144 = icmp ne i32 %84, 0
  br i1 %tobool144, label %if.then145, label %if.end165

if.then145:                                       ; preds = %if.end143
  %85 = load i32, i32* %searching, align 4
  %cmp146 = icmp sgt i32 %85, 0
  br i1 %cmp146, label %if.then148, label %if.else159

if.then148:                                       ; preds = %if.then145
  %86 = load i32, i32* %stim, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 1), align 4
  %cmp149 = icmp eq i32 %86, %87
  br i1 %cmp149, label %land.lhs.true151, label %if.else156

land.lhs.true151:                                 ; preds = %if.then148
  %88 = load i8*, i8** %pt, align 4
  %89 = load i8*, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  %call152 = call i32 @histstrcmp(i8* %88, i8* %89)
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %land.lhs.true151
  store i32 0, i32* %searching, align 4
  br label %if.end158

if.else156:                                       ; preds = %land.lhs.true151, %if.then148
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call157 = call i32 @fseek(%struct._IO_FILE* %90, i32 0, i32 0)
  store i32 0, i32* @histfile_linect, align 4
  store i32 -1, i32* %searching, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.then155
  br label %while.cond

if.else159:                                       ; preds = %if.then145
  %91 = load i32, i32* %stim, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 1), align 4
  %cmp160 = icmp slt i32 %91, %92
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.else159
  %93 = load i32, i32* @histfile_linect, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* @histfile_linect, align 4
  br label %while.cond

if.end163:                                        ; preds = %if.else159
  br label %if.end164

if.end164:                                        ; preds = %if.end163
  store i32 0, i32* %searching, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end143
  %94 = load i32, i32* %readflags.addr, align 4
  %and166 = and i32 %94, 32768
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.end165
  %95 = load i32, i32* @histfile_linect, align 4
  %inc169 = add nsw i32 %95, 1
  store i32 %inc169, i32* @histfile_linect, align 4
  %96 = load i32, i32* %fpos, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 3), align 4
  %97 = load i32, i32* %stim, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 1), align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.end165
  %call171 = call %struct.histent* @prepnexthistent()
  store %struct.histent* %call171, %struct.histent** %he, align 4
  %98 = load i8*, i8** %pt, align 4
  %call172 = call i8* @ztrdup(i8* %98)
  %99 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %99, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call172, i8** %nam, align 4
  %100 = load i32, i32* %newflags, align 4
  %101 = load %struct.histent*, %struct.histent** %he, align 4
  %node173 = getelementptr inbounds %struct.histent, %struct.histent* %101, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node173, i32 0, i32 2
  store i32 %100, i32* %flags, align 4
  %102 = load i32, i32* %stim, align 4
  %103 = load %struct.histent*, %struct.histent** %he, align 4
  %stim174 = getelementptr inbounds %struct.histent, %struct.histent* %103, i32 0, i32 4
  store i32 %102, i32* %stim174, align 4
  %cmp175 = icmp eq i32 %102, 0
  br i1 %cmp175, label %if.then177, label %if.else180

if.then177:                                       ; preds = %if.end170
  %104 = load i32, i32* %tim, align 4
  %105 = load %struct.histent*, %struct.histent** %he, align 4
  %ftim178 = getelementptr inbounds %struct.histent, %struct.histent* %105, i32 0, i32 5
  store i32 %104, i32* %ftim178, align 4
  %106 = load %struct.histent*, %struct.histent** %he, align 4
  %stim179 = getelementptr inbounds %struct.histent, %struct.histent* %106, i32 0, i32 4
  store i32 %104, i32* %stim179, align 4
  br label %if.end188

if.else180:                                       ; preds = %if.end170
  %107 = load i32, i32* %ftim, align 4
  %108 = load i32, i32* %stim, align 4
  %cmp181 = icmp slt i32 %107, %108
  br i1 %cmp181, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.else180
  %109 = load i32, i32* %stim, align 4
  %110 = load i32, i32* %ftim, align 4
  %add = add nsw i32 %109, %110
  %111 = load %struct.histent*, %struct.histent** %he, align 4
  %ftim184 = getelementptr inbounds %struct.histent, %struct.histent* %111, i32 0, i32 5
  store i32 %add, i32* %ftim184, align 4
  br label %if.end187

if.else185:                                       ; preds = %if.else180
  %112 = load i32, i32* %ftim, align 4
  %113 = load %struct.histent*, %struct.histent** %he, align 4
  %ftim186 = getelementptr inbounds %struct.histent, %struct.histent* %113, i32 0, i32 5
  store i32 %112, i32* %ftim186, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.else185, %if.then183
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.then177
  %114 = load i8*, i8** %pt, align 4
  store i8* %114, i8** %start, align 4
  %115 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 80), align 1
  %conv189 = sext i8 %115 to i32
  %tobool190 = icmp ne i32 %conv189, 0
  br i1 %tobool190, label %land.rhs191, label %land.end194

land.rhs191:                                      ; preds = %if.end188
  %116 = load i32, i32* %readflags.addr, align 4
  %and192 = and i32 %116, 16
  %tobool193 = icmp ne i32 %and192, 0
  %lnot = xor i1 %tobool193, true
  br label %land.end194

land.end194:                                      ; preds = %land.rhs191, %if.end188
  %117 = phi i1 [ false, %if.end188 ], [ %lnot, %land.rhs191 ]
  %land.ext = zext i1 %117 to i32
  store i32 %land.ext, i32* %uselex, align 4
  %118 = load i8*, i8** %pt, align 4
  %119 = load i32, i32* %uselex, align 4
  call void @histsplitwords(i8* %118, i16** %words, i32* %nwords, i32* %nwordpos, i32 %119)
  %120 = load i32, i32* %nwordpos, align 4
  %div = sdiv i32 %120, 2
  %121 = load %struct.histent*, %struct.histent** %he, align 4
  %nwords195 = getelementptr inbounds %struct.histent, %struct.histent* %121, i32 0, i32 7
  store i32 %div, i32* %nwords195, align 4
  %122 = load %struct.histent*, %struct.histent** %he, align 4
  %nwords196 = getelementptr inbounds %struct.histent, %struct.histent* %122, i32 0, i32 7
  %123 = load i32, i32* %nwords196, align 4
  %tobool197 = icmp ne i32 %123, 0
  br i1 %tobool197, label %if.then198, label %if.else204

if.then198:                                       ; preds = %land.end194
  %124 = load i32, i32* %nwordpos, align 4
  %mul199 = mul i32 %124, 2
  %call200 = call i8* @zalloc(i32 %mul199)
  %125 = bitcast i8* %call200 to i16*
  %126 = load %struct.histent*, %struct.histent** %he, align 4
  %words201 = getelementptr inbounds %struct.histent, %struct.histent* %126, i32 0, i32 6
  store i16* %125, i16** %words201, align 4
  %127 = load %struct.histent*, %struct.histent** %he, align 4
  %words202 = getelementptr inbounds %struct.histent, %struct.histent* %127, i32 0, i32 6
  %128 = load i16*, i16** %words202, align 4
  %129 = bitcast i16* %128 to i8*
  %130 = load i16*, i16** %words, align 4
  %131 = bitcast i16* %130 to i8*
  %132 = load i32, i32* %nwordpos, align 4
  %mul203 = mul i32 %132, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %129, i8* %131, i32 %mul203, i32 2, i1 false)
  br label %if.end206

if.else204:                                       ; preds = %land.end194
  %133 = load %struct.histent*, %struct.histent** %he, align 4
  %words205 = getelementptr inbounds %struct.histent, %struct.histent* %133, i32 0, i32 6
  store i16* null, i16** %words205, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.else204, %if.then198
  %134 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %135 = load %struct.histent*, %struct.histent** %he, align 4
  %node207 = getelementptr inbounds %struct.histent, %struct.histent* %135, i32 0, i32 0
  %nam208 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node207, i32 0, i32 1
  %136 = load i8*, i8** %nam208, align 4
  %137 = load %struct.histent*, %struct.histent** %he, align 4
  %138 = bitcast %struct.histent* %137 to i8*
  call void @addhistnode(%struct.hashtable* %134, i8* %136, i8* %138)
  %139 = load %struct.histent*, %struct.histent** %he, align 4
  %node209 = getelementptr inbounds %struct.histent, %struct.histent* %139, i32 0, i32 0
  %flags210 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node209, i32 0, i32 2
  %140 = load i32, i32* %flags210, align 4
  %and211 = and i32 %140, 8
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then213, label %if.end215

if.then213:                                       ; preds = %if.end206
  %141 = load %struct.histent*, %struct.histent** %he, align 4
  %node214 = getelementptr inbounds %struct.histent, %struct.histent* %141, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node214)
  %142 = load i32, i32* @curhist, align 4
  %dec = add nsw i32 %142, -1
  store i32 %dec, i32* @curhist, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %if.end206
  %143 = load i32, i32* %uselex, align 4
  %tobool216 = icmp ne i32 %143, 0
  br i1 %tobool216, label %if.then219, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %if.end215
  %144 = load i32, i32* %remeta, align 4
  %tobool218 = icmp ne i32 %144, 0
  br i1 %tobool218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %lor.lhs.false217, %if.end215
  call void @freeheap()
  br label %if.end220

if.end220:                                        ; preds = %if.then219, %lor.lhs.false217
  %145 = load i32, i32* @errflag, align 4
  %and221 = and i32 %145, 2
  %tobool222 = icmp ne i32 %and221, 0
  br i1 %tobool222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end220
  br label %while.end

if.end224:                                        ; preds = %if.end220
  br label %while.cond

while.end:                                        ; preds = %if.then223, %if.then69, %while.cond
  %146 = load i8*, i8** %start, align 4
  %tobool225 = icmp ne i8* %146, null
  br i1 %tobool225, label %land.lhs.true226, label %if.end231

land.lhs.true226:                                 ; preds = %while.end
  %147 = load i32, i32* %readflags.addr, align 4
  %and227 = and i32 %147, 32768
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then229, label %if.end231

if.then229:                                       ; preds = %land.lhs.true226
  %148 = load i8*, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  call void @zsfree(i8* %148)
  %149 = load i8*, i8** %start, align 4
  %call230 = call i8* @ztrdup(i8* %149)
  store i8* %call230, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %land.lhs.true226, %while.end
  %150 = load i16*, i16** %words, align 4
  %151 = bitcast i16* %150 to i8*
  %152 = load i32, i32* %nwords, align 4
  %mul232 = mul i32 %152, 2
  call void @zfree(i8* %151, i32 %mul232)
  %153 = load i8*, i8** %buf, align 4
  %154 = load i32, i32* %bufsiz, align 4
  call void @zfree(i8* %153, i32 %154)
  call void @popheap()
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 4
  %call233 = call i32 @fclose(%struct._IO_FILE* %155)
  br label %if.end238

if.else234:                                       ; preds = %if.end32
  %156 = load i32, i32* %err.addr, align 4
  %tobool235 = icmp ne i32 %156, 0
  br i1 %tobool235, label %if.then236, label %if.end237

if.then236:                                       ; preds = %if.else234
  %157 = load i8*, i8** %fn.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* %157)
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %if.else234
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.end231
  %158 = load i8*, i8** %fn.addr, align 4
  call void @unlockhistfile(i8* %158)
  %159 = load i32, i32* @zleactive, align 4
  %tobool239 = icmp ne i32 %159, 0
  br i1 %tobool239, label %if.then240, label %if.end242

if.then240:                                       ; preds = %if.end238
  %160 = load i32, i32* @curhist, align 4
  %call241 = call i8* (i32, ...) @zleentry(i32 8, i32 %160)
  br label %if.end242

if.end242:                                        ; preds = %if.then, %if.then6, %if.then17, %if.else28, %if.then240, %if.end238
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @should_ignore_line(%struct.eprog* %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.eprog*, align 4
  %pc = alloca i32*, align 4
  %code = alloca i32, align 4
  %b = alloca i8*, align 4
  %saw_builtin = alloca i32, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 79), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @chline, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* @aliasspaceflag, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %4 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %tobool5 = icmp ne %struct.eprog* %4, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 81), align 1
  %tobool8 = icmp ne i8 %5, 0
  br i1 %tobool8, label %if.then9, label %if.end21

if.then9:                                         ; preds = %if.end7
  %6 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %prog10 = getelementptr inbounds %struct.eprog, %struct.eprog* %6, i32 0, i32 5
  %7 = load i32*, i32** %prog10, align 4
  store i32* %7, i32** %pc, align 4
  %8 = load i32*, i32** %pc, align 4
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  %and = and i32 %10, 31
  %cmp11 = icmp eq i32 %and, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.then9
  %11 = load i32, i32* %code, align 4
  %shr = lshr i32 %11, 5
  %and13 = and i32 %shr, 32
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %12 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %12, i32 2
  %13 = load i32, i32* %arrayidx, align 4
  %and16 = and i32 %13, 31
  %cmp17 = icmp eq i32 %and16, 11
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true15
  store i32 1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true15, %land.lhs.true, %if.then9
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end7
  %14 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 82), align 1
  %tobool22 = icmp ne i8 %14, 0
  br i1 %tobool22, label %if.then23, label %if.end110

if.then23:                                        ; preds = %if.end21
  %15 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %call = call i8* @getjobtext(%struct.eprog* %15, i32* null)
  store i8* %call, i8** %b, align 4
  %16 = load i8*, i8** %b, align 4
  %17 = load i8, i8* %16, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp eq i32 %conv24, 98
  br i1 %cmp25, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %if.then23
  %18 = load i8*, i8** %b, align 4
  %call28 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 8)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %land.lhs.true27
  %19 = load i8*, i8** %b, align 4
  %add.ptr = getelementptr inbounds i8, i8* %19, i32 8
  store i8* %add.ptr, i8** %b, align 4
  store i32 1, i32* %saw_builtin, align 4
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true27, %if.then23
  store i32 0, i32* %saw_builtin, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  %20 = load i8*, i8** %b, align 4
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 104
  br i1 %cmp34, label %land.lhs.true36, label %if.end54

land.lhs.true36:                                  ; preds = %if.end32
  %22 = load i8*, i8** %b, align 4
  %call37 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 7)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end54

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %23 = load i8*, i8** %b, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %23, i32 7
  %24 = load i8, i8* %arrayidx41, align 1
  %tobool42 = icmp ne i8 %24, 0
  br i1 %tobool42, label %lor.lhs.false43, label %land.lhs.true48

lor.lhs.false43:                                  ; preds = %land.lhs.true40
  %25 = load i8*, i8** %b, align 4
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i32 7
  %26 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %26 to i32
  %cmp46 = icmp eq i32 %conv45, 32
  br i1 %cmp46, label %land.lhs.true48, label %if.end54

land.lhs.true48:                                  ; preds = %lor.lhs.false43, %land.lhs.true40
  %27 = load i32, i32* %saw_builtin, align 4
  %tobool49 = icmp ne i32 %27, 0
  br i1 %tobool49, label %if.then53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %land.lhs.true48
  %28 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 9
  %29 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %30 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %call51 = call %struct.hashnode* %29(%struct.hashtable* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0))
  %tobool52 = icmp ne %struct.hashnode* %call51, null
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %lor.lhs.false50, %land.lhs.true48
  store i32 1, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %lor.lhs.false50, %lor.lhs.false43, %land.lhs.true36, %if.end32
  %31 = load i8*, i8** %b, align 4
  %32 = load i8, i8* %31, align 1
  %conv55 = sext i8 %32 to i32
  %cmp56 = icmp eq i32 %conv55, 114
  br i1 %cmp56, label %land.lhs.true58, label %if.end73

land.lhs.true58:                                  ; preds = %if.end54
  %33 = load i8*, i8** %b, align 4
  %arrayidx59 = getelementptr inbounds i8, i8* %33, i32 1
  %34 = load i8, i8* %arrayidx59, align 1
  %tobool60 = icmp ne i8 %34, 0
  br i1 %tobool60, label %lor.lhs.false61, label %land.lhs.true66

lor.lhs.false61:                                  ; preds = %land.lhs.true58
  %35 = load i8*, i8** %b, align 4
  %arrayidx62 = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %36 to i32
  %cmp64 = icmp eq i32 %conv63, 32
  br i1 %cmp64, label %land.lhs.true66, label %if.end73

land.lhs.true66:                                  ; preds = %lor.lhs.false61, %land.lhs.true58
  %37 = load i32, i32* %saw_builtin, align 4
  %tobool67 = icmp ne i32 %37, 0
  br i1 %tobool67, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.lhs.true66
  %38 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode69 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 9
  %39 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode69, align 4
  %40 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %call70 = call %struct.hashnode* %39(%struct.hashtable* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %tobool71 = icmp ne %struct.hashnode* %call70, null
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %lor.lhs.false68, %land.lhs.true66
  store i32 1, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %lor.lhs.false68, %lor.lhs.false61, %if.end54
  %41 = load i8*, i8** %b, align 4
  %42 = load i8, i8* %41, align 1
  %conv74 = sext i8 %42 to i32
  %cmp75 = icmp eq i32 %conv74, 102
  br i1 %cmp75, label %land.lhs.true77, label %if.end109

land.lhs.true77:                                  ; preds = %if.end73
  %43 = load i8*, i8** %b, align 4
  %arrayidx78 = getelementptr inbounds i8, i8* %43, i32 1
  %44 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %44 to i32
  %cmp80 = icmp eq i32 %conv79, 99
  br i1 %cmp80, label %land.lhs.true82, label %if.end109

land.lhs.true82:                                  ; preds = %land.lhs.true77
  %45 = load i8*, i8** %b, align 4
  %arrayidx83 = getelementptr inbounds i8, i8* %45, i32 2
  %46 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %46 to i32
  %cmp85 = icmp eq i32 %conv84, 32
  br i1 %cmp85, label %land.lhs.true87, label %if.end109

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %47 = load i8*, i8** %b, align 4
  %arrayidx88 = getelementptr inbounds i8, i8* %47, i32 3
  %48 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %48 to i32
  %cmp90 = icmp eq i32 %conv89, 45
  br i1 %cmp90, label %land.lhs.true92, label %if.end109

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %49 = load i32, i32* %saw_builtin, align 4
  %tobool93 = icmp ne i32 %49, 0
  br i1 %tobool93, label %if.then98, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true92
  %50 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode95 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %50, i32 0, i32 9
  %51 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode95, align 4
  %52 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %call96 = call %struct.hashnode* %51(%struct.hashtable* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  %tobool97 = icmp ne %struct.hashnode* %call96, null
  br i1 %tobool97, label %if.end109, label %if.then98

if.then98:                                        ; preds = %lor.lhs.false94, %land.lhs.true92
  %53 = load i8*, i8** %b, align 4
  %add.ptr99 = getelementptr inbounds i8, i8* %53, i32 3
  store i8* %add.ptr99, i8** %b, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then98
  %54 = load i8*, i8** %b, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %b, align 4
  %55 = load i8, i8* %incdec.ptr, align 1
  %conv100 = sext i8 %55 to i32
  %cmp101 = icmp eq i32 %conv100, 108
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end104
  %56 = load i8*, i8** %b, align 4
  %57 = load i8, i8* %56, align 1
  %idxprom = zext i8 %57 to i32
  %arrayidx105 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %58 = load i16, i16* %arrayidx105, align 2
  %conv106 = sext i16 %58 to i32
  %and107 = and i32 %conv106, 64
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end109

if.end109:                                        ; preds = %do.end, %lor.lhs.false94, %land.lhs.true87, %land.lhs.true82, %land.lhs.true77, %if.end73
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end21
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end110, %if.then103, %if.then72, %if.then53, %if.then19, %if.then6, %if.then3
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

declare i8* @ztrdup(i8*) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare void @zsfree(i8*) #1

declare i32 @histstrcmp(i8*, i8*) #1

declare void @addhistnode(%struct.hashtable*, i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @histfileIsLocked() #0 {
entry:
  %0 = load i32, i32* @lockhistct, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define void @unlockhistfile(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 4
  %lockfile = alloca i8*, align 4
  store i8* %fn, i8** %fn.addr, align 4
  %0 = load i8*, i8** %fn.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %fn.addr, align 4
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %if.end16

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load i32, i32* @lockhistct, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @lockhistct, align 4
  %tobool2 = icmp ne i32 %dec, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load i32, i32* @lockhistct, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then3
  store i32 0, i32* @lockhistct, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then3
  br label %if.end16

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %fn.addr, align 4
  %call6 = call i8* @unmeta(i8* %3)
  store i8* %call6, i8** %fn.addr, align 4
  %4 = load i8*, i8** %fn.addr, align 4
  %call7 = call i32 @strlen(i8* %4)
  %add = add i32 %call7, 5
  %add8 = add i32 %add, 1
  %call9 = call i8* @zalloc(i32 %add8)
  store i8* %call9, i8** %lockfile, align 4
  %5 = load i8*, i8** %lockfile, align 4
  %6 = load i8*, i8** %fn.addr, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %lockfile, align 4
  %call11 = call i32 @unlink(i8* %7)
  %8 = load i8*, i8** %lockfile, align 4
  call void @free(i8* %8)
  %9 = load i32, i32* @flock_fd, align 4
  %cmp12 = icmp sge i32 %9, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %10 = load i32, i32* @flock_fd, align 4
  %call14 = call i32 @close(i32 %10)
  store i32 -1, i32* @flock_fd, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.end15, %if.end5
  ret void
}

; Function Attrs: noinline nounwind
define i32 @pophiststack() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca %struct.histsave*, align 4
  %curline_in_ring = alloca i32, align 4
  %0 = load i32, i32* @histactive, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %1, @curline
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %curline_in_ring, align 4
  %3 = load i32, i32* @histsave_stack_pos, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.end
  %4 = load i32, i32* %curline_in_ring, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @unlinkcurline()
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  call void @deletehashtable(%struct.hashtable* %5)
  %6 = load i8*, i8** getelementptr inbounds (%struct.histfile_stats, %struct.histfile_stats* @lasthist, i32 0, i32 0), align 4
  call void @zsfree(i8* %6)
  %7 = load %struct.histsave*, %struct.histsave** @histsave_stack, align 4
  %8 = load i32, i32* @histsave_stack_pos, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @histsave_stack_pos, align 4
  %arrayidx = getelementptr inbounds %struct.histsave, %struct.histsave* %7, i32 %dec
  store %struct.histsave* %arrayidx, %struct.histsave** %h, align 4
  %9 = load %struct.histsave*, %struct.histsave** %h, align 4
  %lasthist = getelementptr inbounds %struct.histsave, %struct.histsave* %9, i32 0, i32 0
  %10 = bitcast %struct.histfile_stats* %lasthist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.histfile_stats* @lasthist to i8*), i8* %10, i32 24, i32 4, i1 false)
  %11 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile = getelementptr inbounds %struct.histsave, %struct.histsave* %11, i32 0, i32 1
  %12 = load i8*, i8** %histfile, align 4
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %13 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile7 = getelementptr inbounds %struct.histsave, %struct.histsave* %13, i32 0, i32 1
  %14 = load i8*, i8** %histfile7, align 4
  %15 = load i8, i8* %14, align 1
  %tobool8 = icmp ne i8 %15, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %16 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile10 = getelementptr inbounds %struct.histsave, %struct.histsave* %16, i32 0, i32 1
  %17 = load i8*, i8** %histfile10, align 4
  %call = call %struct.param* @setsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %17)
  br label %if.end11

if.else:                                          ; preds = %if.then6
  call void @unsetparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %18 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histtab = getelementptr inbounds %struct.histsave, %struct.histsave* %18, i32 0, i32 2
  %19 = load %struct.hashtable*, %struct.hashtable** %histtab, align 4
  store %struct.hashtable* %19, %struct.hashtable** @histtab, align 4
  %20 = load %struct.histsave*, %struct.histsave** %h, align 4
  %hist_ring = getelementptr inbounds %struct.histsave, %struct.histsave* %20, i32 0, i32 3
  %21 = load %struct.histent*, %struct.histent** %hist_ring, align 4
  store %struct.histent* %21, %struct.histent** @hist_ring, align 4
  %22 = load %struct.histsave*, %struct.histsave** %h, align 4
  %curhist = getelementptr inbounds %struct.histsave, %struct.histsave* %22, i32 0, i32 4
  %23 = load i32, i32* %curhist, align 4
  store i32 %23, i32* @curhist, align 4
  %24 = load i32, i32* @zleactive, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %25 = load i32, i32* @curhist, align 4
  %call15 = call i8* (i32, ...) @zleentry(i32 8, i32 %25)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %26 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histlinect = getelementptr inbounds %struct.histsave, %struct.histsave* %26, i32 0, i32 5
  %27 = load i32, i32* %histlinect, align 4
  store i32 %27, i32* @histlinect, align 4
  %28 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histsiz = getelementptr inbounds %struct.histsave, %struct.histsave* %28, i32 0, i32 6
  %29 = load i32, i32* %histsiz, align 4
  store i32 %29, i32* @histsiz, align 4
  %30 = load %struct.histsave*, %struct.histsave** %h, align 4
  %savehistsiz = getelementptr inbounds %struct.histsave, %struct.histsave* %30, i32 0, i32 7
  %31 = load i32, i32* %savehistsiz, align 4
  store i32 %31, i32* @savehistsiz, align 4
  %32 = load i32, i32* %curline_in_ring, align 4
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @linkcurline()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  %33 = load i32, i32* @histsave_stack_pos, align 4
  %add = add nsw i32 %33, 1
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

declare i8* @realloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @histbackword() #0 {
entry:
  %0 = load i32, i32* @chwordpos, align 4
  %rem = srem i32 %0, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @chwordpos, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** @chline, align 4
  %3 = load i16*, i16** @chwords, align 4
  %4 = load i32, i32* @chwordpos, align 4
  %sub = sub nsw i32 %4, 1
  %arrayidx = getelementptr inbounds i16, i16* %3, i32 %sub
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 %conv
  store i8* %add.ptr, i8** @hptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @hwrep(i8* %rep) #0 {
entry:
  %rep.addr = alloca i8*, align 4
  %start = alloca i8*, align 4
  store i8* %rep, i8** %rep.addr, align 4
  call void @hwget(i8** %start)
  %0 = load i8*, i8** %rep.addr, align 4
  %1 = load i8*, i8** %start, align 4
  %call = call i32 @strcmp(i8* %0, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %start, align 4
  store i8* %2, i8** @hptr, align 4
  %3 = load i32, i32* @chwordpos, align 4
  %sub = sub nsw i32 %3, 2
  store i32 %sub, i32* @chwordpos, align 4
  %4 = load void (i32)*, void (i32)** @hwbegin, align 4
  call void %4(i32 0)
  store i32 1, i32* @qbang, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i8*, i8** %rep.addr, align 4
  %6 = load i8, i8* %5, align 1
  %tobool1 = icmp ne i8 %6, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load void (i32)*, void (i32)** @hwaddc, align 4
  %8 = load i8*, i8** %rep.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %rep.addr, align 4
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  call void %7(i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load void ()*, void ()** @hwend, align 4
  call void %10()
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @hwget(i8** %startptr) #0 {
entry:
  %startptr.addr = alloca i8**, align 4
  %pos = alloca i32, align 4
  store i8** %startptr, i8*** %startptr.addr, align 4
  %0 = load i32, i32* @chwordpos, align 4
  %sub = sub nsw i32 %0, 2
  store i32 %sub, i32* %pos, align 4
  %1 = load i8*, i8** @chline, align 4
  %2 = load i16*, i16** @chwords, align 4
  %3 = load i32, i32* %pos, align 4
  %arrayidx = getelementptr inbounds i16, i16* %2, i32 %3
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %conv
  %5 = load i8**, i8*** %startptr.addr, align 4
  store i8* %add.ptr, i8** %5, align 4
  %6 = load i8*, i8** @chline, align 4
  %7 = load i16*, i16** @chwords, align 4
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i32 %inc
  %9 = load i16, i16* %arrayidx1, align 2
  %idxprom = sext i16 %9 to i32
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i32 %idxprom
  store i8 0, i8* %arrayidx2, align 1
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i8* @hgetline() #0 {
entry:
  %retval = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %0 = load i8*, i8** @chline, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @hptr, align 4
  %2 = load i8*, i8** @chline, align 4
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** @hptr, align 4
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** @chline, align 4
  %call = call i8* @dupstring(i8* %4)
  store i8* %call, i8** %ret, align 4
  %5 = load i8*, i8** @chline, align 4
  store i8* %5, i8** @hptr, align 4
  store i32 0, i32* @chwordpos, align 4
  %6 = load i8*, i8** %ret, align 4
  store i8* %6, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 4
  ret i8* %7
}

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define i32 @hcomsearch(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %he = alloca %struct.histent*, align 4
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %len, align 4
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %call1 = call %struct.histent* @up_histent(%struct.histent* %1)
  store %struct.histent* %call1, %struct.histent** %he, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool = icmp ne %struct.histent* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 16
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.histent*, %struct.histent** %he, align 4
  %node3 = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  %7 = load i8*, i8** %str.addr, align 4
  %8 = load i32, i32* %len, align 4
  %call4 = call i32 @strncmp(i8* %6, i8* %7, i32 %8)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %9 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %9, i32 0, i32 8
  %10 = load i32, i32* %histnum, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.then
  %11 = load %struct.histent*, %struct.histent** %he, align 4
  %call7 = call %struct.histent* @up_histent(%struct.histent* %11)
  store %struct.histent* %call7, %struct.histent** %he, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then5
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare i32 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @chabspath(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %current = alloca i8*, align 4
  %dest = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %junkptr.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call = call i8* @zgetcwd()
  %call3 = call i8* @metafy(i8* %call, i32 -1, i32 6)
  %6 = load i8**, i8*** %junkptr.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %call4 = call i8* @zhtricat(i8* %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  %8 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call4, i8** %8, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %9 = load i8**, i8*** %junkptr.addr, align 4
  %10 = load i8*, i8** %9, align 4
  store i8* %10, i8** %current, align 4
  %11 = load i8**, i8*** %junkptr.addr, align 4
  %12 = load i8*, i8** %11, align 4
  store i8* %12, i8** %dest, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end151, %if.end5
  %13 = load i8*, i8** %current, align 4
  %14 = load i8, i8* %13, align 1
  %conv6 = sext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.cond
  %15 = load i8*, i8** %current, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %current, align 4
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %dest, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr10, i8** %dest, align 4
  store i8 %16, i8* %17, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then9
  %18 = load i8*, i8** %current, align 4
  %19 = load i8, i8* %18, align 1
  %conv11 = sext i8 %19 to i32
  %cmp12 = icmp eq i32 %conv11, 47
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %current, align 4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr14, i8** %current, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end151

if.else:                                          ; preds = %for.cond
  %21 = load i8*, i8** %current, align 4
  %22 = load i8, i8* %21, align 1
  %tobool15 = icmp ne i8 %22, 0
  br i1 %tobool15, label %if.else26, label %if.then16

if.then16:                                        ; preds = %if.else
  br label %while.cond17

while.cond17:                                     ; preds = %while.body23, %if.then16
  %23 = load i8*, i8** %dest, align 4
  %24 = load i8**, i8*** %junkptr.addr, align 4
  %25 = load i8*, i8** %24, align 4
  %add.ptr = getelementptr inbounds i8, i8* %25, i32 1
  %cmp18 = icmp ugt i8* %23, %add.ptr
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond17
  %26 = load i8*, i8** %dest, align 4
  %arrayidx = getelementptr inbounds i8, i8* %26, i32 -1
  %27 = load i8, i8* %arrayidx, align 1
  %conv20 = sext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond17
  %28 = phi i1 [ false, %while.cond17 ], [ %cmp21, %land.rhs ]
  br i1 %28, label %while.body23, label %while.end25

while.body23:                                     ; preds = %land.end
  %29 = load i8*, i8** %dest, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr24, i8** %dest, align 4
  br label %while.cond17

while.end25:                                      ; preds = %land.end
  %30 = load i8*, i8** %dest, align 4
  store i8 0, i8* %30, align 1
  br label %for.end152

if.else26:                                        ; preds = %if.else
  %31 = load i8*, i8** %current, align 4
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i32 0
  %32 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %32 to i32
  %cmp29 = icmp eq i32 %conv28, 46
  br i1 %cmp29, label %land.lhs.true, label %if.else106

land.lhs.true:                                    ; preds = %if.else26
  %33 = load i8*, i8** %current, align 4
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i32 1
  %34 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %34 to i32
  %cmp33 = icmp eq i32 %conv32, 46
  br i1 %cmp33, label %land.lhs.true35, label %if.else106

land.lhs.true35:                                  ; preds = %land.lhs.true
  %35 = load i8*, i8** %current, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i32 2
  %36 = load i8, i8* %arrayidx36, align 1
  %tobool37 = icmp ne i8 %36, 0
  br i1 %tobool37, label %lor.lhs.false, label %if.then42

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %37 = load i8*, i8** %current, align 4
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i32 2
  %38 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %38 to i32
  %cmp40 = icmp eq i32 %conv39, 47
  br i1 %cmp40, label %if.then42, label %if.else106

if.then42:                                        ; preds = %lor.lhs.false, %land.lhs.true35
  %39 = load i8*, i8** %current, align 4
  %40 = load i8**, i8*** %junkptr.addr, align 4
  %41 = load i8*, i8** %40, align 4
  %cmp43 = icmp eq i8* %39, %41
  br i1 %cmp43, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.then42
  %42 = load i8*, i8** %dest, align 4
  %43 = load i8**, i8*** %junkptr.addr, align 4
  %44 = load i8*, i8** %43, align 4
  %cmp46 = icmp eq i8* %42, %44
  br i1 %cmp46, label %if.then48, label %if.else52

if.then48:                                        ; preds = %lor.lhs.false45, %if.then42
  %45 = load i8*, i8** %dest, align 4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr49, i8** %dest, align 4
  store i8 46, i8* %45, align 1
  %46 = load i8*, i8** %dest, align 4
  %incdec.ptr50 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr50, i8** %dest, align 4
  store i8 46, i8* %46, align 1
  %47 = load i8*, i8** %current, align 4
  %add.ptr51 = getelementptr inbounds i8, i8* %47, i32 2
  store i8* %add.ptr51, i8** %current, align 4
  br label %if.end105

if.else52:                                        ; preds = %lor.lhs.false45
  %48 = load i8*, i8** %dest, align 4
  %49 = load i8**, i8*** %junkptr.addr, align 4
  %50 = load i8*, i8** %49, align 4
  %add.ptr53 = getelementptr inbounds i8, i8* %50, i32 2
  %cmp54 = icmp ugt i8* %48, %add.ptr53
  br i1 %cmp54, label %land.lhs.true56, label %if.else64

land.lhs.true56:                                  ; preds = %if.else52
  %51 = load i8*, i8** %dest, align 4
  %add.ptr57 = getelementptr inbounds i8, i8* %51, i32 -3
  %call58 = call i32 @strncmp(i8* %add.ptr57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 3)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else64, label %if.then60

if.then60:                                        ; preds = %land.lhs.true56
  %52 = load i8*, i8** %dest, align 4
  %incdec.ptr61 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr61, i8** %dest, align 4
  store i8 46, i8* %52, align 1
  %53 = load i8*, i8** %dest, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr62, i8** %dest, align 4
  store i8 46, i8* %53, align 1
  %54 = load i8*, i8** %current, align 4
  %add.ptr63 = getelementptr inbounds i8, i8* %54, i32 2
  store i8* %add.ptr63, i8** %current, align 4
  br label %if.end104

if.else64:                                        ; preds = %land.lhs.true56, %if.else52
  %55 = load i8*, i8** %dest, align 4
  %56 = load i8**, i8*** %junkptr.addr, align 4
  %57 = load i8*, i8** %56, align 4
  %add.ptr65 = getelementptr inbounds i8, i8* %57, i32 1
  %cmp66 = icmp ugt i8* %55, %add.ptr65
  br i1 %cmp66, label %if.then68, label %if.else95

if.then68:                                        ; preds = %if.else64
  %58 = load i8*, i8** %dest, align 4
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %dest, align 4
  %incdec.ptr69 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %incdec.ptr69, i8** %dest, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc, %if.then68
  %60 = load i8*, i8** %dest, align 4
  %61 = load i8**, i8*** %junkptr.addr, align 4
  %62 = load i8*, i8** %61, align 4
  %add.ptr71 = getelementptr inbounds i8, i8* %62, i32 1
  %cmp72 = icmp ugt i8* %60, %add.ptr71
  br i1 %cmp72, label %land.rhs74, label %land.end79

land.rhs74:                                       ; preds = %for.cond70
  %63 = load i8*, i8** %dest, align 4
  %arrayidx75 = getelementptr inbounds i8, i8* %63, i32 -1
  %64 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %64 to i32
  %cmp77 = icmp ne i32 %conv76, 47
  br label %land.end79

land.end79:                                       ; preds = %land.rhs74, %for.cond70
  %65 = phi i1 [ false, %for.cond70 ], [ %cmp77, %land.rhs74 ]
  br i1 %65, label %for.body, label %for.end

for.body:                                         ; preds = %land.end79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i8*, i8** %dest, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %incdec.ptr80, i8** %dest, align 4
  br label %for.cond70

for.end:                                          ; preds = %land.end79
  %67 = load i8*, i8** %dest, align 4
  %arrayidx81 = getelementptr inbounds i8, i8* %67, i32 -1
  %68 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %68 to i32
  %cmp83 = icmp ne i32 %conv82, 47
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %for.end
  %69 = load i8*, i8** %dest, align 4
  %incdec.ptr86 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr86, i8** %dest, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %for.end
  %70 = load i8*, i8** %current, align 4
  %add.ptr88 = getelementptr inbounds i8, i8* %70, i32 2
  store i8* %add.ptr88, i8** %current, align 4
  %71 = load i8*, i8** %current, align 4
  %72 = load i8, i8* %71, align 1
  %conv89 = sext i8 %72 to i32
  %cmp90 = icmp eq i32 %conv89, 47
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end87
  %73 = load i8*, i8** %current, align 4
  %incdec.ptr93 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr93, i8** %current, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end87
  br label %if.end103

if.else95:                                        ; preds = %if.else64
  %74 = load i8*, i8** %dest, align 4
  %75 = load i8**, i8*** %junkptr.addr, align 4
  %76 = load i8*, i8** %75, align 4
  %add.ptr96 = getelementptr inbounds i8, i8* %76, i32 1
  %cmp97 = icmp eq i8* %74, %add.ptr96
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.else95
  %77 = load i8*, i8** %current, align 4
  %add.ptr100 = getelementptr inbounds i8, i8* %77, i32 2
  store i8* %add.ptr100, i8** %current, align 4
  br label %if.end102

if.else101:                                       ; preds = %if.else95
  store i32 0, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.then99
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end94
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then60
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then48
  br label %if.end149

if.else106:                                       ; preds = %lor.lhs.false, %land.lhs.true, %if.else26
  %78 = load i8*, i8** %current, align 4
  %arrayidx107 = getelementptr inbounds i8, i8* %78, i32 0
  %79 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %79 to i32
  %cmp109 = icmp eq i32 %conv108, 46
  br i1 %cmp109, label %land.lhs.true111, label %if.else127

land.lhs.true111:                                 ; preds = %if.else106
  %80 = load i8*, i8** %current, align 4
  %arrayidx112 = getelementptr inbounds i8, i8* %80, i32 1
  %81 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %81 to i32
  %cmp114 = icmp eq i32 %conv113, 47
  br i1 %cmp114, label %if.then119, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %land.lhs.true111
  %82 = load i8*, i8** %current, align 4
  %arrayidx117 = getelementptr inbounds i8, i8* %82, i32 1
  %83 = load i8, i8* %arrayidx117, align 1
  %tobool118 = icmp ne i8 %83, 0
  br i1 %tobool118, label %if.else127, label %if.then119

if.then119:                                       ; preds = %lor.lhs.false116, %land.lhs.true111
  br label %while.cond120

while.cond120:                                    ; preds = %while.body125, %if.then119
  %84 = load i8*, i8** %current, align 4
  %incdec.ptr121 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr121, i8** %current, align 4
  %85 = load i8, i8* %incdec.ptr121, align 1
  %conv122 = sext i8 %85 to i32
  %cmp123 = icmp eq i32 %conv122, 47
  br i1 %cmp123, label %while.body125, label %while.end126

while.body125:                                    ; preds = %while.cond120
  br label %while.cond120

while.end126:                                     ; preds = %while.cond120
  br label %if.end148

if.else127:                                       ; preds = %lor.lhs.false116, %if.else106
  br label %while.cond128

while.cond128:                                    ; preds = %if.end146, %if.else127
  %86 = load i8*, i8** %current, align 4
  %87 = load i8, i8* %86, align 1
  %conv129 = sext i8 %87 to i32
  %cmp130 = icmp ne i32 %conv129, 47
  br i1 %cmp130, label %land.rhs132, label %land.end136

land.rhs132:                                      ; preds = %while.cond128
  %88 = load i8*, i8** %current, align 4
  %89 = load i8, i8* %88, align 1
  %conv133 = sext i8 %89 to i32
  %cmp134 = icmp ne i32 %conv133, 0
  br label %land.end136

land.end136:                                      ; preds = %land.rhs132, %while.cond128
  %90 = phi i1 [ false, %while.cond128 ], [ %cmp134, %land.rhs132 ]
  br i1 %90, label %while.body137, label %while.end147

while.body137:                                    ; preds = %land.end136
  %91 = load i8*, i8** %current, align 4
  %incdec.ptr138 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr138, i8** %current, align 4
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %dest, align 4
  %incdec.ptr139 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr139, i8** %dest, align 4
  store i8 %92, i8* %93, align 1
  %conv140 = sext i8 %92 to i32
  %cmp141 = icmp eq i32 %conv140, -125
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %while.body137
  %94 = load i8*, i8** %current, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr144, i8** %current, align 4
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %dest, align 4
  %incdec.ptr145 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr145, i8** %dest, align 4
  store i8 %95, i8* %96, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %while.body137
  br label %while.cond128

while.end147:                                     ; preds = %land.end136
  br label %if.end148

if.end148:                                        ; preds = %while.end147, %while.end126
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end105
  br label %if.end150

if.end150:                                        ; preds = %if.end149
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %while.end
  br label %for.cond

for.end152:                                       ; preds = %while.end25
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end152, %if.else101, %if.then
  %97 = load i32, i32* %retval, align 4
  ret i32 %97
}

declare i8* @zhtricat(i8*, i8*, i8*) #1

declare i8* @metafy(i8*, i32, i32) #1

declare i8* @zgetcwd() #1

; Function Attrs: noinline nounwind
define i32 @chrealpath(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  %lastpos = alloca i8*, align 4
  %nonreal = alloca i8*, align 4
  %real = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %junkptr.addr, align 4
  %call = call i32 @chabspath(i8** %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i8**, i8*** %junkptr.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %7 = load i8**, i8*** %junkptr.addr, align 4
  %8 = load i8*, i8** %7, align 4
  %call7 = call i8* @unmetafy(i8* %8, i32* null)
  %9 = load i8**, i8*** %junkptr.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %call8 = call i8* @strend(i8* %10)
  store i8* %call8, i8** %lastpos, align 4
  %11 = load i8*, i8** %lastpos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %add.ptr, i8** %nonreal, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end6
  %12 = load i8**, i8*** %junkptr.addr, align 4
  %13 = load i8*, i8** %12, align 4
  %call9 = call i8* @realpath(i8* %13, i8* null)
  store i8* %call9, i8** %real, align 4
  %tobool10 = icmp ne i8* %call9, null
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  %call11 = call i32* @__errno_location()
  %14 = load i32, i32* %call11, align 4
  %cmp12 = icmp eq i32 %14, 22
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call14 = call i32* @__errno_location()
  %15 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %15, 12
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %16 = load i8*, i8** %nonreal, align 4
  %17 = load i8**, i8*** %junkptr.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %cmp19 = icmp eq i8* %16, %18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %while.end30

if.end22:                                         ; preds = %if.end18
  br label %while.cond23

while.cond23:                                     ; preds = %while.body29, %if.end22
  %19 = load i8*, i8** %nonreal, align 4
  %20 = load i8, i8* %19, align 1
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp ne i32 %conv24, 47
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond23
  %21 = load i8*, i8** %nonreal, align 4
  %22 = load i8**, i8*** %junkptr.addr, align 4
  %23 = load i8*, i8** %22, align 4
  %cmp27 = icmp uge i8* %21, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond23
  %24 = phi i1 [ false, %while.cond23 ], [ %cmp27, %land.rhs ]
  br i1 %24, label %while.body29, label %while.end

while.body29:                                     ; preds = %land.end
  %25 = load i8*, i8** %nonreal, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr, i8** %nonreal, align 4
  br label %while.cond23

while.end:                                        ; preds = %land.end
  %26 = load i8*, i8** %nonreal, align 4
  store i8 0, i8* %26, align 1
  br label %while.cond

while.end30:                                      ; preds = %if.then21, %while.cond
  %27 = load i8*, i8** %nonreal, align 4
  store i8* %27, i8** %str, align 4
  br label %while.cond31

while.cond31:                                     ; preds = %if.end39, %while.end30
  %28 = load i8*, i8** %str, align 4
  %29 = load i8*, i8** %lastpos, align 4
  %cmp32 = icmp ule i8* %28, %29
  br i1 %cmp32, label %while.body34, label %while.end41

while.body34:                                     ; preds = %while.cond31
  %30 = load i8*, i8** %str, align 4
  %31 = load i8, i8* %30, align 1
  %conv35 = sext i8 %31 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %while.body34
  %32 = load i8*, i8** %str, align 4
  store i8 47, i8* %32, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.body34
  %33 = load i8*, i8** %str, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr40, i8** %str, align 4
  br label %while.cond31

while.end41:                                      ; preds = %while.cond31
  %34 = load i8*, i8** %real, align 4
  %tobool42 = icmp ne i8* %34, null
  br i1 %tobool42, label %if.then43, label %if.else

if.then43:                                        ; preds = %while.end41
  %35 = load i8*, i8** %real, align 4
  %36 = load i8*, i8** %nonreal, align 4
  %call44 = call i8* @bicat(i8* %35, i8* %36)
  store i8* %call44, i8** %str, align 4
  %call45 = call i8* @metafy(i8* %call44, i32 -1, i32 6)
  %37 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call45, i8** %37, align 4
  %38 = load i8*, i8** %str, align 4
  call void @zsfree(i8* %38)
  %39 = load i8*, i8** %real, align 4
  call void @free(i8* %39)
  br label %if.end47

if.else:                                          ; preds = %while.end41
  %40 = load i8*, i8** %nonreal, align 4
  %41 = load i8*, i8** %lastpos, align 4
  %42 = load i8*, i8** %nonreal, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i32 %sub.ptr.sub, 1
  %call46 = call i8* @metafy(i8* %40, i32 %add, i32 6)
  %43 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call46, i8** %43, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then17, %if.then5, %if.then2, %if.then
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @strend(i8*) #1

declare i8* @realpath(i8*, i8*) #1

declare i32* @__errno_location() #1

declare i8* @bicat(i8*, i8*) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind
define i32 @remtpath(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @strend(i8* %1)
  store i8* %call, i8** %str, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %str, align 4
  %3 = load i8**, i8*** %junkptr.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %cmp = icmp uge i8* %2, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %str, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond3

while.cond3:                                      ; preds = %while.body11, %while.end
  %9 = load i8*, i8** %str, align 4
  %10 = load i8**, i8*** %junkptr.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %cmp4 = icmp uge i8* %9, %11
  br i1 %cmp4, label %land.rhs6, label %land.end10

land.rhs6:                                        ; preds = %while.cond3
  %12 = load i8*, i8** %str, align 4
  %13 = load i8, i8* %12, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  %lnot = xor i1 %cmp8, true
  br label %land.end10

land.end10:                                       ; preds = %land.rhs6, %while.cond3
  %14 = phi i1 [ false, %while.cond3 ], [ %lnot, %land.rhs6 ]
  br i1 %14, label %while.body11, label %while.end13

while.body11:                                     ; preds = %land.end10
  %15 = load i8*, i8** %str, align 4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr12, i8** %str, align 4
  br label %while.cond3

while.end13:                                      ; preds = %land.end10
  %16 = load i8*, i8** %str, align 4
  %17 = load i8**, i8*** %junkptr.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %cmp14 = icmp ult i8* %16, %18
  br i1 %cmp14, label %if.then, label %if.end22

if.then:                                          ; preds = %while.end13
  %19 = load i8**, i8*** %junkptr.addr, align 4
  %20 = load i8*, i8** %19, align 4
  %21 = load i8, i8* %20, align 1
  %conv16 = sext i8 %21 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  %call20 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %22 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call20, i8** %22, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %call21 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %23 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call21, i8** %23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  store i32 0, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end13
  br label %while.cond23

while.cond23:                                     ; preds = %while.body31, %if.end22
  %24 = load i8*, i8** %str, align 4
  %25 = load i8**, i8*** %junkptr.addr, align 4
  %26 = load i8*, i8** %25, align 4
  %cmp24 = icmp ugt i8* %24, %26
  br i1 %cmp24, label %land.rhs26, label %land.end30

land.rhs26:                                       ; preds = %while.cond23
  %27 = load i8*, i8** %str, align 4
  %arrayidx = getelementptr inbounds i8, i8* %27, i32 -1
  %28 = load i8, i8* %arrayidx, align 1
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp eq i32 %conv27, 47
  br label %land.end30

land.end30:                                       ; preds = %land.rhs26, %while.cond23
  %29 = phi i1 [ false, %while.cond23 ], [ %cmp28, %land.rhs26 ]
  br i1 %29, label %while.body31, label %while.end33

while.body31:                                     ; preds = %land.end30
  %30 = load i8*, i8** %str, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr32, i8** %str, align 4
  br label %while.cond23

while.end33:                                      ; preds = %land.end30
  %31 = load i8*, i8** %str, align 4
  %32 = load i8**, i8*** %junkptr.addr, align 4
  %33 = load i8*, i8** %32, align 4
  %cmp34 = icmp eq i8* %31, %33
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %while.end33
  %34 = load i8*, i8** %str, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr37, i8** %str, align 4
  %35 = load i8*, i8** %str, align 4
  %36 = load i8, i8* %35, align 1
  %conv38 = sext i8 %36 to i32
  %cmp39 = icmp eq i32 %conv38, 47
  br i1 %cmp39, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then36
  %37 = load i8*, i8** %str, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %37, i32 1
  %38 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %38 to i32
  %cmp43 = icmp eq i32 %conv42, 47
  br i1 %cmp43, label %if.end47, label %if.then45

if.then45:                                        ; preds = %land.lhs.true
  %39 = load i8*, i8** %str, align 4
  %incdec.ptr46 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr46, i8** %str, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true, %if.then36
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %while.end33
  %40 = load i8*, i8** %str, align 4
  store i8 0, i8* %40, align 1
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.end
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind
define i32 @remtext(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @strend(i8* %1)
  store i8* %call, i8** %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %str, align 4
  %3 = load i8**, i8*** %junkptr.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %cmp = icmp uge i8* %2, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %str, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 47
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i8*, i8** %str, align 4
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %str, align 4
  store i8 0, i8* %10, align 1
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind
define i32 @rembutext(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @strend(i8* %1)
  store i8* %call, i8** %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %str, align 4
  %3 = load i8**, i8*** %junkptr.addr, align 4
  %4 = load i8*, i8** %3, align 4
  %cmp = icmp uge i8* %2, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %str, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 47
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i8*, i8** %str, align 4
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %str, align 4
  %add.ptr = getelementptr inbounds i8, i8* %10, i32 1
  %call6 = call i8* @dupstring(i8* %add.ptr)
  %11 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call6, i8** %11, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call7 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  %13 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call7, i8** %13, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind
define i32 @remlpaths(i8** %junkptr) #0 {
entry:
  %retval = alloca i32, align 4
  %junkptr.addr = alloca i8**, align 4
  %str = alloca i8*, align 4
  store i8** %junkptr, i8*** %junkptr.addr, align 4
  %0 = load i8**, i8*** %junkptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i8* @strend(i8* %1)
  store i8* %call, i8** %str, align 4
  %2 = load i8*, i8** %str, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i8*, i8** %str, align 4
  %5 = load i8**, i8*** %junkptr.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %cmp2 = icmp uge i8* %4, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %str, align 4
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %str, align 4
  %arrayidx = getelementptr inbounds i8, i8* %11, i32 1
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i8*, i8** %str, align 4
  %13 = load i8**, i8*** %junkptr.addr, align 4
  %14 = load i8*, i8** %13, align 4
  %cmp7 = icmp uge i8* %12, %14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %str, align 4
  %16 = load i8, i8* %15, align 1
  %conv9 = sext i8 %16 to i32
  %cmp10 = icmp eq i32 %conv9, 47
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body
  %17 = load i8*, i8** %str, align 4
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %str, align 4
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 1
  %call13 = call i8* @dupstring(i8* %add.ptr)
  %19 = load i8**, i8*** %junkptr.addr, align 4
  store i8* %call13, i8** %19, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %20 = load i8*, i8** %str, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr15, i8** %str, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind
define i8* @casemodify(i8* %str, i32 %how) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %how.addr = alloca i32, align 4
  %str2 = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  %nextupper = alloca i32, align 4
  %mbstr = alloca i8*, align 4
  %ps = alloca %struct.__mbstate_t, align 4
  %wc = alloca i32, align 4
  %len = alloca i32, align 4
  %mod = alloca i32, align 4
  %len2 = alloca i32, align 4
  %mbptr = alloca i8*, align 4
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %how, i32* %how.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %mul = mul i32 2, %call
  %add = add i32 %mul, 1
  %call1 = call i8* @zhalloc(i32 %add)
  store i8* %call1, i8** %str2, align 4
  %1 = load i8*, i8** %str2, align 4
  store i8* %1, i8** %ptr2, align 4
  store i32 1, i32* %nextupper, align 4
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else74

if.then:                                          ; preds = %entry
  %call2 = call i32 @__ctype_get_mb_cur_max()
  %mul3 = mul i32 1, %call2
  %call4 = call i8* @zhalloc(i32 %mul3)
  store i8* %call4, i8** %mbstr, align 4
  call void @mb_charinit()
  %3 = bitcast %struct.__mbstate_t* %ps to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %while.end, %if.then
  %4 = load i8*, i8** %str.addr, align 4
  %5 = load i8, i8* %4, align 1
  %tobool5 = icmp ne i8 %5, 0
  br i1 %tobool5, label %while.body, label %while.end73

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %str.addr, align 4
  %call6 = call i32 @mb_metacharlenconv(i8* %6, i32* %wc)
  store i32 %call6, i32* %len, align 4
  store i32 0, i32* %mod, align 4
  %7 = load i32, i32* %wc, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %while.body
  br label %while.cond8

while.cond8:                                      ; preds = %while.body10, %if.then7
  %8 = load i32, i32* %len, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %len, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond8
  %9 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %ptr2, align 4
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %ptr2, align 4
  store i8 %10, i8* %11, align 1
  br label %while.cond8

while.end:                                        ; preds = %while.cond8
  store i32 1, i32* %nextupper, align 4
  br label %while.cond

if.end:                                           ; preds = %while.body
  %12 = load i32, i32* %how.addr, align 4
  switch i32 %12, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb17
    i32 3, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load i32, i32* %wc, align 4
  %call12 = call i32 @iswupper(i32 %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %sw.bb
  %14 = load i32, i32* %wc, align 4
  %call15 = call i32 @towlower(i32 %14)
  store i32 %call15, i32* %wc, align 4
  store i32 1, i32* %mod, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.bb
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %15 = load i32, i32* %wc, align 4
  %call18 = call i32 @iswlower(i32 %15)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %sw.bb17
  %16 = load i32, i32* %wc, align 4
  %call21 = call i32 @towupper(i32 %16)
  store i32 %call21, i32* %wc, align 4
  store i32 1, i32* %mod, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %sw.bb17
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb23
  %17 = load i32, i32* %wc, align 4
  %cmp24 = icmp ne i32 %17, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %sw.default
  %18 = load i32, i32* %wc, align 4
  %call25 = call i32 @wcwidth(i32 %18)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  br label %sw.epilog

if.end28:                                         ; preds = %land.lhs.true, %sw.default
  %19 = load i32, i32* %wc, align 4
  %call29 = call i32 @iswalnum(i32 %19)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  store i32 1, i32* %nextupper, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end28
  %20 = load i32, i32* %nextupper, align 4
  %tobool32 = icmp ne i32 %20, 0
  br i1 %tobool32, label %if.then33, label %if.else39

if.then33:                                        ; preds = %if.else
  %21 = load i32, i32* %wc, align 4
  %call34 = call i32 @iswlower(i32 %21)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %22 = load i32, i32* %wc, align 4
  %call37 = call i32 @towupper(i32 %22)
  store i32 %call37, i32* %wc, align 4
  store i32 1, i32* %mod, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33
  store i32 0, i32* %nextupper, align 4
  br label %if.end45

if.else39:                                        ; preds = %if.else
  %23 = load i32, i32* %wc, align 4
  %call40 = call i32 @iswupper(i32 %23)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.else39
  %24 = load i32, i32* %wc, align 4
  %call43 = call i32 @towlower(i32 %24)
  store i32 %call43, i32* %wc, align 4
  store i32 1, i32* %mod, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else39
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end38
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then31
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end46, %if.then27, %if.end22, %if.end16
  %25 = load i32, i32* %mod, align 4
  %tobool47 = icmp ne i32 %25, 0
  br i1 %tobool47, label %land.lhs.true48, label %if.else64

land.lhs.true48:                                  ; preds = %sw.epilog
  %26 = load i8*, i8** %mbstr, align 4
  %27 = load i32, i32* %wc, align 4
  %call49 = call i32 @wcrtomb(i8* %26, i32 %27, %struct.__mbstate_t* %ps)
  store i32 %call49, i32* %len2, align 4
  %cmp50 = icmp sgt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.else64

if.then51:                                        ; preds = %land.lhs.true48
  %28 = load i8*, i8** %mbstr, align 4
  store i8* %28, i8** %mbptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then51
  %29 = load i8*, i8** %mbptr, align 4
  %30 = load i8*, i8** %mbstr, align 4
  %31 = load i32, i32* %len2, align 4
  %add.ptr = getelementptr inbounds i8, i8* %30, i32 %31
  %cmp52 = icmp ult i8* %29, %add.ptr
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %mbptr, align 4
  %33 = load i8, i8* %32, align 1
  %idxprom = zext i8 %33 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %34 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %34 to i32
  %and = and i32 %conv, 4096
  %tobool53 = icmp ne i32 %and, 0
  br i1 %tobool53, label %if.then54, label %if.else59

if.then54:                                        ; preds = %for.body
  %35 = load i8*, i8** %ptr2, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr55, i8** %ptr2, align 4
  store i8 -125, i8* %35, align 1
  %36 = load i8*, i8** %mbptr, align 4
  %37 = load i8, i8* %36, align 1
  %conv56 = sext i8 %37 to i32
  %xor = xor i32 %conv56, 32
  %conv57 = trunc i32 %xor to i8
  %38 = load i8*, i8** %ptr2, align 4
  %incdec.ptr58 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr58, i8** %ptr2, align 4
  store i8 %conv57, i8* %38, align 1
  br label %if.end61

if.else59:                                        ; preds = %for.body
  %39 = load i8*, i8** %mbptr, align 4
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %ptr2, align 4
  %incdec.ptr60 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr60, i8** %ptr2, align 4
  store i8 %40, i8* %41, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then54
  br label %for.inc

for.inc:                                          ; preds = %if.end61
  %42 = load i8*, i8** %mbptr, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr62, i8** %mbptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %len, align 4
  %44 = load i8*, i8** %str.addr, align 4
  %add.ptr63 = getelementptr inbounds i8, i8* %44, i32 %43
  store i8* %add.ptr63, i8** %str.addr, align 4
  br label %if.end72

if.else64:                                        ; preds = %land.lhs.true48, %sw.epilog
  br label %while.cond65

while.cond65:                                     ; preds = %while.body68, %if.else64
  %45 = load i32, i32* %len, align 4
  %dec66 = add nsw i32 %45, -1
  store i32 %dec66, i32* %len, align 4
  %tobool67 = icmp ne i32 %45, 0
  br i1 %tobool67, label %while.body68, label %while.end71

while.body68:                                     ; preds = %while.cond65
  %46 = load i8*, i8** %str.addr, align 4
  %incdec.ptr69 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr69, i8** %str.addr, align 4
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %ptr2, align 4
  %incdec.ptr70 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr70, i8** %ptr2, align 4
  store i8 %47, i8* %48, align 1
  br label %while.cond65

while.end71:                                      ; preds = %while.cond65
  br label %if.end72

if.end72:                                         ; preds = %while.end71, %for.end
  br label %while.cond

while.end73:                                      ; preds = %while.cond
  br label %if.end144

if.else74:                                        ; preds = %entry
  br label %while.cond75

while.cond75:                                     ; preds = %if.end142, %if.else74
  %49 = load i8*, i8** %str.addr, align 4
  %50 = load i8, i8* %49, align 1
  %tobool76 = icmp ne i8 %50, 0
  br i1 %tobool76, label %while.body77, label %while.end143

while.body77:                                     ; preds = %while.cond75
  %51 = load i8*, i8** %str.addr, align 4
  %52 = load i8, i8* %51, align 1
  %conv78 = sext i8 %52 to i32
  %cmp79 = icmp eq i32 %conv78, -125
  br i1 %cmp79, label %if.then81, label %if.else86

if.then81:                                        ; preds = %while.body77
  %53 = load i8*, i8** %str.addr, align 4
  %arrayidx82 = getelementptr inbounds i8, i8* %53, i32 1
  %54 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %54 to i32
  %xor84 = xor i32 %conv83, 32
  store i32 %xor84, i32* %c, align 4
  %55 = load i8*, i8** %str.addr, align 4
  %add.ptr85 = getelementptr inbounds i8, i8* %55, i32 2
  store i8* %add.ptr85, i8** %str.addr, align 4
  br label %if.end89

if.else86:                                        ; preds = %while.body77
  %56 = load i8*, i8** %str.addr, align 4
  %incdec.ptr87 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr87, i8** %str.addr, align 4
  %57 = load i8, i8* %56, align 1
  %conv88 = sext i8 %57 to i32
  store i32 %conv88, i32* %c, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then81
  %58 = load i32, i32* %how.addr, align 4
  switch i32 %58, label %sw.default103 [
    i32 2, label %sw.bb90
    i32 1, label %sw.bb96
    i32 3, label %sw.bb102
  ]

sw.bb90:                                          ; preds = %if.end89
  %59 = load i32, i32* %c, align 4
  %call91 = call i32 @isupper(i32 %59) #4
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %sw.bb90
  %60 = load i32, i32* %c, align 4
  %call94 = call i32 @tolower(i32 %60) #4
  store i32 %call94, i32* %c, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %sw.bb90
  br label %sw.epilog127

sw.bb96:                                          ; preds = %if.end89
  %61 = load i32, i32* %c, align 4
  %call97 = call i32 @islower(i32 %61) #4
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %sw.bb96
  %62 = load i32, i32* %c, align 4
  %call100 = call i32 @toupper(i32 %62) #4
  store i32 %call100, i32* %c, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %sw.bb96
  br label %sw.epilog127

sw.bb102:                                         ; preds = %if.end89
  br label %sw.default103

sw.default103:                                    ; preds = %if.end89, %sw.bb102
  %63 = load i32, i32* %c, align 4
  %conv104 = trunc i32 %63 to i8
  %idxprom105 = zext i8 %conv104 to i32
  %arrayidx106 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom105
  %64 = load i16, i16* %arrayidx106, align 2
  %conv107 = sext i16 %64 to i32
  %and108 = and i32 %conv107, 2
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.else111, label %if.then110

if.then110:                                       ; preds = %sw.default103
  store i32 1, i32* %nextupper, align 4
  br label %if.end126

if.else111:                                       ; preds = %sw.default103
  %65 = load i32, i32* %nextupper, align 4
  %tobool112 = icmp ne i32 %65, 0
  br i1 %tobool112, label %if.then113, label %if.else119

if.then113:                                       ; preds = %if.else111
  %66 = load i32, i32* %c, align 4
  %call114 = call i32 @islower(i32 %66) #4
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.then113
  %67 = load i32, i32* %c, align 4
  %call117 = call i32 @toupper(i32 %67) #4
  store i32 %call117, i32* %c, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.then113
  store i32 0, i32* %nextupper, align 4
  br label %if.end125

if.else119:                                       ; preds = %if.else111
  %68 = load i32, i32* %c, align 4
  %call120 = call i32 @isupper(i32 %68) #4
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.else119
  %69 = load i32, i32* %c, align 4
  %call123 = call i32 @tolower(i32 %69) #4
  store i32 %call123, i32* %c, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.else119
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end118
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then110
  br label %sw.epilog127

sw.epilog127:                                     ; preds = %if.end126, %if.end101, %if.end95
  %70 = load i32, i32* %c, align 4
  %conv128 = trunc i32 %70 to i8
  %idxprom129 = zext i8 %conv128 to i32
  %arrayidx130 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom129
  %71 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %71 to i32
  %and132 = and i32 %conv131, 4096
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then134, label %if.else139

if.then134:                                       ; preds = %sw.epilog127
  %72 = load i8*, i8** %ptr2, align 4
  %incdec.ptr135 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr135, i8** %ptr2, align 4
  store i8 -125, i8* %72, align 1
  %73 = load i32, i32* %c, align 4
  %xor136 = xor i32 %73, 32
  %conv137 = trunc i32 %xor136 to i8
  %74 = load i8*, i8** %ptr2, align 4
  %incdec.ptr138 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr138, i8** %ptr2, align 4
  store i8 %conv137, i8* %74, align 1
  br label %if.end142

if.else139:                                       ; preds = %sw.epilog127
  %75 = load i32, i32* %c, align 4
  %conv140 = trunc i32 %75 to i8
  %76 = load i8*, i8** %ptr2, align 4
  %incdec.ptr141 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr141, i8** %ptr2, align 4
  store i8 %conv140, i8* %76, align 1
  br label %if.end142

if.end142:                                        ; preds = %if.else139, %if.then134
  br label %while.cond75

while.end143:                                     ; preds = %while.cond75
  br label %if.end144

if.end144:                                        ; preds = %while.end143, %while.end73
  %77 = load i8*, i8** %ptr2, align 4
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %str2, align 4
  ret i8* %78
}

declare i8* @zhalloc(i32) #1

declare i32 @__ctype_get_mb_cur_max() #1

declare void @mb_charinit() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i32 @mb_metacharlenconv(i8*, i32*) #1

declare i32 @iswupper(i32) #1

declare i32 @towlower(i32) #1

declare i32 @iswlower(i32) #1

declare i32 @towupper(i32) #1

declare i32 @wcwidth(i32) #1

declare i32 @iswalnum(i32) #1

declare i32 @wcrtomb(i8*, i32, %struct.__mbstate_t*) #1

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #3

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: nounwind readonly
declare i32 @islower(i32) #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: noinline nounwind
define i32 @subst(i8** %strptr, i8* %in, i8* %out, i32 %gbal) #0 {
entry:
  %retval = alloca i32, align 4
  %strptr.addr = alloca i8**, align 4
  %in.addr = alloca i8*, align 4
  %out.addr = alloca i8*, align 4
  %gbal.addr = alloca i32, align 4
  %str = alloca i8*, align 4
  %substcut = alloca i8*, align 4
  %sptr = alloca i8*, align 4
  %off = alloca i32, align 4
  %inlen = alloca i32, align 4
  %outlen = alloca i32, align 4
  %fl = alloca i32, align 4
  %oldin = alloca i8*, align 4
  store i8** %strptr, i8*** %strptr.addr, align 4
  store i8* %in, i8** %in.addr, align 4
  store i8* %out, i8** %out.addr, align 4
  store i32 %gbal, i32* %gbal.addr, align 4
  %0 = load i8**, i8*** %strptr.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %str, align 4
  %2 = load i8*, i8** %in.addr, align 4
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %str, align 4
  store i8* %4, i8** %in.addr, align 4
  store i32 0, i32* %gbal.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 86), align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 2066, i32* %fl, align 4
  %6 = load i8*, i8** %in.addr, align 4
  store i8* %6, i8** %oldin, align 4
  %7 = load i32, i32* %gbal.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %8 = load i32, i32* %fl, align 4
  %or = or i32 %8, 512
  store i32 %or, i32* %fl, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  %9 = load i8*, i8** %in.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %11 = load i8*, i8** %in.addr, align 4
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, -124
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %13 = load i32, i32* %fl, align 4
  %or11 = or i32 %13, 4096
  store i32 %or11, i32* %fl, align 4
  %14 = load i8*, i8** %in.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %lor.lhs.false
  %15 = load i8*, i8** %in.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 37
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %17 = load i8*, i8** %in.addr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %in.addr, align 4
  %18 = load i32, i32* %fl, align 4
  %or18 = or i32 %18, 1
  store i32 %or18, i32* %fl, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12
  %19 = load i8*, i8** %in.addr, align 4
  %20 = load i8*, i8** %oldin, align 4
  %cmp20 = icmp eq i8* %19, %20
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %21 = load i32, i32* %fl, align 4
  %or23 = or i32 %21, 4
  store i32 %or23, i32* %fl, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  %22 = load i8*, i8** %in.addr, align 4
  %23 = load i8*, i8** %str, align 4
  %cmp25 = icmp eq i8* %22, %23
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %24 = load i8*, i8** %in.addr, align 4
  %call = call i8* @dupstring(i8* %24)
  store i8* %call, i8** %in.addr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %25 = load i8*, i8** %in.addr, align 4
  %call29 = call i32 @parse_subst_string(i8* %25)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end28
  %26 = load i32, i32* @errflag, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false31, %if.end28
  store i32 1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false31
  %27 = load i8*, i8** %out.addr, align 4
  %call35 = call i32 @parse_subst_string(i8* %27)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then39, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end34
  %28 = load i32, i32* @errflag, align 4
  %tobool38 = icmp ne i32 %28, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %lor.lhs.false37, %if.end34
  store i32 1, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %lor.lhs.false37
  call void @singsub(i8** %in.addr)
  %29 = load i8**, i8*** %strptr.addr, align 4
  %30 = load i8*, i8** %in.addr, align 4
  %31 = load i32, i32* %fl, align 4
  %32 = load i8*, i8** %out.addr, align 4
  %call41 = call i32 @getmatch(i8** %29, i8* %30, i32 %31, i32 1, i8* %32)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 0, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  br label %if.end57

if.else:                                          ; preds = %if.end
  %33 = load i8*, i8** %str, align 4
  %34 = load i8*, i8** %in.addr, align 4
  %call45 = call i8* @strstr(i8* %33, i8* %34)
  store i8* %call45, i8** %substcut, align 4
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.else
  %35 = load i8*, i8** %in.addr, align 4
  %call48 = call i32 @strlen(i8* %35)
  store i32 %call48, i32* %inlen, align 4
  %36 = load i8*, i8** %out.addr, align 4
  %37 = load i8*, i8** %in.addr, align 4
  %38 = load i32, i32* %inlen, align 4
  %call49 = call i8* @convamps(i8* %36, i8* %37, i32 %38)
  store i8* %call49, i8** %sptr, align 4
  %39 = load i8*, i8** %sptr, align 4
  %call50 = call i32 @strlen(i8* %39)
  store i32 %call50, i32* %outlen, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then47
  %40 = load i8*, i8** %substcut, align 4
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %substcut, align 4
  %42 = load i8**, i8*** %strptr.addr, align 4
  %43 = load i8*, i8** %42, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %44 = load i32, i32* %outlen, align 4
  %add = add nsw i32 %sub.ptr.sub, %44
  store i32 %add, i32* %off, align 4
  %45 = load i32, i32* %inlen, align 4
  %46 = load i8*, i8** %substcut, align 4
  %add.ptr = getelementptr inbounds i8, i8* %46, i32 %45
  store i8* %add.ptr, i8** %substcut, align 4
  %47 = load i8**, i8*** %strptr.addr, align 4
  %48 = load i8*, i8** %47, align 4
  %49 = load i8*, i8** %sptr, align 4
  %50 = load i8*, i8** %substcut, align 4
  %call51 = call i8* @zhtricat(i8* %48, i8* %49, i8* %50)
  %51 = load i8**, i8*** %strptr.addr, align 4
  store i8* %call51, i8** %51, align 4
  %52 = load i8**, i8*** %strptr.addr, align 4
  %53 = load i8*, i8** %52, align 4
  %54 = load i32, i32* %off, align 4
  %add.ptr52 = getelementptr inbounds i8, i8* %53, i32 %54
  store i8* %add.ptr52, i8** %str, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load i32, i32* %gbal.addr, align 4
  %tobool53 = icmp ne i32 %55, 0
  br i1 %tobool53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %56 = load i8*, i8** %str, align 4
  %57 = load i8*, i8** %in.addr, align 4
  %call54 = call i8* @strstr(i8* %56, i8* %57)
  store i8* %call54, i8** %substcut, align 4
  %tobool55 = icmp ne i8* %call54, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %58 = phi i1 [ false, %do.cond ], [ %tobool55, %land.rhs ]
  br i1 %58, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %do.end, %if.then43, %if.then39, %if.then33
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

declare i32 @parse_subst_string(i8*) #1

declare void @singsub(i8**) #1

declare i32 @getmatch(i8**, i8*, i32, i32, i8*) #1

declare i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @convamps(i8* %out, i8* %in, i32 %inlen) #0 {
entry:
  %retval = alloca i8*, align 4
  %out.addr = alloca i8*, align 4
  %in.addr = alloca i8*, align 4
  %inlen.addr = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %pp = alloca i8*, align 4
  %slen = alloca i32, align 4
  %sdup = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 4
  store i8* %in, i8** %in.addr, align 4
  store i32 %inlen, i32* %inlen.addr, align 4
  store i32 0, i32* %sdup, align 4
  %0 = load i8*, i8** %out.addr, align 4
  store i8* %0, i8** %ptr, align 4
  store i32 0, i32* %slen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %ptr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  store i32 1, i32* %sdup, align 4
  br label %if.end6

if.else:                                          ; preds = %for.body
  %6 = load i8*, i8** %ptr, align 4
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 38
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load i32, i32* %inlen.addr, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %slen, align 4
  %add = add nsw i32 %9, %sub
  store i32 %add, i32* %slen, align 4
  store i32 1, i32* %sdup, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %10 = load i8*, i8** %ptr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 4
  %11 = load i32, i32* %slen, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %slen, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %sdup, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.end
  %13 = load i8*, i8** %out.addr, align 4
  store i8* %13, i8** %retval, align 4
  br label %return

if.end10:                                         ; preds = %for.end
  %14 = load i32, i32* %slen, align 4
  %add11 = add nsw i32 %14, 1
  %call = call i8* @zhalloc(i32 %add11)
  store i8* %call, i8** %pp, align 4
  store i8* %call, i8** %ret, align 4
  %15 = load i8*, i8** %out.addr, align 4
  store i8* %15, i8** %ptr, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc31, %if.end10
  %16 = load i8*, i8** %ptr, align 4
  %17 = load i8, i8* %16, align 1
  %tobool13 = icmp ne i8 %17, 0
  br i1 %tobool13, label %for.body14, label %for.end33

for.body14:                                       ; preds = %for.cond12
  %18 = load i8*, i8** %ptr, align 4
  %19 = load i8, i8* %18, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %for.body14
  %20 = load i8*, i8** %ptr, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr19, i8** %ptr, align 4
  %21 = load i8, i8* %incdec.ptr19, align 1
  %22 = load i8*, i8** %pp, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %pp, align 4
  store i8 %21, i8* %22, align 1
  br label %if.end30

if.else21:                                        ; preds = %for.body14
  %23 = load i8*, i8** %ptr, align 4
  %24 = load i8, i8* %23, align 1
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv22, 38
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else21
  %25 = load i8*, i8** %pp, align 4
  %26 = load i8*, i8** %in.addr, align 4
  %call26 = call i8* @strcpy(i8* %25, i8* %26)
  %27 = load i32, i32* %inlen.addr, align 4
  %28 = load i8*, i8** %pp, align 4
  %add.ptr = getelementptr inbounds i8, i8* %28, i32 %27
  store i8* %add.ptr, i8** %pp, align 4
  br label %if.end29

if.else27:                                        ; preds = %if.else21
  %29 = load i8*, i8** %ptr, align 4
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %pp, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** %pp, align 4
  store i8 %30, i8* %31, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %32 = load i8*, i8** %ptr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr32, i8** %ptr, align 4
  br label %for.cond12

for.end33:                                        ; preds = %for.cond12
  %33 = load i8*, i8** %pp, align 4
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %ret, align 4
  store i8* %34, i8** %retval, align 4
  br label %return

return:                                           ; preds = %for.end33, %if.then9
  %35 = load i8*, i8** %retval, align 4
  ret i8* %35
}

; Function Attrs: noinline nounwind
define %struct.histent* @quietgethist(i32 %ev) #0 {
entry:
  %ev.addr = alloca i32, align 4
  store i32 %ev, i32* %ev.addr, align 4
  %0 = load i32, i32* %ev.addr, align 4
  %call = call %struct.histent* @gethistent(i32 %0, i32 0)
  ret %struct.histent* %call
}

; Function Attrs: noinline nounwind
define void @inithist() #0 {
entry:
  call void @createhisttable()
  ret void
}

declare void @createhisttable() #1

; Function Attrs: noinline nounwind
define void @resizehistents() #0 {
entry:
  %0 = load i32, i32* @histlinect, align 4
  %1 = load i32, i32* @histsiz, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @putoldhistentryontop(i16 signext 0)
  %2 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i32, i32* @histlinect, align 4
  %4 = load i32, i32* @histsiz, align 4
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @putoldhistentryontop(i16 signext 1)
  %5 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %node2 = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 0
  call void @freehistnode(%struct.hashnode* %node2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @stat(i8*, %struct.stat*) #1

declare i8* @unmeta(i8*) #1

declare void @zwarn(i8*, ...) #1

declare void @zerr(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @pushheap() #1

declare i32 @fseek(%struct._IO_FILE*, i32, i32) #1

declare i32 @ftell(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define internal i32 @readhistline(i32 %start, i8** %bufp, i32* %bufsiz, %struct._IO_FILE* %in) #0 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %bufp.addr = alloca i8**, align 4
  %bufsiz.addr = alloca i32*, align 4
  %in.addr = alloca %struct._IO_FILE*, align 4
  %buf = alloca i8*, align 4
  %len = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  store i8** %bufp, i8*** %bufp.addr, align 4
  store i32* %bufsiz, i32** %bufsiz.addr, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 4
  %0 = load i8**, i8*** %bufp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %buf, align 4
  %2 = load i8*, i8** %buf, align 4
  %3 = load i32, i32* %start.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i32 %3
  %4 = load i32*, i32** %bufsiz.addr, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 4
  %call = call i8* @fgets(i8* %add.ptr, i32 %sub, %struct._IO_FILE* %7)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end39

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %start.addr, align 4
  %9 = load i8*, i8** %buf, align 4
  %10 = load i32, i32* %start.addr, align 4
  %add.ptr1 = getelementptr inbounds i8, i8* %9, i32 %10
  %call2 = call i32 @strlen(i8* %add.ptr1)
  %add = add i32 %8, %call2
  store i32 %add, i32* %len, align 4
  %11 = load i32, i32* %len, align 4
  %12 = load i32, i32* %start.addr, align 4
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load i8*, i8** %buf, align 4
  %14 = load i32, i32* %len, align 4
  %sub4 = sub nsw i32 %14, 1
  %arrayidx = getelementptr inbounds i8, i8* %13, i32 %sub4
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %cmp5 = icmp ne i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 4
  %call8 = call i32 @feof(%struct._IO_FILE* %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.then7
  %17 = load i32, i32* %len, align 4
  %18 = load i32*, i32** %bufsiz.addr, align 4
  %19 = load i32, i32* %18, align 4
  %sub11 = sub nsw i32 %19, 1
  %cmp12 = icmp slt i32 %17, %sub11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %20 = load i8*, i8** %buf, align 4
  %21 = load i32*, i32** %bufsiz.addr, align 4
  %22 = load i32, i32* %21, align 4
  %mul = mul nsw i32 2, %22
  %call16 = call i8* @zrealloc(i8* %20, i32 %mul)
  %23 = load i8**, i8*** %bufp.addr, align 4
  store i8* %call16, i8** %23, align 4
  %24 = load i32*, i32** %bufsiz.addr, align 4
  %25 = load i32, i32* %24, align 4
  %mul17 = mul nsw i32 2, %25
  %26 = load i32*, i32** %bufsiz.addr, align 4
  store i32 %mul17, i32* %26, align 4
  %27 = load i32, i32* %len, align 4
  %28 = load i8**, i8*** %bufp.addr, align 4
  %29 = load i32*, i32** %bufsiz.addr, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 4
  %call18 = call i32 @readhistline(i32 %27, i8** %28, i32* %29, %struct._IO_FILE* %30)
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then7
  br label %if.end38

if.else:                                          ; preds = %if.end
  %31 = load i8*, i8** %buf, align 4
  %32 = load i32, i32* %len, align 4
  %sub20 = sub nsw i32 %32, 1
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i32 %sub20
  store i8 0, i8* %arrayidx21, align 1
  %33 = load i32, i32* %len, align 4
  %cmp22 = icmp sgt i32 %33, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.else
  %34 = load i8*, i8** %buf, align 4
  %35 = load i32, i32* %len, align 4
  %sub24 = sub nsw i32 %35, 2
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i32 %sub24
  %36 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %36 to i32
  %cmp27 = icmp eq i32 %conv26, 92
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %land.lhs.true
  %37 = load i8*, i8** %buf, align 4
  %38 = load i32, i32* %len, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %len, align 4
  %sub30 = sub nsw i32 %dec, 1
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i32 %sub30
  store i8 10, i8* %arrayidx31, align 1
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 4
  %call32 = call i32 @feof(%struct._IO_FILE* %39)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.then29
  %40 = load i32, i32* %len, align 4
  %41 = load i8**, i8*** %bufp.addr, align 4
  %42 = load i32*, i32** %bufsiz.addr, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 4
  %call35 = call i32 @readhistline(i32 %40, i8** %41, i32* %42, %struct._IO_FILE* %43)
  store i32 %call35, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then29
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end19
  %44 = load i32, i32* %len, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.end38, %if.then34, %if.end15, %if.then14, %if.then3
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare i32 @zstrtol(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind
define void @histsplitwords(i8* %lineptr, i16** %wordsp, i32* %nwordsp, i32* %nwordposp, i32 %uselex) #0 {
entry:
  %lineptr.addr = alloca i8*, align 4
  %wordsp.addr = alloca i16**, align 4
  %nwordsp.addr = alloca i32*, align 4
  %nwordposp.addr = alloca i32*, align 4
  %uselex.addr = alloca i32, align 4
  %nwords = alloca i32, align 4
  %nwordpos = alloca i32, align 4
  %words = alloca i16*, align 4
  %start = alloca i8*, align 4
  %wordlist = alloca %union.linkroot*, align 4
  %wordnode = alloca %struct.linknode*, align 4
  %nwords_max = alloca i32, align 4
  %word = alloca i8*, align 4
  %lptr = alloca i8*, align 4
  %wptr = alloca i8*, align 4
  %loop_next = alloca i32, align 4
  %skipping = alloca i32, align 4
  %len = alloca i32, align 4
  %bad = alloca i32, align 4
  store i8* %lineptr, i8** %lineptr.addr, align 4
  store i16** %wordsp, i16*** %wordsp.addr, align 4
  store i32* %nwordsp, i32** %nwordsp.addr, align 4
  store i32* %nwordposp, i32** %nwordposp.addr, align 4
  store i32 %uselex, i32* %uselex.addr, align 4
  %0 = load i32*, i32** %nwordsp.addr, align 4
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %nwords, align 4
  store i32 0, i32* %nwordpos, align 4
  %2 = load i16**, i16*** %wordsp.addr, align 4
  %3 = load i16*, i16** %2, align 4
  store i16* %3, i16** %words, align 4
  %4 = load i8*, i8** %lineptr.addr, align 4
  store i8* %4, i8** %start, align 4
  %5 = load i32, i32* %uselex.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end98

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %lineptr.addr, align 4
  %call = call %union.linkroot* @bufferwords(%union.linkroot* null, i8* %6, i32* null, i32 4)
  store %union.linkroot* %call, %union.linkroot** %wordlist, align 4
  %7 = load i32, i32* @errflag, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %union.linkroot*, %union.linkroot** %wordlist, align 4
  %call3 = call i32 @countlinknodes(%union.linkroot* %8)
  %mul = mul nsw i32 2, %call3
  store i32 %mul, i32* %nwords_max, align 4
  %9 = load i32, i32* %nwords_max, align 4
  %10 = load i32, i32* %nwords, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %11 = load i32, i32* %nwords_max, align 4
  store i32 %11, i32* %nwords, align 4
  %12 = load i32*, i32** %nwordsp.addr, align 4
  store i32 %11, i32* %12, align 4
  %13 = load i16*, i16** %words, align 4
  %14 = bitcast i16* %13 to i8*
  %15 = load i32, i32* %nwords, align 4
  %mul5 = mul i32 %15, 2
  %call6 = call i8* @zrealloc(i8* %14, i32 %mul5)
  %16 = bitcast i8* %call6 to i16*
  store i16* %16, i16** %words, align 4
  %17 = load i16**, i16*** %wordsp.addr, align 4
  store i16* %16, i16** %17, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %18 = load %union.linkroot*, %union.linkroot** %wordlist, align 4
  %list = bitcast %union.linkroot* %18 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %19 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %19, %struct.linknode** %wordnode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %20 = load %struct.linknode*, %struct.linknode** %wordnode, align 4
  %tobool8 = icmp ne %struct.linknode* %20, null
  br i1 %tobool8, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %21 = load %struct.linknode*, %struct.linknode** %wordnode, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %21, i32 0, i32 2
  %22 = load i8*, i8** %dat, align 4
  store i8* %22, i8** %word, align 4
  %23 = load i8*, i8** %word, align 4
  store i8* %23, i8** %wptr, align 4
  store i32 0, i32* %loop_next, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %if.end23, %for.body
  %24 = load i8*, i8** %lineptr.addr, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %26 to i32
  %and = and i32 %conv, 8
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.cond9
  %27 = load i8*, i8** %lineptr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %lineptr.addr, align 4
  br label %if.end23

if.else:                                          ; preds = %for.cond9
  %28 = load i8*, i8** %lineptr.addr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %28, i32 0
  %29 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %29 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br i1 %cmp14, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else
  %30 = load i8*, i8** %lineptr.addr, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i32 1
  %31 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %31 to i32
  %cmp18 = icmp eq i32 %conv17, 10
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true
  %32 = load i8*, i8** %lineptr.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %32, i32 2
  store i8* %add.ptr, i8** %lineptr.addr, align 4
  br label %if.end22

if.else21:                                        ; preds = %land.lhs.true, %if.else
  br label %for.end

if.end22:                                         ; preds = %if.then20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then11
  br label %for.cond9

for.end:                                          ; preds = %if.else21
  %33 = load i8*, i8** %lineptr.addr, align 4
  store i8* %33, i8** %lptr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, i32* %skipping, align 4
  %34 = load i8*, i8** %wptr, align 4
  %35 = load i8*, i8** %lptr, align 4
  %call24 = call i32 @strpfx(i8* %34, i8* %35)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else37

if.then26:                                        ; preds = %do.body
  %36 = load i8*, i8** %wptr, align 4
  %call27 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end33, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then26
  %37 = load i8*, i8** %lptr, align 4
  %call30 = call i32 @strpfx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %37)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true29
  store i32 2, i32* %loop_next, align 4
  br label %do.end

if.end33:                                         ; preds = %land.lhs.true29, %if.then26
  %38 = load i8*, i8** %wptr, align 4
  %call34 = call i32 @strlen(i8* %38)
  store i32 %call34, i32* %len, align 4
  %39 = load i32, i32* %len, align 4
  %40 = load i8*, i8** %lptr, align 4
  %add.ptr35 = getelementptr inbounds i8, i8* %40, i32 %39
  store i8* %add.ptr35, i8** %lptr, align 4
  %41 = load i32, i32* %len, align 4
  %42 = load i8*, i8** %wptr, align 4
  %add.ptr36 = getelementptr inbounds i8, i8* %42, i32 %41
  store i8* %add.ptr36, i8** %wptr, align 4
  br label %if.end80

if.else37:                                        ; preds = %do.body
  store i32 0, i32* %bad, align 4
  %43 = load i8*, i8** %wptr, align 4
  %call38 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.else37
  store i32 2, i32* %loop_next, align 4
  br label %do.end

if.end41:                                         ; preds = %if.else37
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %if.end41
  %44 = load i8*, i8** %lptr, align 4
  %45 = load i8, i8* %44, align 1
  %tobool42 = icmp ne i8 %45, 0
  br i1 %tobool42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %wptr, align 4
  %47 = load i8, i8* %46, align 1
  %tobool43 = icmp ne i8 %47, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %while.body
  store i32 1, i32* %bad, align 4
  store i32 1, i32* %loop_next, align 4
  br label %while.end

if.end45:                                         ; preds = %while.body
  %48 = load i8*, i8** %lptr, align 4
  %49 = load i8, i8* %48, align 1
  %conv46 = sext i8 %49 to i32
  %50 = load i8*, i8** %wptr, align 4
  %51 = load i8, i8* %50, align 1
  %conv47 = sext i8 %51 to i32
  %cmp48 = icmp eq i32 %conv46, %conv47
  br i1 %cmp48, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end45
  %52 = load i8*, i8** %lptr, align 4
  %53 = load i8, i8* %52, align 1
  %conv50 = sext i8 %53 to i32
  %cmp51 = icmp eq i32 %conv50, 33
  br i1 %cmp51, label %land.lhs.true53, label %if.else63

land.lhs.true53:                                  ; preds = %lor.lhs.false
  %54 = load i8*, i8** %wptr, align 4
  %55 = load i8, i8* %54, align 1
  %conv54 = sext i8 %55 to i32
  %cmp55 = icmp eq i32 %conv54, 124
  br i1 %cmp55, label %if.then57, label %if.else63

if.then57:                                        ; preds = %land.lhs.true53, %if.end45
  %56 = load i8*, i8** %lptr, align 4
  %incdec.ptr58 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr58, i8** %lptr, align 4
  %57 = load i8*, i8** %wptr, align 4
  %incdec.ptr59 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr59, i8** %wptr, align 4
  %58 = load i8, i8* %incdec.ptr59, align 1
  %tobool60 = icmp ne i8 %58, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then57
  br label %while.end

if.end62:                                         ; preds = %if.then57
  br label %if.end76

if.else63:                                        ; preds = %land.lhs.true53, %lor.lhs.false
  %59 = load i8*, i8** %lptr, align 4
  %arrayidx64 = getelementptr inbounds i8, i8* %59, i32 0
  %60 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %60 to i32
  %cmp66 = icmp eq i32 %conv65, 92
  br i1 %cmp66, label %land.lhs.true68, label %if.else75

land.lhs.true68:                                  ; preds = %if.else63
  %61 = load i8*, i8** %lptr, align 4
  %arrayidx69 = getelementptr inbounds i8, i8* %61, i32 1
  %62 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %62 to i32
  %cmp71 = icmp eq i32 %conv70, 10
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %land.lhs.true68
  %63 = load i8*, i8** %lptr, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %63, i32 2
  store i8* %add.ptr74, i8** %lptr, align 4
  store i32 1, i32* %skipping, align 4
  br label %while.end

if.else75:                                        ; preds = %land.lhs.true68, %if.else63
  store i32 1, i32* %bad, align 4
  store i32 1, i32* %loop_next, align 4
  br label %while.end

if.end76:                                         ; preds = %if.end62
  br label %while.cond

while.end:                                        ; preds = %if.else75, %if.then73, %if.then61, %if.then44, %while.cond
  %64 = load i32, i32* %bad, align 4
  %tobool77 = icmp ne i32 %64, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %while.end
  %65 = load i8*, i8** %start, align 4
  store i8* %65, i8** %lineptr.addr, align 4
  store i32 0, i32* %nwordpos, align 4
  store i32 0, i32* %uselex.addr, align 4
  store i32 1, i32* %loop_next, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %while.end
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end33
  br label %do.cond

do.cond:                                          ; preds = %if.end80
  %66 = load i32, i32* %skipping, align 4
  %tobool81 = icmp ne i32 %66, 0
  br i1 %tobool81, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then40, %if.then32
  %67 = load i32, i32* %loop_next, align 4
  %tobool82 = icmp ne i32 %67, 0
  br i1 %tobool82, label %if.then83, label %if.end88

if.then83:                                        ; preds = %do.end
  %68 = load i32, i32* %loop_next, align 4
  %cmp84 = icmp eq i32 %68, 1
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then83
  br label %for.end97

if.end87:                                         ; preds = %if.then83
  br label %for.inc

if.end88:                                         ; preds = %do.end
  %69 = load i8*, i8** %lineptr.addr, align 4
  %70 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv89 = trunc i32 %sub.ptr.sub to i16
  %71 = load i16*, i16** %words, align 4
  %72 = load i32, i32* %nwordpos, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %nwordpos, align 4
  %arrayidx90 = getelementptr inbounds i16, i16* %71, i32 %72
  store i16 %conv89, i16* %arrayidx90, align 2
  %73 = load i8*, i8** %lptr, align 4
  %74 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast91 = ptrtoint i8* %73 to i32
  %sub.ptr.rhs.cast92 = ptrtoint i8* %74 to i32
  %sub.ptr.sub93 = sub i32 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %conv94 = trunc i32 %sub.ptr.sub93 to i16
  %75 = load i16*, i16** %words, align 4
  %76 = load i32, i32* %nwordpos, align 4
  %inc95 = add nsw i32 %76, 1
  store i32 %inc95, i32* %nwordpos, align 4
  %arrayidx96 = getelementptr inbounds i16, i16* %75, i32 %76
  store i16 %conv94, i16* %arrayidx96, align 2
  %77 = load i8*, i8** %lptr, align 4
  store i8* %77, i8** %lineptr.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end88, %if.end87
  %78 = load %struct.linknode*, %struct.linknode** %wordnode, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %78, i32 0, i32 0
  %79 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %79, %struct.linknode** %wordnode, align 4
  br label %for.cond

for.end97:                                        ; preds = %if.then86, %for.cond
  br label %if.end98

if.end98:                                         ; preds = %for.end97, %entry
  %80 = load i32, i32* %uselex.addr, align 4
  %tobool99 = icmp ne i32 %80, 0
  br i1 %tobool99, label %if.end161, label %if.then100

if.then100:                                       ; preds = %if.end98
  br label %do.body101

do.body101:                                       ; preds = %do.cond158, %if.then100
  br label %for.cond102

for.cond102:                                      ; preds = %if.end124, %do.body101
  %81 = load i8*, i8** %lineptr.addr, align 4
  %82 = load i8, i8* %81, align 1
  %idxprom103 = zext i8 %82 to i32
  %arrayidx104 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom103
  %83 = load i16, i16* %arrayidx104, align 2
  %conv105 = sext i16 %83 to i32
  %and106 = and i32 %conv105, 8
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then108, label %if.else110

if.then108:                                       ; preds = %for.cond102
  %84 = load i8*, i8** %lineptr.addr, align 4
  %incdec.ptr109 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr109, i8** %lineptr.addr, align 4
  br label %if.end124

if.else110:                                       ; preds = %for.cond102
  %85 = load i8*, i8** %lineptr.addr, align 4
  %arrayidx111 = getelementptr inbounds i8, i8* %85, i32 0
  %86 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %86 to i32
  %cmp113 = icmp eq i32 %conv112, 92
  br i1 %cmp113, label %land.lhs.true115, label %if.else122

land.lhs.true115:                                 ; preds = %if.else110
  %87 = load i8*, i8** %lineptr.addr, align 4
  %arrayidx116 = getelementptr inbounds i8, i8* %87, i32 1
  %88 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %88 to i32
  %cmp118 = icmp eq i32 %conv117, 10
  br i1 %cmp118, label %if.then120, label %if.else122

if.then120:                                       ; preds = %land.lhs.true115
  %89 = load i8*, i8** %lineptr.addr, align 4
  %add.ptr121 = getelementptr inbounds i8, i8* %89, i32 2
  store i8* %add.ptr121, i8** %lineptr.addr, align 4
  br label %if.end123

if.else122:                                       ; preds = %land.lhs.true115, %if.else110
  br label %for.end125

if.end123:                                        ; preds = %if.then120
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then108
  br label %for.cond102

for.end125:                                       ; preds = %if.else122
  %90 = load i8*, i8** %lineptr.addr, align 4
  %91 = load i8, i8* %90, align 1
  %tobool126 = icmp ne i8 %91, 0
  br i1 %tobool126, label %if.then127, label %if.end157

if.then127:                                       ; preds = %for.end125
  %92 = load i32, i32* %nwordpos, align 4
  %93 = load i32, i32* %nwords, align 4
  %cmp128 = icmp sge i32 %92, %93
  br i1 %cmp128, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.then127
  %94 = load i32, i32* %nwords, align 4
  %add = add nsw i32 %94, 64
  store i32 %add, i32* %nwords, align 4
  %95 = load i32*, i32** %nwordsp.addr, align 4
  store i32 %add, i32* %95, align 4
  %96 = load i16*, i16** %words, align 4
  %97 = bitcast i16* %96 to i8*
  %98 = load i32, i32* %nwords, align 4
  %mul131 = mul i32 %98, 2
  %call132 = call i8* @zrealloc(i8* %97, i32 %mul131)
  %99 = bitcast i8* %call132 to i16*
  store i16* %99, i16** %words, align 4
  %100 = load i16**, i16*** %wordsp.addr, align 4
  store i16* %99, i16** %100, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.then127
  %101 = load i8*, i8** %lineptr.addr, align 4
  %102 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast134 = ptrtoint i8* %101 to i32
  %sub.ptr.rhs.cast135 = ptrtoint i8* %102 to i32
  %sub.ptr.sub136 = sub i32 %sub.ptr.lhs.cast134, %sub.ptr.rhs.cast135
  %conv137 = trunc i32 %sub.ptr.sub136 to i16
  %103 = load i16*, i16** %words, align 4
  %104 = load i32, i32* %nwordpos, align 4
  %inc138 = add nsw i32 %104, 1
  store i32 %inc138, i32* %nwordpos, align 4
  %arrayidx139 = getelementptr inbounds i16, i16* %103, i32 %104
  store i16 %conv137, i16* %arrayidx139, align 2
  br label %while.cond140

while.cond140:                                    ; preds = %while.body148, %if.end133
  %105 = load i8*, i8** %lineptr.addr, align 4
  %106 = load i8, i8* %105, align 1
  %conv141 = sext i8 %106 to i32
  %tobool142 = icmp ne i32 %conv141, 0
  br i1 %tobool142, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond140
  %107 = load i8*, i8** %lineptr.addr, align 4
  %108 = load i8, i8* %107, align 1
  %idxprom143 = zext i8 %108 to i32
  %arrayidx144 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom143
  %109 = load i16, i16* %arrayidx144, align 2
  %conv145 = sext i16 %109 to i32
  %and146 = and i32 %conv145, 8
  %tobool147 = icmp ne i32 %and146, 0
  %lnot = xor i1 %tobool147, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond140
  %110 = phi i1 [ false, %while.cond140 ], [ %lnot, %land.rhs ]
  br i1 %110, label %while.body148, label %while.end150

while.body148:                                    ; preds = %land.end
  %111 = load i8*, i8** %lineptr.addr, align 4
  %incdec.ptr149 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr149, i8** %lineptr.addr, align 4
  br label %while.cond140

while.end150:                                     ; preds = %land.end
  %112 = load i8*, i8** %lineptr.addr, align 4
  %113 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast151 = ptrtoint i8* %112 to i32
  %sub.ptr.rhs.cast152 = ptrtoint i8* %113 to i32
  %sub.ptr.sub153 = sub i32 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast152
  %conv154 = trunc i32 %sub.ptr.sub153 to i16
  %114 = load i16*, i16** %words, align 4
  %115 = load i32, i32* %nwordpos, align 4
  %inc155 = add nsw i32 %115, 1
  store i32 %inc155, i32* %nwordpos, align 4
  %arrayidx156 = getelementptr inbounds i16, i16* %114, i32 %115
  store i16 %conv154, i16* %arrayidx156, align 2
  br label %if.end157

if.end157:                                        ; preds = %while.end150, %for.end125
  br label %do.cond158

do.cond158:                                       ; preds = %if.end157
  %116 = load i8*, i8** %lineptr.addr, align 4
  %117 = load i8, i8* %116, align 1
  %tobool159 = icmp ne i8 %117, 0
  br i1 %tobool159, label %do.body101, label %do.end160

do.end160:                                        ; preds = %do.cond158
  br label %if.end161

if.end161:                                        ; preds = %do.end160, %if.end98
  %118 = load i32, i32* %nwordpos, align 4
  %119 = load i32*, i32** %nwordposp.addr, align 4
  store i32 %118, i32* %119, align 4
  br label %return

return:                                           ; preds = %if.end161, %if.then2
  ret void
}

declare void @freeheap() #1

declare void @popheap() #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @open(i8*, i32, ...) #1

declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare i32 @unlink(i8*) #1

declare i32 @geteuid() #1

declare i32 @close(i32) #1

declare i32 @fchown(i32, i32, i32) #1

declare i32 @fileno(%struct._IO_FILE*) #1

declare i32 @fchmod(i32, i32) #1

declare void @tokenize(i8*) #1

declare void @remnulargs(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i32 @rename(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @pushhiststack(i8* %hf, i32 %hs, i32 %shs, i32 %level) #0 {
entry:
  %hf.addr = alloca i8*, align 4
  %hs.addr = alloca i32, align 4
  %shs.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %h = alloca %struct.histsave*, align 4
  %curline_in_ring = alloca i32, align 4
  store i8* %hf, i8** %hf.addr, align 4
  store i32 %hs, i32* %hs.addr, align 4
  store i32 %shs, i32* %shs.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* @histactive, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp = icmp eq %struct.histent* %1, @curline
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, i32* %curline_in_ring, align 4
  %3 = load i32, i32* @histsave_stack_pos, align 4
  %4 = load i32, i32* @histsave_stack_size, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %5 = load i32, i32* @histsave_stack_size, align 4
  %add = add nsw i32 %5, 5
  store i32 %add, i32* @histsave_stack_size, align 4
  %6 = load %struct.histsave*, %struct.histsave** @histsave_stack, align 4
  %7 = bitcast %struct.histsave* %6 to i8*
  %8 = load i32, i32* @histsave_stack_size, align 4
  %mul = mul i32 %8, 56
  %call = call i8* @zrealloc(i8* %7, i32 %mul)
  %9 = bitcast i8* %call to %struct.histsave*
  store %struct.histsave* %9, %struct.histsave** @histsave_stack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %10 = load i32, i32* %curline_in_ring, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @unlinkcurline()
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load %struct.histsave*, %struct.histsave** @histsave_stack, align 4
  %12 = load i32, i32* @histsave_stack_pos, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @histsave_stack_pos, align 4
  %arrayidx = getelementptr inbounds %struct.histsave, %struct.histsave* %11, i32 %12
  store %struct.histsave* %arrayidx, %struct.histsave** %h, align 4
  %13 = load %struct.histsave*, %struct.histsave** %h, align 4
  %lasthist = getelementptr inbounds %struct.histsave, %struct.histsave* %13, i32 0, i32 0
  %14 = bitcast %struct.histfile_stats* %lasthist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* bitcast (%struct.histfile_stats* @lasthist to i8*), i32 24, i32 4, i1 false)
  %15 = load i8*, i8** %hf.addr, align 4
  %tobool5 = icmp ne i8* %15, null
  br i1 %tobool5, label %if.then6, label %if.else17

if.then6:                                         ; preds = %if.end4
  %call7 = call i8* @getsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %16 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile = getelementptr inbounds %struct.histsave, %struct.histsave* %16, i32 0, i32 1
  store i8* %call7, i8** %histfile, align 4
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then6
  %17 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile9 = getelementptr inbounds %struct.histsave, %struct.histsave* %17, i32 0, i32 1
  %18 = load i8*, i8** %histfile9, align 4
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %20 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile12 = getelementptr inbounds %struct.histsave, %struct.histsave* %20, i32 0, i32 1
  %21 = load i8*, i8** %histfile12, align 4
  %call13 = call i8* @ztrdup(i8* %21)
  %22 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile14 = getelementptr inbounds %struct.histsave, %struct.histsave* %22, i32 0, i32 1
  store i8* %call13, i8** %histfile14, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.then6
  %23 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile15 = getelementptr inbounds %struct.histsave, %struct.histsave* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %histfile15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  br label %if.end19

if.else17:                                        ; preds = %if.end4
  %24 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histfile18 = getelementptr inbounds %struct.histsave, %struct.histsave* %24, i32 0, i32 1
  store i8* null, i8** %histfile18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.end16
  %25 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %26 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histtab = getelementptr inbounds %struct.histsave, %struct.histsave* %26, i32 0, i32 2
  store %struct.hashtable* %25, %struct.hashtable** %histtab, align 4
  %27 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %28 = load %struct.histsave*, %struct.histsave** %h, align 4
  %hist_ring = getelementptr inbounds %struct.histsave, %struct.histsave* %28, i32 0, i32 3
  store %struct.histent* %27, %struct.histent** %hist_ring, align 4
  %29 = load i32, i32* @curhist, align 4
  %30 = load %struct.histsave*, %struct.histsave** %h, align 4
  %curhist = getelementptr inbounds %struct.histsave, %struct.histsave* %30, i32 0, i32 4
  store i32 %29, i32* %curhist, align 4
  %31 = load i32, i32* @histlinect, align 4
  %32 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histlinect = getelementptr inbounds %struct.histsave, %struct.histsave* %32, i32 0, i32 5
  store i32 %31, i32* %histlinect, align 4
  %33 = load i32, i32* @histsiz, align 4
  %34 = load %struct.histsave*, %struct.histsave** %h, align 4
  %histsiz = getelementptr inbounds %struct.histsave, %struct.histsave* %34, i32 0, i32 6
  store i32 %33, i32* %histsiz, align 4
  %35 = load i32, i32* @savehistsiz, align 4
  %36 = load %struct.histsave*, %struct.histsave** %h, align 4
  %savehistsiz = getelementptr inbounds %struct.histsave, %struct.histsave* %36, i32 0, i32 7
  store i32 %35, i32* %savehistsiz, align 4
  %37 = load i32, i32* %level.addr, align 4
  %38 = load %struct.histsave*, %struct.histsave** %h, align 4
  %locallevel = getelementptr inbounds %struct.histsave, %struct.histsave* %38, i32 0, i32 8
  store i32 %37, i32* %locallevel, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.histfile_stats* @lasthist to i8*), i8 0, i32 24, i32 4, i1 false)
  %39 = load i8*, i8** %hf.addr, align 4
  %tobool20 = icmp ne i8* %39, null
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end19
  %40 = load i8*, i8** %hf.addr, align 4
  %41 = load i8, i8* %40, align 1
  %tobool22 = icmp ne i8 %41, 0
  br i1 %tobool22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.then21
  %42 = load i8*, i8** %hf.addr, align 4
  %call24 = call i8* @ztrdup(i8* %42)
  %call25 = call %struct.param* @setsparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %call24)
  br label %if.end27

if.else26:                                        ; preds = %if.then21
  call void @unsetparam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end19
  store %struct.histent* null, %struct.histent** @hist_ring, align 4
  store i32 0, i32* @histlinect, align 4
  store i32 0, i32* @curhist, align 4
  %43 = load i32, i32* @zleactive, align 4
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %44 = load i32, i32* @curhist, align 4
  %call31 = call i8* (i32, ...) @zleentry(i32 8, i32 %44)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %45 = load i32, i32* %hs.addr, align 4
  store i32 %45, i32* @histsiz, align 4
  %46 = load i32, i32* %shs.addr, align 4
  store i32 %46, i32* @savehistsiz, align 4
  call void @inithist()
  %47 = load i32, i32* %curline_in_ring, align 4
  %tobool33 = icmp ne i32 %47, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @linkcurline()
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %48 = load i32, i32* @histsave_stack_pos, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind
define internal i32 @flockhistfile(i8* %fn, i32 %keep_trying) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca i8*, align 4
  %keep_trying.addr = alloca i32, align 4
  %lck = alloca %struct.flock, align 4
  %sleep_us = alloca i32, align 4
  %end_time = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 4
  store i32 %keep_trying, i32* %keep_trying.addr, align 4
  store i32 65536, i32* %sleep_us, align 4
  %0 = load i32, i32* @flock_fd, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fn.addr, align 4
  %call = call i8* @unmeta(i8* %1)
  %call1 = call i32 (i8*, i32, ...) @open(i8* %call, i32 258)
  store i32 %call1, i32* @flock_fd, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %call4 = call i32* @__errno_location()
  %2 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %2, 2
  %cond = select i1 %cmp5, i32 0, i32 2
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 0
  store i16 1, i16* %l_type, align 4
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 1
  store i16 0, i16* %l_whence, align 2
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 2
  store i32 0, i32* %l_start, align 4
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %lck, i32 0, i32 3
  store i32 0, i32* %l_len, align 4
  %call7 = call i32 @time(i32* null)
  %add = add nsw i32 %call7, 10
  store i32 %add, i32* %end_time, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end6
  %3 = load i32, i32* @flock_fd, align 4
  %call8 = call i32 (i32, i32, ...) @fcntl(i32 %3, i32 14, %struct.flock* %lck)
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %keep_trying.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %while.body
  %call10 = call i32 @time(i32* null)
  %5 = load i32, i32* %end_time, align 4
  %cmp11 = icmp sge i32 %call10, %5
  br i1 %cmp11, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %sleep_us, align 4
  %7 = load i32, i32* %end_time, align 4
  %call13 = call i32 @zsleep_random(i32 %6, i32 %7)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %while.body
  %8 = load i32, i32* @flock_fd, align 4
  %call16 = call i32 @close(i32 %8)
  store i32 -1, i32* @flock_fd, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false12
  %9 = load i32, i32* %sleep_us, align 4
  %shl = shl i32 %9, 1
  store i32 %shl, i32* %sleep_us, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then15, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @symlink(i8*, i8*) #1

declare i32 @lstat(i8*, %struct.stat*) #1

; Function Attrs: noinline nounwind
define internal i32 @checklocktime(i8* %lockfile, i32* %sleep_usp, i32 %then) #0 {
entry:
  %retval = alloca i32, align 4
  %lockfile.addr = alloca i8*, align 4
  %sleep_usp.addr = alloca i32*, align 4
  %then.addr = alloca i32, align 4
  %now = alloca i32, align 4
  store i8* %lockfile, i8** %lockfile.addr, align 4
  store i32* %sleep_usp, i32** %sleep_usp.addr, align 4
  store i32 %then, i32* %then.addr, align 4
  %call = call i32 @time(i32* null)
  store i32 %call, i32* %now, align 4
  %0 = load i32, i32* %now, align 4
  %add = add nsw i32 %0, 10
  %1 = load i32, i32* %then.addr, align 4
  %cmp = icmp slt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  store i32 17, i32* %call1, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %now, align 4
  %3 = load i32, i32* %then.addr, align 4
  %sub = sub nsw i32 %2, %3
  %cmp2 = icmp slt i32 %sub, 10
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load i32*, i32** %sleep_usp.addr, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %then.addr, align 4
  %add4 = add nsw i32 %6, 10
  %call5 = call i32 @zsleep_random(i32 %5, i32 %add4)
  %7 = load i32*, i32** %sleep_usp.addr, align 4
  %8 = load i32, i32* %7, align 4
  %shl = shl i32 %8, 1
  store i32 %shl, i32* %7, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %lockfile.addr, align 4
  %call6 = call i32 @unlink(i8* %9)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define %union.linkroot* @bufferwords(%union.linkroot* %list, i8* %buf, i32* %index, i32 %flags) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %buf.addr = alloca i8*, align 4
  %index.addr = alloca i32*, align 4
  %flags.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %cur = alloca i32, align 4
  %got = alloca i32, align 4
  %ne = alloca i32, align 4
  %owb = alloca i32, align 4
  %owe = alloca i32, align 4
  %oadx = alloca i32, align 4
  %onc = alloca i32, align 4
  %ona = alloca i32, align 4
  %ocs = alloca i32, align 4
  %oll = alloca i32, align 4
  %forloop = alloca i32, align 4
  %rcquotes = alloca i32, align 4
  %p = alloca i8*, align 4
  %addedspaceptr = alloca i8*, align 4
  %l = alloca i32, align 4
  %ll = alloca i32, align 4
  %cs = alloca i32, align 4
  %linein = alloca i8*, align 4
  %plen = alloca i32, align 4
  %b = alloca [20 x i8], align 1
  %plen202 = alloca i32, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32* %index, i32** %index.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %num, align 4
  store i32 -1, i32* %cur, align 4
  store i32 0, i32* %got, align 4
  %0 = load i32, i32* @noerrs, align 4
  store i32 %0, i32* %ne, align 4
  %1 = load i32, i32* @wb, align 4
  store i32 %1, i32* %owb, align 4
  %2 = load i32, i32* @we, align 4
  store i32 %2, i32* %owe, align 4
  %3 = load i32, i32* @addedx, align 4
  store i32 %3, i32* %oadx, align 4
  %4 = load i32, i32* @nocomments, align 4
  store i32 %4, i32* %onc, align 4
  %5 = load i32, i32* @noaliases, align 4
  store i32 %5, i32* %ona, align 4
  %6 = load i32, i32* @zlemetacs, align 4
  store i32 %6, i32* %ocs, align 4
  %7 = load i32, i32* @zlemetall, align 4
  store i32 %7, i32* %oll, align 4
  store i32 0, i32* %forloop, align 4
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %rcquotes, align 4
  %9 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %tobool = icmp ne %union.linkroot* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %list.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  store i32 0, i32* @addedx, align 4
  store i32 1, i32* @noerrs, align 4
  call void @zcontext_save()
  %10 = load i32, i32* %flags.addr, align 4
  %or = or i32 %10, 1
  store i32 %or, i32* @lexflags, align 4
  %11 = load i32, i32* %flags.addr, align 4
  %and = and i32 %11, 12
  %tobool1 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @nocomments, align 4
  %12 = load i8*, i8** %buf.addr, align 4
  %tobool2 = icmp ne i8* %12, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 4
  %call4 = call i32 @strlen(i8* %13)
  store i32 %call4, i32* %l, align 4
  %14 = load i32, i32* %l, align 4
  %add = add nsw i32 %14, 2
  %call5 = call i8* @zhalloc(i32 %add)
  store i8* %call5, i8** %p, align 4
  %15 = load i8*, i8** %p, align 4
  %16 = load i8*, i8** %buf.addr, align 4
  %17 = load i32, i32* %l, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 %17, i32 1, i1 false)
  %18 = load i8*, i8** %p, align 4
  %19 = load i32, i32* %l, align 4
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 %19
  store i8* %add.ptr, i8** %addedspaceptr, align 4
  %20 = load i8*, i8** %addedspaceptr, align 4
  store i8 32, i8* %20, align 1
  %21 = load i8*, i8** %addedspaceptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %21, i32 1
  store i8 0, i8* %arrayidx, align 1
  %22 = load i8*, i8** %p, align 4
  call void @inpush(i8* %22, i32 0, %struct.alias* null)
  %23 = load i8*, i8** %p, align 4
  %call6 = call i32 @strlen(i8* %23)
  store i32 %call6, i32* @zlemetall, align 4
  %24 = load i32, i32* @zlemetall, align 4
  %add7 = add nsw i32 %24, 1
  store i32 %add7, i32* @zlemetacs, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end
  %call8 = call i8* (i32, ...) @zleentry(i32 0, i32* %ll, i32* %cs)
  store i8* %call8, i8** %linein, align 4
  %25 = load i32, i32* %ll, align 4
  %add9 = add nsw i32 %25, 1
  store i32 %add9, i32* @zlemetall, align 4
  %26 = load i32, i32* %cs, align 4
  store i32 %26, i32* @zlemetacs, align 4
  %27 = load i32, i32* @isfirstln, align 4
  %tobool10 = icmp ne i32 %27, 0
  br i1 %tobool10, label %if.else37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %28 = load i8*, i8** @chline, align 4
  %tobool11 = icmp ne i8* %28, null
  br i1 %tobool11, label %if.then12, label %if.else37

if.then12:                                        ; preds = %land.lhs.true
  %29 = load i8*, i8** @hptr, align 4
  %30 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = load i32, i32* %ll, align 4
  %add13 = add nsw i32 %sub.ptr.sub, %31
  %add14 = add nsw i32 %add13, 2
  %call15 = call i8* @zhalloc(i32 %add14)
  store i8* %call15, i8** %p, align 4
  %32 = load i8*, i8** %p, align 4
  %33 = load i8*, i8** @chline, align 4
  %34 = load i8*, i8** @hptr, align 4
  %35 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast16 = ptrtoint i8* %34 to i32
  %sub.ptr.rhs.cast17 = ptrtoint i8* %35 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 %sub.ptr.sub18, i32 1, i1 false)
  %36 = load i8*, i8** %p, align 4
  %37 = load i8*, i8** @hptr, align 4
  %38 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast19 = ptrtoint i8* %37 to i32
  %sub.ptr.rhs.cast20 = ptrtoint i8* %38 to i32
  %sub.ptr.sub21 = sub i32 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %add.ptr22 = getelementptr inbounds i8, i8* %36, i32 %sub.ptr.sub21
  %39 = load i8*, i8** %linein, align 4
  %40 = load i32, i32* %ll, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr22, i8* %39, i32 %40, i32 1, i1 false)
  %41 = load i8*, i8** %p, align 4
  %42 = load i8*, i8** @hptr, align 4
  %43 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast23 = ptrtoint i8* %42 to i32
  %sub.ptr.rhs.cast24 = ptrtoint i8* %43 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %add.ptr26 = getelementptr inbounds i8, i8* %41, i32 %sub.ptr.sub25
  %44 = load i32, i32* %ll, align 4
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr26, i32 %44
  store i8* %add.ptr27, i8** %addedspaceptr, align 4
  %45 = load i8*, i8** %addedspaceptr, align 4
  store i8 32, i8* %45, align 1
  %46 = load i8*, i8** %addedspaceptr, align 4
  %arrayidx28 = getelementptr inbounds i8, i8* %46, i32 1
  store i8 0, i8* %arrayidx28, align 1
  %47 = load i8*, i8** %p, align 4
  call void @inpush(i8* %47, i32 0, %struct.alias* null)
  %48 = load i8*, i8** @hptr, align 4
  %49 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast29 = ptrtoint i8* %48 to i32
  %sub.ptr.rhs.cast30 = ptrtoint i8* %49 to i32
  %sub.ptr.sub31 = sub i32 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %50 = load i32, i32* @zlemetall, align 4
  %add32 = add nsw i32 %50, %sub.ptr.sub31
  store i32 %add32, i32* @zlemetall, align 4
  %51 = load i8*, i8** @hptr, align 4
  %52 = load i8*, i8** @chline, align 4
  %sub.ptr.lhs.cast33 = ptrtoint i8* %51 to i32
  %sub.ptr.rhs.cast34 = ptrtoint i8* %52 to i32
  %sub.ptr.sub35 = sub i32 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %53 = load i32, i32* @zlemetacs, align 4
  %add36 = add nsw i32 %53, %sub.ptr.sub35
  store i32 %add36, i32* @zlemetacs, align 4
  br label %if.end42

if.else37:                                        ; preds = %land.lhs.true, %if.else
  %54 = load i32, i32* %ll, align 4
  %add38 = add nsw i32 %54, 2
  %call39 = call i8* @zhalloc(i32 %add38)
  store i8* %call39, i8** %p, align 4
  %55 = load i8*, i8** %p, align 4
  %56 = load i8*, i8** %linein, align 4
  %57 = load i32, i32* %ll, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 %57, i32 1, i1 false)
  %58 = load i8*, i8** %p, align 4
  %59 = load i32, i32* %ll, align 4
  %add.ptr40 = getelementptr inbounds i8, i8* %58, i32 %59
  store i8* %add.ptr40, i8** %addedspaceptr, align 4
  %60 = load i8*, i8** %addedspaceptr, align 4
  store i8 32, i8* %60, align 1
  %61 = load i8*, i8** %p, align 4
  %62 = load i32, i32* @zlemetall, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %61, i32 %62
  store i8 0, i8* %arrayidx41, align 1
  %63 = load i8*, i8** %p, align 4
  call void @inpush(i8* %63, i32 0, %struct.alias* null)
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then12
  %64 = load i8*, i8** %linein, align 4
  call void @zsfree(i8* %64)
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then3
  %65 = load i32, i32* @zlemetacs, align 4
  %tobool44 = icmp ne i32 %65, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %66 = load i32, i32* @zlemetacs, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* @zlemetacs, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  call void @strinbeg(i32 0)
  store i32 1, i32* @noaliases, align 4
  br label %do.body

do.body:                                          ; preds = %land.end190, %if.end46
  %67 = load i32, i32* @incond, align 4
  %tobool47 = icmp ne i32 %67, 0
  br i1 %tobool47, label %if.then48, label %if.end62

if.then48:                                        ; preds = %do.body
  %68 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %68, 40
  br i1 %cmp, label %land.lhs.true50, label %land.end

land.lhs.true50:                                  ; preds = %if.then48
  %69 = load i32, i32* @tok, align 4
  %cmp51 = icmp ne i32 %69, 6
  br i1 %cmp51, label %land.lhs.true53, label %land.end

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %70 = load i32, i32* @tok, align 4
  %cmp54 = icmp ne i32 %70, 8
  br i1 %cmp54, label %land.lhs.true56, label %land.end

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %71 = load i32, i32* @tok, align 4
  %cmp57 = icmp ne i32 %71, 9
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true56
  %72 = load i32, i32* @tok, align 4
  %cmp59 = icmp ne i32 %72, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true56, %land.lhs.true53, %land.lhs.true50, %if.then48
  %73 = phi i1 [ false, %land.lhs.true56 ], [ false, %land.lhs.true53 ], [ false, %land.lhs.true50 ], [ false, %if.then48 ], [ %cmp59, %land.rhs ]
  %land.ext = zext i1 %73 to i32
  %add61 = add nsw i32 1, %land.ext
  store i32 %add61, i32* @incond, align 4
  br label %if.end62

if.end62:                                         ; preds = %land.end, %do.body
  call void @ctxtlex()
  %74 = load i32, i32* @tok, align 4
  %cmp63 = icmp eq i32 %74, 37
  br i1 %cmp63, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62
  %75 = load i32, i32* @tok, align 4
  %cmp65 = icmp eq i32 %75, 38
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %lor.lhs.false, %if.end62
  br label %do.end

if.end68:                                         ; preds = %lor.lhs.false
  %76 = load i32, i32* @tok, align 4
  %cmp69 = icmp eq i32 %76, 52
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.end68
  store i32 5, i32* %forloop, align 4
  br label %if.end82

if.else72:                                        ; preds = %if.end68
  %77 = load i32, i32* %forloop, align 4
  switch i32 %77, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb77
    i32 3, label %sw.bb77
    i32 4, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.else72
  %78 = load i32, i32* @tok, align 4
  %cmp73 = icmp ne i32 %78, 29
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %sw.bb
  store i32 0, i32* %forloop, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %sw.bb
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.else72, %if.else72, %if.else72
  %79 = load i32, i32* @tok, align 4
  %cmp78 = icmp ne i32 %79, 28
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %sw.bb77
  store i32 0, i32* %forloop, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %sw.bb77
  br label %sw.epilog

sw.default:                                       ; preds = %if.else72
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end81, %if.end76
  br label %if.end82

if.end82:                                         ; preds = %sw.epilog, %if.then71
  %80 = load i8*, i8** @tokstr, align 4
  %tobool83 = icmp ne i8* %80, null
  br i1 %tobool83, label %if.then84, label %if.else128

if.then84:                                        ; preds = %if.end82
  %81 = load i32, i32* @tok, align 4
  switch i32 %81, label %sw.default94 [
    i32 36, label %sw.bb85
    i32 28, label %sw.bb87
  ]

sw.bb85:                                          ; preds = %if.then84
  %82 = load i8*, i8** @tokstr, align 4
  %call86 = call i8* @dyncat(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store i8* %call86, i8** %p, align 4
  br label %sw.epilog96

sw.bb87:                                          ; preds = %if.then84
  %83 = load i32, i32* %forloop, align 4
  %tobool88 = icmp ne i32 %83, 0
  br i1 %tobool88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %sw.bb87
  %84 = load i8*, i8** @tokstr, align 4
  %call90 = call i8* @dyncat(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store i8* %call90, i8** %p, align 4
  br label %if.end93

if.else91:                                        ; preds = %sw.bb87
  %85 = load i8*, i8** @tokstr, align 4
  %call92 = call i8* @zhtricat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call92, i8** %p, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then89
  br label %sw.epilog96

sw.default94:                                     ; preds = %if.then84
  %86 = load i8*, i8** @tokstr, align 4
  %call95 = call i8* @dupstring(i8* %86)
  store i8* %call95, i8** %p, align 4
  br label %sw.epilog96

sw.epilog96:                                      ; preds = %sw.default94, %if.end93, %sw.bb85
  %87 = load i8*, i8** %p, align 4
  %88 = load i8, i8* %87, align 1
  %tobool97 = icmp ne i8 %88, 0
  br i1 %tobool97, label %if.then98, label %if.end127

if.then98:                                        ; preds = %sw.epilog96
  %89 = load i8*, i8** %p, align 4
  call void @untokenize(i8* %89)
  %call99 = call i8* @ingetptr()
  %90 = load i8*, i8** %addedspaceptr, align 4
  %add.ptr100 = getelementptr inbounds i8, i8* %90, i32 1
  %cmp101 = icmp eq i8* %call99, %add.ptr100
  br i1 %cmp101, label %if.then103, label %if.end124

if.then103:                                       ; preds = %if.then98
  %91 = load i8*, i8** %p, align 4
  %call104 = call i32 @strlen(i8* %91)
  store i32 %call104, i32* %plen, align 4
  %92 = load i32, i32* %plen, align 4
  %tobool105 = icmp ne i32 %92, 0
  br i1 %tobool105, label %land.lhs.true106, label %if.end123

land.lhs.true106:                                 ; preds = %if.then103
  %93 = load i8*, i8** %p, align 4
  %94 = load i32, i32* %plen, align 4
  %sub = sub nsw i32 %94, 1
  %arrayidx107 = getelementptr inbounds i8, i8* %93, i32 %sub
  %95 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %95 to i32
  %cmp109 = icmp eq i32 %conv108, 32
  br i1 %cmp109, label %land.lhs.true111, label %if.end123

land.lhs.true111:                                 ; preds = %land.lhs.true106
  %96 = load i32, i32* %plen, align 4
  %cmp112 = icmp eq i32 %96, 1
  br i1 %cmp112, label %if.then120, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %land.lhs.true111
  %97 = load i8*, i8** %p, align 4
  %98 = load i32, i32* %plen, align 4
  %sub115 = sub nsw i32 %98, 2
  %arrayidx116 = getelementptr inbounds i8, i8* %97, i32 %sub115
  %99 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %99 to i32
  %cmp118 = icmp ne i32 %conv117, -125
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %lor.lhs.false114, %land.lhs.true111
  %100 = load i8*, i8** %p, align 4
  %101 = load i32, i32* %plen, align 4
  %sub121 = sub nsw i32 %101, 1
  %arrayidx122 = getelementptr inbounds i8, i8* %100, i32 %sub121
  store i8 0, i8* %arrayidx122, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %lor.lhs.false114, %land.lhs.true106, %if.then103
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then98
  %102 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %103 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list125 = bitcast %union.linkroot* %103 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list125, i32 0, i32 1
  %104 = load %struct.linknode*, %struct.linknode** %last, align 4
  %105 = load i8*, i8** %p, align 4
  %call126 = call %struct.linknode* @insertlinknode(%union.linkroot* %102, %struct.linknode* %104, i8* %105)
  %106 = load i32, i32* %num, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %sw.epilog96
  br label %if.end161

if.else128:                                       ; preds = %if.end82
  %107 = load i8*, i8** %buf.addr, align 4
  %tobool129 = icmp ne i8* %107, null
  br i1 %tobool129, label %if.then130, label %if.end160

if.then130:                                       ; preds = %if.else128
  %108 = load i32, i32* @tok, align 4
  %cmp131 = icmp uge i32 %108, 10
  br i1 %cmp131, label %land.lhs.true133, label %if.else148

land.lhs.true133:                                 ; preds = %if.then130
  %109 = load i32, i32* @tok, align 4
  %cmp134 = icmp ule i32 %109, 24
  br i1 %cmp134, label %land.lhs.true136, label %if.else148

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %110 = load i32, i32* @tokfd, align 4
  %cmp137 = icmp sge i32 %110, 0
  br i1 %cmp137, label %if.then139, label %if.else148

if.then139:                                       ; preds = %land.lhs.true136
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %b, i32 0, i32 0
  %111 = load i32, i32* @tokfd, align 4
  %112 = load i32, i32* @tok, align 4
  %arrayidx140 = getelementptr inbounds [63 x i8*], [63 x i8*]* @tokstrings, i32 0, i32 %112
  %113 = load i8*, i8** %arrayidx140, align 4
  %call141 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 %111, i8* %113)
  %114 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %115 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list142 = bitcast %union.linkroot* %115 to %struct.linklist*
  %last143 = getelementptr inbounds %struct.linklist, %struct.linklist* %list142, i32 0, i32 1
  %116 = load %struct.linknode*, %struct.linknode** %last143, align 4
  %arraydecay144 = getelementptr inbounds [20 x i8], [20 x i8]* %b, i32 0, i32 0
  %call145 = call i8* @dupstring(i8* %arraydecay144)
  %call146 = call %struct.linknode* @insertlinknode(%union.linkroot* %114, %struct.linknode* %116, i8* %call145)
  %117 = load i32, i32* %num, align 4
  %inc147 = add nsw i32 %117, 1
  store i32 %inc147, i32* %num, align 4
  br label %if.end159

if.else148:                                       ; preds = %land.lhs.true136, %land.lhs.true133, %if.then130
  %118 = load i32, i32* @tok, align 4
  %cmp149 = icmp ne i32 %118, 2
  br i1 %cmp149, label %if.then151, label %if.end158

if.then151:                                       ; preds = %if.else148
  %119 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %120 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list152 = bitcast %union.linkroot* %120 to %struct.linklist*
  %last153 = getelementptr inbounds %struct.linklist, %struct.linklist* %list152, i32 0, i32 1
  %121 = load %struct.linknode*, %struct.linknode** %last153, align 4
  %122 = load i32, i32* @tok, align 4
  %arrayidx154 = getelementptr inbounds [63 x i8*], [63 x i8*]* @tokstrings, i32 0, i32 %122
  %123 = load i8*, i8** %arrayidx154, align 4
  %call155 = call i8* @dupstring(i8* %123)
  %call156 = call %struct.linknode* @insertlinknode(%union.linkroot* %119, %struct.linknode* %121, i8* %call155)
  %124 = load i32, i32* %num, align 4
  %inc157 = add nsw i32 %124, 1
  store i32 %inc157, i32* %num, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.else148
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then139
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.else128
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end127
  %125 = load i32, i32* %forloop, align 4
  %tobool162 = icmp ne i32 %125, 0
  br i1 %tobool162, label %if.then163, label %if.end173

if.then163:                                       ; preds = %if.end161
  %126 = load i32, i32* %forloop, align 4
  %cmp164 = icmp eq i32 %126, 1
  br i1 %cmp164, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.then163
  %127 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %128 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list167 = bitcast %union.linkroot* %128 to %struct.linklist*
  %last168 = getelementptr inbounds %struct.linklist, %struct.linklist* %list167, i32 0, i32 1
  %129 = load %struct.linknode*, %struct.linknode** %last168, align 4
  %call169 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %call170 = call %struct.linknode* @insertlinknode(%union.linkroot* %127, %struct.linknode* %129, i8* %call169)
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.then163
  %130 = load i32, i32* %forloop, align 4
  %dec172 = add nsw i32 %130, -1
  store i32 %dec172, i32* %forloop, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %if.end161
  %131 = load i32, i32* %got, align 4
  %tobool174 = icmp ne i32 %131, 0
  br i1 %tobool174, label %if.end179, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %if.end173
  %132 = load i32, i32* @lexflags, align 4
  %tobool176 = icmp ne i32 %132, 0
  br i1 %tobool176, label %if.end179, label %if.then177

if.then177:                                       ; preds = %land.lhs.true175
  store i32 1, i32* %got, align 4
  %133 = load i32, i32* %num, align 4
  %sub178 = sub nsw i32 %133, 1
  store i32 %sub178, i32* %cur, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %land.lhs.true175, %if.end173
  br label %do.cond

do.cond:                                          ; preds = %if.end179
  %134 = load i32, i32* @tok, align 4
  %cmp180 = icmp ne i32 %134, 37
  br i1 %cmp180, label %land.lhs.true182, label %land.end190

land.lhs.true182:                                 ; preds = %do.cond
  %135 = load i32, i32* @tok, align 4
  %cmp183 = icmp ne i32 %135, 38
  br i1 %cmp183, label %land.rhs185, label %land.end190

land.rhs185:                                      ; preds = %land.lhs.true182
  %136 = load i32, i32* @errflag, align 4
  %and186 = and i32 %136, 2
  %tobool187 = icmp ne i32 %and186, 0
  %lnot188 = xor i1 %tobool187, true
  br label %land.end190

land.end190:                                      ; preds = %land.rhs185, %land.lhs.true182, %do.cond
  %137 = phi i1 [ false, %land.lhs.true182 ], [ false, %do.cond ], [ %lnot188, %land.rhs185 ]
  br i1 %137, label %do.body, label %do.end

do.end:                                           ; preds = %land.end190, %if.then67
  %138 = load i8*, i8** %buf.addr, align 4
  %tobool192 = icmp ne i8* %138, null
  br i1 %tobool192, label %land.lhs.true193, label %if.end229

land.lhs.true193:                                 ; preds = %do.end
  %139 = load i32, i32* @tok, align 4
  %cmp194 = icmp eq i32 %139, 38
  br i1 %cmp194, label %land.lhs.true196, label %if.end229

land.lhs.true196:                                 ; preds = %land.lhs.true193
  %140 = load i8*, i8** @tokstr, align 4
  %tobool197 = icmp ne i8* %140, null
  br i1 %tobool197, label %land.lhs.true198, label %if.end229

land.lhs.true198:                                 ; preds = %land.lhs.true196
  %141 = load i8*, i8** @tokstr, align 4
  %142 = load i8, i8* %141, align 1
  %conv199 = sext i8 %142 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %if.then201, label %if.end229

if.then201:                                       ; preds = %land.lhs.true198
  %143 = load i8*, i8** @tokstr, align 4
  %call203 = call i8* @dupstring(i8* %143)
  store i8* %call203, i8** %p, align 4
  call void @untokenize(i8* %call203)
  %144 = load i8*, i8** %p, align 4
  %call204 = call i32 @strlen(i8* %144)
  store i32 %call204, i32* %plen202, align 4
  %145 = load i32, i32* %plen202, align 4
  %tobool205 = icmp ne i32 %145, 0
  br i1 %tobool205, label %land.lhs.true206, label %if.end224

land.lhs.true206:                                 ; preds = %if.then201
  %146 = load i8*, i8** %p, align 4
  %147 = load i32, i32* %plen202, align 4
  %sub207 = sub nsw i32 %147, 1
  %arrayidx208 = getelementptr inbounds i8, i8* %146, i32 %sub207
  %148 = load i8, i8* %arrayidx208, align 1
  %conv209 = sext i8 %148 to i32
  %cmp210 = icmp eq i32 %conv209, 32
  br i1 %cmp210, label %land.lhs.true212, label %if.end224

land.lhs.true212:                                 ; preds = %land.lhs.true206
  %149 = load i32, i32* %plen202, align 4
  %cmp213 = icmp eq i32 %149, 1
  br i1 %cmp213, label %if.then221, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %land.lhs.true212
  %150 = load i8*, i8** %p, align 4
  %151 = load i32, i32* %plen202, align 4
  %sub216 = sub nsw i32 %151, 2
  %arrayidx217 = getelementptr inbounds i8, i8* %150, i32 %sub216
  %152 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %152 to i32
  %cmp219 = icmp ne i32 %conv218, -125
  br i1 %cmp219, label %if.then221, label %if.end224

if.then221:                                       ; preds = %lor.lhs.false215, %land.lhs.true212
  %153 = load i8*, i8** %p, align 4
  %154 = load i32, i32* %plen202, align 4
  %sub222 = sub nsw i32 %154, 1
  %arrayidx223 = getelementptr inbounds i8, i8* %153, i32 %sub222
  store i8 0, i8* %arrayidx223, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then221, %lor.lhs.false215, %land.lhs.true206, %if.then201
  %155 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %156 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %list225 = bitcast %union.linkroot* %156 to %struct.linklist*
  %last226 = getelementptr inbounds %struct.linklist, %struct.linklist* %list225, i32 0, i32 1
  %157 = load %struct.linknode*, %struct.linknode** %last226, align 4
  %158 = load i8*, i8** %p, align 4
  %call227 = call %struct.linknode* @insertlinknode(%union.linkroot* %155, %struct.linknode* %157, i8* %158)
  %159 = load i32, i32* %num, align 4
  %inc228 = add nsw i32 %159, 1
  store i32 %inc228, i32* %num, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.end224, %land.lhs.true198, %land.lhs.true196, %land.lhs.true193, %do.end
  %160 = load i32, i32* %cur, align 4
  %cmp230 = icmp slt i32 %160, 0
  br i1 %cmp230, label %land.lhs.true232, label %if.end236

land.lhs.true232:                                 ; preds = %if.end229
  %161 = load i32, i32* %num, align 4
  %tobool233 = icmp ne i32 %161, 0
  br i1 %tobool233, label %if.then234, label %if.end236

if.then234:                                       ; preds = %land.lhs.true232
  %162 = load i32, i32* %num, align 4
  %sub235 = sub nsw i32 %162, 1
  store i32 %sub235, i32* %cur, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then234, %land.lhs.true232, %if.end229
  %163 = load i32, i32* %ona, align 4
  store i32 %163, i32* @noaliases, align 4
  call void @strinend()
  call void @inpop()
  %164 = load i32, i32* @errflag, align 4
  %and237 = and i32 %164, -2
  store i32 %and237, i32* @errflag, align 4
  %165 = load i32, i32* %onc, align 4
  store i32 %165, i32* @nocomments, align 4
  %166 = load i32, i32* %ne, align 4
  store i32 %166, i32* @noerrs, align 4
  call void @zcontext_restore()
  %167 = load i32, i32* %ocs, align 4
  store i32 %167, i32* @zlemetacs, align 4
  %168 = load i32, i32* %oll, align 4
  store i32 %168, i32* @zlemetall, align 4
  %169 = load i32, i32* %owb, align 4
  store i32 %169, i32* @wb, align 4
  %170 = load i32, i32* %owe, align 4
  store i32 %170, i32* @we, align 4
  %171 = load i32, i32* %oadx, align 4
  store i32 %171, i32* @addedx, align 4
  %172 = load i32, i32* %rcquotes, align 4
  %conv238 = trunc i32 %172 to i8
  store i8 %conv238, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %173 = load i32*, i32** %index.addr, align 4
  %tobool239 = icmp ne i32* %173, null
  br i1 %tobool239, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.end236
  %174 = load i32, i32* %cur, align 4
  %175 = load i32*, i32** %index.addr, align 4
  store i32 %174, i32* %175, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end236
  %176 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  ret %union.linkroot* %176
}

declare void @zcontext_save() #1

declare void @inpush(i8*, i32, %struct.alias*) #1

declare void @ctxtlex() #1

declare i8* @dyncat(i8*, i8*) #1

declare void @untokenize(i8*) #1

declare i8* @ingetptr() #1

declare void @inpop() #1

declare void @zcontext_restore() #1

declare i32 @countlinknodes(%union.linkroot*) #1

declare i8* @zrealloc(i8*, i32) #1

declare i32 @strpfx(i8*, i8*) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare void @unsetparam(i8*) #1

declare void @deletehashtable(%struct.hashtable*) #1

; Function Attrs: noinline nounwind
define i32 @saveandpophiststack(i32 %pop_through, i32 %writeflags) #0 {
entry:
  %retval = alloca i32, align 4
  %pop_through.addr = alloca i32, align 4
  %writeflags.addr = alloca i32, align 4
  store i32 %pop_through, i32* %pop_through.addr, align 4
  store i32 %writeflags, i32* %writeflags.addr, align 4
  %0 = load i32, i32* %pop_through.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @histsave_stack_pos, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %pop_through.addr, align 4
  %add1 = add nsw i32 %2, %add
  store i32 %add1, i32* %pop_through.addr, align 4
  %3 = load i32, i32* %pop_through.addr, align 4
  %cmp2 = icmp sle i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 1, i32* %pop_through.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %4 = load i32, i32* %pop_through.addr, align 4
  %cmp5 = icmp sgt i32 %4, 1
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.histsave*, %struct.histsave** @histsave_stack, align 4
  %6 = load i32, i32* %pop_through.addr, align 4
  %sub = sub nsw i32 %6, 2
  %arrayidx = getelementptr inbounds %struct.histsave, %struct.histsave* %5, i32 %sub
  %locallevel = getelementptr inbounds %struct.histsave, %struct.histsave* %arrayidx, i32 0, i32 8
  %7 = load i32, i32* %locallevel, align 4
  %8 = load i32, i32* @locallevel, align 4
  %cmp6 = icmp sgt i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %pop_through.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %pop_through.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* @histsave_stack_pos, align 4
  %12 = load i32, i32* %pop_through.addr, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end9
  %13 = load i32, i32* @nohistsave, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.body
  %14 = load i32, i32* %writeflags.addr, align 4
  call void @savehistfile(i8* null, i32 1, i32 %14)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body
  %call = call i32 @pophiststack()
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  %15 = load i32, i32* @histsave_stack_pos, align 4
  %16 = load i32, i32* %pop_through.addr, align 4
  %cmp12 = icmp sge i32 %15, %16
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then8
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind
define internal i32 @histsubchar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %farg = alloca i32, align 4
  %evset = alloca i32, align 4
  %larg = alloca i32, align 4
  %argc = alloca i32, align 4
  %cflag = alloca i32, align 4
  %bflag = alloca i32, align 4
  %ev = alloca i32, align 4
  %buf = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %sline = alloca i8*, align 4
  %lexraw_mark = alloca i32, align 4
  %ehist = alloca %struct.histent*, align 4
  %buflen = alloca i32, align 4
  %gbal = alloca i32, align 4
  %g = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp112 = alloca %struct.__sigset_t, align 4
  %t0 = alloca i32, align 4
  %oset237 = alloca %struct.__sigset_t, align 4
  %tmp241 = alloca %struct.__sigset_t, align 4
  %tmp243 = alloca %struct.__sigset_t, align 4
  %oset309 = alloca %struct.__sigset_t, align 4
  %tmp313 = alloca %struct.__sigset_t, align 4
  %tmp315 = alloca %struct.__sigset_t, align 4
  %oset340 = alloca %struct.__sigset_t, align 4
  %tmp344 = alloca %struct.__sigset_t, align 4
  %tmp346 = alloca %struct.__sigset_t, align 4
  %oset378 = alloca %struct.__sigset_t, align 4
  %tmp382 = alloca %struct.__sigset_t, align 4
  %tmp384 = alloca %struct.__sigset_t, align 4
  %oset410 = alloca %struct.__sigset_t, align 4
  %tmp414 = alloca %struct.__sigset_t, align 4
  %tmp416 = alloca %struct.__sigset_t, align 4
  %oset448 = alloca %struct.__sigset_t, align 4
  %tmp452 = alloca %struct.__sigset_t, align 4
  %tmp454 = alloca %struct.__sigset_t, align 4
  %oset489 = alloca %struct.__sigset_t, align 4
  %tmp493 = alloca %struct.__sigset_t, align 4
  %tmp495 = alloca %struct.__sigset_t, align 4
  %oset511 = alloca %struct.__sigset_t, align 4
  %tmp515 = alloca %struct.__sigset_t, align 4
  %tmp517 = alloca %struct.__sigset_t, align 4
  %gbal534 = alloca i32, align 4
  %one = alloca i32, align 4
  %oef = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 -1, i32* %evset, align 4
  store i32 0, i32* %cflag, align 4
  store i32 0, i32* %bflag, align 4
  %call = call i32 @zshlex_raw_mark(i32 -1)
  store i32 %call, i32* %lexraw_mark, align 4
  %0 = load i32, i32* @isfirstch, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i8, i8* @hatchar, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %gbal, align 4
  store i32 0, i32* @isfirstch, align 4
  %3 = load i8, i8* @hatchar, align 1
  %conv2 = zext i8 %3 to i32
  call void @inungetc(i32 %conv2)
  %4 = load i32, i32* @defev, align 4
  %call3 = call %struct.histent* @gethist(i32 %4)
  store %struct.histent* %call3, %struct.histent** %ehist, align 4
  %tobool4 = icmp ne %struct.histent* %call3, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.histent*, %struct.histent** %ehist, align 4
  %6 = load %struct.histent*, %struct.histent** %ehist, align 4
  %call5 = call i32 @getargc(%struct.histent* %6)
  %call6 = call i8* @getargs(%struct.histent* %5, i32 0, i32 %call5)
  store i8* %call6, i8** %sline, align 4
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8*, i8** %sline, align 4
  %call9 = call i32 @getsubsargs(i8* %7, i32* %gbal, i32* %cflag)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %call12 = call i32 @substfailed()
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %8 = load i8*, i8** @hsubl, align 4
  %tobool14 = icmp ne i8* %8, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  store i32 -1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end13
  %9 = load i8*, i8** @hsubl, align 4
  %10 = load i8*, i8** @hsubr, align 4
  %11 = load i32, i32* %gbal, align 4
  %call17 = call i32 @subst(i8** %sline, i8* %9, i8* %10, i32 %11)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 @substfailed()
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  br label %if.end522

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %c.addr, align 4
  %cmp22 = icmp ne i32 %12, 32
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  store i32 0, i32* @isfirstch, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else
  %13 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp eq i32 %13, 92
  br i1 %cmp26, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.end25
  %call29 = call i32 @ingetc()
  store i32 %call29, i32* %g, align 4
  %14 = load i32, i32* %g, align 4
  %15 = load i8, i8* @bangchar, align 1
  %conv30 = zext i8 %15 to i32
  %cmp31 = icmp ne i32 %14, %conv30
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then28
  %16 = load i32, i32* %g, align 4
  call void @safeinungetc(i32 %16)
  br label %if.end36

if.else34:                                        ; preds = %if.then28
  store i32 1, i32* @qbang, align 4
  %17 = load i8, i8* @bangchar, align 1
  %conv35 = zext i8 %17 to i32
  store i32 %conv35, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %18 = load i32, i32* %c.addr, align 4
  %19 = load i8, i8* @bangchar, align 1
  %conv38 = zext i8 %19 to i32
  %cmp39 = icmp ne i32 %18, %conv38
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  %20 = load i32, i32* %c.addr, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %21 = load i8*, i8** @hptr, align 4
  store i8 0, i8* %21, align 1
  %call43 = call i32 @ingetc()
  store i32 %call43, i32* %c.addr, align 4
  %cmp44 = icmp eq i32 %call43, 123
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end42
  store i32 1, i32* %cflag, align 4
  store i32 1, i32* %bflag, align 4
  %call47 = call i32 @ingetc()
  store i32 %call47, i32* %c.addr, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42
  %22 = load i32, i32* %c.addr, align 4
  %cmp49 = icmp eq i32 %22, 34
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  store i32 1, i32* @stophist, align 4
  %call52 = call i32 @ingetc()
  store i32 %call52, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end48
  %23 = load i32, i32* %cflag, align 4
  %tobool54 = icmp ne i32 %23, 0
  br i1 %tobool54, label %lor.lhs.false59, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end53
  %24 = load i32, i32* %c.addr, align 4
  %conv56 = trunc i32 %24 to i8
  %idxprom = zext i8 %conv56 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %25 = load i16, i16* %arrayidx, align 2
  %conv57 = sext i16 %25 to i32
  %and = and i32 %conv57, 8
  %tobool58 = icmp ne i32 %and, 0
  br i1 %tobool58, label %if.then67, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true55, %if.end53
  %26 = load i32, i32* %c.addr, align 4
  %cmp60 = icmp eq i32 %26, 61
  br i1 %cmp60, label %if.then67, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %27 = load i32, i32* %c.addr, align 4
  %cmp63 = icmp eq i32 %27, 40
  br i1 %cmp63, label %if.then67, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %28 = load i32, i32* @lexstop, align 4
  %tobool66 = icmp ne i32 %28, 0
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false59, %land.lhs.true55
  %29 = load i32, i32* %c.addr, align 4
  call void @safeinungetc(i32 %29)
  %30 = load i8, i8* @bangchar, align 1
  %conv68 = zext i8 %30 to i32
  store i32 %conv68, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %lor.lhs.false65
  store i32 0, i32* %cflag, align 4
  store i32 265, i32* %buflen, align 4
  %call70 = call i8* @zhalloc(i32 265)
  store i8* %call70, i8** %buf, align 4
  store i8* %call70, i8** %ptr, align 4
  %31 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %32 = load i32, i32* %c.addr, align 4
  %cmp71 = icmp eq i32 %32, 63
  br i1 %cmp71, label %if.then73, label %if.else116

if.then73:                                        ; preds = %if.end69
  br label %for.cond

for.cond:                                         ; preds = %if.end92, %if.then73
  %call74 = call i32 @ingetc()
  store i32 %call74, i32* %c.addr, align 4
  %33 = load i32, i32* %c.addr, align 4
  %cmp75 = icmp eq i32 %33, 63
  br i1 %cmp75, label %if.then82, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %for.cond
  %34 = load i32, i32* %c.addr, align 4
  %cmp78 = icmp eq i32 %34, 10
  br i1 %cmp78, label %if.then82, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %35 = load i32, i32* @lexstop, align 4
  %tobool81 = icmp ne i32 %35, 0
  br i1 %tobool81, label %if.then82, label %if.else83

if.then82:                                        ; preds = %lor.lhs.false80, %lor.lhs.false77, %for.cond
  br label %for.end

if.else83:                                        ; preds = %lor.lhs.false80
  %36 = load i32, i32* %c.addr, align 4
  %conv84 = trunc i32 %36 to i8
  %37 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  store i8 %conv84, i8* %37, align 1
  %38 = load i8*, i8** %ptr, align 4
  %39 = load i8*, i8** %buf, align 4
  %40 = load i32, i32* %buflen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %39, i32 %40
  %cmp85 = icmp eq i8* %38, %add.ptr
  br i1 %cmp85, label %if.then87, label %if.end91

if.then87:                                        ; preds = %if.else83
  %41 = load i8*, i8** %buf, align 4
  %42 = load i32, i32* %buflen, align 4
  %43 = load i32, i32* %buflen, align 4
  %mul = mul i32 2, %43
  %call88 = call i8* @hrealloc(i8* %41, i32 %42, i32 %mul)
  store i8* %call88, i8** %buf, align 4
  %44 = load i8*, i8** %buf, align 4
  %45 = load i32, i32* %buflen, align 4
  %add.ptr89 = getelementptr inbounds i8, i8* %44, i32 %45
  store i8* %add.ptr89, i8** %ptr, align 4
  %46 = load i32, i32* %buflen, align 4
  %mul90 = mul i32 %46, 2
  store i32 %mul90, i32* %buflen, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.else83
  br label %if.end92

if.end92:                                         ; preds = %if.end91
  br label %for.cond

for.end:                                          ; preds = %if.then82
  %47 = load i32, i32* %c.addr, align 4
  %cmp93 = icmp ne i32 %47, 10
  br i1 %cmp93, label %land.lhs.true95, label %if.end99

land.lhs.true95:                                  ; preds = %for.end
  %48 = load i32, i32* @lexstop, align 4
  %tobool96 = icmp ne i32 %48, 0
  br i1 %tobool96, label %if.end99, label %if.then97

if.then97:                                        ; preds = %land.lhs.true95
  %call98 = call i32 @ingetc()
  store i32 %call98, i32* %c.addr, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true95, %for.end
  %49 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %buf, align 4
  %call100 = call i8* @ztrdup(i8* %50)
  store i8* %call100, i8** @hsubl, align 4
  %call101 = call i32 @hconsearch(i8* %call100, i32* @histsubchar.marg)
  store i32 %call101, i32* %ev, align 4
  store i32 %call101, i32* @histsubchar.mev, align 4
  store i32 0, i32* %evset, align 4
  %51 = load i32, i32* %ev, align 4
  %cmp102 = icmp eq i32 %51, -1
  br i1 %cmp102, label %if.then104, label %if.end115

if.then104:                                       ; preds = %if.end99
  call void @herrflush()
  br label %do.body

do.body:                                          ; preds = %if.then104
  %52 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool105 = icmp ne i32 %dec, 0
  br i1 %tobool105, label %if.end113, label %if.then106

if.then106:                                       ; preds = %do.body
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body107
  %53 = load i32, i32* @queue_front, align 4
  %54 = load i32, i32* @queue_rear, align 4
  %cmp108 = icmp ne i32 %53, %54
  br i1 %cmp108, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %55, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %56 = load i32, i32* @queue_front, align 4
  %arrayidx110 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %56
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx110)
  %57 = bitcast %struct.__sigset_t* %oset to i8*
  %58 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %58, i32 128, i32 4, i1 false)
  %59 = load i32, i32* @queue_front, align 4
  %arrayidx111 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %59
  %60 = load i32, i32* %arrayidx111, align 4
  call void @zhandler(i32 %60)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp112, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end113

if.end113:                                        ; preds = %do.end, %do.body
  br label %do.end114

do.end114:                                        ; preds = %if.end113
  %61 = load i8*, i8** %buf, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* %61)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end99
  br label %if.end326

if.else116:                                       ; preds = %if.end69
  br label %for.cond118

for.cond118:                                      ; preds = %if.end206, %if.else116
  %62 = load i32, i32* %c.addr, align 4
  %conv119 = trunc i32 %62 to i8
  %idxprom120 = zext i8 %conv119 to i32
  %arrayidx121 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom120
  %63 = load i16, i16* %arrayidx121, align 2
  %conv122 = sext i16 %63 to i32
  %and123 = and i32 %conv122, 8
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then157, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %for.cond118
  %64 = load i32, i32* %c.addr, align 4
  %cmp126 = icmp eq i32 %64, 59
  br i1 %cmp126, label %if.then157, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %65 = load i32, i32* %c.addr, align 4
  %cmp129 = icmp eq i32 %65, 58
  br i1 %cmp129, label %if.then157, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false128
  %66 = load i32, i32* %c.addr, align 4
  %cmp132 = icmp eq i32 %66, 94
  br i1 %cmp132, label %if.then157, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false131
  %67 = load i32, i32* %c.addr, align 4
  %cmp135 = icmp eq i32 %67, 36
  br i1 %cmp135, label %if.then157, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false134
  %68 = load i32, i32* %c.addr, align 4
  %cmp138 = icmp eq i32 %68, 42
  br i1 %cmp138, label %if.then157, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false137
  %69 = load i32, i32* %c.addr, align 4
  %cmp141 = icmp eq i32 %69, 37
  br i1 %cmp141, label %if.then157, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %lor.lhs.false140
  %70 = load i32, i32* %c.addr, align 4
  %cmp144 = icmp eq i32 %70, 125
  br i1 %cmp144, label %if.then157, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false143
  %71 = load i32, i32* %c.addr, align 4
  %cmp147 = icmp eq i32 %71, 39
  br i1 %cmp147, label %if.then157, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %lor.lhs.false146
  %72 = load i32, i32* %c.addr, align 4
  %cmp150 = icmp eq i32 %72, 34
  br i1 %cmp150, label %if.then157, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false149
  %73 = load i32, i32* %c.addr, align 4
  %cmp153 = icmp eq i32 %73, 96
  br i1 %cmp153, label %if.then157, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false152
  %74 = load i32, i32* @lexstop, align 4
  %tobool156 = icmp ne i32 %74, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %lor.lhs.false155, %lor.lhs.false152, %lor.lhs.false149, %lor.lhs.false146, %lor.lhs.false143, %lor.lhs.false140, %lor.lhs.false137, %lor.lhs.false134, %lor.lhs.false131, %lor.lhs.false128, %lor.lhs.false125, %for.cond118
  br label %for.end208

if.end158:                                        ; preds = %lor.lhs.false155
  %75 = load i8*, i8** %ptr, align 4
  %76 = load i8*, i8** %buf, align 4
  %cmp159 = icmp ne i8* %75, %76
  br i1 %cmp159, label %if.then161, label %if.end186

if.then161:                                       ; preds = %if.end158
  %77 = load i32, i32* %c.addr, align 4
  %cmp162 = icmp eq i32 %77, 45
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.then161
  br label %for.end208

if.end165:                                        ; preds = %if.then161
  %78 = load i8*, i8** %buf, align 4
  %arrayidx166 = getelementptr inbounds i8, i8* %78, i32 0
  %79 = load i8, i8* %arrayidx166, align 1
  %idxprom167 = zext i8 %79 to i32
  %arrayidx168 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom167
  %80 = load i16, i16* %arrayidx168, align 2
  %conv169 = sext i16 %80 to i32
  %and170 = and i32 %conv169, 1
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %land.lhs.true177, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %if.end165
  %81 = load i8*, i8** %buf, align 4
  %arrayidx173 = getelementptr inbounds i8, i8* %81, i32 0
  %82 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %82 to i32
  %cmp175 = icmp eq i32 %conv174, 45
  br i1 %cmp175, label %land.lhs.true177, label %if.end185

land.lhs.true177:                                 ; preds = %lor.lhs.false172, %if.end165
  %83 = load i32, i32* %c.addr, align 4
  %conv178 = trunc i32 %83 to i8
  %idxprom179 = zext i8 %conv178 to i32
  %arrayidx180 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom179
  %84 = load i16, i16* %arrayidx180, align 2
  %conv181 = sext i16 %84 to i32
  %and182 = and i32 %conv181, 1
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.end185, label %if.then184

if.then184:                                       ; preds = %land.lhs.true177
  br label %for.end208

if.end185:                                        ; preds = %land.lhs.true177, %lor.lhs.false172
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end158
  %85 = load i32, i32* %c.addr, align 4
  %conv187 = trunc i32 %85 to i8
  %86 = load i8*, i8** %ptr, align 4
  %incdec.ptr188 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr188, i8** %ptr, align 4
  store i8 %conv187, i8* %86, align 1
  %87 = load i8*, i8** %ptr, align 4
  %88 = load i8*, i8** %buf, align 4
  %89 = load i32, i32* %buflen, align 4
  %add.ptr189 = getelementptr inbounds i8, i8* %88, i32 %89
  %cmp190 = icmp eq i8* %87, %add.ptr189
  br i1 %cmp190, label %if.then192, label %if.end197

if.then192:                                       ; preds = %if.end186
  %90 = load i8*, i8** %buf, align 4
  %91 = load i32, i32* %buflen, align 4
  %92 = load i32, i32* %buflen, align 4
  %mul193 = mul i32 2, %92
  %call194 = call i8* @hrealloc(i8* %90, i32 %91, i32 %mul193)
  store i8* %call194, i8** %buf, align 4
  %93 = load i8*, i8** %buf, align 4
  %94 = load i32, i32* %buflen, align 4
  %add.ptr195 = getelementptr inbounds i8, i8* %93, i32 %94
  store i8* %add.ptr195, i8** %ptr, align 4
  %95 = load i32, i32* %buflen, align 4
  %mul196 = mul i32 %95, 2
  store i32 %mul196, i32* %buflen, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %if.end186
  %96 = load i32, i32* %c.addr, align 4
  %cmp198 = icmp eq i32 %96, 35
  br i1 %cmp198, label %if.then204, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.end197
  %97 = load i32, i32* %c.addr, align 4
  %98 = load i8, i8* @bangchar, align 1
  %conv201 = zext i8 %98 to i32
  %cmp202 = icmp eq i32 %97, %conv201
  br i1 %cmp202, label %if.then204, label %if.end206

if.then204:                                       ; preds = %lor.lhs.false200, %if.end197
  %call205 = call i32 @ingetc()
  store i32 %call205, i32* %c.addr, align 4
  br label %for.end208

if.end206:                                        ; preds = %lor.lhs.false200
  %call207 = call i32 @ingetc()
  store i32 %call207, i32* %c.addr, align 4
  br label %for.cond118

for.end208:                                       ; preds = %if.then204, %if.then184, %if.then164, %if.then157
  %99 = load i8*, i8** %ptr, align 4
  %100 = load i8*, i8** %buf, align 4
  %cmp209 = icmp eq i8* %99, %100
  br i1 %cmp209, label %land.lhs.true211, label %if.end249

land.lhs.true211:                                 ; preds = %for.end208
  %101 = load i32, i32* %c.addr, align 4
  %cmp212 = icmp eq i32 %101, 125
  br i1 %cmp212, label %if.then226, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %land.lhs.true211
  %102 = load i32, i32* %c.addr, align 4
  %cmp215 = icmp eq i32 %102, 59
  br i1 %cmp215, label %if.then226, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false214
  %103 = load i32, i32* %c.addr, align 4
  %cmp218 = icmp eq i32 %103, 39
  br i1 %cmp218, label %if.then226, label %lor.lhs.false220

lor.lhs.false220:                                 ; preds = %lor.lhs.false217
  %104 = load i32, i32* %c.addr, align 4
  %cmp221 = icmp eq i32 %104, 34
  br i1 %cmp221, label %if.then226, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false220
  %105 = load i32, i32* %c.addr, align 4
  %cmp224 = icmp eq i32 %105, 96
  br i1 %cmp224, label %if.then226, label %if.end249

if.then226:                                       ; preds = %lor.lhs.false223, %lor.lhs.false220, %lor.lhs.false217, %lor.lhs.false214, %land.lhs.true211
  %106 = load i32, i32* %c.addr, align 4
  call void @safeinungetc(i32 %106)
  br label %do.body227

do.body227:                                       ; preds = %if.then226
  %107 = load i32, i32* @queueing_enabled, align 4
  %dec228 = add nsw i32 %107, -1
  store i32 %dec228, i32* @queueing_enabled, align 4
  %tobool229 = icmp ne i32 %dec228, 0
  br i1 %tobool229, label %if.end246, label %if.then230

if.then230:                                       ; preds = %do.body227
  br label %do.body231

do.body231:                                       ; preds = %if.then230
  br label %while.cond232

while.cond232:                                    ; preds = %while.body235, %do.body231
  %108 = load i32, i32* @queue_front, align 4
  %109 = load i32, i32* @queue_rear, align 4
  %cmp233 = icmp ne i32 %108, %109
  br i1 %cmp233, label %while.body235, label %while.end244

while.body235:                                    ; preds = %while.cond232
  %110 = load i32, i32* @queue_front, align 4
  %add238 = add nsw i32 %110, 1
  %rem239 = srem i32 %add238, 128
  store i32 %rem239, i32* @queue_front, align 4
  %111 = load i32, i32* @queue_front, align 4
  %arrayidx240 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %111
  call void @signal_setmask(%struct.__sigset_t* sret %tmp241, %struct.__sigset_t* byval align 4 %arrayidx240)
  %112 = bitcast %struct.__sigset_t* %oset237 to i8*
  %113 = bitcast %struct.__sigset_t* %tmp241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 128, i32 4, i1 false)
  %114 = load i32, i32* @queue_front, align 4
  %arrayidx242 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %114
  %115 = load i32, i32* %arrayidx242, align 4
  call void @zhandler(i32 %115)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp243, %struct.__sigset_t* byval align 4 %oset237)
  br label %while.cond232

while.end244:                                     ; preds = %while.cond232
  br label %do.end245

do.end245:                                        ; preds = %while.end244
  br label %if.end246

if.end246:                                        ; preds = %do.end245, %do.body227
  br label %do.end247

do.end247:                                        ; preds = %if.end246
  %116 = load i8, i8* @bangchar, align 1
  %conv248 = zext i8 %116 to i32
  store i32 %conv248, i32* %retval, align 4
  br label %return

if.end249:                                        ; preds = %lor.lhs.false223, %for.end208
  %117 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %buf, align 4
  %119 = load i8, i8* %118, align 1
  %tobool250 = icmp ne i8 %119, 0
  br i1 %tobool250, label %if.else275, label %if.then251

if.then251:                                       ; preds = %if.end249
  %120 = load i32, i32* %c.addr, align 4
  %cmp252 = icmp ne i32 %120, 37
  br i1 %cmp252, label %if.then254, label %if.else268

if.then254:                                       ; preds = %if.then251
  %121 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 43), align 1
  %tobool255 = icmp ne i8 %121, 0
  br i1 %tobool255, label %if.then256, label %if.else258

if.then256:                                       ; preds = %if.then254
  %122 = load i32, i32* @curhist, align 4
  %call257 = call i32 @addhistnum(i32 %122, i32 -1, i32 16)
  store i32 %call257, i32* %ev, align 4
  br label %if.end259

if.else258:                                       ; preds = %if.then254
  %123 = load i32, i32* @defev, align 4
  store i32 %123, i32* %ev, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.else258, %if.then256
  %124 = load i32, i32* %c.addr, align 4
  %cmp260 = icmp eq i32 %124, 58
  br i1 %cmp260, label %land.lhs.true262, label %if.else266

land.lhs.true262:                                 ; preds = %if.end259
  %125 = load i32, i32* %evset, align 4
  %cmp263 = icmp eq i32 %125, -1
  br i1 %cmp263, label %if.then265, label %if.else266

if.then265:                                       ; preds = %land.lhs.true262
  store i32 0, i32* %evset, align 4
  br label %if.end267

if.else266:                                       ; preds = %land.lhs.true262, %if.end259
  store i32 1, i32* %evset, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.else266, %if.then265
  br label %if.end274

if.else268:                                       ; preds = %if.then251
  %126 = load i32, i32* @histsubchar.marg, align 4
  %cmp269 = icmp ne i32 %126, -1
  br i1 %cmp269, label %if.then271, label %if.else272

if.then271:                                       ; preds = %if.else268
  %127 = load i32, i32* @histsubchar.mev, align 4
  store i32 %127, i32* %ev, align 4
  br label %if.end273

if.else272:                                       ; preds = %if.else268
  %128 = load i32, i32* @defev, align 4
  store i32 %128, i32* %ev, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.else272, %if.then271
  store i32 0, i32* %evset, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end267
  br label %if.end325

if.else275:                                       ; preds = %if.end249
  %129 = load i8*, i8** %buf, align 4
  %call276 = call i32 @zstrtol(i8* %129, i8** null, i32 10)
  store i32 %call276, i32* %t0, align 4
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then278, label %if.else282

if.then278:                                       ; preds = %if.else275
  %130 = load i32, i32* %t0, align 4
  %cmp279 = icmp slt i32 %130, 0
  br i1 %cmp279, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then278
  %131 = load i32, i32* @curhist, align 4
  %132 = load i32, i32* %t0, align 4
  %call281 = call i32 @addhistnum(i32 %131, i32 %132, i32 16)
  br label %cond.end

cond.false:                                       ; preds = %if.then278
  %133 = load i32, i32* %t0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call281, %cond.true ], [ %133, %cond.false ]
  store i32 %cond, i32* %ev, align 4
  store i32 1, i32* %evset, align 4
  br label %if.end324

if.else282:                                       ; preds = %if.else275
  %134 = load i8*, i8** %buf, align 4
  %135 = load i8, i8* %134, align 1
  %conv283 = sext i8 %135 to i32
  %136 = load i8, i8* @bangchar, align 1
  %conv284 = zext i8 %136 to i32
  %cmp285 = icmp eq i32 %conv283, %conv284
  br i1 %cmp285, label %if.then287, label %if.else289

if.then287:                                       ; preds = %if.else282
  %137 = load i32, i32* @curhist, align 4
  %call288 = call i32 @addhistnum(i32 %137, i32 -1, i32 16)
  store i32 %call288, i32* %ev, align 4
  store i32 1, i32* %evset, align 4
  br label %if.end323

if.else289:                                       ; preds = %if.else282
  %138 = load i8*, i8** %buf, align 4
  %139 = load i8, i8* %138, align 1
  %conv290 = sext i8 %139 to i32
  %cmp291 = icmp eq i32 %conv290, 35
  br i1 %cmp291, label %if.then293, label %if.else294

if.then293:                                       ; preds = %if.else289
  %140 = load i32, i32* @curhist, align 4
  store i32 %140, i32* %ev, align 4
  store i32 1, i32* %evset, align 4
  br label %if.end322

if.else294:                                       ; preds = %if.else289
  %141 = load i8*, i8** %buf, align 4
  %call295 = call i32 @hcomsearch(i8* %141)
  store i32 %call295, i32* %ev, align 4
  %cmp296 = icmp eq i32 %call295, -1
  br i1 %cmp296, label %if.then298, label %if.else320

if.then298:                                       ; preds = %if.else294
  call void @herrflush()
  br label %do.body299

do.body299:                                       ; preds = %if.then298
  %142 = load i32, i32* @queueing_enabled, align 4
  %dec300 = add nsw i32 %142, -1
  store i32 %dec300, i32* @queueing_enabled, align 4
  %tobool301 = icmp ne i32 %dec300, 0
  br i1 %tobool301, label %if.end318, label %if.then302

if.then302:                                       ; preds = %do.body299
  br label %do.body303

do.body303:                                       ; preds = %if.then302
  br label %while.cond304

while.cond304:                                    ; preds = %while.body307, %do.body303
  %143 = load i32, i32* @queue_front, align 4
  %144 = load i32, i32* @queue_rear, align 4
  %cmp305 = icmp ne i32 %143, %144
  br i1 %cmp305, label %while.body307, label %while.end316

while.body307:                                    ; preds = %while.cond304
  %145 = load i32, i32* @queue_front, align 4
  %add310 = add nsw i32 %145, 1
  %rem311 = srem i32 %add310, 128
  store i32 %rem311, i32* @queue_front, align 4
  %146 = load i32, i32* @queue_front, align 4
  %arrayidx312 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %146
  call void @signal_setmask(%struct.__sigset_t* sret %tmp313, %struct.__sigset_t* byval align 4 %arrayidx312)
  %147 = bitcast %struct.__sigset_t* %oset309 to i8*
  %148 = bitcast %struct.__sigset_t* %tmp313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %147, i8* %148, i32 128, i32 4, i1 false)
  %149 = load i32, i32* @queue_front, align 4
  %arrayidx314 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %149
  %150 = load i32, i32* %arrayidx314, align 4
  call void @zhandler(i32 %150)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp315, %struct.__sigset_t* byval align 4 %oset309)
  br label %while.cond304

while.end316:                                     ; preds = %while.cond304
  br label %do.end317

do.end317:                                        ; preds = %while.end316
  br label %if.end318

if.end318:                                        ; preds = %do.end317, %do.body299
  br label %do.end319

do.end319:                                        ; preds = %if.end318
  %151 = load i8*, i8** %buf, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %151)
  store i32 -1, i32* %retval, align 4
  br label %return

if.else320:                                       ; preds = %if.else294
  store i32 1, i32* %evset, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.else320
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.then293
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.then287
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %cond.end
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end274
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.end115
  %152 = load i32, i32* %ev, align 4
  store i32 %152, i32* @defev, align 4
  %call327 = call %struct.histent* @gethist(i32 %152)
  store %struct.histent* %call327, %struct.histent** %ehist, align 4
  %tobool328 = icmp ne %struct.histent* %call327, null
  br i1 %tobool328, label %if.end351, label %if.then329

if.then329:                                       ; preds = %if.end326
  br label %do.body330

do.body330:                                       ; preds = %if.then329
  %153 = load i32, i32* @queueing_enabled, align 4
  %dec331 = add nsw i32 %153, -1
  store i32 %dec331, i32* @queueing_enabled, align 4
  %tobool332 = icmp ne i32 %dec331, 0
  br i1 %tobool332, label %if.end349, label %if.then333

if.then333:                                       ; preds = %do.body330
  br label %do.body334

do.body334:                                       ; preds = %if.then333
  br label %while.cond335

while.cond335:                                    ; preds = %while.body338, %do.body334
  %154 = load i32, i32* @queue_front, align 4
  %155 = load i32, i32* @queue_rear, align 4
  %cmp336 = icmp ne i32 %154, %155
  br i1 %cmp336, label %while.body338, label %while.end347

while.body338:                                    ; preds = %while.cond335
  %156 = load i32, i32* @queue_front, align 4
  %add341 = add nsw i32 %156, 1
  %rem342 = srem i32 %add341, 128
  store i32 %rem342, i32* @queue_front, align 4
  %157 = load i32, i32* @queue_front, align 4
  %arrayidx343 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %157
  call void @signal_setmask(%struct.__sigset_t* sret %tmp344, %struct.__sigset_t* byval align 4 %arrayidx343)
  %158 = bitcast %struct.__sigset_t* %oset340 to i8*
  %159 = bitcast %struct.__sigset_t* %tmp344 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %158, i8* %159, i32 128, i32 4, i1 false)
  %160 = load i32, i32* @queue_front, align 4
  %arrayidx345 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %160
  %161 = load i32, i32* %arrayidx345, align 4
  call void @zhandler(i32 %161)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp346, %struct.__sigset_t* byval align 4 %oset340)
  br label %while.cond335

while.end347:                                     ; preds = %while.cond335
  br label %do.end348

do.end348:                                        ; preds = %while.end347
  br label %if.end349

if.end349:                                        ; preds = %do.end348, %do.body330
  br label %do.end350

do.end350:                                        ; preds = %if.end349
  store i32 -1, i32* %retval, align 4
  br label %return

if.end351:                                        ; preds = %if.end326
  %162 = load %struct.histent*, %struct.histent** %ehist, align 4
  %call352 = call i32 @getargc(%struct.histent* %162)
  store i32 %call352, i32* %argc, align 4
  %163 = load i32, i32* %c.addr, align 4
  %cmp353 = icmp eq i32 %163, 58
  br i1 %cmp353, label %if.then355, label %if.end391

if.then355:                                       ; preds = %if.end351
  store i32 1, i32* %cflag, align 4
  %call356 = call i32 @ingetc()
  store i32 %call356, i32* %c.addr, align 4
  %164 = load i32, i32* %c.addr, align 4
  %cmp357 = icmp eq i32 %164, 37
  br i1 %cmp357, label %land.lhs.true359, label %if.end390

land.lhs.true359:                                 ; preds = %if.then355
  %165 = load i32, i32* @histsubchar.marg, align 4
  %cmp360 = icmp ne i32 %165, -1
  br i1 %cmp360, label %if.then362, label %if.end390

if.then362:                                       ; preds = %land.lhs.true359
  %166 = load i32, i32* %evset, align 4
  %tobool363 = icmp ne i32 %166, 0
  br i1 %tobool363, label %if.else367, label %if.then364

if.then364:                                       ; preds = %if.then362
  %167 = load i32, i32* @histsubchar.mev, align 4
  store i32 %167, i32* @defev, align 4
  %call365 = call %struct.histent* @gethist(i32 %167)
  store %struct.histent* %call365, %struct.histent** %ehist, align 4
  %168 = load %struct.histent*, %struct.histent** %ehist, align 4
  %call366 = call i32 @getargc(%struct.histent* %168)
  store i32 %call366, i32* %argc, align 4
  br label %if.end389

if.else367:                                       ; preds = %if.then362
  call void @herrflush()
  br label %do.body368

do.body368:                                       ; preds = %if.else367
  %169 = load i32, i32* @queueing_enabled, align 4
  %dec369 = add nsw i32 %169, -1
  store i32 %dec369, i32* @queueing_enabled, align 4
  %tobool370 = icmp ne i32 %dec369, 0
  br i1 %tobool370, label %if.end387, label %if.then371

if.then371:                                       ; preds = %do.body368
  br label %do.body372

do.body372:                                       ; preds = %if.then371
  br label %while.cond373

while.cond373:                                    ; preds = %while.body376, %do.body372
  %170 = load i32, i32* @queue_front, align 4
  %171 = load i32, i32* @queue_rear, align 4
  %cmp374 = icmp ne i32 %170, %171
  br i1 %cmp374, label %while.body376, label %while.end385

while.body376:                                    ; preds = %while.cond373
  %172 = load i32, i32* @queue_front, align 4
  %add379 = add nsw i32 %172, 1
  %rem380 = srem i32 %add379, 128
  store i32 %rem380, i32* @queue_front, align 4
  %173 = load i32, i32* @queue_front, align 4
  %arrayidx381 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %173
  call void @signal_setmask(%struct.__sigset_t* sret %tmp382, %struct.__sigset_t* byval align 4 %arrayidx381)
  %174 = bitcast %struct.__sigset_t* %oset378 to i8*
  %175 = bitcast %struct.__sigset_t* %tmp382 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %174, i8* %175, i32 128, i32 4, i1 false)
  %176 = load i32, i32* @queue_front, align 4
  %arrayidx383 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %176
  %177 = load i32, i32* %arrayidx383, align 4
  call void @zhandler(i32 %177)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp384, %struct.__sigset_t* byval align 4 %oset378)
  br label %while.cond373

while.end385:                                     ; preds = %while.cond373
  br label %do.end386

do.end386:                                        ; preds = %while.end385
  br label %if.end387

if.end387:                                        ; preds = %do.end386, %do.body368
  br label %do.end388

do.end388:                                        ; preds = %if.end387
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end389:                                        ; preds = %if.then364
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %land.lhs.true359, %if.then355
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.end351
  %178 = load i32, i32* %c.addr, align 4
  %cmp392 = icmp eq i32 %178, 42
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.end391
  store i32 1, i32* %farg, align 4
  %179 = load i32, i32* %argc, align 4
  store i32 %179, i32* %larg, align 4
  store i32 0, i32* %cflag, align 4
  br label %if.end467

if.else395:                                       ; preds = %if.end391
  %180 = load i32, i32* %c.addr, align 4
  call void @inungetc(i32 %180)
  %181 = load i32, i32* %argc, align 4
  %182 = load i32, i32* @histsubchar.marg, align 4
  %183 = load i32, i32* %evset, align 4
  %call396 = call i32 @getargspec(i32 %181, i32 %182, i32 %183)
  store i32 %call396, i32* %farg, align 4
  store i32 %call396, i32* %larg, align 4
  %184 = load i32, i32* %larg, align 4
  %cmp397 = icmp eq i32 %184, -2
  br i1 %cmp397, label %if.then399, label %if.end421

if.then399:                                       ; preds = %if.else395
  br label %do.body400

do.body400:                                       ; preds = %if.then399
  %185 = load i32, i32* @queueing_enabled, align 4
  %dec401 = add nsw i32 %185, -1
  store i32 %dec401, i32* @queueing_enabled, align 4
  %tobool402 = icmp ne i32 %dec401, 0
  br i1 %tobool402, label %if.end419, label %if.then403

if.then403:                                       ; preds = %do.body400
  br label %do.body404

do.body404:                                       ; preds = %if.then403
  br label %while.cond405

while.cond405:                                    ; preds = %while.body408, %do.body404
  %186 = load i32, i32* @queue_front, align 4
  %187 = load i32, i32* @queue_rear, align 4
  %cmp406 = icmp ne i32 %186, %187
  br i1 %cmp406, label %while.body408, label %while.end417

while.body408:                                    ; preds = %while.cond405
  %188 = load i32, i32* @queue_front, align 4
  %add411 = add nsw i32 %188, 1
  %rem412 = srem i32 %add411, 128
  store i32 %rem412, i32* @queue_front, align 4
  %189 = load i32, i32* @queue_front, align 4
  %arrayidx413 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %189
  call void @signal_setmask(%struct.__sigset_t* sret %tmp414, %struct.__sigset_t* byval align 4 %arrayidx413)
  %190 = bitcast %struct.__sigset_t* %oset410 to i8*
  %191 = bitcast %struct.__sigset_t* %tmp414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %190, i8* %191, i32 128, i32 4, i1 false)
  %192 = load i32, i32* @queue_front, align 4
  %arrayidx415 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %192
  %193 = load i32, i32* %arrayidx415, align 4
  call void @zhandler(i32 %193)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp416, %struct.__sigset_t* byval align 4 %oset410)
  br label %while.cond405

while.end417:                                     ; preds = %while.cond405
  br label %do.end418

do.end418:                                        ; preds = %while.end417
  br label %if.end419

if.end419:                                        ; preds = %do.end418, %do.body400
  br label %do.end420

do.end420:                                        ; preds = %if.end419
  store i32 -1, i32* %retval, align 4
  br label %return

if.end421:                                        ; preds = %if.else395
  %194 = load i32, i32* %farg, align 4
  %cmp422 = icmp ne i32 %194, -1
  br i1 %cmp422, label %if.then424, label %if.end425

if.then424:                                       ; preds = %if.end421
  store i32 0, i32* %cflag, align 4
  br label %if.end425

if.end425:                                        ; preds = %if.then424, %if.end421
  %call426 = call i32 @ingetc()
  store i32 %call426, i32* %c.addr, align 4
  %195 = load i32, i32* %c.addr, align 4
  %cmp427 = icmp eq i32 %195, 42
  br i1 %cmp427, label %if.then429, label %if.else430

if.then429:                                       ; preds = %if.end425
  store i32 0, i32* %cflag, align 4
  %196 = load i32, i32* %argc, align 4
  store i32 %196, i32* %larg, align 4
  br label %if.end466

if.else430:                                       ; preds = %if.end425
  %197 = load i32, i32* %c.addr, align 4
  %cmp431 = icmp eq i32 %197, 45
  br i1 %cmp431, label %if.then433, label %if.else464

if.then433:                                       ; preds = %if.else430
  store i32 0, i32* %cflag, align 4
  %198 = load i32, i32* %argc, align 4
  %199 = load i32, i32* @histsubchar.marg, align 4
  %200 = load i32, i32* %evset, align 4
  %call434 = call i32 @getargspec(i32 %198, i32 %199, i32 %200)
  store i32 %call434, i32* %larg, align 4
  %201 = load i32, i32* %larg, align 4
  %cmp435 = icmp eq i32 %201, -2
  br i1 %cmp435, label %if.then437, label %if.end459

if.then437:                                       ; preds = %if.then433
  br label %do.body438

do.body438:                                       ; preds = %if.then437
  %202 = load i32, i32* @queueing_enabled, align 4
  %dec439 = add nsw i32 %202, -1
  store i32 %dec439, i32* @queueing_enabled, align 4
  %tobool440 = icmp ne i32 %dec439, 0
  br i1 %tobool440, label %if.end457, label %if.then441

if.then441:                                       ; preds = %do.body438
  br label %do.body442

do.body442:                                       ; preds = %if.then441
  br label %while.cond443

while.cond443:                                    ; preds = %while.body446, %do.body442
  %203 = load i32, i32* @queue_front, align 4
  %204 = load i32, i32* @queue_rear, align 4
  %cmp444 = icmp ne i32 %203, %204
  br i1 %cmp444, label %while.body446, label %while.end455

while.body446:                                    ; preds = %while.cond443
  %205 = load i32, i32* @queue_front, align 4
  %add449 = add nsw i32 %205, 1
  %rem450 = srem i32 %add449, 128
  store i32 %rem450, i32* @queue_front, align 4
  %206 = load i32, i32* @queue_front, align 4
  %arrayidx451 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %206
  call void @signal_setmask(%struct.__sigset_t* sret %tmp452, %struct.__sigset_t* byval align 4 %arrayidx451)
  %207 = bitcast %struct.__sigset_t* %oset448 to i8*
  %208 = bitcast %struct.__sigset_t* %tmp452 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %207, i8* %208, i32 128, i32 4, i1 false)
  %209 = load i32, i32* @queue_front, align 4
  %arrayidx453 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %209
  %210 = load i32, i32* %arrayidx453, align 4
  call void @zhandler(i32 %210)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp454, %struct.__sigset_t* byval align 4 %oset448)
  br label %while.cond443

while.end455:                                     ; preds = %while.cond443
  br label %do.end456

do.end456:                                        ; preds = %while.end455
  br label %if.end457

if.end457:                                        ; preds = %do.end456, %do.body438
  br label %do.end458

do.end458:                                        ; preds = %if.end457
  store i32 -1, i32* %retval, align 4
  br label %return

if.end459:                                        ; preds = %if.then433
  %211 = load i32, i32* %larg, align 4
  %cmp460 = icmp eq i32 %211, -1
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end459
  %212 = load i32, i32* %argc, align 4
  %sub = sub nsw i32 %212, 1
  store i32 %sub, i32* %larg, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %if.end459
  br label %if.end465

if.else464:                                       ; preds = %if.else430
  %213 = load i32, i32* %c.addr, align 4
  call void @inungetc(i32 %213)
  br label %if.end465

if.end465:                                        ; preds = %if.else464, %if.end463
  br label %if.end466

if.end466:                                        ; preds = %if.end465, %if.then429
  br label %if.end467

if.end467:                                        ; preds = %if.end466, %if.then394
  %214 = load i32, i32* %farg, align 4
  %cmp468 = icmp eq i32 %214, -1
  br i1 %cmp468, label %if.then470, label %if.end471

if.then470:                                       ; preds = %if.end467
  store i32 0, i32* %farg, align 4
  br label %if.end471

if.end471:                                        ; preds = %if.then470, %if.end467
  %215 = load i32, i32* %larg, align 4
  %cmp472 = icmp eq i32 %215, -1
  br i1 %cmp472, label %if.then474, label %if.end475

if.then474:                                       ; preds = %if.end471
  %216 = load i32, i32* %argc, align 4
  store i32 %216, i32* %larg, align 4
  br label %if.end475

if.end475:                                        ; preds = %if.then474, %if.end471
  %217 = load %struct.histent*, %struct.histent** %ehist, align 4
  %218 = load i32, i32* %farg, align 4
  %219 = load i32, i32* %larg, align 4
  %call476 = call i8* @getargs(%struct.histent* %217, i32 %218, i32 %219)
  store i8* %call476, i8** %sline, align 4
  %tobool477 = icmp ne i8* %call476, null
  br i1 %tobool477, label %if.end500, label %if.then478

if.then478:                                       ; preds = %if.end475
  br label %do.body479

do.body479:                                       ; preds = %if.then478
  %220 = load i32, i32* @queueing_enabled, align 4
  %dec480 = add nsw i32 %220, -1
  store i32 %dec480, i32* @queueing_enabled, align 4
  %tobool481 = icmp ne i32 %dec480, 0
  br i1 %tobool481, label %if.end498, label %if.then482

if.then482:                                       ; preds = %do.body479
  br label %do.body483

do.body483:                                       ; preds = %if.then482
  br label %while.cond484

while.cond484:                                    ; preds = %while.body487, %do.body483
  %221 = load i32, i32* @queue_front, align 4
  %222 = load i32, i32* @queue_rear, align 4
  %cmp485 = icmp ne i32 %221, %222
  br i1 %cmp485, label %while.body487, label %while.end496

while.body487:                                    ; preds = %while.cond484
  %223 = load i32, i32* @queue_front, align 4
  %add490 = add nsw i32 %223, 1
  %rem491 = srem i32 %add490, 128
  store i32 %rem491, i32* @queue_front, align 4
  %224 = load i32, i32* @queue_front, align 4
  %arrayidx492 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %224
  call void @signal_setmask(%struct.__sigset_t* sret %tmp493, %struct.__sigset_t* byval align 4 %arrayidx492)
  %225 = bitcast %struct.__sigset_t* %oset489 to i8*
  %226 = bitcast %struct.__sigset_t* %tmp493 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %225, i8* %226, i32 128, i32 4, i1 false)
  %227 = load i32, i32* @queue_front, align 4
  %arrayidx494 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %227
  %228 = load i32, i32* %arrayidx494, align 4
  call void @zhandler(i32 %228)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp495, %struct.__sigset_t* byval align 4 %oset489)
  br label %while.cond484

while.end496:                                     ; preds = %while.cond484
  br label %do.end497

do.end497:                                        ; preds = %while.end496
  br label %if.end498

if.end498:                                        ; preds = %do.end497, %do.body479
  br label %do.end499

do.end499:                                        ; preds = %if.end498
  store i32 -1, i32* %retval, align 4
  br label %return

if.end500:                                        ; preds = %if.end475
  br label %do.body501

do.body501:                                       ; preds = %if.end500
  %229 = load i32, i32* @queueing_enabled, align 4
  %dec502 = add nsw i32 %229, -1
  store i32 %dec502, i32* @queueing_enabled, align 4
  %tobool503 = icmp ne i32 %dec502, 0
  br i1 %tobool503, label %if.end520, label %if.then504

if.then504:                                       ; preds = %do.body501
  br label %do.body505

do.body505:                                       ; preds = %if.then504
  br label %while.cond506

while.cond506:                                    ; preds = %while.body509, %do.body505
  %230 = load i32, i32* @queue_front, align 4
  %231 = load i32, i32* @queue_rear, align 4
  %cmp507 = icmp ne i32 %230, %231
  br i1 %cmp507, label %while.body509, label %while.end518

while.body509:                                    ; preds = %while.cond506
  %232 = load i32, i32* @queue_front, align 4
  %add512 = add nsw i32 %232, 1
  %rem513 = srem i32 %add512, 128
  store i32 %rem513, i32* @queue_front, align 4
  %233 = load i32, i32* @queue_front, align 4
  %arrayidx514 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %233
  call void @signal_setmask(%struct.__sigset_t* sret %tmp515, %struct.__sigset_t* byval align 4 %arrayidx514)
  %234 = bitcast %struct.__sigset_t* %oset511 to i8*
  %235 = bitcast %struct.__sigset_t* %tmp515 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %234, i8* %235, i32 128, i32 4, i1 false)
  %236 = load i32, i32* @queue_front, align 4
  %arrayidx516 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %236
  %237 = load i32, i32* %arrayidx516, align 4
  call void @zhandler(i32 %237)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp517, %struct.__sigset_t* byval align 4 %oset511)
  br label %while.cond506

while.end518:                                     ; preds = %while.cond506
  br label %do.end519

do.end519:                                        ; preds = %while.end518
  br label %if.end520

if.end520:                                        ; preds = %do.end519, %do.body501
  br label %do.end521

do.end521:                                        ; preds = %if.end520
  br label %if.end522

if.end522:                                        ; preds = %do.end521, %if.end21
  br label %for.cond523

for.cond523:                                      ; preds = %if.end626, %if.end522
  %238 = load i32, i32* %cflag, align 4
  %tobool524 = icmp ne i32 %238, 0
  br i1 %tobool524, label %cond.true525, label %cond.false526

cond.true525:                                     ; preds = %for.cond523
  br label %cond.end528

cond.false526:                                    ; preds = %for.cond523
  %call527 = call i32 @ingetc()
  br label %cond.end528

cond.end528:                                      ; preds = %cond.false526, %cond.true525
  %cond529 = phi i32 [ 58, %cond.true525 ], [ %call527, %cond.false526 ]
  store i32 %cond529, i32* %c.addr, align 4
  store i32 0, i32* %cflag, align 4
  %239 = load i32, i32* %c.addr, align 4
  %cmp530 = icmp eq i32 %239, 58
  br i1 %cmp530, label %if.then532, label %if.else613

if.then532:                                       ; preds = %cond.end528
  store i32 0, i32* %gbal534, align 4
  %call535 = call i32 @ingetc()
  store i32 %call535, i32* %c.addr, align 4
  %cmp536 = icmp eq i32 %call535, 103
  br i1 %cmp536, label %if.then538, label %if.end547

if.then538:                                       ; preds = %if.then532
  store i32 1, i32* %gbal534, align 4
  %call539 = call i32 @ingetc()
  store i32 %call539, i32* %c.addr, align 4
  %240 = load i32, i32* %c.addr, align 4
  %cmp540 = icmp ne i32 %240, 115
  br i1 %cmp540, label %land.lhs.true542, label %if.end546

land.lhs.true542:                                 ; preds = %if.then538
  %241 = load i32, i32* %c.addr, align 4
  %cmp543 = icmp ne i32 %241, 38
  br i1 %cmp543, label %if.then545, label %if.end546

if.then545:                                       ; preds = %land.lhs.true542
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end546:                                        ; preds = %land.lhs.true542, %if.then538
  br label %if.end547

if.end547:                                        ; preds = %if.end546, %if.then532
  %242 = load i32, i32* %c.addr, align 4
  switch i32 %242, label %sw.default [
    i32 112, label %sw.bb
    i32 97, label %sw.bb548
    i32 65, label %sw.bb553
    i32 99, label %sw.bb558
    i32 104, label %sw.bb563
    i32 101, label %sw.bb568
    i32 114, label %sw.bb573
    i32 116, label %sw.bb578
    i32 115, label %sw.bb583
    i32 38, label %sw.bb588
    i32 113, label %sw.bb600
    i32 81, label %sw.bb602
    i32 120, label %sw.bb607
    i32 108, label %sw.bb609
    i32 117, label %sw.bb611
  ]

sw.bb:                                            ; preds = %if.end547
  store i32 3, i32* @histdone, align 4
  br label %sw.epilog

sw.bb548:                                         ; preds = %if.end547
  %call549 = call i32 @chabspath(i8** %sline)
  %tobool550 = icmp ne i32 %call549, 0
  br i1 %tobool550, label %if.end552, label %if.then551

if.then551:                                       ; preds = %sw.bb548
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end552:                                        ; preds = %sw.bb548
  br label %sw.epilog

sw.bb553:                                         ; preds = %if.end547
  %call554 = call i32 @chrealpath(i8** %sline)
  %tobool555 = icmp ne i32 %call554, 0
  br i1 %tobool555, label %if.end557, label %if.then556

if.then556:                                       ; preds = %sw.bb553
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end557:                                        ; preds = %sw.bb553
  br label %sw.epilog

sw.bb558:                                         ; preds = %if.end547
  %243 = load i8*, i8** %sline, align 4
  %call559 = call i8* @equalsubstr(i8* %243, i32 0, i32 0)
  store i8* %call559, i8** %sline, align 4
  %tobool560 = icmp ne i8* %call559, null
  br i1 %tobool560, label %if.end562, label %if.then561

if.then561:                                       ; preds = %sw.bb558
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end562:                                        ; preds = %sw.bb558
  br label %sw.epilog

sw.bb563:                                         ; preds = %if.end547
  %call564 = call i32 @remtpath(i8** %sline)
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %if.end567, label %if.then566

if.then566:                                       ; preds = %sw.bb563
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end567:                                        ; preds = %sw.bb563
  br label %sw.epilog

sw.bb568:                                         ; preds = %if.end547
  %call569 = call i32 @rembutext(i8** %sline)
  %tobool570 = icmp ne i32 %call569, 0
  br i1 %tobool570, label %if.end572, label %if.then571

if.then571:                                       ; preds = %sw.bb568
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end572:                                        ; preds = %sw.bb568
  br label %sw.epilog

sw.bb573:                                         ; preds = %if.end547
  %call574 = call i32 @remtext(i8** %sline)
  %tobool575 = icmp ne i32 %call574, 0
  br i1 %tobool575, label %if.end577, label %if.then576

if.then576:                                       ; preds = %sw.bb573
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end577:                                        ; preds = %sw.bb573
  br label %sw.epilog

sw.bb578:                                         ; preds = %if.end547
  %call579 = call i32 @remlpaths(i8** %sline)
  %tobool580 = icmp ne i32 %call579, 0
  br i1 %tobool580, label %if.end582, label %if.then581

if.then581:                                       ; preds = %sw.bb578
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end582:                                        ; preds = %sw.bb578
  br label %sw.epilog

sw.bb583:                                         ; preds = %if.end547
  %244 = load i8*, i8** %sline, align 4
  %call584 = call i32 @getsubsargs(i8* %244, i32* %gbal534, i32* %cflag)
  %tobool585 = icmp ne i32 %call584, 0
  br i1 %tobool585, label %if.then586, label %if.end587

if.then586:                                       ; preds = %sw.bb583
  store i32 -1, i32* %retval, align 4
  br label %return

if.end587:                                        ; preds = %sw.bb583
  br label %sw.bb588

sw.bb588:                                         ; preds = %if.end547, %if.end587
  %245 = load i8*, i8** @hsubl, align 4
  %tobool589 = icmp ne i8* %245, null
  br i1 %tobool589, label %land.lhs.true590, label %if.else598

land.lhs.true590:                                 ; preds = %sw.bb588
  %246 = load i8*, i8** @hsubr, align 4
  %tobool591 = icmp ne i8* %246, null
  br i1 %tobool591, label %if.then592, label %if.else598

if.then592:                                       ; preds = %land.lhs.true590
  %247 = load i8*, i8** @hsubl, align 4
  %248 = load i8*, i8** @hsubr, align 4
  %249 = load i32, i32* %gbal534, align 4
  %call593 = call i32 @subst(i8** %sline, i8* %247, i8* %248, i32 %249)
  %tobool594 = icmp ne i32 %call593, 0
  br i1 %tobool594, label %if.then595, label %if.end597

if.then595:                                       ; preds = %if.then592
  %call596 = call i32 @substfailed()
  store i32 %call596, i32* %retval, align 4
  br label %return

if.end597:                                        ; preds = %if.then592
  br label %if.end599

if.else598:                                       ; preds = %land.lhs.true590, %sw.bb588
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end599:                                        ; preds = %if.end597
  br label %sw.epilog

sw.bb600:                                         ; preds = %if.end547
  %call601 = call i32 @quote(i8** %sline)
  br label %sw.epilog

sw.bb602:                                         ; preds = %if.end547
  %250 = load i32, i32* @noerrs, align 4
  store i32 %250, i32* %one, align 4
  %251 = load i32, i32* @errflag, align 4
  store i32 %251, i32* %oef, align 4
  store i32 1, i32* @noerrs, align 4
  %252 = load i8*, i8** %sline, align 4
  %call605 = call i32 @parse_subst_string(i8* %252)
  %253 = load i32, i32* %one, align 4
  store i32 %253, i32* @noerrs, align 4
  %254 = load i32, i32* %oef, align 4
  %255 = load i32, i32* @errflag, align 4
  %and606 = and i32 %255, 2
  %or = or i32 %254, %and606
  store i32 %or, i32* @errflag, align 4
  %256 = load i8*, i8** %sline, align 4
  call void @remnulargs(i8* %256)
  %257 = load i8*, i8** %sline, align 4
  call void @untokenize(i8* %257)
  br label %sw.epilog

sw.bb607:                                         ; preds = %if.end547
  %call608 = call i32 @quotebreak(i8** %sline)
  br label %sw.epilog

sw.bb609:                                         ; preds = %if.end547
  %258 = load i8*, i8** %sline, align 4
  %call610 = call i8* @casemodify(i8* %258, i32 2)
  store i8* %call610, i8** %sline, align 4
  br label %sw.epilog

sw.bb611:                                         ; preds = %if.end547
  %259 = load i8*, i8** %sline, align 4
  %call612 = call i8* @casemodify(i8* %259, i32 1)
  store i8* %call612, i8** %sline, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end547
  call void @herrflush()
  %260 = load i32, i32* %c.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i32 %260)
  store i32 -1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb611, %sw.bb609, %sw.bb607, %sw.bb602, %sw.bb600, %if.end599, %if.end582, %if.end577, %if.end572, %if.end567, %if.end562, %if.end557, %if.end552, %sw.bb
  br label %if.end626

if.else613:                                       ; preds = %cond.end528
  %261 = load i32, i32* %c.addr, align 4
  %cmp614 = icmp ne i32 %261, 125
  br i1 %cmp614, label %if.then618, label %lor.lhs.false616

lor.lhs.false616:                                 ; preds = %if.else613
  %262 = load i32, i32* %bflag, align 4
  %tobool617 = icmp ne i32 %262, 0
  br i1 %tobool617, label %if.end619, label %if.then618

if.then618:                                       ; preds = %lor.lhs.false616, %if.else613
  %263 = load i32, i32* %c.addr, align 4
  call void @inungetc(i32 %263)
  br label %if.end619

if.end619:                                        ; preds = %if.then618, %lor.lhs.false616
  %264 = load i32, i32* %c.addr, align 4
  %cmp620 = icmp ne i32 %264, 125
  br i1 %cmp620, label %land.lhs.true622, label %if.end625

land.lhs.true622:                                 ; preds = %if.end619
  %265 = load i32, i32* %bflag, align 4
  %tobool623 = icmp ne i32 %265, 0
  br i1 %tobool623, label %if.then624, label %if.end625

if.then624:                                       ; preds = %land.lhs.true622
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end625:                                        ; preds = %land.lhs.true622, %if.end619
  br label %for.end627

if.end626:                                        ; preds = %sw.epilog
  br label %for.cond523

for.end627:                                       ; preds = %if.end625
  %266 = load i32, i32* %lexraw_mark, align 4
  call void @zshlex_raw_back_to_mark(i32 %266)
  store i32 0, i32* @lexstop, align 4
  %267 = load i8*, i8** %sline, align 4
  call void @inpush(i8* %267, i32 4, %struct.alias* null)
  %268 = load i32, i32* @histdone, align 4
  %or628 = or i32 %268, 1
  store i32 %or628, i32* @histdone, align 4
  %269 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 87), align 1
  %tobool629 = icmp ne i8 %269, 0
  br i1 %tobool629, label %if.then630, label %if.end632

if.then630:                                       ; preds = %for.end627
  %270 = load i32, i32* @histdone, align 4
  %or631 = or i32 %270, 6
  store i32 %or631, i32* @histdone, align 4
  br label %if.end632

if.end632:                                        ; preds = %if.then630, %for.end627
  %call633 = call i32 @ingetc()
  store i32 %call633, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end632, %if.then624, %sw.default, %if.else598, %if.then595, %if.then586, %if.then581, %if.then576, %if.then571, %if.then566, %if.then561, %if.then556, %if.then551, %if.then545, %do.end499, %do.end458, %do.end420, %do.end388, %do.end350, %do.end319, %do.end247, %do.end114, %if.then67, %if.then51, %if.then41, %if.else34, %if.then19, %if.then15, %if.then11, %if.then8
  %271 = load i32, i32* %retval, align 4
  ret i32 %271
}

; Function Attrs: noinline nounwind
define internal void @safeinungetc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @lexstop, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  call void @inungetc(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @zshlex_raw_mark(i32) #1

; Function Attrs: noinline nounwind
define internal %struct.histent* @gethist(i32 %ev) #0 {
entry:
  %ev.addr = alloca i32, align 4
  %ret = alloca %struct.histent*, align 4
  store i32 %ev, i32* %ev.addr, align 4
  %0 = load i32, i32* %ev.addr, align 4
  %call = call %struct.histent* @quietgethist(i32 %0)
  store %struct.histent* %call, %struct.histent** %ret, align 4
  %1 = load %struct.histent*, %struct.histent** %ret, align 4
  %tobool = icmp ne %struct.histent* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @herrflush()
  %2 = load i32, i32* %ev.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.histent*, %struct.histent** %ret, align 4
  ret %struct.histent* %3
}

; Function Attrs: noinline nounwind
define internal i8* @getargs(%struct.histent* %elist, i32 %arg1, i32 %arg2) #0 {
entry:
  %retval = alloca i8*, align 4
  %elist.addr = alloca %struct.histent*, align 4
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %words = alloca i16*, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %nwords = alloca i32, align 4
  store %struct.histent* %elist, %struct.histent** %elist.addr, align 4
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %elist.addr, align 4
  %words1 = getelementptr inbounds %struct.histent, %struct.histent* %0, i32 0, i32 6
  %1 = load i16*, i16** %words1, align 4
  store i16* %1, i16** %words, align 4
  %2 = load %struct.histent*, %struct.histent** %elist.addr, align 4
  %nwords2 = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 7
  %3 = load i32, i32* %nwords2, align 4
  store i32 %3, i32* %nwords, align 4
  %4 = load i32, i32* %arg2.addr, align 4
  %5 = load i32, i32* %arg1.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %arg1.addr, align 4
  %7 = load i32, i32* %nwords, align 4
  %cmp3 = icmp sge i32 %6, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %arg2.addr, align 4
  %9 = load i32, i32* %nwords, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0))
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %10 = load i32, i32* %arg1.addr, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %arg2.addr, align 4
  %12 = load i32, i32* %nwords, align 4
  %sub = sub nsw i32 %12, 1
  %cmp7 = icmp eq i32 %11, %sub
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %13 = load %struct.histent*, %struct.histent** %elist.addr, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  %call = call i8* @dupstring(i8* %14)
  store i8* %call, i8** %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %15 = load i16*, i16** %words, align 4
  %16 = load i32, i32* %arg1.addr, align 4
  %mul = mul nsw i32 2, %16
  %arrayidx = getelementptr inbounds i16, i16* %15, i32 %mul
  %17 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %17 to i32
  store i32 %conv, i32* %pos1, align 4
  %18 = load i16*, i16** %words, align 4
  %19 = load i32, i32* %arg2.addr, align 4
  %mul10 = mul nsw i32 2, %19
  %add = add nsw i32 %mul10, 1
  %arrayidx11 = getelementptr inbounds i16, i16* %18, i32 %add
  %20 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %20 to i32
  store i32 %conv12, i32* %pos2, align 4
  %21 = load i32, i32* %pos1, align 4
  %cmp13 = icmp slt i32 %21, 0
  br i1 %cmp13, label %if.then24, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end9
  %22 = load i32, i32* %pos1, align 4
  %23 = load i32, i32* %arg1.addr, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %24 = load i32, i32* %pos2, align 4
  %cmp19 = icmp slt i32 %24, 0
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %25 = load i32, i32* %pos2, align 4
  %26 = load i32, i32* %arg2.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %if.end9
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i32 0, i32 0))
  store i8* null, i8** %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false21
  %27 = load %struct.histent*, %struct.histent** %elist.addr, align 4
  %node26 = getelementptr inbounds %struct.histent, %struct.histent* %27, i32 0, i32 0
  %nam27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node26, i32 0, i32 1
  %28 = load i8*, i8** %nam27, align 4
  %29 = load i32, i32* %pos1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %28, i32 %29
  %30 = load i32, i32* %pos2, align 4
  %31 = load i32, i32* %pos1, align 4
  %sub28 = sub nsw i32 %30, %31
  %call29 = call i8* @dupstrpfx(i8* %add.ptr, i32 %sub28)
  store i8* %call29, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.then8, %if.then
  %32 = load i8*, i8** %retval, align 4
  ret i8* %32
}

; Function Attrs: noinline nounwind
define internal i32 @getargc(%struct.histent* %ehist) #0 {
entry:
  %ehist.addr = alloca %struct.histent*, align 4
  store %struct.histent* %ehist, %struct.histent** %ehist.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %ehist.addr, align 4
  %nwords = getelementptr inbounds %struct.histent, %struct.histent* %0, i32 0, i32 7
  %1 = load i32, i32* %nwords, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.histent*, %struct.histent** %ehist.addr, align 4
  %nwords1 = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 7
  %3 = load i32, i32* %nwords1, align 4
  %sub = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @getsubsargs(i8* %subline, i32* %gbalp, i32* %cflagp) #0 {
entry:
  %retval = alloca i32, align 4
  %subline.addr = alloca i8*, align 4
  %gbalp.addr = alloca i32*, align 4
  %cflagp.addr = alloca i32*, align 4
  %del = alloca i32, align 4
  %follow = alloca i32, align 4
  %ptr1 = alloca i8*, align 4
  %ptr2 = alloca i8*, align 4
  store i8* %subline, i8** %subline.addr, align 4
  store i32* %gbalp, i32** %gbalp.addr, align 4
  store i32* %cflagp, i32** %cflagp.addr, align 4
  %call = call i32 @ingetc()
  store i32 %call, i32* %del, align 4
  %0 = load i32, i32* %del, align 4
  %call1 = call i8* @hdynread2(i32 %0)
  store i8* %call1, i8** %ptr1, align 4
  %1 = load i8*, i8** %ptr1, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %del, align 4
  %call2 = call i8* @hdynread2(i32 %2)
  store i8* %call2, i8** %ptr2, align 4
  %3 = load i8*, i8** %ptr1, align 4
  %call3 = call i32 @strlen(i8* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %4 = load i8*, i8** @hsubl, align 4
  call void @zsfree(i8* %4)
  %5 = load i8*, i8** %ptr1, align 4
  store i8* %5, i8** @hsubl, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** @hsubl, align 4
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.else
  %7 = load i8*, i8** %ptr1, align 4
  call void @zsfree(i8* %7)
  %8 = load i8*, i8** %ptr2, align 4
  call void @zsfree(i8* %8)
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then5
  %9 = load i8*, i8** @hsubr, align 4
  call void @zsfree(i8* %9)
  %10 = load i8*, i8** %ptr2, align 4
  store i8* %10, i8** @hsubr, align 4
  %call10 = call i32 @ingetc()
  store i32 %call10, i32* %follow, align 4
  %11 = load i32, i32* %follow, align 4
  %cmp = icmp eq i32 %11, 58
  br i1 %cmp, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @ingetc()
  store i32 %call12, i32* %follow, align 4
  %12 = load i32, i32* %follow, align 4
  %cmp13 = icmp eq i32 %12, 71
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then11
  %13 = load i32*, i32** %gbalp.addr, align 4
  store i32 1, i32* %13, align 4
  br label %if.end16

if.else15:                                        ; preds = %if.then11
  %14 = load i32, i32* %follow, align 4
  call void @inungetc(i32 %14)
  %15 = load i32*, i32** %cflagp.addr, align 4
  store i32 1, i32* %15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %if.end18

if.else17:                                        ; preds = %if.end9
  %16 = load i32, i32* %follow, align 4
  call void @inungetc(i32 %16)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then7, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind
define internal i32 @substfailed() #0 {
entry:
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0))
  ret i32 -1
}

declare i8* @hrealloc(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @hconsearch(i8* %str, i32* %marg) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %marg.addr = alloca i32*, align 4
  %t1 = alloca i32, align 4
  %s = alloca i8*, align 4
  %he = alloca %struct.histent*, align 4
  %pos = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32* %marg, i32** %marg.addr, align 4
  store i32 0, i32* %t1, align 4
  %0 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %call = call %struct.histent* @up_histent(%struct.histent* %0)
  store %struct.histent* %call, %struct.histent** %he, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool = icmp ne %struct.histent* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 16
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = load %struct.histent*, %struct.histent** %he, align 4
  %node2 = getelementptr inbounds %struct.histent, %struct.histent* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %6 = load i8*, i8** %str.addr, align 4
  %call3 = call i8* @strstr(i8* %5, i8* %6)
  store i8* %call3, i8** %s, align 4
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %7 = load i8*, i8** %s, align 4
  %8 = load %struct.histent*, %struct.histent** %he, align 4
  %node6 = getelementptr inbounds %struct.histent, %struct.histent* %8, i32 0, i32 0
  %nam7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 1
  %9 = load i8*, i8** %nam7, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then5
  %10 = load i32, i32* %t1, align 4
  %11 = load %struct.histent*, %struct.histent** %he, align 4
  %nwords = getelementptr inbounds %struct.histent, %struct.histent* %11, i32 0, i32 7
  %12 = load i32, i32* %nwords, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.histent*, %struct.histent** %he, align 4
  %words = getelementptr inbounds %struct.histent, %struct.histent* %13, i32 0, i32 6
  %14 = load i16*, i16** %words, align 4
  %15 = load i32, i32* %t1, align 4
  %mul = mul nsw i32 2, %15
  %arrayidx = getelementptr inbounds i16, i16* %14, i32 %mul
  %16 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %16 to i32
  %17 = load i32, i32* %pos, align 4
  %cmp8 = icmp sle i32 %conv, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i32, i32* %t1, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %t1, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i32, i32* %t1, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load i32*, i32** %marg.addr, align 4
  store i32 %sub, i32* %21, align 4
  %22 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 8
  %23 = load i32, i32* %histnum, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.then
  %24 = load %struct.histent*, %struct.histent** %he, align 4
  %call11 = call %struct.histent* @up_histent(%struct.histent* %24)
  store %struct.histent* %call11, %struct.histent** %he, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %while.end
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind
define internal i32 @getargspec(i32 %argc, i32 %marg, i32 %evset) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %marg.addr = alloca i32, align 4
  %evset.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i32 %marg, i32* %marg.addr, align 4
  store i32 %evset, i32* %evset.addr, align 4
  store i32 -1, i32* %ret, align 4
  %call = call i32 @ingetc()
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %c, align 4
  %conv = trunc i32 %0 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv1 = sext i16 %1 to i32
  %and = and i32 %conv1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %2 = load i32, i32* %c, align 4
  %conv3 = trunc i32 %2 to i8
  %idxprom4 = zext i8 %conv3 to i32
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom4
  %3 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %3 to i32
  %and7 = and i32 %conv6, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %ret, align 4
  %mul = mul nsw i32 %4, 10
  %5 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %5
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %ret, align 4
  %call9 = call i32 @ingetc()
  store i32 %call9, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  call void @inungetc(i32 %6)
  br label %if.end32

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %7, 94
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %if.end31

if.else13:                                        ; preds = %if.else
  %8 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %8, 36
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else13
  %9 = load i32, i32* %argc.addr, align 4
  store i32 %9, i32* %ret, align 4
  br label %if.end30

if.else17:                                        ; preds = %if.else13
  %10 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %10, 37
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.else17
  %11 = load i32, i32* %evset.addr, align 4
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then20
  %12 = load i32, i32* %marg.addr, align 4
  %cmp24 = icmp eq i32 %12, -1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @herrflush()
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0))
  store i32 -2, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %13 = load i32, i32* %marg.addr, align 4
  store i32 %13, i32* %ret, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else17
  %14 = load i32, i32* %c, align 4
  call void @inungetc(i32 %14)
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.end27
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then16
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then12
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %while.end
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then26, %if.then22, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare i8* @equalsubstr(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @quote(i8** %tr) #0 {
entry:
  %tr.addr = alloca i8**, align 4
  %ptr = alloca i8*, align 4
  %rptr = alloca i8*, align 4
  %str = alloca i8**, align 4
  %len = alloca i32, align 4
  %inquotes = alloca i32, align 4
  store i8** %tr, i8*** %tr.addr, align 4
  %0 = load i8**, i8*** %tr.addr, align 4
  store i8** %0, i8*** %str, align 4
  store i32 3, i32* %len, align 4
  store i32 0, i32* %inquotes, align 4
  %1 = load i8**, i8*** %str, align 4
  %2 = load i8*, i8** %1, align 4
  store i8* %2, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len, align 4
  %add = add nsw i32 %7, 3
  store i32 %add, i32* %len, align 4
  %8 = load i32, i32* %inquotes, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 1, i32* %inquotes, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %inquotes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end16

if.else4:                                         ; preds = %for.body
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv5 = sext i16 %11 to i32
  %and = and i32 %conv5, 8
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.else4
  %12 = load i32, i32* %inquotes, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.end15, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %13 = load i8*, i8** %ptr, align 4
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i32 -1
  %14 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp ne i32 %conv10, 92
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true8
  %15 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %15, 2
  store i32 %add14, i32* %len, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true8, %land.lhs.true, %if.else4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %16 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  %17 = load i32, i32* %len, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8**, i8*** %str, align 4
  %19 = load i8*, i8** %18, align 4
  store i8* %19, i8** %ptr, align 4
  %20 = load i32, i32* %len, align 4
  %call = call i8* @zhalloc(i32 %20)
  store i8* %call, i8** %rptr, align 4
  %21 = load i8**, i8*** %str, align 4
  store i8* %call, i8** %21, align 4
  %22 = load i8*, i8** %rptr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %rptr, align 4
  store i8 39, i8* %22, align 1
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc54, %for.end
  %23 = load i8*, i8** %ptr, align 4
  %24 = load i8, i8* %23, align 1
  %tobool19 = icmp ne i8 %24, 0
  br i1 %tobool19, label %for.body20, label %for.end56

for.body20:                                       ; preds = %for.cond18
  %25 = load i8*, i8** %ptr, align 4
  %26 = load i8, i8* %25, align 1
  %conv21 = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv21, 39
  br i1 %cmp22, label %if.then24, label %if.else33

if.then24:                                        ; preds = %for.body20
  %27 = load i32, i32* %inquotes, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.then24
  store i32 1, i32* %inquotes, align 4
  br label %if.end28

if.else27:                                        ; preds = %if.then24
  store i32 0, i32* %inquotes, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %28 = load i8*, i8** %rptr, align 4
  %incdec.ptr29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr29, i8** %rptr, align 4
  store i8 39, i8* %28, align 1
  %29 = load i8*, i8** %rptr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr30, i8** %rptr, align 4
  store i8 92, i8* %29, align 1
  %30 = load i8*, i8** %rptr, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr31, i8** %rptr, align 4
  store i8 39, i8* %30, align 1
  %31 = load i8*, i8** %rptr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr32, i8** %rptr, align 4
  store i8 39, i8* %31, align 1
  br label %if.end53

if.else33:                                        ; preds = %for.body20
  %32 = load i8*, i8** %ptr, align 4
  %33 = load i8, i8* %32, align 1
  %idxprom34 = zext i8 %33 to i32
  %arrayidx35 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom34
  %34 = load i16, i16* %arrayidx35, align 2
  %conv36 = sext i16 %34 to i32
  %and37 = and i32 %conv36, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.else50

land.lhs.true39:                                  ; preds = %if.else33
  %35 = load i32, i32* %inquotes, align 4
  %tobool40 = icmp ne i32 %35, 0
  br i1 %tobool40, label %if.else50, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %36 = load i8*, i8** %ptr, align 4
  %arrayidx42 = getelementptr inbounds i8, i8* %36, i32 -1
  %37 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %37 to i32
  %cmp44 = icmp ne i32 %conv43, 92
  br i1 %cmp44, label %if.then46, label %if.else50

if.then46:                                        ; preds = %land.lhs.true41
  %38 = load i8*, i8** %rptr, align 4
  %incdec.ptr47 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr47, i8** %rptr, align 4
  store i8 39, i8* %38, align 1
  %39 = load i8*, i8** %ptr, align 4
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %rptr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr48, i8** %rptr, align 4
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %rptr, align 4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr49, i8** %rptr, align 4
  store i8 39, i8* %42, align 1
  br label %if.end52

if.else50:                                        ; preds = %land.lhs.true41, %land.lhs.true39, %if.else33
  %43 = load i8*, i8** %ptr, align 4
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %rptr, align 4
  %incdec.ptr51 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr51, i8** %rptr, align 4
  store i8 %44, i8* %45, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end28
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %46 = load i8*, i8** %ptr, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr55, i8** %ptr, align 4
  br label %for.cond18

for.end56:                                        ; preds = %for.cond18
  %47 = load i8*, i8** %rptr, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr57, i8** %rptr, align 4
  store i8 39, i8* %47, align 1
  %48 = load i8*, i8** %rptr, align 4
  %incdec.ptr58 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr58, i8** %rptr, align 4
  store i8 0, i8* %48, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal i32 @quotebreak(i8** %tr) #0 {
entry:
  %tr.addr = alloca i8**, align 4
  %ptr = alloca i8*, align 4
  %rptr = alloca i8*, align 4
  %str = alloca i8**, align 4
  %len = alloca i32, align 4
  store i8** %tr, i8*** %tr.addr, align 4
  %0 = load i8**, i8*** %tr.addr, align 4
  store i8** %0, i8*** %str, align 4
  store i32 3, i32* %len, align 4
  %1 = load i8**, i8*** %str, align 4
  %2 = load i8*, i8** %1, align 4
  store i8* %2, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len, align 4
  %add = add nsw i32 %7, 3
  store i32 %add, i32* %len, align 4
  br label %if.end6

if.else:                                          ; preds = %for.body
  %8 = load i8*, i8** %ptr, align 4
  %9 = load i8, i8* %8, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %10 to i32
  %and = and i32 %conv2, 8
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %11 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %11, 2
  store i32 %add5, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %12 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  %13 = load i32, i32* %len, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8**, i8*** %str, align 4
  %15 = load i8*, i8** %14, align 4
  store i8* %15, i8** %ptr, align 4
  %16 = load i32, i32* %len, align 4
  %call = call i8* @zhalloc(i32 %16)
  store i8* %call, i8** %rptr, align 4
  %17 = load i8**, i8*** %str, align 4
  store i8* %call, i8** %17, align 4
  %18 = load i8*, i8** %rptr, align 4
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %rptr, align 4
  store i8 39, i8* %18, align 1
  br label %for.cond8

for.cond8:                                        ; preds = %if.end35, %for.end
  %19 = load i8*, i8** %ptr, align 4
  %20 = load i8, i8* %19, align 1
  %tobool9 = icmp ne i8 %20, 0
  br i1 %tobool9, label %for.body10, label %for.end36

for.body10:                                       ; preds = %for.cond8
  %21 = load i8*, i8** %ptr, align 4
  %22 = load i8, i8* %21, align 1
  %conv11 = sext i8 %22 to i32
  %cmp12 = icmp eq i32 %conv11, 39
  br i1 %cmp12, label %if.then14, label %if.else20

if.then14:                                        ; preds = %for.body10
  %23 = load i8*, i8** %rptr, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr15, i8** %rptr, align 4
  store i8 39, i8* %23, align 1
  %24 = load i8*, i8** %rptr, align 4
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %rptr, align 4
  store i8 92, i8* %24, align 1
  %25 = load i8*, i8** %rptr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %rptr, align 4
  store i8 39, i8* %25, align 1
  %26 = load i8*, i8** %rptr, align 4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr18, i8** %rptr, align 4
  store i8 39, i8* %26, align 1
  %27 = load i8*, i8** %ptr, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr19, i8** %ptr, align 4
  br label %if.end35

if.else20:                                        ; preds = %for.body10
  %28 = load i8*, i8** %ptr, align 4
  %29 = load i8, i8* %28, align 1
  %idxprom21 = zext i8 %29 to i32
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom21
  %30 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %30 to i32
  %and24 = and i32 %conv23, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.else31

if.then26:                                        ; preds = %if.else20
  %31 = load i8*, i8** %rptr, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %rptr, align 4
  store i8 39, i8* %31, align 1
  %32 = load i8*, i8** %ptr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr28, i8** %ptr, align 4
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %rptr, align 4
  %incdec.ptr29 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr29, i8** %rptr, align 4
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %rptr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr30, i8** %rptr, align 4
  store i8 39, i8* %35, align 1
  br label %if.end34

if.else31:                                        ; preds = %if.else20
  %36 = load i8*, i8** %ptr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr32, i8** %ptr, align 4
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %rptr, align 4
  %incdec.ptr33 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr33, i8** %rptr, align 4
  store i8 %37, i8* %38, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then14
  br label %for.cond8

for.end36:                                        ; preds = %for.cond8
  %39 = load i8*, i8** %rptr, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr37, i8** %rptr, align 4
  store i8 39, i8* %39, align 1
  %40 = load i8*, i8** %rptr, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr38, i8** %rptr, align 4
  store i8 0, i8* %40, align 1
  ret i32 0
}

declare void @zshlex_raw_back_to_mark(i32) #1

declare i8* @dupstrpfx(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i8* @hdynread2(i32 %stop) #0 {
entry:
  %stop.addr = alloca i32, align 4
  %bsiz = alloca i32, align 4
  %ct = alloca i32, align 4
  %c = alloca i32, align 4
  %buf = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  store i32 %stop, i32* %stop.addr, align 4
  store i32 256, i32* %bsiz, align 4
  store i32 0, i32* %ct, align 4
  %0 = load i32, i32* %bsiz, align 4
  %call = call i8* @zalloc(i32 %0)
  store i8* %call, i8** %buf, align 4
  %1 = load i8*, i8** %buf, align 4
  store i8* %1, i8** %ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %call1 = call i32 @ingetc()
  store i32 %call1, i32* %c, align 4
  %2 = load i32, i32* %stop.addr, align 4
  %cmp = icmp ne i32 %call1, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %3, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %6, 92
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call4 = call i32 @ingetc()
  store i32 %call4, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, i32* %c, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  store i8 %conv, i8* %8, align 1
  %9 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ct, align 4
  %10 = load i32, i32* %bsiz, align 4
  %cmp5 = icmp eq i32 %inc, %10
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf, align 4
  %12 = load i32, i32* %bsiz, align 4
  %mul = mul nsw i32 %12, 2
  store i32 %mul, i32* %bsiz, align 4
  %call8 = call i8* @realloc(i8* %11, i32 %mul)
  store i8* %call8, i8** %buf, align 4
  %13 = load i8*, i8** %buf, align 4
  %14 = load i32, i32* %ct, align 4
  %add.ptr = getelementptr inbounds i8, i8* %13, i32 %14
  store i8* %add.ptr, i8** %ptr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %16, 10
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  call void @inungetc(i32 10)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end
  %17 = load i8*, i8** %buf, align 4
  ret i8* %17
}

declare i8* @getjobtext(%struct.eprog*, i32*) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @feof(%struct._IO_FILE*) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @zsleep_random(i32, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
