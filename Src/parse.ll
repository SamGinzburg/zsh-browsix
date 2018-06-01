; ModuleID = 'parse.c'
source_filename = "parse.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.heredocs = type { %struct.heredocs*, i32, i32, i8* }
%struct.eccstr = type { %struct.eccstr*, %struct.eccstr*, i8*, i32, i32, i32, i32 }
%struct.__sigset_t = type { [32 x i32] }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.parse_stack = type { %struct.heredocs*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.eccstr*, i32, i32, i32 }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.redir = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.fdhead = type { i32, i32, i32, i32, i32, i32 }
%struct.wcfunc = type { i8*, %struct.eprog*, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }

@incmdpos = common global i32 0, align 4
@aliasspaceflag = common global i32 0, align 4
@incond = common global i32 0, align 4
@inredir = common global i32 0, align 4
@incasepat = common global i32 0, align 4
@isnewlin = common global i32 0, align 4
@infor = common global i32 0, align 4
@inrepeat_ = common global i32 0, align 4
@intypeset = common global i32 0, align 4
@hdocs = common global %struct.heredocs* null, align 4
@eclen = common global i32 0, align 4
@ecused = common global i32 0, align 4
@ecnpats = common global i32 0, align 4
@ecbuf = common global i32* null, align 4
@ecstrs = common global %struct.eccstr* null, align 4
@ecsoffs = common global i32 0, align 4
@ecssub = common global i32 0, align 4
@ecnfunc = common global i32 0, align 4
@errflag = external global i32, align 4
@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@tok = external global i32, align 4
@dummy_eprog = common global %struct.eprog zeroinitializer, align 4
@noerrs = external global i32, align 4
@condlex = global void ()* @zshlex, align 4
@ecgetstr.buf = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ecrawstr.buf = internal global [4 x i8] zeroinitializer, align 1
@dummy_eprog_code = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"illegal combination of options\00", align 1
@opts = external global [181 x i8], align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"functions will use zsh style autoloading\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".zwc\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"zwc file (%s) for zsh-%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mapped\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@dumps = internal global %struct.funcdump* null, align 4
@shfunctab = external global %struct.hashtable*, align 4
@toklineno = external global i32, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@tokstr = external global i8*, align 4
@par_cmd.inpartime = internal global i32 0, align 4
@nocorrect = external global i32, align 4
@redirtab = internal global [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 9, i32 8, i32 10, i32 11, i32 13, i32 14, i32 4, i32 5, i32 6, i32 7, i32 12], align 4
@tokfd = external global i32, align 4
@noaliases = external global i32, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"esac\00", align 1
@typtab = external global [256 x i16], align 2
@cmdstack = external global i8*, align 4
@cmdsp = external global i32, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@lineno = external global i32, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"defining function based on alias `%s'\00", align 1
@zshlextext = external global i8*, align 4
@testargs = external global i8**, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"abcdefghknoprstuvwxzLONGS\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"parse error: condition expected: %s\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"abcdefgknoprstuvwxzhLONGS\00", align 1
@get_cond_num.condstrs = internal global [10 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* null], align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ot\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"condition expected: %s\00", align 1
@histdone = external global i32, align 4
@.str.34 = private unnamed_addr constant [25 x i8] c"parse error near `%l...'\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"parse error near `%l'\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"can't open zwc file: %s\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"5.5.1-dev-0\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"zwc file has wrong version (zsh-%s): %s\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"invalid zwc file: %s\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"can't write zwc file: %s\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"can't open file: %s\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"can't read file: %s\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"unknown function: %s\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"no functions\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"function is not loaded: %s\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"can't load function: %s\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"function is already loaded: %s\00", align 1
@load_dump_file.pgsz = internal global i32 0, align 4

; Function Attrs: noinline nounwind
define void @parse_context_save(%struct.parse_stack* %ps, i32 %toplevel) #0 {
entry:
  %ps.addr = alloca %struct.parse_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.parse_stack* %ps, %struct.parse_stack** %ps.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %1 = load i32, i32* @incmdpos, align 4
  %2 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incmdpos = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %2, i32 0, i32 1
  store i32 %1, i32* %incmdpos, align 4
  %3 = load i32, i32* @aliasspaceflag, align 4
  %4 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %aliasspaceflag = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %4, i32 0, i32 2
  store i32 %3, i32* %aliasspaceflag, align 4
  %5 = load i32, i32* @incond, align 4
  %6 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incond = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %6, i32 0, i32 3
  store i32 %5, i32* %incond, align 4
  %7 = load i32, i32* @inredir, align 4
  %8 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %inredir = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %8, i32 0, i32 4
  store i32 %7, i32* %inredir, align 4
  %9 = load i32, i32* @incasepat, align 4
  %10 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incasepat = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %10, i32 0, i32 5
  store i32 %9, i32* %incasepat, align 4
  %11 = load i32, i32* @isnewlin, align 4
  %12 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %isnewlin = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %12, i32 0, i32 6
  store i32 %11, i32* %isnewlin, align 4
  %13 = load i32, i32* @infor, align 4
  %14 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %infor = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %14, i32 0, i32 7
  store i32 %13, i32* %infor, align 4
  %15 = load i32, i32* @inrepeat_, align 4
  %16 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %inrepeat_ = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %16, i32 0, i32 8
  store i32 %15, i32* %inrepeat_, align 4
  %17 = load i32, i32* @intypeset, align 4
  %18 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %intypeset = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %18, i32 0, i32 9
  store i32 %17, i32* %intypeset, align 4
  %19 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %20 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %hdocs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %20, i32 0, i32 0
  store %struct.heredocs* %19, %struct.heredocs** %hdocs, align 4
  %21 = load i32, i32* @eclen, align 4
  %22 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %eclen = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %22, i32 0, i32 10
  store i32 %21, i32* %eclen, align 4
  %23 = load i32, i32* @ecused, align 4
  %24 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecused = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %24, i32 0, i32 11
  store i32 %23, i32* %ecused, align 4
  %25 = load i32, i32* @ecnpats, align 4
  %26 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecnpats = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %26, i32 0, i32 12
  store i32 %25, i32* %ecnpats, align 4
  %27 = load i32*, i32** @ecbuf, align 4
  %28 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecbuf = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %28, i32 0, i32 13
  store i32* %27, i32** %ecbuf, align 4
  %29 = load %struct.eccstr*, %struct.eccstr** @ecstrs, align 4
  %30 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecstrs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %30, i32 0, i32 14
  store %struct.eccstr* %29, %struct.eccstr** %ecstrs, align 4
  %31 = load i32, i32* @ecsoffs, align 4
  %32 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecsoffs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %32, i32 0, i32 15
  store i32 %31, i32* %ecsoffs, align 4
  %33 = load i32, i32* @ecssub, align 4
  %34 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecssub = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %34, i32 0, i32 16
  store i32 %33, i32* %ecssub, align 4
  %35 = load i32, i32* @ecnfunc, align 4
  %36 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecnfunc = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %36, i32 0, i32 17
  store i32 %35, i32* %ecnfunc, align 4
  store i32* null, i32** @ecbuf, align 4
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @parse_context_restore(%struct.parse_stack* %ps, i32 %toplevel) #0 {
entry:
  %ps.addr = alloca %struct.parse_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.parse_stack* %ps, %struct.parse_stack** %ps.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %1 = load i32*, i32** @ecbuf, align 4
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** @ecbuf, align 4
  %3 = bitcast i32* %2 to i8*
  %4 = load i32, i32* @eclen, align 4
  call void @zfree(i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incmdpos = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %5, i32 0, i32 1
  %6 = load i32, i32* %incmdpos, align 4
  store i32 %6, i32* @incmdpos, align 4
  %7 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %aliasspaceflag = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %7, i32 0, i32 2
  %8 = load i32, i32* %aliasspaceflag, align 4
  store i32 %8, i32* @aliasspaceflag, align 4
  %9 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incond = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %9, i32 0, i32 3
  %10 = load i32, i32* %incond, align 4
  store i32 %10, i32* @incond, align 4
  %11 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %inredir = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %11, i32 0, i32 4
  %12 = load i32, i32* %inredir, align 4
  store i32 %12, i32* @inredir, align 4
  %13 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %incasepat = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %13, i32 0, i32 5
  %14 = load i32, i32* %incasepat, align 4
  store i32 %14, i32* @incasepat, align 4
  %15 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %isnewlin = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %15, i32 0, i32 6
  %16 = load i32, i32* %isnewlin, align 4
  store i32 %16, i32* @isnewlin, align 4
  %17 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %infor = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %17, i32 0, i32 7
  %18 = load i32, i32* %infor, align 4
  store i32 %18, i32* @infor, align 4
  %19 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %inrepeat_ = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %19, i32 0, i32 8
  %20 = load i32, i32* %inrepeat_, align 4
  store i32 %20, i32* @inrepeat_, align 4
  %21 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %intypeset = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %21, i32 0, i32 9
  %22 = load i32, i32* %intypeset, align 4
  store i32 %22, i32* @intypeset, align 4
  %23 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %hdocs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %23, i32 0, i32 0
  %24 = load %struct.heredocs*, %struct.heredocs** %hdocs, align 4
  store %struct.heredocs* %24, %struct.heredocs** @hdocs, align 4
  %25 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %eclen = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %25, i32 0, i32 10
  %26 = load i32, i32* %eclen, align 4
  store i32 %26, i32* @eclen, align 4
  %27 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecused = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %27, i32 0, i32 11
  %28 = load i32, i32* %ecused, align 4
  store i32 %28, i32* @ecused, align 4
  %29 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecnpats = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %29, i32 0, i32 12
  %30 = load i32, i32* %ecnpats, align 4
  store i32 %30, i32* @ecnpats, align 4
  %31 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecbuf = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %31, i32 0, i32 13
  %32 = load i32*, i32** %ecbuf, align 4
  store i32* %32, i32** @ecbuf, align 4
  %33 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecstrs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %33, i32 0, i32 14
  %34 = load %struct.eccstr*, %struct.eccstr** %ecstrs, align 4
  store %struct.eccstr* %34, %struct.eccstr** @ecstrs, align 4
  %35 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecsoffs = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %35, i32 0, i32 15
  %36 = load i32, i32* %ecsoffs, align 4
  store i32 %36, i32* @ecsoffs, align 4
  %37 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecssub = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %37, i32 0, i32 16
  %38 = load i32, i32* %ecssub, align 4
  store i32 %38, i32* @ecssub, align 4
  %39 = load %struct.parse_stack*, %struct.parse_stack** %ps.addr, align 4
  %ecnfunc = getelementptr inbounds %struct.parse_stack, %struct.parse_stack* %39, i32 0, i32 17
  %40 = load i32, i32* %ecnfunc, align 4
  store i32 %40, i32* @ecnfunc, align 4
  %41 = load i32, i32* @errflag, align 4
  %and = and i32 %41, -2
  store i32 %and, i32* @errflag, align 4
  ret void
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @init_parse_status() #0 {
entry:
  store i32 0, i32* @intypeset, align 4
  store i32 0, i32* @infor, align 4
  store i32 0, i32* @inredir, align 4
  store i32 0, i32* @incond, align 4
  store i32 0, i32* @incasepat, align 4
  store i32 0, i32* @inrepeat_, align 4
  store i32 1, i32* @incmdpos, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @init_parse() #0 {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i32*, i32** @ecbuf, align 4
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** @ecbuf, align 4
  %3 = bitcast i32* %2 to i8*
  %4 = load i32, i32* @eclen, align 4
  call void @zfree(i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 256, i32* @eclen, align 4
  %call = call i8* @zalloc(i32 1024)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** @ecbuf, align 4
  store i32 0, i32* @ecused, align 4
  store %struct.eccstr* null, %struct.eccstr** @ecstrs, align 4
  store i32 0, i32* @ecnpats, align 4
  store i32 0, i32* @ecsoffs, align 4
  store i32 0, i32* @ecssub, align 4
  store i32 0, i32* @ecnfunc, align 4
  call void @init_parse_status()
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

declare i8* @zalloc(i32) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define i32 @empty_eprog(%struct.eprog* %p) #0 {
entry:
  %p.addr = alloca %struct.eprog*, align 4
  store %struct.eprog* %p, %struct.eprog** %p.addr, align 4
  %0 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %tobool = icmp ne %struct.eprog* %0, null
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %prog = getelementptr inbounds %struct.eprog, %struct.eprog* %1, i32 0, i32 5
  %2 = load i32*, i32** %prog, align 4
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %prog2 = getelementptr inbounds %struct.eprog, %struct.eprog* %3, i32 0, i32 5
  %4 = load i32*, i32** %prog2, align 4
  %5 = load i32, i32* %4, align 4
  %cmp = icmp eq i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind
define %struct.eprog* @parse_event(i32 %endtok) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %endtok.addr = alloca i32, align 4
  store i32 %endtok, i32* %endtok.addr, align 4
  store i32 37, i32* @tok, align 4
  store i32 1, i32* @incmdpos, align 4
  store i32 0, i32* @aliasspaceflag, align 4
  call void @zshlex()
  call void @init_parse()
  %0 = load i32, i32* %endtok.addr, align 4
  %call = call i32 @par_event(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @clear_hdocs()
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %endtok.addr, align 4
  %cmp = icmp ne i32 %1, 37
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store %struct.eprog* @dummy_eprog, %struct.eprog** %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = call %struct.eprog* @bld_eprog(i32 1)
  store %struct.eprog* %call3, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %2 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %2
}

declare void @zshlex() #1

; Function Attrs: noinline nounwind
define i32 @par_event(i32 %endtok) #0 {
entry:
  %retval = alloca i32, align 4
  %endtok.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %oec = alloca i32, align 4
  store i32 %endtok, i32* %endtok.addr, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @isnewlin, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %endtok.addr, align 4
  %cmp2 = icmp eq i32 %2, 37
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %3, 37
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %while.end
  %4 = load i32, i32* @tok, align 4
  %5 = load i32, i32* %endtok.addr, align 4
  %cmp6 = icmp eq i32 %4, %5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %call9 = call i32 @par_sublist(i32* %c)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then10, label %if.end31

if.then10:                                        ; preds = %if.end8
  %6 = load i32, i32* @tok, align 4
  %cmp11 = icmp eq i32 %6, 37
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %7 = load i32, i32* @tok, align 4
  %8 = load i32, i32* %endtok.addr, align 4
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.then10
  %9 = load i32, i32* %p, align 4
  %10 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %9, i32 2, i32 %10)
  store i32 1, i32* %r, align 4
  br label %if.end30

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* @tok, align 4
  %cmp14 = icmp eq i32 %11, 1
  br i1 %cmp14, label %if.then15, label %if.else21

if.then15:                                        ; preds = %if.else
  %12 = load i32, i32* %p, align 4
  %13 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %12, i32 2, i32 %13)
  %14 = load i32, i32* @isnewlin, align 4
  %cmp16 = icmp sle i32 %14, 0
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then15
  %15 = load i32, i32* %endtok.addr, align 4
  %cmp18 = icmp ne i32 %15, 37
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false17, %if.then15
  call void @zshlex()
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false17
  store i32 1, i32* %r, align 4
  br label %if.end29

if.else21:                                        ; preds = %if.else
  %16 = load i32, i32* @tok, align 4
  %cmp22 = icmp eq i32 %16, 5
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  %17 = load i32, i32* %p, align 4
  %18 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %17, i32 4, i32 %18)
  call void @zshlex()
  store i32 1, i32* %r, align 4
  br label %if.end28

if.else24:                                        ; preds = %if.else21
  %19 = load i32, i32* @tok, align 4
  %cmp25 = icmp eq i32 %19, 30
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else24
  %20 = load i32, i32* %p, align 4
  %21 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %20, i32 12, i32 %21)
  call void @zshlex()
  store i32 1, i32* %r, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end20
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then13
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end8
  %22 = load i32, i32* %r, align 4
  %tobool32 = icmp ne i32 %22, 0
  br i1 %tobool32, label %if.else41, label %if.then33

if.then33:                                        ; preds = %if.end31
  store i32 38, i32* @tok, align 4
  %23 = load i32, i32* @errflag, align 4
  %tobool34 = icmp ne i32 %23, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then33
  call void @yyerror(i32 0)
  %24 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then33
  call void @yyerror(i32 1)
  call void @herrflush()
  %25 = load i32, i32* @noerrs, align 4
  %cmp37 = icmp ne i32 %25, 2
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  %26 = load i32, i32* @errflag, align 4
  %or = or i32 %26, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  %27 = load i32, i32* @ecused, align 4
  %dec40 = add nsw i32 %27, -1
  store i32 %dec40, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.else41:                                        ; preds = %if.end31
  %28 = load i32, i32* @ecused, align 4
  store i32 %28, i32* %oec, align 4
  %29 = load i32, i32* %endtok.addr, align 4
  %call42 = call i32 @par_event(i32 %29)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.else41
  %30 = load i32, i32* %oec, align 4
  store i32 %30, i32* @ecused, align 4
  %31 = load i32*, i32** @ecbuf, align 4
  %32 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %31, i32 %32
  %33 = load i32, i32* %arrayidx, align 4
  %or45 = or i32 %33, 512
  store i32 %or45, i32* %arrayidx, align 4
  %34 = load i32, i32* @errflag, align 4
  %tobool46 = icmp ne i32 %34, 0
  %cond = select i1 %tobool46, i32 0, i32 1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.else41
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then44, %if.end39, %if.then35, %if.then7, %if.then4, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind
define internal void @clear_hdocs() #0 {
entry:
  %p = alloca %struct.heredocs*, align 4
  %n = alloca %struct.heredocs*, align 4
  %0 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  store %struct.heredocs* %0, %struct.heredocs** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.heredocs*, %struct.heredocs** %p, align 4
  %tobool = icmp ne %struct.heredocs* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.heredocs*, %struct.heredocs** %p, align 4
  %next = getelementptr inbounds %struct.heredocs, %struct.heredocs* %2, i32 0, i32 0
  %3 = load %struct.heredocs*, %struct.heredocs** %next, align 4
  store %struct.heredocs* %3, %struct.heredocs** %n, align 4
  %4 = load %struct.heredocs*, %struct.heredocs** %p, align 4
  %5 = bitcast %struct.heredocs* %4 to i8*
  call void @zfree(i8* %5, i32 16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.heredocs*, %struct.heredocs** %n, align 4
  store %struct.heredocs* %6, %struct.heredocs** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.eprog* @bld_eprog(i32 %heap) #0 {
entry:
  %heap.addr = alloca i32, align 4
  %ret = alloca %struct.eprog*, align 4
  %l = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp32 = alloca %struct.__sigset_t, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %call = call i32 @ecadd(i32 0)
  %1 = load i32, i32* %heap.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i8* @zhalloc(i32 36)
  %2 = bitcast i8* %call1 to %struct.eprog*
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i8* @zalloc(i32 36)
  %3 = bitcast i8* %call2 to %struct.eprog*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.eprog* [ %2, %cond.true ], [ %3, %cond.false ]
  store %struct.eprog* %cond, %struct.eprog** %ret, align 4
  %4 = load i32, i32* @ecnpats, align 4
  %mul = mul i32 %4, 4
  %5 = load i32, i32* @ecused, align 4
  %mul3 = mul i32 %5, 4
  %add = add i32 %mul, %mul3
  %6 = load i32, i32* @ecsoffs, align 4
  %add4 = add i32 %add, %6
  %7 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %7, i32 0, i32 1
  store i32 %add4, i32* %len, align 4
  %8 = load i32, i32* @ecnpats, align 4
  %9 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %9, i32 0, i32 2
  store i32 %8, i32* %npats, align 4
  %10 = load i32, i32* %heap.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  %cond6 = select i1 %tobool5, i32 -1, i32 1
  %11 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %nref = getelementptr inbounds %struct.eprog, %struct.eprog* %11, i32 0, i32 3
  store i32 %cond6, i32* %nref, align 4
  %12 = load i32, i32* %heap.addr, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %cond.true8, label %cond.false11

cond.true8:                                       ; preds = %cond.end
  %13 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %len9 = getelementptr inbounds %struct.eprog, %struct.eprog* %13, i32 0, i32 1
  %14 = load i32, i32* %len9, align 4
  %call10 = call i8* @zhalloc(i32 %14)
  %15 = bitcast i8* %call10 to %struct.patprog**
  br label %cond.end14

cond.false11:                                     ; preds = %cond.end
  %16 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %len12 = getelementptr inbounds %struct.eprog, %struct.eprog* %16, i32 0, i32 1
  %17 = load i32, i32* %len12, align 4
  %call13 = call i8* @zshcalloc(i32 %17)
  %18 = bitcast i8* %call13 to %struct.patprog**
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.true8
  %cond15 = phi %struct.patprog** [ %15, %cond.true8 ], [ %18, %cond.false11 ]
  %19 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %19, i32 0, i32 4
  store %struct.patprog** %cond15, %struct.patprog*** %pats, align 4
  %20 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %pats16 = getelementptr inbounds %struct.eprog, %struct.eprog* %20, i32 0, i32 4
  %21 = load %struct.patprog**, %struct.patprog*** %pats16, align 4
  %22 = load i32, i32* @ecnpats, align 4
  %add.ptr = getelementptr inbounds %struct.patprog*, %struct.patprog** %21, i32 %22
  %23 = bitcast %struct.patprog** %add.ptr to i32*
  %24 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %prog = getelementptr inbounds %struct.eprog, %struct.eprog* %24, i32 0, i32 5
  store i32* %23, i32** %prog, align 4
  %25 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %prog17 = getelementptr inbounds %struct.eprog, %struct.eprog* %25, i32 0, i32 5
  %26 = load i32*, i32** %prog17, align 4
  %27 = load i32, i32* @ecused, align 4
  %add.ptr18 = getelementptr inbounds i32, i32* %26, i32 %27
  %28 = bitcast i32* %add.ptr18 to i8*
  %29 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %29, i32 0, i32 6
  store i8* %28, i8** %strs, align 4
  %30 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %shf = getelementptr inbounds %struct.eprog, %struct.eprog* %30, i32 0, i32 7
  store %struct.shfunc* null, %struct.shfunc** %shf, align 4
  %31 = load i32, i32* %heap.addr, align 4
  %tobool19 = icmp ne i32 %31, 0
  %cond20 = select i1 %tobool19, i32 2, i32 1
  %32 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %flags = getelementptr inbounds %struct.eprog, %struct.eprog* %32, i32 0, i32 0
  store i32 %cond20, i32* %flags, align 4
  %33 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %dump = getelementptr inbounds %struct.eprog, %struct.eprog* %33, i32 0, i32 8
  store %struct.funcdump* null, %struct.funcdump** %dump, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end14
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* @ecnpats, align 4
  %cmp = icmp slt i32 %34, %35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %pats21 = getelementptr inbounds %struct.eprog, %struct.eprog* %36, i32 0, i32 4
  %37 = load %struct.patprog**, %struct.patprog*** %pats21, align 4
  %38 = load i32, i32* %l, align 4
  %arrayidx = getelementptr inbounds %struct.patprog*, %struct.patprog** %37, i32 %38
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %l, align 4
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %prog23 = getelementptr inbounds %struct.eprog, %struct.eprog* %40, i32 0, i32 5
  %41 = load i32*, i32** %prog23, align 4
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** @ecbuf, align 4
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* @ecused, align 4
  %mul24 = mul i32 %45, 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %44, i32 %mul24, i32 4, i1 false)
  %46 = load %struct.eccstr*, %struct.eccstr** @ecstrs, align 4
  %47 = load %struct.eprog*, %struct.eprog** %ret, align 4
  %strs25 = getelementptr inbounds %struct.eprog, %struct.eprog* %47, i32 0, i32 6
  %48 = load i8*, i8** %strs25, align 4
  call void @copy_ecstr(%struct.eccstr* %46, i8* %48)
  %49 = load i32*, i32** @ecbuf, align 4
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* @eclen, align 4
  call void @zfree(i8* %50, i32 %51)
  store i32* null, i32** @ecbuf, align 4
  br label %do.body

do.body:                                          ; preds = %for.end
  %52 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool26 = icmp ne i32 %dec, 0
  br i1 %tobool26, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body27

do.body27:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body27
  %53 = load i32, i32* @queue_front, align 4
  %54 = load i32, i32* @queue_rear, align 4
  %cmp28 = icmp ne i32 %53, %54
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i32, i32* @queue_front, align 4
  %add29 = add nsw i32 %55, 1
  %rem = srem i32 %add29, 128
  store i32 %rem, i32* @queue_front, align 4
  %56 = load i32, i32* @queue_front, align 4
  %arrayidx30 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %56
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx30)
  %57 = bitcast %struct.__sigset_t* %oset to i8*
  %58 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %58, i32 128, i32 4, i1 false)
  %59 = load i32, i32* @queue_front, align 4
  %arrayidx31 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %59
  %60 = load i32, i32* %arrayidx31, align 4
  call void @zhandler(i32 %60)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp32, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end33

do.end33:                                         ; preds = %if.end
  %61 = load %struct.eprog*, %struct.eprog** %ret, align 4
  ret %struct.eprog* %61
}

; Function Attrs: noinline nounwind
define internal i32 @ecadd(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @eclen, align 4
  %1 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @eclen, align 4
  %cmp1 = icmp slt i32 %2, 32768
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load i32, i32* @eclen, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 1024, %cond.false ]
  store i32 %cond, i32* %a, align 4
  %4 = load i32*, i32** @ecbuf, align 4
  %5 = bitcast i32* %4 to i8*
  %6 = load i32, i32* @eclen, align 4
  %7 = load i32, i32* %a, align 4
  %add = add nsw i32 %6, %7
  %mul = mul i32 %add, 4
  %call = call i8* @zrealloc(i8* %5, i32 %mul)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** @ecbuf, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* @eclen, align 4
  %add2 = add nsw i32 %10, %9
  store i32 %add2, i32* @eclen, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %11 = load i32, i32* %c.addr, align 4
  %12 = load i32*, i32** @ecbuf, align 4
  %13 = load i32, i32* @ecused, align 4
  %arrayidx = getelementptr inbounds i32, i32* %12, i32 %13
  store i32 %11, i32* %arrayidx, align 4
  %14 = load i32, i32* @ecused, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @ecused, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind
define internal i32 @par_sublist(i32* %cmplx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmplx.addr = alloca i32*, align 4
  %f = alloca i32, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %qtok = alloca i32, align 4
  %sl = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 0, i32* %c, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %call1 = call i32 @par_sublist2(i32* %c)
  store i32 %call1, i32* %f, align 4
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %e, align 4
  %1 = load i32, i32* %c, align 4
  %2 = load i32*, i32** %cmplx.addr, align 4
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, %1
  store i32 %or, i32* %2, align 4
  %4 = load i32, i32* @tok, align 4
  %cmp2 = icmp eq i32 %4, 8
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %5, 9
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load i32, i32* @tok, align 4
  store i32 %6, i32* %qtok, align 4
  %7 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %7, 8
  %cond = select i1 %cmp5, i32 11, i32 12
  call void @cmdpush(i32 %cond)
  call void @zshlex()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %8 = load i32, i32* @tok, align 4
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32*, i32** %cmplx.addr, align 4
  %call7 = call i32 @par_sublist(i32* %9)
  store i32 %call7, i32* %sl, align 4
  %10 = load i32, i32* %p, align 4
  %11 = load i32, i32* %sl, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %12 = load i32, i32* %qtok, align 4
  %cmp8 = icmp eq i32 %12, 8
  %cond9 = select i1 %cmp8, i32 2, i32 1
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ %cond9, %cond.true ], [ 0, %cond.false ]
  %13 = load i32, i32* %f, align 4
  %14 = load i32, i32* %e, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, i32* %p, align 4
  %sub11 = sub nsw i32 %sub, %15
  %16 = load i32, i32* %c, align 4
  call void @set_sublist_code(i32 %10, i32 %cond10, i32 %13, i32 %sub11, i32 %16)
  call void @cmdpop()
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  %17 = load i32, i32* @tok, align 4
  %cmp12 = icmp eq i32 %17, 5
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %18 = load i32, i32* @tok, align 4
  %cmp14 = icmp eq i32 %18, 30
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false13, %if.else
  store i32 1, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32*, i32** %cmplx.addr, align 4
  %21 = load i32, i32* %20, align 4
  %or16 = or i32 %21, %19
  store i32 %or16, i32* %20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false13
  %22 = load i32, i32* %p, align 4
  %23 = load i32, i32* %f, align 4
  %24 = load i32, i32* %e, align 4
  %sub17 = sub nsw i32 %24, 1
  %25 = load i32, i32* %p, align 4
  %sub18 = sub nsw i32 %sub17, %25
  %26 = load i32, i32* %c, align 4
  call void @set_sublist_code(i32 %22, i32 0, i32 %23, i32 %sub18, i32 %26)
  br label %if.end19

if.end19:                                         ; preds = %if.end, %cond.end
  store i32 1, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %entry
  %27 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else20, %if.end19
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind
define internal void @set_list_code(i32 %p, i32 %type, i32 %cmplx) #0 {
entry:
  %p.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %cmplx.addr = alloca i32, align 4
  %ispipe = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %cmplx, i32* %cmplx.addr, align 4
  %0 = load i32, i32* %cmplx.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %2, 18
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32*, i32** @ecbuf, align 4
  %4 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %4, 1
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 %add
  %5 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %5, 5
  %and = and i32 %shr, 3
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %6 = load i32*, i32** @ecbuf, align 4
  %7 = load i32, i32* %p.addr, align 4
  %add4 = add nsw i32 %7, 1
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i32 %add4
  %8 = load i32, i32* %arrayidx5, align 4
  %shr6 = lshr i32 %8, 5
  %and7 = and i32 %shr6, 28
  %and8 = and i32 %and7, 16
  %tobool9 = icmp ne i32 %and8, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ispipe, align 4
  %9 = load i32, i32* %type.addr, align 4
  %or = or i32 %9, 32
  %10 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %10, 2
  %11 = load i32, i32* %p.addr, align 4
  %sub10 = sub nsw i32 %sub, %11
  %shl = shl i32 %sub10, 6
  %or11 = or i32 %or, %shl
  %shl12 = shl i32 %or11, 5
  %or13 = or i32 1, %shl12
  %12 = load i32*, i32** @ecbuf, align 4
  %13 = load i32, i32* %p.addr, align 4
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i32 %13
  store i32 %or13, i32* %arrayidx14, align 4
  %14 = load i32, i32* %p.addr, align 4
  %add15 = add nsw i32 %14, 1
  call void @ecdel(i32 %add15)
  %15 = load i32, i32* %ispipe, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  %16 = load i32*, i32** @ecbuf, align 4
  %17 = load i32, i32* %p.addr, align 4
  %add18 = add nsw i32 %17, 1
  %arrayidx19 = getelementptr inbounds i32, i32* %16, i32 %add18
  %18 = load i32, i32* %arrayidx19, align 4
  %shr20 = lshr i32 %18, 5
  %shr21 = lshr i32 %shr20, 1
  %19 = load i32*, i32** @ecbuf, align 4
  %20 = load i32, i32* %p.addr, align 4
  %add22 = add nsw i32 %20, 1
  %arrayidx23 = getelementptr inbounds i32, i32* %19, i32 %add22
  store i32 %shr21, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true2, %lor.lhs.false, %entry
  %21 = load i32, i32* %type.addr, align 4
  %shl24 = shl i32 %21, 5
  %or25 = or i32 1, %shl24
  %22 = load i32*, i32** @ecbuf, align 4
  %23 = load i32, i32* %p.addr, align 4
  %arrayidx26 = getelementptr inbounds i32, i32* %22, i32 %23
  store i32 %or25, i32* %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @yyerror(i32 %noerr) #0 {
entry:
  %noerr.addr = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t = alloca i8*, align 4
  store i32 %noerr, i32* %noerr.addr, align 4
  %0 = load i8*, i8** @zshlextext, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %t, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %t, align 4
  call void @untokenize(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %t0, align 4
  %cmp = icmp ne i32 %2, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %t, align 4
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %t, align 4
  %5 = load i32, i32* %t0, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5
  %6 = load i8, i8* %arrayidx, align 1
  %tobool2 = icmp ne i8 %6, 0
  br i1 %tobool2, label %lor.lhs.false3, label %if.then7

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load i8*, i8** %t, align 4
  %8 = load i32, i32* %t0, align 4
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i32 %8
  %9 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.end

if.end8:                                          ; preds = %lor.lhs.false3
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %10 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then7, %for.cond
  %11 = load i32, i32* @histdone, align 4
  %and = and i32 %11, 2
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %12 = load i32, i32* @errflag, align 4
  %and10 = and i32 %12, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end21, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %t0, align 4
  %cmp13 = icmp eq i32 %13, 20
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  %14 = load i8*, i8** %t, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* %14, i32 20)
  br label %if.end20

if.else:                                          ; preds = %if.then12
  %15 = load i32, i32* %t0, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %16 = load i8*, i8** %t, align 4
  %17 = load i32, i32* %t0, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* %16, i32 %17)
  br label %if.end19

if.else18:                                        ; preds = %if.else
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %for.end
  %18 = load i32, i32* %noerr.addr, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.end27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end21
  %19 = load i32, i32* @noerrs, align 4
  %cmp24 = icmp ne i32 %19, 2
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true23
  %20 = load i32, i32* @errflag, align 4
  %or = or i32 %20, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true23, %if.end21
  ret void
}

declare void @herrflush() #1

; Function Attrs: noinline nounwind
define %struct.eprog* @parse_list() #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4
  store i32 37, i32* @tok, align 4
  call void @init_parse()
  call void @zshlex()
  call void @par_list(i32* %c)
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %0, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @clear_hdocs()
  store i32 38, i32* @tok, align 4
  call void @yyerror(i32 0)
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.eprog* @bld_eprog(i32 1)
  store %struct.eprog* %call, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %1
}

; Function Attrs: noinline nounwind
define internal void @par_list(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %p = alloca i32, align 4
  %lp = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 -1, i32* %lp, align 4
  br label %rec

rec:                                              ; preds = %do.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %rec
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  store i32 0, i32* %c, align 4
  %call1 = call i32 @par_sublist(i32* %c)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else14

if.then:                                          ; preds = %while.end
  %1 = load i32, i32* %c, align 4
  %2 = load i32*, i32** %cmplx.addr, align 4
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, %1
  store i32 %or, i32* %2, align 4
  %4 = load i32, i32* @tok, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %5, 5
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %6, 30
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.then
  %7 = load i32, i32* @tok, align 4
  %cmp7 = icmp ne i32 %7, 1
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then6
  %8 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then6
  %9 = load i32, i32* %p, align 4
  %10 = load i32, i32* @tok, align 4
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i32, i32* @tok, align 4
  %cmp10 = icmp eq i32 %11, 5
  %cond = select i1 %cmp10, i32 4, i32 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ]
  %12 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %9, i32 %cond11, i32 %12)
  store i32 1, i32* @incmdpos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  call void @zshlex()
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* @tok, align 4
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %p, align 4
  store i32 %14, i32* %lp, align 4
  br label %rec

if.else:                                          ; preds = %lor.lhs.false4
  %15 = load i32, i32* %p, align 4
  %16 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %15, i32 18, i32 %16)
  br label %if.end13

if.end13:                                         ; preds = %if.else
  br label %if.end19

if.else14:                                        ; preds = %while.end
  %17 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* @ecused, align 4
  %18 = load i32, i32* %lp, align 4
  %cmp15 = icmp sge i32 %18, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.else14
  %19 = load i32*, i32** @ecbuf, align 4
  %20 = load i32, i32* %lp, align 4
  %arrayidx = getelementptr inbounds i32, i32* %19, i32 %20
  %21 = load i32, i32* %arrayidx, align 4
  %or17 = or i32 %21, 512
  store i32 %or17, i32* %arrayidx, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  ret void
}

; Function Attrs: noinline nounwind
define %struct.eprog* @parse_cond() #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  call void @init_parse()
  %call = call i32 @par_cond()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @clear_hdocs()
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eprog* @bld_eprog(i32 1)
  store %struct.eprog* %call1, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %0
}

; Function Attrs: noinline nounwind
define internal i32 @par_cond() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32, align 4
  %r = alloca i32, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %p, align 4
  %call = call i32 @par_cond_1()
  store i32 %call, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load void ()*, void ()** @condlex, align 4
  %cmp1 = icmp ne void ()* %2, @testlex
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** @zshlextext, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load void ()*, void ()** @condlex, align 4
  call void %6()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* @tok, align 4
  %cmp4 = icmp eq i32 %7, 8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load void ()*, void ()** @condlex, align 4
  call void %8()
  br label %while.cond6

while.cond6:                                      ; preds = %while.body17, %if.then
  %9 = load i32, i32* @tok, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %land.lhs.true9, label %land.end16

land.lhs.true9:                                   ; preds = %while.cond6
  %10 = load void ()*, void ()** @condlex, align 4
  %cmp10 = icmp ne void ()* %10, @testlex
  br i1 %cmp10, label %land.rhs12, label %land.end16

land.rhs12:                                       ; preds = %land.lhs.true9
  %11 = load i8*, i8** @zshlextext, align 4
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp ne i32 %conv13, 59
  br label %land.end16

land.end16:                                       ; preds = %land.rhs12, %land.lhs.true9, %while.cond6
  %13 = phi i1 [ false, %land.lhs.true9 ], [ false, %while.cond6 ], [ %cmp14, %land.rhs12 ]
  br i1 %13, label %while.body17, label %while.end18

while.body17:                                     ; preds = %land.end16
  %14 = load void ()*, void ()** @condlex, align 4
  call void %14()
  br label %while.cond6

while.end18:                                      ; preds = %land.end16
  %15 = load i32, i32* %p, align 4
  call void @ecispace(i32 %15, i32 1)
  %call19 = call i32 @par_cond()
  %16 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load i32, i32* %p, align 4
  %sub20 = sub nsw i32 %sub, %17
  %shl = shl i32 %sub20, 7
  %or = or i32 2, %shl
  %shl21 = shl i32 %or, 5
  %or22 = or i32 18, %shl21
  %18 = load i32*, i32** @ecbuf, align 4
  %19 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %18, i32 %19
  store i32 %or22, i32* %arrayidx, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %20 = load i32, i32* %r, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %while.end18
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind
define void @setheredoc(i32 %pc, i32 %type, i8* %str, i8* %termstr, i8* %munged_termstr) #0 {
entry:
  %pc.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %termstr.addr = alloca i8*, align 4
  %munged_termstr.addr = alloca i8*, align 4
  store i32 %pc, i32* %pc.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 4
  store i8* %termstr, i8** %termstr.addr, align 4
  store i8* %munged_termstr, i8** %munged_termstr.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %or = or i32 %0, 64
  %shl = shl i32 %or, 5
  %or1 = or i32 4, %shl
  %1 = load i32*, i32** @ecbuf, align 4
  %2 = load i32, i32* %pc.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %2
  store i32 %or1, i32* %arrayidx, align 4
  %3 = load i8*, i8** %str.addr, align 4
  %call = call i32 @ecstrcode(i8* %3)
  %4 = load i32*, i32** @ecbuf, align 4
  %5 = load i32, i32* %pc.addr, align 4
  %add = add nsw i32 %5, 2
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i32 %add
  store i32 %call, i32* %arrayidx2, align 4
  %6 = load i8*, i8** %termstr.addr, align 4
  %call3 = call i32 @ecstrcode(i8* %6)
  %7 = load i32*, i32** @ecbuf, align 4
  %8 = load i32, i32* %pc.addr, align 4
  %add4 = add nsw i32 %8, 3
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i32 %add4
  store i32 %call3, i32* %arrayidx5, align 4
  %9 = load i8*, i8** %munged_termstr.addr, align 4
  %call6 = call i32 @ecstrcode(i8* %9)
  %10 = load i32*, i32** @ecbuf, align 4
  %11 = load i32, i32* %pc.addr, align 4
  %add7 = add nsw i32 %11, 4
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i32 %add7
  store i32 %call6, i32* %arrayidx8, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @ecstrcode(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %l = alloca i32, align 4
  %t = alloca i32, align 4
  %val = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca %struct.eccstr*, align 4
  %pp = alloca %struct.eccstr**, align 4
  %cmp17 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @hasher(i8* %0)
  store i32 %call, i32* %val, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  %add = add i32 %call1, 1
  store i32 %add, i32* %l, align 4
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %l, align 4
  %cmp = icmp sle i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %s.addr, align 4
  %call2 = call i32 @has_token(i8* %3)
  store i32 %call2, i32* %t, align 4
  %4 = load i32, i32* %t, align 4
  %tobool3 = icmp ne i32 %4, 0
  %cond = select i1 %tobool3, i32 3, i32 2
  store i32 %cond, i32* %c, align 4
  %5 = load i32, i32* %l, align 4
  switch i32 %5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb4
    i32 2, label %sw.bb9
    i32 1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %conv, 19
  %8 = load i32, i32* %c, align 4
  %or = or i32 %8, %shl
  store i32 %or, i32* %c, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %if.then, %sw.bb
  %9 = load i8*, i8** %s.addr, align 4
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i32 1
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %shl7 = shl i32 %conv6, 11
  %11 = load i32, i32* %c, align 4
  %or8 = or i32 %11, %shl7
  store i32 %or8, i32* %c, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.then, %sw.bb4
  %12 = load i8*, i8** %s.addr, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i32 0
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %shl12 = shl i32 %conv11, 3
  %14 = load i32, i32* %c, align 4
  %or13 = or i32 %14, %shl12
  store i32 %or13, i32* %c, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then
  %15 = load i32, i32* %t, align 4
  %tobool15 = icmp ne i32 %15, 0
  %cond16 = select i1 %tobool15, i32 7, i32 6
  store i32 %cond16, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb14, %sw.bb9
  %16 = load i32, i32* %c, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.eccstr** @ecstrs, %struct.eccstr*** %pp, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.else
  %17 = load %struct.eccstr**, %struct.eccstr*** %pp, align 4
  %18 = load %struct.eccstr*, %struct.eccstr** %17, align 4
  store %struct.eccstr* %18, %struct.eccstr** %p, align 4
  %tobool18 = icmp ne %struct.eccstr* %18, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %nfunc = getelementptr inbounds %struct.eccstr, %struct.eccstr* %19, i32 0, i32 5
  %20 = load i32, i32* %nfunc, align 4
  %21 = load i32, i32* @ecnfunc, align 4
  %sub = sub nsw i32 %20, %21
  store i32 %sub, i32* %cmp17, align 4
  %tobool19 = icmp ne i32 %sub, 0
  br i1 %tobool19, label %if.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.body
  %22 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %hashval = getelementptr inbounds %struct.eccstr, %struct.eccstr* %22, i32 0, i32 6
  %23 = load i32, i32* %hashval, align 4
  %24 = load i32, i32* %val, align 4
  %sub21 = sub nsw i32 %23, %24
  store i32 %sub21, i32* %cmp17, align 4
  %tobool22 = icmp ne i32 %sub21, 0
  br i1 %tobool22, label %if.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %25 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %str = getelementptr inbounds %struct.eccstr, %struct.eccstr* %25, i32 0, i32 2
  %26 = load i8*, i8** %str, align 4
  %27 = load i8*, i8** %s.addr, align 4
  %call24 = call i32 @strcmp(i8* %26, i8* %27)
  store i32 %call24, i32* %cmp17, align 4
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  %28 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %offs = getelementptr inbounds %struct.eccstr, %struct.eccstr* %28, i32 0, i32 3
  %29 = load i32, i32* %offs, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true23, %land.lhs.true20, %for.body
  %30 = load i32, i32* %cmp17, align 4
  %cmp27 = icmp slt i32 %30, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %31 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %left = getelementptr inbounds %struct.eccstr, %struct.eccstr* %31, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %32 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %right = getelementptr inbounds %struct.eccstr, %struct.eccstr* %32, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi %struct.eccstr** [ %left, %cond.true ], [ %right, %cond.false ]
  store %struct.eccstr** %cond29, %struct.eccstr*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i8*, i8** %s.addr, align 4
  %call30 = call i32 @has_token(i8* %33)
  store i32 %call30, i32* %t, align 4
  %call31 = call i8* @zhalloc(i32 28)
  %34 = bitcast i8* %call31 to %struct.eccstr*
  %35 = load %struct.eccstr**, %struct.eccstr*** %pp, align 4
  store %struct.eccstr* %34, %struct.eccstr** %35, align 4
  store %struct.eccstr* %34, %struct.eccstr** %p, align 4
  %36 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %right32 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %36, i32 0, i32 1
  store %struct.eccstr* null, %struct.eccstr** %right32, align 4
  %37 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %left33 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %37, i32 0, i32 0
  store %struct.eccstr* null, %struct.eccstr** %left33, align 4
  %38 = load i32, i32* @ecsoffs, align 4
  %39 = load i32, i32* @ecssub, align 4
  %sub34 = sub nsw i32 %38, %39
  %shl35 = shl i32 %sub34, 2
  %40 = load i32, i32* %t, align 4
  %tobool36 = icmp ne i32 %40, 0
  %cond37 = select i1 %tobool36, i32 1, i32 0
  %or38 = or i32 %shl35, %cond37
  %41 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %offs39 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %41, i32 0, i32 3
  store i32 %or38, i32* %offs39, align 4
  %42 = load i32, i32* @ecsoffs, align 4
  %43 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %aoffs = getelementptr inbounds %struct.eccstr, %struct.eccstr* %43, i32 0, i32 4
  store i32 %42, i32* %aoffs, align 4
  %44 = load i8*, i8** %s.addr, align 4
  %45 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %str40 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %45, i32 0, i32 2
  store i8* %44, i8** %str40, align 4
  %46 = load i32, i32* @ecnfunc, align 4
  %47 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %nfunc41 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %47, i32 0, i32 5
  store i32 %46, i32* %nfunc41, align 4
  %48 = load i32, i32* %val, align 4
  %49 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %hashval42 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %49, i32 0, i32 6
  store i32 %48, i32* %hashval42, align 4
  %50 = load i32, i32* %l, align 4
  %51 = load i32, i32* @ecsoffs, align 4
  %add43 = add nsw i32 %51, %50
  store i32 %add43, i32* @ecsoffs, align 4
  %52 = load %struct.eccstr*, %struct.eccstr** %p, align 4
  %offs44 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %52, i32 0, i32 3
  %53 = load i32, i32* %offs44, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then26, %sw.epilog
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind
define %struct.eprog* @dupeprog(%struct.eprog* %p, i32 %heap) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %p.addr = alloca %struct.eprog*, align 4
  %heap.addr = alloca i32, align 4
  %r = alloca %struct.eprog*, align 4
  %i = alloca i32, align 4
  %pp = alloca %struct.patprog**, align 4
  store %struct.eprog* %p, %struct.eprog** %p.addr, align 4
  store i32 %heap, i32* %heap.addr, align 4
  %0 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %cmp = icmp eq %struct.eprog* %0, @dummy_eprog
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  store %struct.eprog* %1, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %heap.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call = call i8* @zhalloc(i32 36)
  %3 = bitcast i8* %call to %struct.eprog*
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call1 = call i8* @zalloc(i32 36)
  %4 = bitcast i8* %call1 to %struct.eprog*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.eprog* [ %3, %cond.true ], [ %4, %cond.false ]
  store %struct.eprog* %cond, %struct.eprog** %r, align 4
  %5 = load i32, i32* %heap.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  %cond3 = select i1 %tobool2, i32 2, i32 1
  %6 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %flags = getelementptr inbounds %struct.eprog, %struct.eprog* %6, i32 0, i32 0
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 8
  %or = or i32 %cond3, %and
  %8 = load %struct.eprog*, %struct.eprog** %r, align 4
  %flags4 = getelementptr inbounds %struct.eprog, %struct.eprog* %8, i32 0, i32 0
  store i32 %or, i32* %flags4, align 4
  %9 = load %struct.eprog*, %struct.eprog** %r, align 4
  %dump = getelementptr inbounds %struct.eprog, %struct.eprog* %9, i32 0, i32 8
  store %struct.funcdump* null, %struct.funcdump** %dump, align 4
  %10 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %10, i32 0, i32 1
  %11 = load i32, i32* %len, align 4
  %12 = load %struct.eprog*, %struct.eprog** %r, align 4
  %len5 = getelementptr inbounds %struct.eprog, %struct.eprog* %12, i32 0, i32 1
  store i32 %11, i32* %len5, align 4
  %13 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %13, i32 0, i32 2
  %14 = load i32, i32* %npats, align 4
  %15 = load %struct.eprog*, %struct.eprog** %r, align 4
  %npats6 = getelementptr inbounds %struct.eprog, %struct.eprog* %15, i32 0, i32 2
  store i32 %14, i32* %npats6, align 4
  %16 = load i32, i32* %heap.addr, align 4
  %tobool7 = icmp ne i32 %16, 0
  %cond8 = select i1 %tobool7, i32 -1, i32 1
  %17 = load %struct.eprog*, %struct.eprog** %r, align 4
  %nref = getelementptr inbounds %struct.eprog, %struct.eprog* %17, i32 0, i32 3
  store i32 %cond8, i32* %nref, align 4
  %18 = load i32, i32* %heap.addr, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %cond.true10, label %cond.false13

cond.true10:                                      ; preds = %cond.end
  %19 = load %struct.eprog*, %struct.eprog** %r, align 4
  %len11 = getelementptr inbounds %struct.eprog, %struct.eprog* %19, i32 0, i32 1
  %20 = load i32, i32* %len11, align 4
  %call12 = call i8* @hcalloc(i32 %20)
  %21 = bitcast i8* %call12 to %struct.patprog**
  br label %cond.end16

cond.false13:                                     ; preds = %cond.end
  %22 = load %struct.eprog*, %struct.eprog** %r, align 4
  %len14 = getelementptr inbounds %struct.eprog, %struct.eprog* %22, i32 0, i32 1
  %23 = load i32, i32* %len14, align 4
  %call15 = call i8* @zshcalloc(i32 %23)
  %24 = bitcast i8* %call15 to %struct.patprog**
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false13, %cond.true10
  %cond17 = phi %struct.patprog** [ %21, %cond.true10 ], [ %24, %cond.false13 ]
  %25 = load %struct.eprog*, %struct.eprog** %r, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %25, i32 0, i32 4
  store %struct.patprog** %cond17, %struct.patprog*** %pats, align 4
  store %struct.patprog** %cond17, %struct.patprog*** %pp, align 4
  %26 = load %struct.eprog*, %struct.eprog** %r, align 4
  %pats18 = getelementptr inbounds %struct.eprog, %struct.eprog* %26, i32 0, i32 4
  %27 = load %struct.patprog**, %struct.patprog*** %pats18, align 4
  %28 = load %struct.eprog*, %struct.eprog** %r, align 4
  %npats19 = getelementptr inbounds %struct.eprog, %struct.eprog* %28, i32 0, i32 2
  %29 = load i32, i32* %npats19, align 4
  %add.ptr = getelementptr inbounds %struct.patprog*, %struct.patprog** %27, i32 %29
  %30 = bitcast %struct.patprog** %add.ptr to i32*
  %31 = load %struct.eprog*, %struct.eprog** %r, align 4
  %prog = getelementptr inbounds %struct.eprog, %struct.eprog* %31, i32 0, i32 5
  store i32* %30, i32** %prog, align 4
  %32 = load %struct.eprog*, %struct.eprog** %r, align 4
  %prog20 = getelementptr inbounds %struct.eprog, %struct.eprog* %32, i32 0, i32 5
  %33 = load i32*, i32** %prog20, align 4
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %35, i32 0, i32 6
  %36 = load i8*, i8** %strs, align 4
  %37 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %prog21 = getelementptr inbounds %struct.eprog, %struct.eprog* %37, i32 0, i32 5
  %38 = load i32*, i32** %prog21, align 4
  %39 = bitcast i32* %38 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr22 = getelementptr inbounds i8, i8* %34, i32 %sub.ptr.sub
  %40 = load %struct.eprog*, %struct.eprog** %r, align 4
  %strs23 = getelementptr inbounds %struct.eprog, %struct.eprog* %40, i32 0, i32 6
  store i8* %add.ptr22, i8** %strs23, align 4
  %41 = load %struct.eprog*, %struct.eprog** %r, align 4
  %prog24 = getelementptr inbounds %struct.eprog, %struct.eprog* %41, i32 0, i32 5
  %42 = load i32*, i32** %prog24, align 4
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %prog25 = getelementptr inbounds %struct.eprog, %struct.eprog* %44, i32 0, i32 5
  %45 = load i32*, i32** %prog25, align 4
  %46 = bitcast i32* %45 to i8*
  %47 = load %struct.eprog*, %struct.eprog** %r, align 4
  %len26 = getelementptr inbounds %struct.eprog, %struct.eprog* %47, i32 0, i32 1
  %48 = load i32, i32* %len26, align 4
  %49 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %npats27 = getelementptr inbounds %struct.eprog, %struct.eprog* %49, i32 0, i32 2
  %50 = load i32, i32* %npats27, align 4
  %mul = mul i32 %50, 4
  %sub = sub i32 %48, %mul
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %46, i32 %sub, i32 4, i1 false)
  %51 = load %struct.eprog*, %struct.eprog** %r, align 4
  %shf = getelementptr inbounds %struct.eprog, %struct.eprog* %51, i32 0, i32 7
  store %struct.shfunc* null, %struct.shfunc** %shf, align 4
  %52 = load %struct.eprog*, %struct.eprog** %r, align 4
  %npats28 = getelementptr inbounds %struct.eprog, %struct.eprog* %52, i32 0, i32 2
  %53 = load i32, i32* %npats28, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end16
  %54 = load i32, i32* %i, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i, align 4
  %tobool29 = icmp ne i32 %54, 0
  br i1 %tobool29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load %struct.patprog**, %struct.patprog*** %pp, align 4
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %55, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load %struct.patprog**, %struct.patprog*** %pp, align 4
  %incdec.ptr = getelementptr inbounds %struct.patprog*, %struct.patprog** %56, i32 1
  store %struct.patprog** %incdec.ptr, %struct.patprog*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.eprog*, %struct.eprog** %r, align 4
  store %struct.eprog* %57, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %58 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %58
}

declare i8* @zhalloc(i32) #1

declare i8* @hcalloc(i32) #1

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define void @useeprog(%struct.eprog* %p) #0 {
entry:
  %p.addr = alloca %struct.eprog*, align 4
  store %struct.eprog* %p, %struct.eprog** %p.addr, align 4
  %0 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %tobool = icmp ne %struct.eprog* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %cmp = icmp ne %struct.eprog* %1, @dummy_eprog
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %nref = getelementptr inbounds %struct.eprog, %struct.eprog* %2, i32 0, i32 3
  %3 = load i32, i32* %nref, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %4 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %nref3 = getelementptr inbounds %struct.eprog, %struct.eprog* %4, i32 0, i32 3
  %5 = load i32, i32* %nref3, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nref3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @freeeprog(%struct.eprog* %p) #0 {
entry:
  %p.addr = alloca %struct.eprog*, align 4
  %i = alloca i32, align 4
  %pp = alloca %struct.patprog**, align 4
  store %struct.eprog* %p, %struct.eprog** %p.addr, align 4
  %0 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %tobool = icmp ne %struct.eprog* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %cmp = icmp ne %struct.eprog* %1, @dummy_eprog
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %nref = getelementptr inbounds %struct.eprog, %struct.eprog* %2, i32 0, i32 3
  %3 = load i32, i32* %nref, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end14

land.lhs.true2:                                   ; preds = %if.then
  %4 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %nref3 = getelementptr inbounds %struct.eprog, %struct.eprog* %4, i32 0, i32 3
  %5 = load i32, i32* %nref3, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %nref3, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end14, label %if.then5

if.then5:                                         ; preds = %land.lhs.true2
  %6 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %6, i32 0, i32 2
  %7 = load i32, i32* %npats, align 4
  store i32 %7, i32* %i, align 4
  %8 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %8, i32 0, i32 4
  %9 = load %struct.patprog**, %struct.patprog*** %pats, align 4
  store %struct.patprog** %9, %struct.patprog*** %pp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %10 = load i32, i32* %i, align 4
  %dec6 = add nsw i32 %10, -1
  store i32 %dec6, i32* %i, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.patprog**, %struct.patprog*** %pp, align 4
  %12 = load %struct.patprog*, %struct.patprog** %11, align 4
  call void @freepatprog(%struct.patprog* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.patprog**, %struct.patprog*** %pp, align 4
  %incdec.ptr = getelementptr inbounds %struct.patprog*, %struct.patprog** %13, i32 1
  store %struct.patprog** %incdec.ptr, %struct.patprog*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %dump = getelementptr inbounds %struct.eprog, %struct.eprog* %14, i32 0, i32 8
  %15 = load %struct.funcdump*, %struct.funcdump** %dump, align 4
  %tobool8 = icmp ne %struct.funcdump* %15, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.end
  %16 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %dump10 = getelementptr inbounds %struct.eprog, %struct.eprog* %16, i32 0, i32 8
  %17 = load %struct.funcdump*, %struct.funcdump** %dump10, align 4
  call void @decrdumpcount(%struct.funcdump* %17)
  %18 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %pats11 = getelementptr inbounds %struct.eprog, %struct.eprog* %18, i32 0, i32 4
  %19 = load %struct.patprog**, %struct.patprog*** %pats11, align 4
  %20 = bitcast %struct.patprog** %19 to i8*
  %21 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %npats12 = getelementptr inbounds %struct.eprog, %struct.eprog* %21, i32 0, i32 2
  %22 = load i32, i32* %npats12, align 4
  %mul = mul i32 %22, 4
  call void @zfree(i8* %20, i32 %mul)
  br label %if.end

if.else:                                          ; preds = %for.end
  %23 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %pats13 = getelementptr inbounds %struct.eprog, %struct.eprog* %23, i32 0, i32 4
  %24 = load %struct.patprog**, %struct.patprog*** %pats13, align 4
  %25 = bitcast %struct.patprog** %24 to i8*
  %26 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %26, i32 0, i32 1
  %27 = load i32, i32* %len, align 4
  call void @zfree(i8* %25, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %28 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %29 = bitcast %struct.eprog* %28 to i8*
  call void @zfree(i8* %29, i32 36)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true2, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true, %entry
  ret void
}

declare void @freepatprog(%struct.patprog*) #1

; Function Attrs: noinline nounwind
define void @decrdumpcount(%struct.funcdump* %f) #0 {
entry:
  %f.addr = alloca %struct.funcdump*, align 4
  %p = alloca %struct.funcdump*, align 4
  %q = alloca %struct.funcdump*, align 4
  store %struct.funcdump* %f, %struct.funcdump** %f.addr, align 4
  %0 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %count = getelementptr inbounds %struct.funcdump, %struct.funcdump* %0, i32 0, i32 7
  %1 = load i32, i32* %count, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %count, align 4
  %2 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %count1 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %2, i32 0, i32 7
  %3 = load i32, i32* %count1, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  store %struct.funcdump* null, %struct.funcdump** %q, align 4
  %4 = load %struct.funcdump*, %struct.funcdump** @dumps, align 4
  store %struct.funcdump* %4, %struct.funcdump** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %tobool2 = icmp ne %struct.funcdump* %5, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %7 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %cmp = icmp ne %struct.funcdump* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  store %struct.funcdump* %9, %struct.funcdump** %q, align 4
  %10 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %next = getelementptr inbounds %struct.funcdump, %struct.funcdump* %10, i32 0, i32 0
  %11 = load %struct.funcdump*, %struct.funcdump** %next, align 4
  store %struct.funcdump* %11, %struct.funcdump** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %tobool3 = icmp ne %struct.funcdump* %12, null
  br i1 %tobool3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %for.end
  %13 = load %struct.funcdump*, %struct.funcdump** %q, align 4
  %tobool5 = icmp ne %struct.funcdump* %13, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %14 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %next7 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %14, i32 0, i32 0
  %15 = load %struct.funcdump*, %struct.funcdump** %next7, align 4
  %16 = load %struct.funcdump*, %struct.funcdump** %q, align 4
  %next8 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %16, i32 0, i32 0
  store %struct.funcdump* %15, %struct.funcdump** %next8, align 4
  br label %if.end

if.else:                                          ; preds = %if.then4
  %17 = load %struct.funcdump*, %struct.funcdump** %p, align 4
  %next9 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %17, i32 0, i32 0
  %18 = load %struct.funcdump*, %struct.funcdump** %next9, align 4
  store %struct.funcdump* %18, %struct.funcdump** @dumps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %19 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  call void @freedump(%struct.funcdump* %19)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i8* @ecgetstr(%struct.estate* %s, i32 %dup, i32* %tokflag) #0 {
entry:
  %s.addr = alloca %struct.estate*, align 4
  %dup.addr = alloca i32, align 4
  %tokflag.addr = alloca i32*, align 4
  %c = alloca i32, align 4
  %r = alloca i8*, align 4
  store %struct.estate* %s, %struct.estate** %s.addr, align 4
  store i32 %dup, i32* %dup.addr, align 4
  store i32* %tokflag, i32** %tokflag.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %4, 7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %r, align 4
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.else10

if.then2:                                         ; preds = %if.else
  %6 = load i32, i32* %c, align 4
  %shr = lshr i32 %6, 3
  %and3 = and i32 %shr, 255
  %conv = trunc i32 %and3 to i8
  store i8 %conv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecgetstr.buf, i32 0, i32 0), align 1
  %7 = load i32, i32* %c, align 4
  %shr4 = lshr i32 %7, 11
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  store i8 %conv6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecgetstr.buf, i32 0, i32 1), align 1
  %8 = load i32, i32* %c, align 4
  %shr7 = lshr i32 %8, 19
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecgetstr.buf, i32 0, i32 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecgetstr.buf, i32 0, i32 3), align 1
  %call = call i8* @dupstring(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecgetstr.buf, i32 0, i32 0))
  store i8* %call, i8** %r, align 4
  store i32 0, i32* %dup.addr, align 4
  br label %if.end

if.else10:                                        ; preds = %if.else
  %9 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %strs = getelementptr inbounds %struct.estate, %struct.estate* %9, i32 0, i32 2
  %10 = load i8*, i8** %strs, align 4
  %11 = load i32, i32* %c, align 4
  %shr11 = lshr i32 %11, 2
  %add.ptr = getelementptr inbounds i8, i8* %10, i32 %shr11
  store i8* %add.ptr, i8** %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then2
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %12 = load i32*, i32** %tokflag.addr, align 4
  %tobool13 = icmp ne i32* %12, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %13 = load i32, i32* %c, align 4
  %and15 = and i32 %13, 1
  %14 = load i32*, i32** %tokflag.addr, align 4
  store i32 %and15, i32* %14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %15 = load i32, i32* %dup.addr, align 4
  %cmp17 = icmp eq i32 %15, 1
  br i1 %cmp17, label %cond.true, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %16 = load i32, i32* %dup.addr, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %17 = load i32, i32* %c, align 4
  %and21 = and i32 %17, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true, %if.end16
  %18 = load i8*, i8** %r, align 4
  %call23 = call i8* @dupstring(i8* %18)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false19
  %19 = load i8*, i8** %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call23, %cond.true ], [ %19, %cond.false ]
  ret i8* %cond
}

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define i8* @ecrawstr(%struct.eprog* %p, i32* %pc, i32* %tokflag) #0 {
entry:
  %retval = alloca i8*, align 4
  %p.addr = alloca %struct.eprog*, align 4
  %pc.addr = alloca i32*, align 4
  %tokflag.addr = alloca i32*, align 4
  %c = alloca i32, align 4
  store %struct.eprog* %p, %struct.eprog** %p.addr, align 4
  store i32* %pc, i32** %pc.addr, align 4
  store i32* %tokflag, i32** %tokflag.addr, align 4
  %0 = load i32*, i32** %pc.addr, align 4
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %3, 7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32*, i32** %tokflag.addr, align 4
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load i32, i32* %c, align 4
  %and = and i32 %5, 1
  %6 = load i32*, i32** %tokflag.addr, align 4
  store i32 %and, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %c, align 4
  %and3 = and i32 %7, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else17

if.then5:                                         ; preds = %if.else
  %8 = load i32, i32* %c, align 4
  %shr = lshr i32 %8, 3
  %and6 = and i32 %shr, 255
  %conv = trunc i32 %and6 to i8
  store i8 %conv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecrawstr.buf, i32 0, i32 0), align 1
  %9 = load i32, i32* %c, align 4
  %shr7 = lshr i32 %9, 11
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecrawstr.buf, i32 0, i32 1), align 1
  %10 = load i32, i32* %c, align 4
  %shr10 = lshr i32 %10, 19
  %and11 = and i32 %shr10, 255
  %conv12 = trunc i32 %and11 to i8
  store i8 %conv12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecrawstr.buf, i32 0, i32 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecrawstr.buf, i32 0, i32 3), align 1
  %11 = load i32*, i32** %tokflag.addr, align 4
  %tobool13 = icmp ne i32* %11, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then5
  %12 = load i32, i32* %c, align 4
  %and15 = and i32 %12, 1
  %13 = load i32*, i32** %tokflag.addr, align 4
  store i32 %and15, i32* %13, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ecrawstr.buf, i32 0, i32 0), i8** %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else
  %14 = load i32*, i32** %tokflag.addr, align 4
  %tobool18 = icmp ne i32* %14, null
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else17
  %15 = load i32, i32* %c, align 4
  %and20 = and i32 %15, 1
  %16 = load i32*, i32** %tokflag.addr, align 4
  store i32 %and20, i32* %16, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else17
  %17 = load %struct.eprog*, %struct.eprog** %p.addr, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %17, i32 0, i32 6
  %18 = load i8*, i8** %strs, align 4
  %19 = load i32, i32* %c, align 4
  %shr22 = lshr i32 %19, 2
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 %shr22
  store i8* %add.ptr, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.end16, %if.end
  %20 = load i8*, i8** %retval, align 4
  ret i8* %20
}

; Function Attrs: noinline nounwind
define i8** @ecgetarr(%struct.estate* %s, i32 %num, i32 %dup, i32* %tokflag) #0 {
entry:
  %s.addr = alloca %struct.estate*, align 4
  %num.addr = alloca i32, align 4
  %dup.addr = alloca i32, align 4
  %tokflag.addr = alloca i32*, align 4
  %ret = alloca i8**, align 4
  %rp = alloca i8**, align 4
  %tf = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.estate* %s, %struct.estate** %s.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %dup, i32* %dup.addr, align 4
  store i32* %tokflag, i32** %tokflag.addr, align 4
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tmp, align 4
  %0 = load i32, i32* %num.addr, align 4
  %add = add nsw i32 %0, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %rp, align 4
  store i8** %1, i8*** %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %num.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %4 = load i32, i32* %dup.addr, align 4
  %call1 = call i8* @ecgetstr(%struct.estate* %3, i32 %4, i32* %tmp)
  %5 = load i8**, i8*** %rp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %rp, align 4
  store i8* %call1, i8** %5, align 4
  %6 = load i32, i32* %tmp, align 4
  %7 = load i32, i32* %tf, align 4
  %or = or i32 %7, %6
  store i32 %or, i32* %tf, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8**, i8*** %rp, align 4
  store i8* null, i8** %8, align 4
  %9 = load i32*, i32** %tokflag.addr, align 4
  %tobool2 = icmp ne i32* %9, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load i32, i32* %tf, align 4
  %11 = load i32*, i32** %tokflag.addr, align 4
  store i32 %10, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %12 = load i8**, i8*** %ret, align 4
  ret i8** %12
}

; Function Attrs: noinline nounwind
define %union.linkroot* @ecgetlist(%struct.estate* %s, i32 %num, i32 %dup, i32* %tokflag) #0 {
entry:
  %retval = alloca %union.linkroot*, align 4
  %s.addr = alloca %struct.estate*, align 4
  %num.addr = alloca i32, align 4
  %dup.addr = alloca i32, align 4
  %tokflag.addr = alloca i32*, align 4
  %ret = alloca %union.linkroot*, align 4
  %i = alloca i32, align 4
  %tf = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.estate* %s, %struct.estate** %s.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %dup, i32* %dup.addr, align 4
  store i32* %tokflag, i32** %tokflag.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tmp, align 4
  %1 = load i32, i32* %num.addr, align 4
  %call = call %union.linkroot* @newsizedlist(i32 %1)
  store %union.linkroot* %call, %union.linkroot** %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %5 = load i32, i32* %dup.addr, align 4
  %call1 = call i8* @ecgetstr(%struct.estate* %4, i32 %5, i32* %tmp)
  %6 = load %union.linkroot*, %union.linkroot** %ret, align 4
  %list = bitcast %union.linkroot* %6 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %7 = load %struct.linknode*, %struct.linknode** %first, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 %8
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %arrayidx, i32 0, i32 2
  store i8* %call1, i8** %dat, align 4
  %9 = load i32, i32* %tmp, align 4
  %10 = load i32, i32* %tf, align 4
  %or = or i32 %10, %9
  store i32 %or, i32* %tf, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32*, i32** %tokflag.addr, align 4
  %tobool2 = icmp ne i32* %12, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.end
  %13 = load i32, i32* %tf, align 4
  %14 = load i32*, i32** %tokflag.addr, align 4
  store i32 %13, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.end
  %15 = load %union.linkroot*, %union.linkroot** %ret, align 4
  store %union.linkroot* %15, %union.linkroot** %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %16 = load i32*, i32** %tokflag.addr, align 4
  %tobool5 = icmp ne i32* %16, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %17 = load i32*, i32** %tokflag.addr, align 4
  store i32 0, i32* %17, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  store %union.linkroot* null, %union.linkroot** %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.end
  %18 = load %union.linkroot*, %union.linkroot** %retval, align 4
  ret %union.linkroot* %18
}

declare %union.linkroot* @newsizedlist(i32) #1

; Function Attrs: noinline nounwind
define %union.linkroot* @ecgetredirs(%struct.estate* %s) #0 {
entry:
  %s.addr = alloca %struct.estate*, align 4
  %ret = alloca %union.linkroot*, align 4
  %code = alloca i32, align 4
  %r = alloca %struct.redir*, align 4
  store %struct.estate* %s, %struct.estate** %s.addr, align 4
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %ret, align 4
  %0 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %code, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %entry
  %3 = load i32, i32* %code, align 4
  %and = and i32 %3, 31
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i8* @zhalloc(i32 32)
  %4 = bitcast i8* %call1 to %struct.redir*
  store %struct.redir* %4, %struct.redir** %r, align 4
  %5 = load i32, i32* %code, align 4
  %shr = lshr i32 %5, 5
  %and2 = and i32 %shr, 31
  %6 = load %struct.redir*, %struct.redir** %r, align 4
  %type = getelementptr inbounds %struct.redir, %struct.redir* %6, i32 0, i32 0
  store i32 %and2, i32* %type, align 4
  %7 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc3 = getelementptr inbounds %struct.estate, %struct.estate* %7, i32 0, i32 1
  %8 = load i32*, i32** %pc3, align 4
  %incdec.ptr4 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr4, i32** %pc3, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.redir*, %struct.redir** %r, align 4
  %fd1 = getelementptr inbounds %struct.redir, %struct.redir* %10, i32 0, i32 2
  store i32 %9, i32* %fd1, align 4
  %11 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call5 = call i8* @ecgetstr(%struct.estate* %11, i32 1, i32* null)
  %12 = load %struct.redir*, %struct.redir** %r, align 4
  %name = getelementptr inbounds %struct.redir, %struct.redir* %12, i32 0, i32 4
  store i8* %call5, i8** %name, align 4
  %13 = load i32, i32* %code, align 4
  %shr6 = lshr i32 %13, 5
  %and7 = and i32 %shr6, 64
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = load %struct.redir*, %struct.redir** %r, align 4
  %flags = getelementptr inbounds %struct.redir, %struct.redir* %14, i32 0, i32 1
  store i32 1, i32* %flags, align 4
  %15 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call8 = call i8* @ecgetstr(%struct.estate* %15, i32 1, i32* null)
  %16 = load %struct.redir*, %struct.redir** %r, align 4
  %here_terminator = getelementptr inbounds %struct.redir, %struct.redir* %16, i32 0, i32 6
  store i8* %call8, i8** %here_terminator, align 4
  %17 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call9 = call i8* @ecgetstr(%struct.estate* %17, i32 1, i32* null)
  %18 = load %struct.redir*, %struct.redir** %r, align 4
  %munged_here_terminator = getelementptr inbounds %struct.redir, %struct.redir* %18, i32 0, i32 7
  store i8* %call9, i8** %munged_here_terminator, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load %struct.redir*, %struct.redir** %r, align 4
  %flags10 = getelementptr inbounds %struct.redir, %struct.redir* %19, i32 0, i32 1
  store i32 0, i32* %flags10, align 4
  %20 = load %struct.redir*, %struct.redir** %r, align 4
  %here_terminator11 = getelementptr inbounds %struct.redir, %struct.redir* %20, i32 0, i32 6
  store i8* null, i8** %here_terminator11, align 4
  %21 = load %struct.redir*, %struct.redir** %r, align 4
  %munged_here_terminator12 = getelementptr inbounds %struct.redir, %struct.redir* %21, i32 0, i32 7
  store i8* null, i8** %munged_here_terminator12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %code, align 4
  %shr13 = lshr i32 %22, 5
  %and14 = and i32 %shr13, 32
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end
  %23 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call17 = call i8* @ecgetstr(%struct.estate* %23, i32 1, i32* null)
  %24 = load %struct.redir*, %struct.redir** %r, align 4
  %varid = getelementptr inbounds %struct.redir, %struct.redir* %24, i32 0, i32 5
  store i8* %call17, i8** %varid, align 4
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %25 = load %struct.redir*, %struct.redir** %r, align 4
  %varid19 = getelementptr inbounds %struct.redir, %struct.redir* %25, i32 0, i32 5
  store i8* null, i8** %varid19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %26 = load %union.linkroot*, %union.linkroot** %ret, align 4
  %27 = load %union.linkroot*, %union.linkroot** %ret, align 4
  %list = bitcast %union.linkroot* %27 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %28 = load %struct.linknode*, %struct.linknode** %last, align 4
  %29 = load %struct.redir*, %struct.redir** %r, align 4
  %30 = bitcast %struct.redir* %29 to i8*
  %call21 = call %struct.linknode* @insertlinknode(%union.linkroot* %26, %struct.linknode* %28, i8* %30)
  %31 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc22 = getelementptr inbounds %struct.estate, %struct.estate* %31, i32 0, i32 1
  %32 = load i32*, i32** %pc22, align 4
  %incdec.ptr23 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr23, i32** %pc22, align 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %code, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc24 = getelementptr inbounds %struct.estate, %struct.estate* %34, i32 0, i32 1
  %35 = load i32*, i32** %pc24, align 4
  %incdec.ptr25 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %incdec.ptr25, i32** %pc24, align 4
  %36 = load %union.linkroot*, %union.linkroot** %ret, align 4
  ret %union.linkroot* %36
}

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

; Function Attrs: noinline nounwind
define %struct.eprog* @eccopyredirs(%struct.estate* %s) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %s.addr = alloca %struct.estate*, align 4
  %pc = alloca i32*, align 4
  %code = alloca i32, align 4
  %ncode = alloca i32, align 4
  %ncodes = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.estate* %s, %struct.estate** %s.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc1, align 4
  store i32* %1, i32** %pc, align 4
  %2 = load i32*, i32** %pc, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %code, align 4
  store i32 0, i32* %ncodes, align 4
  %4 = load i32, i32* %code, align 4
  %and = and i32 %4, 31
  %cmp = icmp ne i32 %and, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @init_parse()
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %5 = load i32, i32* %code, align 4
  %and2 = and i32 %5, 31
  %cmp3 = icmp eq i32 %and2, 4
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %code, align 4
  %shr = lshr i32 %6, 5
  %and4 = and i32 %shr, 64
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  store i32 5, i32* %ncode, align 4
  br label %if.end6

if.else:                                          ; preds = %while.body
  store i32 3, i32* %ncode, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %7 = load i32, i32* %code, align 4
  %shr7 = lshr i32 %7, 5
  %and8 = and i32 %shr7, 32
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  %8 = load i32, i32* %ncode, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ncode, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  %9 = load i32, i32* %ncode, align 4
  %10 = load i32*, i32** %pc, align 4
  %add.ptr = getelementptr inbounds i32, i32* %10, i32 %9
  store i32* %add.ptr, i32** %pc, align 4
  %11 = load i32, i32* %ncode, align 4
  %12 = load i32, i32* %ncodes, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %ncodes, align 4
  %13 = load i32*, i32** %pc, align 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %code, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* @ecused, align 4
  store i32 %15, i32* %r, align 4
  %16 = load i32, i32* %r, align 4
  %17 = load i32, i32* %ncodes, align 4
  call void @ecispace(i32 %16, i32 %17)
  %18 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc12 = getelementptr inbounds %struct.estate, %struct.estate* %18, i32 0, i32 1
  %19 = load i32*, i32** %pc12, align 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %code, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end47, %while.end
  %21 = load i32, i32* %code, align 4
  %and14 = and i32 %21, 31
  %cmp15 = icmp eq i32 %and14, 4
  br i1 %cmp15, label %while.body16, label %while.end49

while.body16:                                     ; preds = %while.cond13
  %22 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc17 = getelementptr inbounds %struct.estate, %struct.estate* %22, i32 0, i32 1
  %23 = load i32*, i32** %pc17, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr, i32** %pc17, align 4
  %24 = load i32, i32* %code, align 4
  %25 = load i32*, i32** @ecbuf, align 4
  %26 = load i32, i32* %r, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* %r, align 4
  %arrayidx = getelementptr inbounds i32, i32* %25, i32 %26
  store i32 %24, i32* %arrayidx, align 4
  %27 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc19 = getelementptr inbounds %struct.estate, %struct.estate* %27, i32 0, i32 1
  %28 = load i32*, i32** %pc19, align 4
  %incdec.ptr20 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr20, i32** %pc19, align 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @ecbuf, align 4
  %31 = load i32, i32* %r, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, i32* %r, align 4
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i32 %31
  store i32 %29, i32* %arrayidx22, align 4
  %32 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %32, i32 0, i32* null)
  %call23 = call i32 @ecstrcode(i8* %call)
  %33 = load i32*, i32** @ecbuf, align 4
  %34 = load i32, i32* %r, align 4
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %r, align 4
  %arrayidx25 = getelementptr inbounds i32, i32* %33, i32 %34
  store i32 %call23, i32* %arrayidx25, align 4
  %35 = load i32, i32* %code, align 4
  %shr26 = lshr i32 %35, 5
  %and27 = and i32 %shr26, 64
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end38

if.then29:                                        ; preds = %while.body16
  %36 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call30 = call i8* @ecgetstr(%struct.estate* %36, i32 0, i32* null)
  %call31 = call i32 @ecstrcode(i8* %call30)
  %37 = load i32*, i32** @ecbuf, align 4
  %38 = load i32, i32* %r, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %r, align 4
  %arrayidx33 = getelementptr inbounds i32, i32* %37, i32 %38
  store i32 %call31, i32* %arrayidx33, align 4
  %39 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call34 = call i8* @ecgetstr(%struct.estate* %39, i32 0, i32* null)
  %call35 = call i32 @ecstrcode(i8* %call34)
  %40 = load i32*, i32** @ecbuf, align 4
  %41 = load i32, i32* %r, align 4
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* %r, align 4
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i32 %41
  store i32 %call35, i32* %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %while.body16
  %42 = load i32, i32* %code, align 4
  %shr39 = lshr i32 %42, 5
  %and40 = and i32 %shr39, 32
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end38
  %43 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %call43 = call i8* @ecgetstr(%struct.estate* %43, i32 0, i32* null)
  %call44 = call i32 @ecstrcode(i8* %call43)
  %44 = load i32*, i32** @ecbuf, align 4
  %45 = load i32, i32* %r, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, i32* %r, align 4
  %arrayidx46 = getelementptr inbounds i32, i32* %44, i32 %45
  store i32 %call44, i32* %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end38
  %46 = load %struct.estate*, %struct.estate** %s.addr, align 4
  %pc48 = getelementptr inbounds %struct.estate, %struct.estate* %46, i32 0, i32 1
  %47 = load i32*, i32** %pc48, align 4
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %code, align 4
  br label %while.cond13

while.end49:                                      ; preds = %while.cond13
  %call50 = call %struct.eprog* @bld_eprog(i32 0)
  store %struct.eprog* %call50, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %while.end49, %if.then
  %49 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %49
}

; Function Attrs: noinline nounwind
define internal void @ecispace(i32 %p, i32 %n) #0 {
entry:
  %p.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @eclen, align 4
  %1 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @eclen, align 4
  %cmp1 = icmp slt i32 %3, 32768
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i32, i32* @eclen, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 1024, %cond.false ]
  store i32 %cond, i32* %a, align 4
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %a, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %cond.end
  %7 = load i32, i32* %n.addr, align 4
  store i32 %7, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %cond.end
  %8 = load i32*, i32** @ecbuf, align 4
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* @eclen, align 4
  %11 = load i32, i32* %a, align 4
  %add = add nsw i32 %10, %11
  %mul = mul i32 %add, 4
  %call = call i8* @zrealloc(i8* %9, i32 %mul)
  %12 = bitcast i8* %call to i32*
  store i32* %12, i32** @ecbuf, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* @eclen, align 4
  %add4 = add nsw i32 %14, %13
  store i32 %add4, i32* @eclen, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %15 = load i32, i32* @ecused, align 4
  %16 = load i32, i32* %p.addr, align 4
  %sub6 = sub nsw i32 %15, %16
  store i32 %sub6, i32* %m, align 4
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end5
  %17 = load i32*, i32** @ecbuf, align 4
  %18 = load i32, i32* %p.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %17, i32 %18
  %19 = load i32, i32* %n.addr, align 4
  %add.ptr9 = getelementptr inbounds i32, i32* %add.ptr, i32 %19
  %20 = bitcast i32* %add.ptr9 to i8*
  %21 = load i32*, i32** @ecbuf, align 4
  %22 = load i32, i32* %p.addr, align 4
  %add.ptr10 = getelementptr inbounds i32, i32* %21, i32 %22
  %23 = bitcast i32* %add.ptr10 to i8*
  %24 = load i32, i32* %m, align 4
  %mul11 = mul i32 %24, 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %20, i8* %23, i32 %mul11, i32 4, i1 false)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5
  %25 = load i32, i32* %n.addr, align 4
  %26 = load i32, i32* @ecused, align 4
  %add13 = add nsw i32 %26, %25
  store i32 %add13, i32* @ecused, align 4
  %27 = load i32, i32* %p.addr, align 4
  %28 = load i32, i32* %n.addr, align 4
  call void @ecadjusthere(i32 %27, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind
define void @init_eprog() #0 {
entry:
  store i32 0, i32* @dummy_eprog_code, align 4
  store i32 4, i32* getelementptr inbounds (%struct.eprog, %struct.eprog* @dummy_eprog, i32 0, i32 1), align 4
  store i32* @dummy_eprog_code, i32** getelementptr inbounds (%struct.eprog, %struct.eprog* @dummy_eprog, i32 0, i32 5), align 4
  store i8* null, i8** getelementptr inbounds (%struct.eprog, %struct.eprog* @dummy_eprog, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @bin_zcompile(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %map = alloca i32, align 4
  %flags = alloca i32, align 4
  %ret = alloca i32, align 4
  %dump = alloca i8*, align 4
  %f = alloca i32*, align 4
  %h = alloca %struct.fdhead*, align 4
  %e = alloca %struct.fdhead*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp180 = alloca %struct.__sigset_t, align 4
  %oset243 = alloca %struct.__sigset_t, align 4
  %tmp247 = alloca %struct.__sigset_t, align 4
  %tmp249 = alloca %struct.__sigset_t, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 107
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 122
  %3 = load i8, i8* %arrayidx3, align 2
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind7 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [128 x i8], [128 x i8]* %ind7, i32 0, i32 82
  %5 = load i8, i8* %arrayidx8, align 2
  %conv9 = zext i8 %5 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true12, label %lor.lhs.false18

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind13 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [128 x i8], [128 x i8]* %ind13, i32 0, i32 77
  %7 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %7 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true12, %lor.lhs.false
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind19 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [128 x i8], [128 x i8]* %ind19, i32 0, i32 99
  %9 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %9 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %land.lhs.true24, label %lor.lhs.false42

land.lhs.true24:                                  ; preds = %lor.lhs.false18
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind25 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [128 x i8], [128 x i8]* %ind25, i32 0, i32 85
  %11 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %11 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %if.then, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true24
  %12 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind31 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [128 x i8], [128 x i8]* %ind31, i32 0, i32 107
  %13 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %13 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %14 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind37 = getelementptr inbounds %struct.options, %struct.options* %14, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [128 x i8], [128 x i8]* %ind37, i32 0, i32 122
  %15 = load i8, i8* %arrayidx38, align 2
  %conv39 = zext i8 %15 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.then, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false36, %lor.lhs.false18
  %16 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind43 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [128 x i8], [128 x i8]* %ind43, i32 0, i32 99
  %17 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %17 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.end, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %18 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind49 = getelementptr inbounds %struct.options, %struct.options* %18, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [128 x i8], [128 x i8]* %ind49, i32 0, i32 97
  %19 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %19 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.end, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %lor.lhs.false48
  %20 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind55 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [128 x i8], [128 x i8]* %ind55, i32 0, i32 109
  %21 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %21 to i32
  %cmp58 = icmp ne i32 %conv57, 0
  br i1 %cmp58, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true54, %lor.lhs.false36, %lor.lhs.false30, %land.lhs.true24, %land.lhs.true12, %land.lhs.true
  %22 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true54, %lor.lhs.false48, %lor.lhs.false42
  %23 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind60 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [128 x i8], [128 x i8]* %ind60, i32 0, i32 99
  %24 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %24 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br i1 %cmp63, label %land.lhs.true71, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end
  %25 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind66 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [128 x i8], [128 x i8]* %ind66, i32 0, i32 97
  %26 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %26 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  br i1 %cmp69, label %land.lhs.true71, label %if.end74

land.lhs.true71:                                  ; preds = %lor.lhs.false65, %if.end
  %27 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 97), align 1
  %conv72 = sext i8 %27 to i32
  %tobool = icmp ne i32 %conv72, 0
  br i1 %tobool, label %if.then73, label %if.end74

if.then73:                                        ; preds = %land.lhs.true71
  %28 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.lhs.true71, %lor.lhs.false65
  %29 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind75 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [128 x i8], [128 x i8]* %ind75, i32 0, i32 107
  %30 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %30 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end74
  br label %cond.end

cond.false:                                       ; preds = %if.end74
  %31 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind80 = getelementptr inbounds %struct.options, %struct.options* %31, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [128 x i8], [128 x i8]* %ind80, i32 0, i32 122
  %32 = load i8, i8* %arrayidx81, align 2
  %conv82 = zext i8 %32 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  %cond = select i1 %cmp83, i32 2, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond85 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond85, i32* %flags, align 4
  %33 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind86 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [128 x i8], [128 x i8]* %ind86, i32 0, i32 116
  %34 = load i8, i8* %arrayidx87, align 4
  %conv88 = zext i8 %34 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %if.then91, label %if.end132

if.then91:                                        ; preds = %cond.end
  %35 = load i8**, i8*** %args.addr, align 4
  %36 = load i8*, i8** %35, align 4
  %tobool92 = icmp ne i8* %36, null
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then91
  %37 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then91
  %38 = load i8*, i8** %nam.addr, align 4
  %39 = load i8**, i8*** %args.addr, align 4
  %40 = load i8*, i8** %39, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %40)
  %tobool95 = icmp ne i32 %call, 0
  br i1 %tobool95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %if.end94
  %41 = load i8**, i8*** %args.addr, align 4
  %42 = load i8*, i8** %41, align 4
  br label %cond.end99

cond.false97:                                     ; preds = %if.end94
  %43 = load i8**, i8*** %args.addr, align 4
  %44 = load i8*, i8** %43, align 4
  %call98 = call i8* @dyncat(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false97, %cond.true96
  %cond100 = phi i8* [ %42, %cond.true96 ], [ %call98, %cond.false97 ]
  %call101 = call i32* @load_dump_header(i8* %38, i8* %cond100, i32 1)
  store i32* %call101, i32** %f, align 4
  %tobool102 = icmp ne i32* %call101, null
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %cond.end99
  store i32 1, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %cond.end99
  %45 = load i8**, i8*** %args.addr, align 4
  %arrayidx105 = getelementptr inbounds i8*, i8** %45, i32 1
  %46 = load i8*, i8** %arrayidx105, align 4
  %tobool106 = icmp ne i8* %46, null
  br i1 %tobool106, label %if.then107, label %if.else

if.then107:                                       ; preds = %if.end104
  %47 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then107
  %48 = load i8**, i8*** %args.addr, align 4
  %49 = load i8*, i8** %48, align 4
  %tobool108 = icmp ne i8* %49, null
  br i1 %tobool108, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32*, i32** %f, align 4
  %51 = load i8**, i8*** %args.addr, align 4
  %52 = load i8*, i8** %51, align 4
  %call109 = call %struct.fdhead* @dump_find_func(i32* %50, i8* %52)
  %tobool110 = icmp ne %struct.fdhead* %call109, null
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end112:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end112
  %53 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr113 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %incdec.ptr113, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end104
  %54 = load i32*, i32** %f, align 4
  %55 = load i32*, i32** %f, align 4
  %arrayidx114 = getelementptr inbounds i32, i32* %55, i32 12
  %56 = load i32, i32* %arrayidx114, align 4
  %add.ptr = getelementptr inbounds i32, i32* %54, i32 %56
  %57 = bitcast i32* %add.ptr to %struct.fdhead*
  store %struct.fdhead* %57, %struct.fdhead** %e, align 4
  %58 = load i32*, i32** %f, align 4
  %add.ptr115 = getelementptr inbounds i32, i32* %58, i32 1
  %59 = bitcast i32* %add.ptr115 to i8*
  %arrayidx116 = getelementptr inbounds i8, i8* %59, i32 0
  %60 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %60 to i32
  %and = and i32 %conv117, 1
  %tobool118 = icmp ne i32 %and, 0
  %cond119 = select i1 %tobool118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)
  %61 = load i32*, i32** %f, align 4
  %add.ptr120 = getelementptr inbounds i32, i32* %61, i32 2
  %62 = bitcast i32* %add.ptr120 to i8*
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* %cond119, i8* %62)
  %63 = load i32*, i32** %f, align 4
  %add.ptr122 = getelementptr inbounds i32, i32* %63, i32 12
  %64 = bitcast i32* %add.ptr122 to %struct.fdhead*
  store %struct.fdhead* %64, %struct.fdhead** %h, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc129, %if.else
  %65 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %66 = load %struct.fdhead*, %struct.fdhead** %e, align 4
  %cmp124 = icmp ult %struct.fdhead* %65, %66
  br i1 %cmp124, label %for.body126, label %for.end131

for.body126:                                      ; preds = %for.cond123
  %67 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %add.ptr127 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %67, i32 1
  %68 = bitcast %struct.fdhead* %add.ptr127 to i8*
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %68)
  br label %for.inc129

for.inc129:                                       ; preds = %for.body126
  %69 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %70 = bitcast %struct.fdhead* %69 to i32*
  %71 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %hlen = getelementptr inbounds %struct.fdhead, %struct.fdhead* %71, i32 0, i32 4
  %72 = load i32, i32* %hlen, align 4
  %add.ptr130 = getelementptr inbounds i32, i32* %70, i32 %72
  %73 = bitcast i32* %add.ptr130 to %struct.fdhead*
  store %struct.fdhead* %73, %struct.fdhead** %h, align 4
  br label %for.cond123

for.end131:                                       ; preds = %for.cond123
  store i32 0, i32* %retval, align 4
  br label %return

if.end132:                                        ; preds = %cond.end
  %74 = load i8**, i8*** %args.addr, align 4
  %75 = load i8*, i8** %74, align 4
  %tobool133 = icmp ne i8* %75, null
  br i1 %tobool133, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end132
  %76 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end135:                                        ; preds = %if.end132
  %77 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind136 = getelementptr inbounds %struct.options, %struct.options* %77, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [128 x i8], [128 x i8]* %ind136, i32 0, i32 77
  %78 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %78 to i32
  %cmp139 = icmp ne i32 %conv138, 0
  br i1 %cmp139, label %cond.true141, label %cond.false142

cond.true141:                                     ; preds = %if.end135
  br label %cond.end149

cond.false142:                                    ; preds = %if.end135
  %79 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind143 = getelementptr inbounds %struct.options, %struct.options* %79, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [128 x i8], [128 x i8]* %ind143, i32 0, i32 82
  %80 = load i8, i8* %arrayidx144, align 2
  %conv145 = zext i8 %80 to i32
  %cmp146 = icmp ne i32 %conv145, 0
  %cond148 = select i1 %cmp146, i32 0, i32 1
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false142, %cond.true141
  %cond150 = phi i32 [ 2, %cond.true141 ], [ %cond148, %cond.false142 ]
  store i32 %cond150, i32* %map, align 4
  %81 = load i8**, i8*** %args.addr, align 4
  %arrayidx151 = getelementptr inbounds i8*, i8** %81, i32 1
  %82 = load i8*, i8** %arrayidx151, align 4
  %tobool152 = icmp ne i8* %82, null
  br i1 %tobool152, label %if.end183, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %cond.end149
  %83 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind154 = getelementptr inbounds %struct.options, %struct.options* %83, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [128 x i8], [128 x i8]* %ind154, i32 0, i32 99
  %84 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %84 to i32
  %cmp157 = icmp ne i32 %conv156, 0
  br i1 %cmp157, label %if.end183, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %land.lhs.true153
  %85 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind160 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [128 x i8], [128 x i8]* %ind160, i32 0, i32 97
  %86 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %86 to i32
  %cmp163 = icmp ne i32 %conv162, 0
  br i1 %cmp163, label %if.end183, label %if.then165

if.then165:                                       ; preds = %lor.lhs.false159
  %87 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %88 = load i8*, i8** %nam.addr, align 4
  %89 = load i8**, i8*** %args.addr, align 4
  %90 = load i8*, i8** %89, align 4
  %call166 = call i8* @dyncat(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %91 = load i8**, i8*** %args.addr, align 4
  %92 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind167 = getelementptr inbounds %struct.options, %struct.options* %92, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [128 x i8], [128 x i8]* %ind167, i32 0, i32 85
  %93 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %93 to i32
  %cmp170 = icmp ne i32 %conv169, 0
  %conv171 = zext i1 %cmp170 to i32
  %94 = load i32, i32* %map, align 4
  %95 = load i32, i32* %flags, align 4
  %call172 = call i32 @build_dump(i8* %88, i8* %call166, i8** %91, i32 %conv171, i32 %94, i32 %95)
  store i32 %call172, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then165
  %96 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %96, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool173 = icmp ne i32 %dec, 0
  br i1 %tobool173, label %if.end181, label %if.then174

if.then174:                                       ; preds = %do.body
  br label %do.body175

do.body175:                                       ; preds = %if.then174
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body175
  %97 = load i32, i32* @queue_front, align 4
  %98 = load i32, i32* @queue_rear, align 4
  %cmp176 = icmp ne i32 %97, %98
  br i1 %cmp176, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %99 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %99, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %100 = load i32, i32* @queue_front, align 4
  %arrayidx178 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %100
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx178)
  %101 = bitcast %struct.__sigset_t* %oset to i8*
  %102 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %101, i8* %102, i32 128, i32 4, i1 false)
  %103 = load i32, i32* @queue_front, align 4
  %arrayidx179 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %103
  %104 = load i32, i32* %arrayidx179, align 4
  call void @zhandler(i32 %104)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp180, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end181

if.end181:                                        ; preds = %do.end, %do.body
  br label %do.end182

do.end182:                                        ; preds = %if.end181
  %105 = load i32, i32* %ret, align 4
  store i32 %105, i32* %retval, align 4
  br label %return

if.end183:                                        ; preds = %lor.lhs.false159, %land.lhs.true153, %cond.end149
  %106 = load i8**, i8*** %args.addr, align 4
  %107 = load i8*, i8** %106, align 4
  %call184 = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %107)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %cond.true186, label %cond.false187

cond.true186:                                     ; preds = %if.end183
  %108 = load i8**, i8*** %args.addr, align 4
  %109 = load i8*, i8** %108, align 4
  br label %cond.end189

cond.false187:                                    ; preds = %if.end183
  %110 = load i8**, i8*** %args.addr, align 4
  %111 = load i8*, i8** %110, align 4
  %call188 = call i8* @dyncat(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false187, %cond.true186
  %cond190 = phi i8* [ %109, %cond.true186 ], [ %call188, %cond.false187 ]
  store i8* %cond190, i8** %dump, align 4
  %112 = load i32, i32* @queueing_enabled, align 4
  %inc191 = add nsw i32 %112, 1
  store i32 %inc191, i32* @queueing_enabled, align 4
  %113 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind192 = getelementptr inbounds %struct.options, %struct.options* %113, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [128 x i8], [128 x i8]* %ind192, i32 0, i32 99
  %114 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %114 to i32
  %cmp195 = icmp ne i32 %conv194, 0
  br i1 %cmp195, label %cond.true203, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %cond.end189
  %115 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind198 = getelementptr inbounds %struct.options, %struct.options* %115, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [128 x i8], [128 x i8]* %ind198, i32 0, i32 97
  %116 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %116 to i32
  %cmp201 = icmp ne i32 %conv200, 0
  br i1 %cmp201, label %cond.true203, label %cond.false223

cond.true203:                                     ; preds = %lor.lhs.false197, %cond.end189
  %117 = load i8*, i8** %nam.addr, align 4
  %118 = load i8*, i8** %dump, align 4
  %119 = load i8**, i8*** %args.addr, align 4
  %add.ptr204 = getelementptr inbounds i8*, i8** %119, i32 1
  %120 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind205 = getelementptr inbounds %struct.options, %struct.options* %120, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [128 x i8], [128 x i8]* %ind205, i32 0, i32 109
  %121 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %121 to i32
  %cmp208 = icmp ne i32 %conv207, 0
  %conv209 = zext i1 %cmp208 to i32
  %122 = load i32, i32* %map, align 4
  %123 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind210 = getelementptr inbounds %struct.options, %struct.options* %123, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [128 x i8], [128 x i8]* %ind210, i32 0, i32 99
  %124 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %124 to i32
  %cmp213 = icmp ne i32 %conv212, 0
  %cond215 = select i1 %cmp213, i32 1, i32 0
  %125 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind216 = getelementptr inbounds %struct.options, %struct.options* %125, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [128 x i8], [128 x i8]* %ind216, i32 0, i32 97
  %126 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %126 to i32
  %cmp219 = icmp ne i32 %conv218, 0
  %cond221 = select i1 %cmp219, i32 2, i32 0
  %or = or i32 %cond215, %cond221
  %call222 = call i32 @build_cur_dump(i8* %117, i8* %118, i8** %add.ptr204, i32 %conv209, i32 %122, i32 %or)
  br label %cond.end231

cond.false223:                                    ; preds = %lor.lhs.false197
  %127 = load i8*, i8** %nam.addr, align 4
  %128 = load i8*, i8** %dump, align 4
  %129 = load i8**, i8*** %args.addr, align 4
  %add.ptr224 = getelementptr inbounds i8*, i8** %129, i32 1
  %130 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind225 = getelementptr inbounds %struct.options, %struct.options* %130, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [128 x i8], [128 x i8]* %ind225, i32 0, i32 85
  %131 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %131 to i32
  %cmp228 = icmp ne i32 %conv227, 0
  %conv229 = zext i1 %cmp228 to i32
  %132 = load i32, i32* %map, align 4
  %133 = load i32, i32* %flags, align 4
  %call230 = call i32 @build_dump(i8* %127, i8* %128, i8** %add.ptr224, i32 %conv229, i32 %132, i32 %133)
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false223, %cond.true203
  %cond232 = phi i32 [ %call222, %cond.true203 ], [ %call230, %cond.false223 ]
  store i32 %cond232, i32* %ret, align 4
  br label %do.body233

do.body233:                                       ; preds = %cond.end231
  %134 = load i32, i32* @queueing_enabled, align 4
  %dec234 = add nsw i32 %134, -1
  store i32 %dec234, i32* @queueing_enabled, align 4
  %tobool235 = icmp ne i32 %dec234, 0
  br i1 %tobool235, label %if.end252, label %if.then236

if.then236:                                       ; preds = %do.body233
  br label %do.body237

do.body237:                                       ; preds = %if.then236
  br label %while.cond238

while.cond238:                                    ; preds = %while.body241, %do.body237
  %135 = load i32, i32* @queue_front, align 4
  %136 = load i32, i32* @queue_rear, align 4
  %cmp239 = icmp ne i32 %135, %136
  br i1 %cmp239, label %while.body241, label %while.end250

while.body241:                                    ; preds = %while.cond238
  %137 = load i32, i32* @queue_front, align 4
  %add244 = add nsw i32 %137, 1
  %rem245 = srem i32 %add244, 128
  store i32 %rem245, i32* @queue_front, align 4
  %138 = load i32, i32* @queue_front, align 4
  %arrayidx246 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %138
  call void @signal_setmask(%struct.__sigset_t* sret %tmp247, %struct.__sigset_t* byval align 4 %arrayidx246)
  %139 = bitcast %struct.__sigset_t* %oset243 to i8*
  %140 = bitcast %struct.__sigset_t* %tmp247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %139, i8* %140, i32 128, i32 4, i1 false)
  %141 = load i32, i32* @queue_front, align 4
  %arrayidx248 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %141
  %142 = load i32, i32* %arrayidx248, align 4
  call void @zhandler(i32 %142)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp249, %struct.__sigset_t* byval align 4 %oset243)
  br label %while.cond238

while.end250:                                     ; preds = %while.cond238
  br label %do.end251

do.end251:                                        ; preds = %while.end250
  br label %if.end252

if.end252:                                        ; preds = %do.end251, %do.body233
  br label %do.end253

do.end253:                                        ; preds = %if.end252
  %143 = load i32, i32* %ret, align 4
  store i32 %143, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end253, %do.end182, %if.then134, %for.end131, %for.end, %if.then111, %if.then103, %if.then93, %if.then
  %144 = load i32, i32* %retval, align 4
  ret i32 %144
}

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32* @load_dump_header(i8* %nam, i8* %name, i32 %err) #0 {
entry:
  %retval = alloca i32*, align 4
  %nam.addr = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %err.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %v = alloca i32, align 4
  %buf = alloca [13 x i32], align 4
  %len = alloca i32, align 4
  %head = alloca i32*, align 4
  %o = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %err, i32* %err.addr, align 4
  store i32 1, i32* %v, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load i8*, i8** %nam.addr, align 4
  %3 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32* null, i32** %retval, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %4 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %5 = bitcast i32* %arraydecay to i8*
  %call3 = call i32 @read(i32 %4, i8* %5, i32 52)
  %cmp4 = icmp ne i32 %call3, 52
  br i1 %cmp4, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %arraydecay5 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %arrayidx = getelementptr inbounds i32, i32* %arraydecay5, i32 0
  %6 = load i32, i32* %arrayidx, align 4
  %cmp6 = icmp ne i32 %6, 67438087
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds i32, i32* %arraydecay7, i32 0
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %7, 117835012
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %8 = phi i1 [ false, %lor.lhs.false ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %v, align 4
  br i1 %8, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %land.end
  %arraydecay11 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay11, i32 2
  %9 = bitcast i32* %add.ptr to i8*
  %call12 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else24

if.then14:                                        ; preds = %lor.lhs.false10, %land.end, %if.end2
  %10 = load i32, i32* %err.addr, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.then14
  %11 = load i32, i32* %v, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then16
  %12 = load i8*, i8** %nam.addr, align 4
  %arraydecay19 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %add.ptr20 = getelementptr inbounds i32, i32* %arraydecay19, i32 2
  %13 = bitcast i32* %add.ptr20 to i8*
  %14 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), i8* %13, i8* %14)
  br label %if.end21

if.else:                                          ; preds = %if.then16
  %15 = load i8*, i8** %nam.addr, align 4
  %16 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* %16)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  %17 = load i32, i32* %fd, align 4
  %call23 = call i32 @close(i32 %17)
  store i32* null, i32** %retval, align 4
  br label %return

if.else24:                                        ; preds = %lor.lhs.false10
  %arraydecay25 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds i32, i32* %arraydecay25, i32 0
  %18 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %18, 67438087
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.else24
  %arraydecay29 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds i32, i32* %arraydecay29, i32 12
  %19 = load i32, i32* %arrayidx30, align 4
  %mul = mul i32 %19, 4
  store i32 %mul, i32* %len, align 4
  %20 = load i32, i32* %len, align 4
  %call31 = call i8* @zhalloc(i32 %20)
  %21 = bitcast i8* %call31 to i32*
  store i32* %21, i32** %head, align 4
  br label %if.end61

if.else32:                                        ; preds = %if.else24
  %arraydecay33 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %add.ptr34 = getelementptr inbounds i32, i32* %arraydecay33, i32 1
  %22 = bitcast i32* %add.ptr34 to i8*
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i32 1
  %23 = load i8, i8* %arrayidx35, align 1
  %conv = zext i8 %23 to i32
  %arraydecay36 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %add.ptr37 = getelementptr inbounds i32, i32* %arraydecay36, i32 1
  %24 = bitcast i32* %add.ptr37 to i8*
  %arrayidx38 = getelementptr inbounds i8, i8* %24, i32 2
  %25 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %25 to i32
  %shl = shl i32 %conv39, 8
  %add = add i32 %conv, %shl
  %arraydecay40 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %add.ptr41 = getelementptr inbounds i32, i32* %arraydecay40, i32 1
  %26 = bitcast i32* %add.ptr41 to i8*
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i32 3
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %shl44 = shl i32 %conv43, 16
  %add45 = add i32 %add, %shl44
  store i32 %add45, i32* %o, align 4
  %28 = load i32, i32* %fd, align 4
  %29 = load i32, i32* %o, align 4
  %call46 = call i32 @lseek(i32 %28, i32 %29, i32 0)
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.then54, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.else32
  %30 = load i32, i32* %fd, align 4
  %arraydecay50 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %31 = bitcast i32* %arraydecay50 to i8*
  %call51 = call i32 @read(i32 %30, i8* %31, i32 52)
  %cmp52 = icmp ne i32 %call51, 52
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %lor.lhs.false49, %if.else32
  %32 = load i8*, i8** %nam.addr, align 4
  %33 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* %33)
  %34 = load i32, i32* %fd, align 4
  %call55 = call i32 @close(i32 %34)
  store i32* null, i32** %retval, align 4
  br label %return

if.end56:                                         ; preds = %lor.lhs.false49
  %arraydecay57 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds i32, i32* %arraydecay57, i32 12
  %35 = load i32, i32* %arrayidx58, align 4
  %mul59 = mul i32 %35, 4
  store i32 %mul59, i32* %len, align 4
  %36 = load i32, i32* %len, align 4
  %call60 = call i8* @zhalloc(i32 %36)
  %37 = bitcast i8* %call60 to i32*
  store i32* %37, i32** %head, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end56, %if.then28
  %38 = load i32*, i32** %head, align 4
  %39 = bitcast i32* %38 to i8*
  %arraydecay62 = getelementptr inbounds [13 x i32], [13 x i32]* %buf, i32 0, i32 0
  %40 = bitcast i32* %arraydecay62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %39, i8* %40, i32 52, i32 4, i1 false)
  %41 = load i32, i32* %len, align 4
  %sub = sub i32 %41, 52
  store i32 %sub, i32* %len, align 4
  %42 = load i32, i32* %fd, align 4
  %43 = load i32*, i32** %head, align 4
  %add.ptr63 = getelementptr inbounds i32, i32* %43, i32 13
  %44 = bitcast i32* %add.ptr63 to i8*
  %45 = load i32, i32* %len, align 4
  %call64 = call i32 @read(i32 %42, i8* %44, i32 %45)
  %46 = load i32, i32* %len, align 4
  %cmp65 = icmp ne i32 %call64, %46
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end61
  %47 = load i32, i32* %fd, align 4
  %call68 = call i32 @close(i32 %47)
  %48 = load i8*, i8** %nam.addr, align 4
  %49 = load i8*, i8** %name.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0), i8* %49)
  store i32* null, i32** %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end61
  %50 = load i32, i32* %fd, align 4
  %call70 = call i32 @close(i32 %50)
  %51 = load i32*, i32** %head, align 4
  store i32* %51, i32** %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then67, %if.then54, %if.end22, %if.end
  %52 = load i32*, i32** %retval, align 4
  ret i32* %52
}

declare i32 @strsfx(i8*, i8*) #1

declare i8* @dyncat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal %struct.fdhead* @dump_find_func(i32* %h, i8* %name) #0 {
entry:
  %retval = alloca %struct.fdhead*, align 4
  %h.addr = alloca i32*, align 4
  %name.addr = alloca i8*, align 4
  %n = alloca %struct.fdhead*, align 4
  %e = alloca %struct.fdhead*, align 4
  store i32* %h, i32** %h.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i32*, i32** %h.addr, align 4
  %1 = load i32*, i32** %h.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 12
  %2 = load i32, i32* %arrayidx, align 4
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 %2
  %3 = bitcast i32* %add.ptr to %struct.fdhead*
  store %struct.fdhead* %3, %struct.fdhead** %e, align 4
  %4 = load i32*, i32** %h.addr, align 4
  %add.ptr1 = getelementptr inbounds i32, i32* %4, i32 12
  %5 = bitcast i32* %add.ptr1 to %struct.fdhead*
  store %struct.fdhead* %5, %struct.fdhead** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %7 = load %struct.fdhead*, %struct.fdhead** %e, align 4
  %cmp = icmp ult %struct.fdhead* %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %name.addr, align 4
  %9 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %add.ptr2 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %9, i32 1
  %10 = bitcast %struct.fdhead* %add.ptr2 to i8*
  %11 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %flags = getelementptr inbounds %struct.fdhead, %struct.fdhead* %11, i32 0, i32 5
  %12 = load i32, i32* %flags, align 4
  %shr = lshr i32 %12, 2
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i32 %shr
  %call = call i32 @strcmp(i8* %8, i8* %add.ptr3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %13 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  store %struct.fdhead* %13, %struct.fdhead** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %15 = bitcast %struct.fdhead* %14 to i32*
  %16 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %hlen = getelementptr inbounds %struct.fdhead, %struct.fdhead* %16, i32 0, i32 4
  %17 = load i32, i32* %hlen, align 4
  %add.ptr4 = getelementptr inbounds i32, i32* %15, i32 %17
  %18 = bitcast i32* %add.ptr4 to %struct.fdhead*
  store %struct.fdhead* %18, %struct.fdhead** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.fdhead* null, %struct.fdhead** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct.fdhead*, %struct.fdhead** %retval, align 4
  ret %struct.fdhead* %19
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @build_dump(i8* %nam, i8* %dump, i8** %files, i32 %ali, i32 %map, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %dump.addr = alloca i8*, align 4
  %files.addr = alloca i8**, align 4
  %ali.addr = alloca i32, align 4
  %map.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %dfd = alloca i32, align 4
  %fd = alloca i32, align 4
  %hlen = alloca i32, align 4
  %tlen = alloca i32, align 4
  %flen = alloca i32, align 4
  %ona = alloca i32, align 4
  %progs = alloca %union.linkroot*, align 4
  %file = alloca i8*, align 4
  %prog = alloca %struct.eprog*, align 4
  %wcf = alloca %struct.wcfunc*, align 4
  %st = alloca %struct.stat, align 8
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %dump, i8** %dump.addr, align 4
  store i8** %files, i8*** %files.addr, align 4
  store i32 %ali, i32* %ali.addr, align 4
  store i32 %map, i32* %map.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @noaliases, align 4
  store i32 %0, i32* %ona, align 4
  %1 = load i8*, i8** %dump.addr, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dump.addr, align 4
  %call1 = call i8* @dyncat(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %dump.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %dump.addr, align 4
  %call2 = call i32 @unlink(i8* %3)
  %4 = load i8*, i8** %dump.addr, align 4
  %call3 = call i32 (i8*, i32, ...) @open(i8* %4, i32 65, i32 292)
  store i32 %call3, i32* %dfd, align 4
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load i8*, i8** %nam.addr, align 4
  %6 = load i8*, i8** %dump.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* %6)
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call6, %union.linkroot** %progs, align 4
  %7 = load i32, i32* %ali.addr, align 4
  store i32 %7, i32* @noaliases, align 4
  store i32 12, i32* %hlen, align 4
  store i32 0, i32* %tlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %8 = load i8**, i8*** %files.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %tobool7 = icmp ne i8* %9, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %files.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %call8 = call i32 @check_cond(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %12 = load i32, i32* %flags.addr, align 4
  %and = and i32 %12, -4
  %or = or i32 %and, 1
  store i32 %or, i32* %flags.addr, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %13 = load i8**, i8*** %files.addr, align 4
  %14 = load i8*, i8** %13, align 4
  %call11 = call i32 @check_cond(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else
  %15 = load i32, i32* %flags.addr, align 4
  %and14 = and i32 %15, -4
  %or15 = or i32 %and14, 2
  store i32 %or15, i32* %flags.addr, align 4
  br label %for.inc

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %16 = load i8**, i8*** %files.addr, align 4
  %17 = load i8*, i8** %16, align 4
  %call18 = call i32 (i8*, i32, ...) @open(i8* %17, i32 0)
  store i32 %call18, i32* %fd, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %18 = load i32, i32* %fd, align 4
  %call20 = call i32 @fstat(i32 %18, %struct.stat* %st)
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 6
  %19 = load i32, i32* %st_mode, align 8
  %and23 = and i32 %19, 61440
  %cmp24 = icmp eq i32 %and23, 32768
  br i1 %cmp24, label %lor.lhs.false25, label %if.then28

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %20 = load i32, i32* %fd, align 4
  %call26 = call i32 @lseek(i32 %20, i32 0, i32 2)
  store i32 %call26, i32* %flen, align 4
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false, %if.end17
  %21 = load i32, i32* %fd, align 4
  %cmp29 = icmp sge i32 %21, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then28
  %22 = load i32, i32* %fd, align 4
  %call31 = call i32 @close(i32 %22)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then28
  %23 = load i32, i32* %dfd, align 4
  %call33 = call i32 @close(i32 %23)
  %24 = load i8*, i8** %nam.addr, align 4
  %25 = load i8**, i8*** %files.addr, align 4
  %26 = load i8*, i8** %25, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* %26)
  %27 = load i32, i32* %ona, align 4
  store i32 %27, i32* @noaliases, align 4
  %28 = load i8*, i8** %dump.addr, align 4
  %call34 = call i32 @unlink(i8* %28)
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false25
  %29 = load i32, i32* %flen, align 4
  %add = add nsw i32 %29, 1
  %call36 = call i8* @zalloc(i32 %add)
  store i8* %call36, i8** %file, align 4
  %30 = load i8*, i8** %file, align 4
  %31 = load i32, i32* %flen, align 4
  %arrayidx = getelementptr inbounds i8, i8* %30, i32 %31
  store i8 0, i8* %arrayidx, align 1
  %32 = load i32, i32* %fd, align 4
  %call37 = call i32 @lseek(i32 %32, i32 0, i32 0)
  %33 = load i32, i32* %fd, align 4
  %34 = load i8*, i8** %file, align 4
  %35 = load i32, i32* %flen, align 4
  %call38 = call i32 @read(i32 %33, i8* %34, i32 %35)
  %36 = load i32, i32* %flen, align 4
  %cmp39 = icmp ne i32 %call38, %36
  br i1 %cmp39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end35
  %37 = load i32, i32* %fd, align 4
  %call41 = call i32 @close(i32 %37)
  %38 = load i32, i32* %dfd, align 4
  %call42 = call i32 @close(i32 %38)
  %39 = load i8*, i8** %file, align 4
  %40 = load i32, i32* %flen, align 4
  call void @zfree(i8* %39, i32 %40)
  %41 = load i8*, i8** %nam.addr, align 4
  %42 = load i8**, i8*** %files.addr, align 4
  %43 = load i8*, i8** %42, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %43)
  %44 = load i32, i32* %ona, align 4
  store i32 %44, i32* @noaliases, align 4
  %45 = load i8*, i8** %dump.addr, align 4
  %call43 = call i32 @unlink(i8* %45)
  store i32 1, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end35
  %46 = load i32, i32* %fd, align 4
  %call45 = call i32 @close(i32 %46)
  %47 = load i8*, i8** %file, align 4
  %48 = load i32, i32* %flen, align 4
  %call46 = call i8* @metafy(i8* %47, i32 %48, i32 0)
  store i8* %call46, i8** %file, align 4
  %49 = load i8*, i8** %file, align 4
  %call47 = call %struct.eprog* @parse_string(i8* %49, i32 1)
  store %struct.eprog* %call47, %struct.eprog** %prog, align 4
  %tobool48 = icmp ne %struct.eprog* %call47, null
  br i1 %tobool48, label %lor.lhs.false49, label %if.then51

lor.lhs.false49:                                  ; preds = %if.end44
  %50 = load i32, i32* @errflag, align 4
  %tobool50 = icmp ne i32 %50, 0
  br i1 %tobool50, label %if.then51, label %if.end55

if.then51:                                        ; preds = %lor.lhs.false49, %if.end44
  %51 = load i32, i32* @errflag, align 4
  %and52 = and i32 %51, -2
  store i32 %and52, i32* @errflag, align 4
  %52 = load i32, i32* %dfd, align 4
  %call53 = call i32 @close(i32 %52)
  %53 = load i8*, i8** %file, align 4
  %54 = load i32, i32* %flen, align 4
  call void @zfree(i8* %53, i32 %54)
  %55 = load i8*, i8** %nam.addr, align 4
  %56 = load i8**, i8*** %files.addr, align 4
  %57 = load i8*, i8** %56, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %57)
  %58 = load i32, i32* %ona, align 4
  store i32 %58, i32* @noaliases, align 4
  %59 = load i8*, i8** %dump.addr, align 4
  %call54 = call i32 @unlink(i8* %59)
  store i32 1, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %lor.lhs.false49
  %60 = load i8*, i8** %file, align 4
  %61 = load i32, i32* %flen, align 4
  call void @zfree(i8* %60, i32 %61)
  %call56 = call i8* @zhalloc(i32 12)
  %62 = bitcast i8* %call56 to %struct.wcfunc*
  store %struct.wcfunc* %62, %struct.wcfunc** %wcf, align 4
  %63 = load i8**, i8*** %files.addr, align 4
  %64 = load i8*, i8** %63, align 4
  %65 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %name = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %65, i32 0, i32 0
  store i8* %64, i8** %name, align 4
  %66 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %67 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %prog57 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %67, i32 0, i32 1
  store %struct.eprog* %66, %struct.eprog** %prog57, align 4
  %68 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %flags58 = getelementptr inbounds %struct.eprog, %struct.eprog* %68, i32 0, i32 0
  %69 = load i32, i32* %flags58, align 4
  %and59 = and i32 %69, 8
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end55
  br label %cond.end

cond.false:                                       ; preds = %if.end55
  %70 = load i32, i32* %flags.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %70, %cond.false ]
  %71 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %flags61 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %71, i32 0, i32 2
  store i32 %cond, i32* %flags61, align 4
  %72 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %73 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %list = bitcast %union.linkroot* %73 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %74 = load %struct.linknode*, %struct.linknode** %last, align 4
  %75 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %76 = bitcast %struct.wcfunc* %75 to i8*
  %call62 = call %struct.linknode* @insertlinknode(%union.linkroot* %72, %struct.linknode* %74, i8* %76)
  %77 = load i8**, i8*** %files.addr, align 4
  %78 = load i8*, i8** %77, align 4
  %call63 = call i32 @strlen(i8* %78)
  %add64 = add i32 %call63, 4
  %div = udiv i32 %add64, 4
  store i32 %div, i32* %flen, align 4
  %79 = load i32, i32* %flen, align 4
  %add65 = add i32 6, %79
  %80 = load i32, i32* %hlen, align 4
  %add66 = add i32 %80, %add65
  store i32 %add66, i32* %hlen, align 4
  %81 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %81, i32 0, i32 1
  %82 = load i32, i32* %len, align 4
  %83 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %83, i32 0, i32 2
  %84 = load i32, i32* %npats, align 4
  %mul = mul i32 %84, 4
  %sub = sub i32 %82, %mul
  %add67 = add i32 %sub, 4
  %sub68 = sub i32 %add67, 1
  %div69 = udiv i32 %sub68, 4
  %85 = load i32, i32* %tlen, align 4
  %add70 = add i32 %85, %div69
  store i32 %add70, i32* %tlen, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then13, %if.then10
  %86 = load i8**, i8*** %files.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %incdec.ptr, i8*** %files.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load i32, i32* %ona, align 4
  store i32 %87, i32* @noaliases, align 4
  %88 = load i32, i32* %tlen, align 4
  %89 = load i32, i32* %hlen, align 4
  %add71 = add nsw i32 %88, %89
  %mul72 = mul i32 %add71, 4
  store i32 %mul72, i32* %tlen, align 4
  %90 = load i32, i32* %dfd, align 4
  %91 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %92 = load i32, i32* %map.addr, align 4
  %93 = load i32, i32* %hlen, align 4
  %94 = load i32, i32* %tlen, align 4
  call void @write_dump(i32 %90, %union.linkroot* %91, i32 %92, i32 %93, i32 %94)
  %95 = load i32, i32* %dfd, align 4
  %call73 = call i32 @close(i32 %95)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then51, %if.then40, %if.end32, %if.then4
  %96 = load i32, i32* %retval, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind
define internal i32 @build_cur_dump(i8* %nam, i8* %dump, i8** %names, i32 %match, i32 %map, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %dump.addr = alloca i8*, align 4
  %names.addr = alloca i8**, align 4
  %match.addr = alloca i32, align 4
  %map.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  %dfd = alloca i32, align 4
  %hlen = alloca i32, align 4
  %tlen = alloca i32, align 4
  %progs = alloca %union.linkroot*, align 4
  %lnames = alloca %union.linkroot*, align 4
  %shf = alloca %struct.shfunc*, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %pat = alloca i8*, align 4
  %pprog = alloca %struct.patprog*, align 4
  %i24 = alloca i32, align 4
  %hn25 = alloca %struct.hashnode*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %dump, i8** %dump.addr, align 4
  store i8** %names, i8*** %names.addr, align 4
  store i32 %match, i32* %match.addr, align 4
  store i32 %map, i32* %map.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  store %struct.shfunc* null, %struct.shfunc** %shf, align 4
  %0 = load i8*, i8** %dump.addr, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dump.addr, align 4
  %call1 = call i8* @dyncat(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %dump.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %dump.addr, align 4
  %call2 = call i32 @unlink(i8* %2)
  %3 = load i8*, i8** %dump.addr, align 4
  %call3 = call i32 (i8*, i32, ...) @open(i8* %3, i32 65, i32 292)
  store i32 %call3, i32* %dfd, align 4
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load i8*, i8** %nam.addr, align 4
  %5 = load i8*, i8** %dump.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* %5)
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call6, %union.linkroot** %progs, align 4
  %call7 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call7, %union.linkroot** %lnames, align 4
  store i32 12, i32* %hlen, align 4
  store i32 0, i32* %tlen, align 4
  %6 = load i8**, i8*** %names.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %tobool8 = icmp ne i8* %7, null
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.then9
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 0
  %10 = load i32, i32* %hsize, align 4
  %cmp10 = icmp slt i32 %8, %10
  br i1 %cmp10, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  %11 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 2
  %12 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %13 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %12, i32 %13
  %14 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %14, %struct.hashnode** %hn, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool12 = icmp ne %struct.hashnode* %15, null
  br i1 %tobool12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %16 = load i8*, i8** %nam.addr, align 4
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %18 = bitcast %struct.hashnode* %17 to %struct.shfunc*
  %19 = load %union.linkroot*, %union.linkroot** %lnames, align 4
  %20 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %21 = load i32, i32* %what.addr, align 4
  %call14 = call i32 @cur_add_func(i8* %16, %struct.shfunc* %18, %union.linkroot* %19, %union.linkroot* %20, i32* %hlen, i32* %tlen, i32 %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.body13
  %22 = load i32, i32* @errflag, align 4
  %and = and i32 %22, -2
  store i32 %and, i32* @errflag, align 4
  %23 = load i32, i32* %dfd, align 4
  %call17 = call i32 @close(i32 %23)
  %24 = load i8*, i8** %dump.addr, align 4
  %call18 = call i32 @unlink(i8* %24)
  store i32 1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %25 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %25, i32 0, i32 0
  %26 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %26, %struct.hashnode** %hn, align 4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  br label %if.end90

if.else:                                          ; preds = %if.end5
  %28 = load i32, i32* %match.addr, align 4
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.then23, label %if.else67

if.then23:                                        ; preds = %if.else
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc65, %if.then23
  %29 = load i8**, i8*** %names.addr, align 4
  %30 = load i8*, i8** %29, align 4
  %tobool27 = icmp ne i8* %30, null
  br i1 %tobool27, label %for.body28, label %for.end66

for.body28:                                       ; preds = %for.cond26
  %31 = load i8**, i8*** %names.addr, align 4
  %32 = load i8*, i8** %31, align 4
  %call29 = call i8* @dupstring(i8* %32)
  store i8* %call29, i8** %pat, align 4
  call void @tokenize(i8* %call29)
  %33 = load i8*, i8** %pat, align 4
  %call30 = call %struct.patprog* @patcompile(i8* %33, i32 64, i8** null)
  store %struct.patprog* %call30, %struct.patprog** %pprog, align 4
  %tobool31 = icmp ne %struct.patprog* %call30, null
  br i1 %tobool31, label %if.end35, label %if.then32

if.then32:                                        ; preds = %for.body28
  %34 = load i8*, i8** %nam.addr, align 4
  %35 = load i8**, i8*** %names.addr, align 4
  %36 = load i8*, i8** %35, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* %36)
  %37 = load i32, i32* %dfd, align 4
  %call33 = call i32 @close(i32 %37)
  %38 = load i8*, i8** %dump.addr, align 4
  %call34 = call i32 @unlink(i8* %38)
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %for.body28
  store i32 0, i32* %i24, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc62, %if.end35
  %39 = load i32, i32* %i24, align 4
  %40 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %hsize37 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %40, i32 0, i32 0
  %41 = load i32, i32* %hsize37, align 4
  %cmp38 = icmp slt i32 %39, %41
  br i1 %cmp38, label %for.body39, label %for.end64

for.body39:                                       ; preds = %for.cond36
  %42 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %nodes40 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 2
  %43 = load %struct.hashnode**, %struct.hashnode*** %nodes40, align 4
  %44 = load i32, i32* %i24, align 4
  %arrayidx41 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %43, i32 %44
  %45 = load %struct.hashnode*, %struct.hashnode** %arrayidx41, align 4
  store %struct.hashnode* %45, %struct.hashnode** %hn25, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc59, %for.body39
  %46 = load %struct.hashnode*, %struct.hashnode** %hn25, align 4
  %tobool43 = icmp ne %struct.hashnode* %46, null
  br i1 %tobool43, label %for.body44, label %for.end61

for.body44:                                       ; preds = %for.cond42
  %47 = load %union.linkroot*, %union.linkroot** %lnames, align 4
  %48 = load %struct.hashnode*, %struct.hashnode** %hn25, align 4
  %nam45 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %48, i32 0, i32 1
  %49 = load i8*, i8** %nam45, align 4
  %call46 = call %struct.linknode* @linknodebydatum(%union.linkroot* %47, i8* %49)
  %tobool47 = icmp ne %struct.linknode* %call46, null
  br i1 %tobool47, label %if.end58, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body44
  %50 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %51 = load %struct.hashnode*, %struct.hashnode** %hn25, align 4
  %nam48 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %51, i32 0, i32 1
  %52 = load i8*, i8** %nam48, align 4
  %call49 = call i32 @pattry(%struct.patprog* %50, i8* %52)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %land.lhs.true
  %53 = load i8*, i8** %nam.addr, align 4
  %54 = load %struct.hashnode*, %struct.hashnode** %hn25, align 4
  %55 = bitcast %struct.hashnode* %54 to %struct.shfunc*
  %56 = load %union.linkroot*, %union.linkroot** %lnames, align 4
  %57 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %58 = load i32, i32* %what.addr, align 4
  %call52 = call i32 @cur_add_func(i8* %53, %struct.shfunc* %55, %union.linkroot* %56, %union.linkroot* %57, i32* %hlen, i32* %tlen, i32 %58)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  %59 = load i32, i32* @errflag, align 4
  %and55 = and i32 %59, -2
  store i32 %and55, i32* @errflag, align 4
  %60 = load i32, i32* %dfd, align 4
  %call56 = call i32 @close(i32 %60)
  %61 = load i8*, i8** %dump.addr, align 4
  %call57 = call i32 @unlink(i8* %61)
  store i32 1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %land.lhs.true51, %land.lhs.true, %for.body44
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %62 = load %struct.hashnode*, %struct.hashnode** %hn25, align 4
  %next60 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %62, i32 0, i32 0
  %63 = load %struct.hashnode*, %struct.hashnode** %next60, align 4
  store %struct.hashnode* %63, %struct.hashnode** %hn25, align 4
  br label %for.cond42

for.end61:                                        ; preds = %for.cond42
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %64 = load i32, i32* %i24, align 4
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %i24, align 4
  br label %for.cond36

for.end64:                                        ; preds = %for.cond36
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %65 = load i8**, i8*** %names.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %incdec.ptr, i8*** %names.addr, align 4
  br label %for.cond26

for.end66:                                        ; preds = %for.cond26
  br label %if.end89

if.else67:                                        ; preds = %if.else
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc86, %if.else67
  %66 = load i8**, i8*** %names.addr, align 4
  %67 = load i8*, i8** %66, align 4
  %tobool69 = icmp ne i8* %67, null
  br i1 %tobool69, label %for.body70, label %for.end88

for.body70:                                       ; preds = %for.cond68
  %68 = load i32, i32* @errflag, align 4
  %tobool71 = icmp ne i32 %68, 0
  br i1 %tobool71, label %if.then74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body70
  %69 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %69, i32 0, i32 9
  %70 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %71 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %72 = load i8**, i8*** %names.addr, align 4
  %73 = load i8*, i8** %72, align 4
  %call72 = call %struct.hashnode* %70(%struct.hashtable* %71, i8* %73)
  %74 = bitcast %struct.hashnode* %call72 to %struct.shfunc*
  store %struct.shfunc* %74, %struct.shfunc** %shf, align 4
  %tobool73 = icmp ne %struct.shfunc* %74, null
  br i1 %tobool73, label %if.end78, label %if.then74

if.then74:                                        ; preds = %lor.lhs.false, %for.body70
  %75 = load i8*, i8** %nam.addr, align 4
  %76 = load i8**, i8*** %names.addr, align 4
  %77 = load i8*, i8** %76, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* %77)
  %78 = load i32, i32* @errflag, align 4
  %and75 = and i32 %78, -2
  store i32 %and75, i32* @errflag, align 4
  %79 = load i32, i32* %dfd, align 4
  %call76 = call i32 @close(i32 %79)
  %80 = load i8*, i8** %dump.addr, align 4
  %call77 = call i32 @unlink(i8* %80)
  store i32 1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %lor.lhs.false
  %81 = load i8*, i8** %nam.addr, align 4
  %82 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %83 = load %union.linkroot*, %union.linkroot** %lnames, align 4
  %84 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %85 = load i32, i32* %what.addr, align 4
  %call79 = call i32 @cur_add_func(i8* %81, %struct.shfunc* %82, %union.linkroot* %83, %union.linkroot* %84, i32* %hlen, i32* %tlen, i32 %85)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.end78
  %86 = load i32, i32* @errflag, align 4
  %and82 = and i32 %86, -2
  store i32 %and82, i32* @errflag, align 4
  %87 = load i32, i32* %dfd, align 4
  %call83 = call i32 @close(i32 %87)
  %88 = load i8*, i8** %dump.addr, align 4
  %call84 = call i32 @unlink(i8* %88)
  store i32 1, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end78
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %89 = load i8**, i8*** %names.addr, align 4
  %incdec.ptr87 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %incdec.ptr87, i8*** %names.addr, align 4
  br label %for.cond68

for.end88:                                        ; preds = %for.cond68
  br label %if.end89

if.end89:                                         ; preds = %for.end88, %for.end66
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %for.end21
  %90 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %list = bitcast %union.linkroot* %90 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %91 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp91 = icmp eq %struct.linknode* %91, null
  br i1 %cmp91, label %if.then92, label %if.end96

if.then92:                                        ; preds = %if.end90
  %92 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0))
  %93 = load i32, i32* @errflag, align 4
  %and93 = and i32 %93, -2
  store i32 %and93, i32* @errflag, align 4
  %94 = load i32, i32* %dfd, align 4
  %call94 = call i32 @close(i32 %94)
  %95 = load i8*, i8** %dump.addr, align 4
  %call95 = call i32 @unlink(i8* %95)
  store i32 1, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end90
  %96 = load i32, i32* %tlen, align 4
  %97 = load i32, i32* %hlen, align 4
  %add = add nsw i32 %96, %97
  %mul = mul i32 %add, 4
  store i32 %mul, i32* %tlen, align 4
  %98 = load i32, i32* %dfd, align 4
  %99 = load %union.linkroot*, %union.linkroot** %progs, align 4
  %100 = load i32, i32* %map.addr, align 4
  %101 = load i32, i32* %hlen, align 4
  %102 = load i32, i32* %tlen, align 4
  call void @write_dump(i32 %98, %union.linkroot* %99, i32 %100, i32 %101, i32 %102)
  %103 = load i32, i32* %dfd, align 4
  %call97 = call i32 @close(i32 %103)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end96, %if.then92, %if.then81, %if.then74, %if.then54, %if.then32, %if.then16, %if.then4
  %104 = load i32, i32* %retval, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind
define %struct.eprog* @try_dump_file(i8* %path, i8* %name, i8* %file, i32* %ksh, i32 %test_only) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %path.addr = alloca i8*, align 4
  %name.addr = alloca i8*, align 4
  %file.addr = alloca i8*, align 4
  %ksh.addr = alloca i32*, align 4
  %test_only.addr = alloca i32, align 4
  %prog = alloca %struct.eprog*, align 4
  %std = alloca %struct.stat, align 8
  %stc = alloca %struct.stat, align 8
  %stn = alloca %struct.stat, align 8
  %rd = alloca i32, align 4
  %rc = alloca i32, align 4
  %rn = alloca i32, align 4
  %dig = alloca i8*, align 4
  %wc = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp6 = alloca %struct.__sigset_t, align 4
  %oset41 = alloca %struct.__sigset_t, align 4
  %tmp45 = alloca %struct.__sigset_t, align 4
  %tmp47 = alloca %struct.__sigset_t, align 4
  %oset75 = alloca %struct.__sigset_t, align 4
  %tmp79 = alloca %struct.__sigset_t, align 4
  %tmp81 = alloca %struct.__sigset_t, align 4
  %oset96 = alloca %struct.__sigset_t, align 4
  %tmp100 = alloca %struct.__sigset_t, align 4
  %tmp102 = alloca %struct.__sigset_t, align 4
  store i8* %path, i8** %path.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %file, i8** %file.addr, align 4
  store i32* %ksh, i32** %ksh.addr, align 4
  store i32 %test_only, i32* %test_only.addr, align 4
  %0 = load i8*, i8** %path.addr, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %2 = load i8*, i8** %path.addr, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %4 = load i32*, i32** %ksh.addr, align 4
  %5 = load i32, i32* %test_only.addr, align 4
  %call1 = call %struct.eprog* @check_dump_file(i8* %2, %struct.stat* null, i8* %3, i32* %4, i32 %5)
  store %struct.eprog* %call1, %struct.eprog** %prog, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool2 = icmp ne i32 %dec, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body4
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
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %13
  %14 = load i32, i32* %arrayidx5, align 4
  call void @zhandler(i32 %14)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp6, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end7

do.end7:                                          ; preds = %if.end
  %15 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %15, %struct.eprog** %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %16 = load i8*, i8** %path.addr, align 4
  %call9 = call i8* @dyncat(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call9, i8** %dig, align 4
  %17 = load i8*, i8** %file.addr, align 4
  %call10 = call i8* @dyncat(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call10, i8** %wc, align 4
  %18 = load i8*, i8** %dig, align 4
  %call11 = call i32 @zwcstat(i8* %18, %struct.stat* %std)
  store i32 %call11, i32* %rd, align 4
  %19 = load i8*, i8** %wc, align 4
  %call12 = call i32 @stat(i8* %19, %struct.stat* %stc)
  store i32 %call12, i32* %rc, align 4
  %20 = load i8*, i8** %file.addr, align 4
  %call13 = call i32 @stat(i8* %20, %struct.stat* %stn)
  store i32 %call13, i32* %rn, align 4
  %21 = load i32, i32* @queueing_enabled, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* @queueing_enabled, align 4
  %22 = load i32, i32* %rd, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.end52, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %23 = load i32, i32* %rc, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %land.lhs.true20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %std, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %24 = load i32, i32* %tv_sec, align 8
  %st_mtim17 = getelementptr inbounds %struct.stat, %struct.stat* %stc, i32 0, i32 19
  %tv_sec18 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim17, i32 0, i32 0
  %25 = load i32, i32* %tv_sec18, align 8
  %cmp19 = icmp sge i32 %24, %25
  br i1 %cmp19, label %land.lhs.true20, label %if.end52

land.lhs.true20:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %26 = load i32, i32* %rn, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %land.lhs.true28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true20
  %st_mtim23 = getelementptr inbounds %struct.stat, %struct.stat* %std, i32 0, i32 19
  %tv_sec24 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim23, i32 0, i32 0
  %27 = load i32, i32* %tv_sec24, align 8
  %st_mtim25 = getelementptr inbounds %struct.stat, %struct.stat* %stn, i32 0, i32 19
  %tv_sec26 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim25, i32 0, i32 0
  %28 = load i32, i32* %tv_sec26, align 8
  %cmp27 = icmp sge i32 %27, %28
  br i1 %cmp27, label %land.lhs.true28, label %if.end52

land.lhs.true28:                                  ; preds = %lor.lhs.false22, %land.lhs.true20
  %29 = load i8*, i8** %dig, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %31 = load i32*, i32** %ksh.addr, align 4
  %32 = load i32, i32* %test_only.addr, align 4
  %call29 = call %struct.eprog* @check_dump_file(i8* %29, %struct.stat* %std, i8* %30, i32* %31, i32 %32)
  store %struct.eprog* %call29, %struct.eprog** %prog, align 4
  %tobool30 = icmp ne %struct.eprog* %call29, null
  br i1 %tobool30, label %if.then31, label %if.end52

if.then31:                                        ; preds = %land.lhs.true28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  %33 = load i32, i32* @queueing_enabled, align 4
  %dec33 = add nsw i32 %33, -1
  store i32 %dec33, i32* @queueing_enabled, align 4
  %tobool34 = icmp ne i32 %dec33, 0
  br i1 %tobool34, label %if.end50, label %if.then35

if.then35:                                        ; preds = %do.body32
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  br label %while.cond37

while.cond37:                                     ; preds = %while.body39, %do.body36
  %34 = load i32, i32* @queue_front, align 4
  %35 = load i32, i32* @queue_rear, align 4
  %cmp38 = icmp ne i32 %34, %35
  br i1 %cmp38, label %while.body39, label %while.end48

while.body39:                                     ; preds = %while.cond37
  %36 = load i32, i32* @queue_front, align 4
  %add42 = add nsw i32 %36, 1
  %rem43 = srem i32 %add42, 128
  store i32 %rem43, i32* @queue_front, align 4
  %37 = load i32, i32* @queue_front, align 4
  %arrayidx44 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %37
  call void @signal_setmask(%struct.__sigset_t* sret %tmp45, %struct.__sigset_t* byval align 4 %arrayidx44)
  %38 = bitcast %struct.__sigset_t* %oset41 to i8*
  %39 = bitcast %struct.__sigset_t* %tmp45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %39, i32 128, i32 4, i1 false)
  %40 = load i32, i32* @queue_front, align 4
  %arrayidx46 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %40
  %41 = load i32, i32* %arrayidx46, align 4
  call void @zhandler(i32 %41)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp47, %struct.__sigset_t* byval align 4 %oset41)
  br label %while.cond37

while.end48:                                      ; preds = %while.cond37
  br label %do.end49

do.end49:                                         ; preds = %while.end48
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %do.body32
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  %42 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %42, %struct.eprog** %retval, align 4
  br label %return

if.end52:                                         ; preds = %land.lhs.true28, %lor.lhs.false22, %lor.lhs.false, %if.end8
  %43 = load i32, i32* %rc, align 4
  %tobool53 = icmp ne i32 %43, 0
  br i1 %tobool53, label %if.end86, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end52
  %44 = load i32, i32* %rn, align 4
  %tobool55 = icmp ne i32 %44, 0
  br i1 %tobool55, label %land.lhs.true62, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %land.lhs.true54
  %st_mtim57 = getelementptr inbounds %struct.stat, %struct.stat* %stc, i32 0, i32 19
  %tv_sec58 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim57, i32 0, i32 0
  %45 = load i32, i32* %tv_sec58, align 8
  %st_mtim59 = getelementptr inbounds %struct.stat, %struct.stat* %stn, i32 0, i32 19
  %tv_sec60 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim59, i32 0, i32 0
  %46 = load i32, i32* %tv_sec60, align 8
  %cmp61 = icmp sge i32 %45, %46
  br i1 %cmp61, label %land.lhs.true62, label %if.end86

land.lhs.true62:                                  ; preds = %lor.lhs.false56, %land.lhs.true54
  %47 = load i8*, i8** %wc, align 4
  %48 = load i8*, i8** %name.addr, align 4
  %49 = load i32*, i32** %ksh.addr, align 4
  %50 = load i32, i32* %test_only.addr, align 4
  %call63 = call %struct.eprog* @check_dump_file(i8* %47, %struct.stat* %stc, i8* %48, i32* %49, i32 %50)
  store %struct.eprog* %call63, %struct.eprog** %prog, align 4
  %tobool64 = icmp ne %struct.eprog* %call63, null
  br i1 %tobool64, label %if.then65, label %if.end86

if.then65:                                        ; preds = %land.lhs.true62
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  %51 = load i32, i32* @queueing_enabled, align 4
  %dec67 = add nsw i32 %51, -1
  store i32 %dec67, i32* @queueing_enabled, align 4
  %tobool68 = icmp ne i32 %dec67, 0
  br i1 %tobool68, label %if.end84, label %if.then69

if.then69:                                        ; preds = %do.body66
  br label %do.body70

do.body70:                                        ; preds = %if.then69
  br label %while.cond71

while.cond71:                                     ; preds = %while.body73, %do.body70
  %52 = load i32, i32* @queue_front, align 4
  %53 = load i32, i32* @queue_rear, align 4
  %cmp72 = icmp ne i32 %52, %53
  br i1 %cmp72, label %while.body73, label %while.end82

while.body73:                                     ; preds = %while.cond71
  %54 = load i32, i32* @queue_front, align 4
  %add76 = add nsw i32 %54, 1
  %rem77 = srem i32 %add76, 128
  store i32 %rem77, i32* @queue_front, align 4
  %55 = load i32, i32* @queue_front, align 4
  %arrayidx78 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %55
  call void @signal_setmask(%struct.__sigset_t* sret %tmp79, %struct.__sigset_t* byval align 4 %arrayidx78)
  %56 = bitcast %struct.__sigset_t* %oset75 to i8*
  %57 = bitcast %struct.__sigset_t* %tmp79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %57, i32 128, i32 4, i1 false)
  %58 = load i32, i32* @queue_front, align 4
  %arrayidx80 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %58
  %59 = load i32, i32* %arrayidx80, align 4
  call void @zhandler(i32 %59)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp81, %struct.__sigset_t* byval align 4 %oset75)
  br label %while.cond71

while.end82:                                      ; preds = %while.cond71
  br label %do.end83

do.end83:                                         ; preds = %while.end82
  br label %if.end84

if.end84:                                         ; preds = %do.end83, %do.body66
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  %60 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %60, %struct.eprog** %retval, align 4
  br label %return

if.end86:                                         ; preds = %land.lhs.true62, %lor.lhs.false56, %if.end52
  br label %do.body87

do.body87:                                        ; preds = %if.end86
  %61 = load i32, i32* @queueing_enabled, align 4
  %dec88 = add nsw i32 %61, -1
  store i32 %dec88, i32* @queueing_enabled, align 4
  %tobool89 = icmp ne i32 %dec88, 0
  br i1 %tobool89, label %if.end105, label %if.then90

if.then90:                                        ; preds = %do.body87
  br label %do.body91

do.body91:                                        ; preds = %if.then90
  br label %while.cond92

while.cond92:                                     ; preds = %while.body94, %do.body91
  %62 = load i32, i32* @queue_front, align 4
  %63 = load i32, i32* @queue_rear, align 4
  %cmp93 = icmp ne i32 %62, %63
  br i1 %cmp93, label %while.body94, label %while.end103

while.body94:                                     ; preds = %while.cond92
  %64 = load i32, i32* @queue_front, align 4
  %add97 = add nsw i32 %64, 1
  %rem98 = srem i32 %add97, 128
  store i32 %rem98, i32* @queue_front, align 4
  %65 = load i32, i32* @queue_front, align 4
  %arrayidx99 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %65
  call void @signal_setmask(%struct.__sigset_t* sret %tmp100, %struct.__sigset_t* byval align 4 %arrayidx99)
  %66 = bitcast %struct.__sigset_t* %oset96 to i8*
  %67 = bitcast %struct.__sigset_t* %tmp100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 128, i32 4, i1 false)
  %68 = load i32, i32* @queue_front, align 4
  %arrayidx101 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %68
  %69 = load i32, i32* %arrayidx101, align 4
  call void @zhandler(i32 %69)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp102, %struct.__sigset_t* byval align 4 %oset96)
  br label %while.cond92

while.end103:                                     ; preds = %while.cond92
  br label %do.end104

do.end104:                                        ; preds = %while.end103
  br label %if.end105

if.end105:                                        ; preds = %do.end104, %do.body87
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %do.end106, %do.end85, %do.end51, %do.end7
  %70 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %70
}

; Function Attrs: noinline nounwind
define internal %struct.eprog* @check_dump_file(i8* %file, %struct.stat* %sbuf, i8* %name, i32* %ksh, i32 %test_only) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %file.addr = alloca i8*, align 4
  %sbuf.addr = alloca %struct.stat*, align 4
  %name.addr = alloca i8*, align 4
  %ksh.addr = alloca i32*, align 4
  %test_only.addr = alloca i32, align 4
  %isrec = alloca i32, align 4
  %d = alloca i32*, align 4
  %h = alloca %struct.fdhead*, align 4
  %f = alloca %struct.funcdump*, align 4
  %lsbuf = alloca %struct.stat, align 8
  %prog = alloca %struct.eprog*, align 4
  %pp = alloca %struct.patprog**, align 4
  %np = alloca i32, align 4
  %prog62 = alloca %struct.eprog*, align 4
  %pp63 = alloca %struct.patprog**, align 4
  %np64 = alloca i32, align 4
  %fd = alloca i32, align 4
  %po = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 4
  store %struct.stat* %sbuf, %struct.stat** %sbuf.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32* %ksh, i32** %ksh.addr, align 4
  store i32 %test_only, i32* %test_only.addr, align 4
  store i32 0, i32* %isrec, align 4
  %0 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %tobool = icmp ne %struct.stat* %0, null
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 4
  %call = call i32 @zwcstat(i8* %1, %struct.stat* %lsbuf)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store %struct.stat* %lsbuf, %struct.stat** %sbuf.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  br label %rec

rec:                                              ; preds = %if.then45, %if.end3
  store i32* null, i32** %d, align 4
  %2 = load %struct.funcdump*, %struct.funcdump** @dumps, align 4
  store %struct.funcdump* %2, %struct.funcdump** %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %rec
  %3 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %tobool4 = icmp ne %struct.funcdump* %3, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %dev = getelementptr inbounds %struct.funcdump, %struct.funcdump* %4, i32 0, i32 1
  %5 = load i32, i32* %dev, align 4
  %6 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %7 = load i32, i32* %st_dev, align 8
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %ino = getelementptr inbounds %struct.funcdump, %struct.funcdump* %8, i32 0, i32 2
  %9 = load i32, i32* %ino, align 4
  %10 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 2
  %11 = load i32, i32* %st_ino, align 8
  %cmp5 = icmp eq i32 %9, %11
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %12 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %map = getelementptr inbounds %struct.funcdump, %struct.funcdump* %12, i32 0, i32 4
  %13 = load i32*, i32** %map, align 4
  store i32* %13, i32** %d, align 4
  br label %for.end

if.end7:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %14 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %next = getelementptr inbounds %struct.funcdump, %struct.funcdump* %14, i32 0, i32 0
  %15 = load %struct.funcdump*, %struct.funcdump** %next, align 4
  store %struct.funcdump* %15, %struct.funcdump** %f, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %16 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %tobool8 = icmp ne %struct.funcdump* %16, null
  br i1 %tobool8, label %if.end14, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %for.end
  %17 = load i32, i32* %isrec, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %18 = load i8*, i8** %file.addr, align 4
  %call11 = call i32* @load_dump_header(i8* null, i8* %18, i32 0)
  store i32* %call11, i32** %d, align 4
  %tobool12 = icmp ne i32* %call11, null
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false, %for.end
  %19 = load i32*, i32** %d, align 4
  %20 = load i8*, i8** %name.addr, align 4
  %call15 = call %struct.fdhead* @dump_find_func(i32* %19, i8* %20)
  store %struct.fdhead* %call15, %struct.fdhead** %h, align 4
  %tobool16 = icmp ne %struct.fdhead* %call15, null
  br i1 %tobool16, label %if.then17, label %if.end157

if.then17:                                        ; preds = %if.end14
  %21 = load i32, i32* %test_only.addr, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  store %struct.eprog* @dummy_eprog, %struct.eprog** %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then17
  %22 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %tobool21 = icmp ne %struct.funcdump* %22, null
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %call23 = call i8* @zalloc(i32 36)
  %23 = bitcast i8* %call23 to %struct.eprog*
  store %struct.eprog* %23, %struct.eprog** %prog, align 4
  %24 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %flags = getelementptr inbounds %struct.eprog, %struct.eprog* %24, i32 0, i32 0
  store i32 4, i32* %flags, align 4
  %25 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len = getelementptr inbounds %struct.fdhead, %struct.fdhead* %25, i32 0, i32 1
  %26 = load i32, i32* %len, align 4
  %27 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len24 = getelementptr inbounds %struct.eprog, %struct.eprog* %27, i32 0, i32 1
  store i32 %26, i32* %len24, align 4
  %28 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %npats = getelementptr inbounds %struct.fdhead, %struct.fdhead* %28, i32 0, i32 2
  %29 = load i32, i32* %npats, align 4
  store i32 %29, i32* %np, align 4
  %30 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats25 = getelementptr inbounds %struct.eprog, %struct.eprog* %30, i32 0, i32 2
  store i32 %29, i32* %npats25, align 4
  %31 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %nref = getelementptr inbounds %struct.eprog, %struct.eprog* %31, i32 0, i32 3
  store i32 1, i32* %nref, align 4
  %32 = load i32, i32* %np, align 4
  %mul = mul i32 %32, 4
  %call26 = call i8* @zalloc(i32 %mul)
  %33 = bitcast i8* %call26 to %struct.patprog**
  store %struct.patprog** %33, %struct.patprog*** %pp, align 4
  %34 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %34, i32 0, i32 4
  store %struct.patprog** %33, %struct.patprog*** %pats, align 4
  %35 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %map27 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %35, i32 0, i32 4
  %36 = load i32*, i32** %map27, align 4
  %37 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %start = getelementptr inbounds %struct.fdhead, %struct.fdhead* %37, i32 0, i32 0
  %38 = load i32, i32* %start, align 4
  %add.ptr = getelementptr inbounds i32, i32* %36, i32 %38
  %39 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog28 = getelementptr inbounds %struct.eprog, %struct.eprog* %39, i32 0, i32 5
  store i32* %add.ptr, i32** %prog28, align 4
  %40 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog29 = getelementptr inbounds %struct.eprog, %struct.eprog* %40, i32 0, i32 5
  %41 = load i32*, i32** %prog29, align 4
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %strs = getelementptr inbounds %struct.fdhead, %struct.fdhead* %43, i32 0, i32 3
  %44 = load i32, i32* %strs, align 4
  %add.ptr30 = getelementptr inbounds i8, i8* %42, i32 %44
  %45 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %strs31 = getelementptr inbounds %struct.eprog, %struct.eprog* %45, i32 0, i32 6
  store i8* %add.ptr30, i8** %strs31, align 4
  %46 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %shf = getelementptr inbounds %struct.eprog, %struct.eprog* %46, i32 0, i32 7
  store %struct.shfunc* null, %struct.shfunc** %shf, align 4
  %47 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %48 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %dump = getelementptr inbounds %struct.eprog, %struct.eprog* %48, i32 0, i32 8
  store %struct.funcdump* %47, %struct.funcdump** %dump, align 4
  %49 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  call void @incrdumpcount(%struct.funcdump* %49)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then22
  %50 = load i32, i32* %np, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %np, align 4
  %tobool32 = icmp ne i32 %50, 0
  br i1 %tobool32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load %struct.patprog**, %struct.patprog*** %pp, align 4
  %incdec.ptr = getelementptr inbounds %struct.patprog*, %struct.patprog** %51, i32 1
  store %struct.patprog** %incdec.ptr, %struct.patprog*** %pp, align 4
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %51, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i32*, i32** %ksh.addr, align 4
  %tobool33 = icmp ne i32* %52, null
  br i1 %tobool33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %while.end
  %53 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %flags35 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %53, i32 0, i32 5
  %54 = load i32, i32* %flags35, align 4
  %and = and i32 %54, 1
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then34
  br label %cond.end

cond.false:                                       ; preds = %if.then34
  %55 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %flags37 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %55, i32 0, i32 5
  %56 = load i32, i32* %flags37, align 4
  %and38 = and i32 %56, 2
  %tobool39 = icmp ne i32 %and38, 0
  %cond = select i1 %tobool39, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond40 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ]
  %57 = load i32*, i32** %ksh.addr, align 4
  store i32 %cond40, i32* %57, align 4
  br label %if.end41

if.end41:                                         ; preds = %cond.end, %while.end
  %58 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %58, %struct.eprog** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end20
  %59 = load i32*, i32** %d, align 4
  %add.ptr42 = getelementptr inbounds i32, i32* %59, i32 1
  %60 = bitcast i32* %add.ptr42 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %60, i32 0
  %61 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %61 to i32
  %and43 = and i32 %conv, 1
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then45, label %if.else61

if.then45:                                        ; preds = %if.else
  %62 = load i8*, i8** %file.addr, align 4
  %63 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %64 = load i32*, i32** %d, align 4
  %add.ptr46 = getelementptr inbounds i32, i32* %64, i32 1
  %65 = bitcast i32* %add.ptr46 to i8*
  %arrayidx47 = getelementptr inbounds i8, i8* %65, i32 0
  %66 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %66 to i32
  %and49 = and i32 %conv48, 2
  %67 = load i32*, i32** %d, align 4
  %add.ptr50 = getelementptr inbounds i32, i32* %67, i32 1
  %68 = bitcast i32* %add.ptr50 to i8*
  %arrayidx51 = getelementptr inbounds i8, i8* %68, i32 1
  %69 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %69 to i32
  %70 = load i32*, i32** %d, align 4
  %add.ptr53 = getelementptr inbounds i32, i32* %70, i32 1
  %71 = bitcast i32* %add.ptr53 to i8*
  %arrayidx54 = getelementptr inbounds i8, i8* %71, i32 2
  %72 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %72 to i32
  %shl = shl i32 %conv55, 8
  %add = add i32 %conv52, %shl
  %73 = load i32*, i32** %d, align 4
  %add.ptr56 = getelementptr inbounds i32, i32* %73, i32 1
  %74 = bitcast i32* %add.ptr56 to i8*
  %arrayidx57 = getelementptr inbounds i8, i8* %74, i32 3
  %75 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %75 to i32
  %shl59 = shl i32 %conv58, 16
  %add60 = add i32 %add, %shl59
  call void @load_dump_file(i8* %62, %struct.stat* %63, i32 %and49, i32 %add60)
  store i32 1, i32* %isrec, align 4
  br label %rec

if.else61:                                        ; preds = %if.else
  %76 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %npats65 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %76, i32 0, i32 2
  %77 = load i32, i32* %npats65, align 4
  %mul66 = mul i32 %77, 4
  store i32 %mul66, i32* %po, align 4
  %78 = load i8*, i8** %file.addr, align 4
  %call67 = call i32 (i8*, i32, ...) @open(i8* %78, i32 0)
  store i32 %call67, i32* %fd, align 4
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then99, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.else61
  %79 = load i32, i32* %fd, align 4
  %80 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %start71 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %80, i32 0, i32 0
  %81 = load i32, i32* %start71, align 4
  %mul72 = mul i32 %81, 4
  %82 = load i32*, i32** %d, align 4
  %add.ptr73 = getelementptr inbounds i32, i32* %82, i32 1
  %83 = bitcast i32* %add.ptr73 to i8*
  %arrayidx74 = getelementptr inbounds i8, i8* %83, i32 0
  %84 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %84 to i32
  %and76 = and i32 %conv75, 2
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %cond.true78, label %cond.false92

cond.true78:                                      ; preds = %lor.lhs.false70
  %85 = load i32*, i32** %d, align 4
  %add.ptr79 = getelementptr inbounds i32, i32* %85, i32 1
  %86 = bitcast i32* %add.ptr79 to i8*
  %arrayidx80 = getelementptr inbounds i8, i8* %86, i32 1
  %87 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %87 to i32
  %88 = load i32*, i32** %d, align 4
  %add.ptr82 = getelementptr inbounds i32, i32* %88, i32 1
  %89 = bitcast i32* %add.ptr82 to i8*
  %arrayidx83 = getelementptr inbounds i8, i8* %89, i32 2
  %90 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %90 to i32
  %shl85 = shl i32 %conv84, 8
  %add86 = add i32 %conv81, %shl85
  %91 = load i32*, i32** %d, align 4
  %add.ptr87 = getelementptr inbounds i32, i32* %91, i32 1
  %92 = bitcast i32* %add.ptr87 to i8*
  %arrayidx88 = getelementptr inbounds i8, i8* %92, i32 3
  %93 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %93 to i32
  %shl90 = shl i32 %conv89, 16
  %add91 = add i32 %add86, %shl90
  br label %cond.end93

cond.false92:                                     ; preds = %lor.lhs.false70
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %cond.true78
  %cond94 = phi i32 [ %add91, %cond.true78 ], [ 0, %cond.false92 ]
  %add95 = add i32 %mul72, %cond94
  %call96 = call i32 @lseek(i32 %79, i32 %add95, i32 0)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end105

if.then99:                                        ; preds = %cond.end93, %if.else61
  %94 = load i32, i32* %fd, align 4
  %cmp100 = icmp sge i32 %94, 0
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then99
  %95 = load i32, i32* %fd, align 4
  %call103 = call i32 @close(i32 %95)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then99
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end105:                                        ; preds = %cond.end93
  %96 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len106 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %96, i32 0, i32 1
  %97 = load i32, i32* %len106, align 4
  %98 = load i32, i32* %po, align 4
  %add107 = add i32 %97, %98
  %call108 = call i8* @zalloc(i32 %add107)
  %99 = bitcast i8* %call108 to i32*
  store i32* %99, i32** %d, align 4
  %100 = load i32, i32* %fd, align 4
  %101 = load i32*, i32** %d, align 4
  %102 = bitcast i32* %101 to i8*
  %103 = load i32, i32* %po, align 4
  %add.ptr109 = getelementptr inbounds i8, i8* %102, i32 %103
  %104 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len110 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %104, i32 0, i32 1
  %105 = load i32, i32* %len110, align 4
  %call111 = call i32 @read(i32 %100, i8* %add.ptr109, i32 %105)
  %106 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len112 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %106, i32 0, i32 1
  %107 = load i32, i32* %len112, align 4
  %cmp113 = icmp ne i32 %call111, %107
  br i1 %cmp113, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end105
  %108 = load i32, i32* %fd, align 4
  %call116 = call i32 @close(i32 %108)
  %109 = load i32*, i32** %d, align 4
  %110 = bitcast i32* %109 to i8*
  %111 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len117 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %111, i32 0, i32 1
  %112 = load i32, i32* %len117, align 4
  call void @zfree(i8* %110, i32 %112)
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.end105
  %113 = load i32, i32* %fd, align 4
  %call119 = call i32 @close(i32 %113)
  %call120 = call i8* @zalloc(i32 36)
  %114 = bitcast i8* %call120 to %struct.eprog*
  store %struct.eprog* %114, %struct.eprog** %prog62, align 4
  %115 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %flags121 = getelementptr inbounds %struct.eprog, %struct.eprog* %115, i32 0, i32 0
  store i32 1, i32* %flags121, align 4
  %116 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %len122 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %116, i32 0, i32 1
  %117 = load i32, i32* %len122, align 4
  %118 = load i32, i32* %po, align 4
  %add123 = add i32 %117, %118
  %119 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %len124 = getelementptr inbounds %struct.eprog, %struct.eprog* %119, i32 0, i32 1
  store i32 %add123, i32* %len124, align 4
  %120 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %npats125 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %120, i32 0, i32 2
  %121 = load i32, i32* %npats125, align 4
  store i32 %121, i32* %np64, align 4
  %122 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %npats126 = getelementptr inbounds %struct.eprog, %struct.eprog* %122, i32 0, i32 2
  store i32 %121, i32* %npats126, align 4
  %123 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %nref127 = getelementptr inbounds %struct.eprog, %struct.eprog* %123, i32 0, i32 3
  store i32 1, i32* %nref127, align 4
  %124 = load i32*, i32** %d, align 4
  %125 = bitcast i32* %124 to %struct.patprog**
  store %struct.patprog** %125, %struct.patprog*** %pp63, align 4
  %126 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %pats128 = getelementptr inbounds %struct.eprog, %struct.eprog* %126, i32 0, i32 4
  store %struct.patprog** %125, %struct.patprog*** %pats128, align 4
  %127 = load i32*, i32** %d, align 4
  %128 = bitcast i32* %127 to i8*
  %129 = load i32, i32* %po, align 4
  %add.ptr129 = getelementptr inbounds i8, i8* %128, i32 %129
  %130 = bitcast i8* %add.ptr129 to i32*
  %131 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %prog130 = getelementptr inbounds %struct.eprog, %struct.eprog* %131, i32 0, i32 5
  store i32* %130, i32** %prog130, align 4
  %132 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %prog131 = getelementptr inbounds %struct.eprog, %struct.eprog* %132, i32 0, i32 5
  %133 = load i32*, i32** %prog131, align 4
  %134 = bitcast i32* %133 to i8*
  %135 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %strs132 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %135, i32 0, i32 3
  %136 = load i32, i32* %strs132, align 4
  %add.ptr133 = getelementptr inbounds i8, i8* %134, i32 %136
  %137 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %strs134 = getelementptr inbounds %struct.eprog, %struct.eprog* %137, i32 0, i32 6
  store i8* %add.ptr133, i8** %strs134, align 4
  %138 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %shf135 = getelementptr inbounds %struct.eprog, %struct.eprog* %138, i32 0, i32 7
  store %struct.shfunc* null, %struct.shfunc** %shf135, align 4
  %139 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %140 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  %dump136 = getelementptr inbounds %struct.eprog, %struct.eprog* %140, i32 0, i32 8
  store %struct.funcdump* %139, %struct.funcdump** %dump136, align 4
  br label %while.cond137

while.cond137:                                    ; preds = %while.body140, %if.end118
  %141 = load i32, i32* %np64, align 4
  %dec138 = add nsw i32 %141, -1
  store i32 %dec138, i32* %np64, align 4
  %tobool139 = icmp ne i32 %141, 0
  br i1 %tobool139, label %while.body140, label %while.end142

while.body140:                                    ; preds = %while.cond137
  %142 = load %struct.patprog**, %struct.patprog*** %pp63, align 4
  %incdec.ptr141 = getelementptr inbounds %struct.patprog*, %struct.patprog** %142, i32 1
  store %struct.patprog** %incdec.ptr141, %struct.patprog*** %pp63, align 4
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %142, align 4
  br label %while.cond137

while.end142:                                     ; preds = %while.cond137
  %143 = load i32*, i32** %ksh.addr, align 4
  %tobool143 = icmp ne i32* %143, null
  br i1 %tobool143, label %if.then144, label %if.end156

if.then144:                                       ; preds = %while.end142
  %144 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %flags145 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %144, i32 0, i32 5
  %145 = load i32, i32* %flags145, align 4
  %and146 = and i32 %145, 1
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %if.then144
  br label %cond.end154

cond.false149:                                    ; preds = %if.then144
  %146 = load %struct.fdhead*, %struct.fdhead** %h, align 4
  %flags150 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %146, i32 0, i32 5
  %147 = load i32, i32* %flags150, align 4
  %and151 = and i32 %147, 2
  %tobool152 = icmp ne i32 %and151, 0
  %cond153 = select i1 %tobool152, i32 0, i32 1
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false149, %cond.true148
  %cond155 = phi i32 [ 2, %cond.true148 ], [ %cond153, %cond.false149 ]
  %148 = load i32*, i32** %ksh.addr, align 4
  store i32 %cond155, i32* %148, align 4
  br label %if.end156

if.end156:                                        ; preds = %cond.end154, %while.end142
  %149 = load %struct.eprog*, %struct.eprog** %prog62, align 4
  store %struct.eprog* %149, %struct.eprog** %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.end14
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %if.end157, %if.end156, %if.then115, %if.end104, %if.end41, %if.then19, %if.then13, %if.then2
  %150 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %150
}

; Function Attrs: noinline nounwind
define internal i32 @zwcstat(i8* %filename, %struct.stat* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %f = alloca %struct.funcdump*, align 4
  store i8* %filename, i8** %filename.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 4
  %1 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %call = call i32 @stat(i8* %0, %struct.stat* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.funcdump*, %struct.funcdump** @dumps, align 4
  store %struct.funcdump* %2, %struct.funcdump** %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %tobool1 = icmp ne %struct.funcdump* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %filename.addr, align 4
  %5 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %filename2 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %5, i32 0, i32 8
  %6 = load i8*, i8** %filename2, align 4
  %7 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %filename3 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %7, i32 0, i32 8
  %8 = load i8*, i8** %filename3, align 4
  %call4 = call i32 @strlen(i8* %8)
  %call5 = call i32 @strncmp(i8* %4, i8* %6, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %fd = getelementptr inbounds %struct.funcdump, %struct.funcdump* %9, i32 0, i32 3
  %10 = load i32, i32* %fd, align 4
  %11 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %call7 = call i32 @fstat(i32 %10, %struct.stat* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.funcdump*, %struct.funcdump** %f, align 4
  %next = getelementptr inbounds %struct.funcdump, %struct.funcdump* %12, i32 0, i32 0
  %13 = load %struct.funcdump*, %struct.funcdump** %next, align 4
  store %struct.funcdump* %13, %struct.funcdump** %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %for.end, %if.then9
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: noinline nounwind
define %struct.eprog* @try_source_file(i8* %file) #0 {
entry:
  %retval = alloca %struct.eprog*, align 4
  %file.addr = alloca i8*, align 4
  %prog = alloca %struct.eprog*, align 4
  %stc = alloca %struct.stat, align 8
  %stn = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  %rn = alloca i32, align 4
  %wc = alloca i8*, align 4
  %tail = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp9 = alloca %struct.__sigset_t, align 4
  %oset35 = alloca %struct.__sigset_t, align 4
  %tmp39 = alloca %struct.__sigset_t, align 4
  %tmp41 = alloca %struct.__sigset_t, align 4
  %oset56 = alloca %struct.__sigset_t, align 4
  %tmp60 = alloca %struct.__sigset_t, align 4
  %tmp62 = alloca %struct.__sigset_t, align 4
  store i8* %file, i8** %file.addr, align 4
  %0 = load i8*, i8** %file.addr, align 4
  %call = call i8* @strrchr(i8* %0, i32 47)
  store i8* %call, i8** %tail, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tail, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %tail, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %file.addr, align 4
  store i8* %2, i8** %tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %file.addr, align 4
  %call1 = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %5 = load i8*, i8** %file.addr, align 4
  %6 = load i8*, i8** %tail, align 4
  %call4 = call %struct.eprog* @check_dump_file(i8* %5, %struct.stat* null, i8* %6, i32* null, i32 0)
  store %struct.eprog* %call4, %struct.eprog** %prog, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3
  %7 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool5 = icmp ne i32 %dec, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body7
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
  %arrayidx8 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %14
  %15 = load i32, i32* %arrayidx8, align 4
  call void @zhandler(i32 %15)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp9, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  %16 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %16, %struct.eprog** %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %17 = load i8*, i8** %file.addr, align 4
  %call13 = call i8* @dyncat(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call13, i8** %wc, align 4
  %18 = load i8*, i8** %wc, align 4
  %call14 = call i32 @stat(i8* %18, %struct.stat* %stc)
  store i32 %call14, i32* %rc, align 4
  %19 = load i8*, i8** %file.addr, align 4
  %call15 = call i32 @stat(i8* %19, %struct.stat* %stn)
  store i32 %call15, i32* %rn, align 4
  %20 = load i32, i32* @queueing_enabled, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* @queueing_enabled, align 4
  %21 = load i32, i32* %rc, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %22 = load i32, i32* %rn, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %land.lhs.true22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %stc, i32 0, i32 19
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %23 = load i32, i32* %tv_sec, align 8
  %st_mtim19 = getelementptr inbounds %struct.stat, %struct.stat* %stn, i32 0, i32 19
  %tv_sec20 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim19, i32 0, i32 0
  %24 = load i32, i32* %tv_sec20, align 8
  %cmp21 = icmp sge i32 %23, %24
  br i1 %cmp21, label %land.lhs.true22, label %if.end46

land.lhs.true22:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %25 = load i8*, i8** %wc, align 4
  %26 = load i8*, i8** %tail, align 4
  %call23 = call %struct.eprog* @check_dump_file(i8* %25, %struct.stat* %stc, i8* %26, i32* null, i32 0)
  store %struct.eprog* %call23, %struct.eprog** %prog, align 4
  %tobool24 = icmp ne %struct.eprog* %call23, null
  br i1 %tobool24, label %if.then25, label %if.end46

if.then25:                                        ; preds = %land.lhs.true22
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %27 = load i32, i32* @queueing_enabled, align 4
  %dec27 = add nsw i32 %27, -1
  store i32 %dec27, i32* @queueing_enabled, align 4
  %tobool28 = icmp ne i32 %dec27, 0
  br i1 %tobool28, label %if.end44, label %if.then29

if.then29:                                        ; preds = %do.body26
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  br label %while.cond31

while.cond31:                                     ; preds = %while.body33, %do.body30
  %28 = load i32, i32* @queue_front, align 4
  %29 = load i32, i32* @queue_rear, align 4
  %cmp32 = icmp ne i32 %28, %29
  br i1 %cmp32, label %while.body33, label %while.end42

while.body33:                                     ; preds = %while.cond31
  %30 = load i32, i32* @queue_front, align 4
  %add36 = add nsw i32 %30, 1
  %rem37 = srem i32 %add36, 128
  store i32 %rem37, i32* @queue_front, align 4
  %31 = load i32, i32* @queue_front, align 4
  %arrayidx38 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %31
  call void @signal_setmask(%struct.__sigset_t* sret %tmp39, %struct.__sigset_t* byval align 4 %arrayidx38)
  %32 = bitcast %struct.__sigset_t* %oset35 to i8*
  %33 = bitcast %struct.__sigset_t* %tmp39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 128, i32 4, i1 false)
  %34 = load i32, i32* @queue_front, align 4
  %arrayidx40 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %34
  %35 = load i32, i32* %arrayidx40, align 4
  call void @zhandler(i32 %35)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp41, %struct.__sigset_t* byval align 4 %oset35)
  br label %while.cond31

while.end42:                                      ; preds = %while.cond31
  br label %do.end43

do.end43:                                         ; preds = %while.end42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.body26
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %36 = load %struct.eprog*, %struct.eprog** %prog, align 4
  store %struct.eprog* %36, %struct.eprog** %retval, align 4
  br label %return

if.end46:                                         ; preds = %land.lhs.true22, %lor.lhs.false, %if.end12
  br label %do.body47

do.body47:                                        ; preds = %if.end46
  %37 = load i32, i32* @queueing_enabled, align 4
  %dec48 = add nsw i32 %37, -1
  store i32 %dec48, i32* @queueing_enabled, align 4
  %tobool49 = icmp ne i32 %dec48, 0
  br i1 %tobool49, label %if.end65, label %if.then50

if.then50:                                        ; preds = %do.body47
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  br label %while.cond52

while.cond52:                                     ; preds = %while.body54, %do.body51
  %38 = load i32, i32* @queue_front, align 4
  %39 = load i32, i32* @queue_rear, align 4
  %cmp53 = icmp ne i32 %38, %39
  br i1 %cmp53, label %while.body54, label %while.end63

while.body54:                                     ; preds = %while.cond52
  %40 = load i32, i32* @queue_front, align 4
  %add57 = add nsw i32 %40, 1
  %rem58 = srem i32 %add57, 128
  store i32 %rem58, i32* @queue_front, align 4
  %41 = load i32, i32* @queue_front, align 4
  %arrayidx59 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %41
  call void @signal_setmask(%struct.__sigset_t* sret %tmp60, %struct.__sigset_t* byval align 4 %arrayidx59)
  %42 = bitcast %struct.__sigset_t* %oset56 to i8*
  %43 = bitcast %struct.__sigset_t* %tmp60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 128, i32 4, i1 false)
  %44 = load i32, i32* @queue_front, align 4
  %arrayidx61 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %44
  %45 = load i32, i32* %arrayidx61, align 4
  call void @zhandler(i32 %45)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp62, %struct.__sigset_t* byval align 4 %oset56)
  br label %while.cond52

while.end63:                                      ; preds = %while.cond52
  br label %do.end64

do.end64:                                         ; preds = %while.end63
  br label %if.end65

if.end65:                                         ; preds = %do.end64, %do.body47
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  store %struct.eprog* null, %struct.eprog** %retval, align 4
  br label %return

return:                                           ; preds = %do.end66, %do.end45, %do.end11
  %46 = load %struct.eprog*, %struct.eprog** %retval, align 4
  ret %struct.eprog* %46
}

declare i8* @strrchr(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @incrdumpcount(%struct.funcdump* %f) #0 {
entry:
  %f.addr = alloca %struct.funcdump*, align 4
  store %struct.funcdump* %f, %struct.funcdump** %f.addr, align 4
  %0 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %count = getelementptr inbounds %struct.funcdump, %struct.funcdump* %0, i32 0, i32 7
  %1 = load i32, i32* %count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %count, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @freedump(%struct.funcdump* %f) #0 {
entry:
  %f.addr = alloca %struct.funcdump*, align 4
  store %struct.funcdump* %f, %struct.funcdump** %f.addr, align 4
  %0 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %addr = getelementptr inbounds %struct.funcdump, %struct.funcdump* %0, i32 0, i32 5
  %1 = load i32*, i32** %addr, align 4
  %2 = bitcast i32* %1 to i8*
  %3 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %len = getelementptr inbounds %struct.funcdump, %struct.funcdump* %3, i32 0, i32 6
  %4 = load i32, i32* %len, align 4
  %call = call i32 @munmap(i8* %2, i32 %4)
  %5 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %fd = getelementptr inbounds %struct.funcdump, %struct.funcdump* %5, i32 0, i32 3
  %6 = load i32, i32* %fd, align 4
  %call1 = call i32 @zclose(i32 %6)
  %7 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %filename = getelementptr inbounds %struct.funcdump, %struct.funcdump* %7, i32 0, i32 8
  %8 = load i8*, i8** %filename, align 4
  call void @zsfree(i8* %8)
  %9 = load %struct.funcdump*, %struct.funcdump** %f.addr, align 4
  %10 = bitcast %struct.funcdump* %9 to i8*
  call void @zfree(i8* %10, i32 36)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @dump_autoload(i8* %nam, i8* %file, i32 %on, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %file.addr = alloca i8*, align 4
  %on.addr = alloca i32, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %h = alloca i32*, align 4
  %n = alloca %struct.fdhead*, align 4
  %e = alloca %struct.fdhead*, align 4
  %shf = alloca %struct.shfunc*, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %file, i8** %file.addr, align 4
  store i32 %on, i32* %on.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %file.addr, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 4
  %call1 = call i8* @dyncat(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call1, i8** %file.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %nam.addr, align 4
  %3 = load i8*, i8** %file.addr, align 4
  %call2 = call i32* @load_dump_header(i8* %2, i8* %3, i32 1)
  store i32* %call2, i32** %h, align 4
  %tobool3 = icmp ne i32* %call2, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i32*, i32** %h, align 4
  %add.ptr = getelementptr inbounds i32, i32* %4, i32 12
  %5 = bitcast i32* %add.ptr to %struct.fdhead*
  store %struct.fdhead* %5, %struct.fdhead** %n, align 4
  %6 = load i32*, i32** %h, align 4
  %7 = load i32*, i32** %h, align 4
  %arrayidx = getelementptr inbounds i32, i32* %7, i32 12
  %8 = load i32, i32* %arrayidx, align 4
  %add.ptr6 = getelementptr inbounds i32, i32* %6, i32 %8
  %9 = bitcast i32* %add.ptr6 to %struct.fdhead*
  store %struct.fdhead* %9, %struct.fdhead** %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %11 = load %struct.fdhead*, %struct.fdhead** %e, align 4
  %cmp = icmp ult %struct.fdhead* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call i8* @zshcalloc(i32 32)
  %12 = bitcast i8* %call7 to %struct.shfunc*
  store %struct.shfunc* %12, %struct.shfunc** %shf, align 4
  %13 = load i32, i32* %on.addr, align 4
  %14 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 %13, i32* %flags, align 4
  %15 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %call8 = call %struct.eprog* @mkautofn(%struct.shfunc* %15)
  %16 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %16, i32 0, i32 3
  store %struct.eprog* %call8, %struct.eprog** %funcdef, align 4
  %17 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky = getelementptr inbounds %struct.shfunc, %struct.shfunc* %17, i32 0, i32 5
  store %struct.emulation_options* null, %struct.emulation_options** %sticky, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 8
  %19 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %20 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %21 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %add.ptr9 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %21, i32 1
  %22 = bitcast %struct.fdhead* %add.ptr9 to i8*
  %23 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %flags10 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %23, i32 0, i32 5
  %24 = load i32, i32* %flags10, align 4
  %shr = lshr i32 %24, 2
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i32 %shr
  %call12 = call i8* @ztrdup(i8* %add.ptr11)
  %25 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %26 = bitcast %struct.shfunc* %25 to i8*
  call void %19(%struct.hashtable* %20, i8* %call12, i8* %26)
  %27 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 88
  %28 = load i8, i8* %arrayidx13, align 4
  %conv = zext i8 %28 to i32
  %cmp14 = icmp ne i32 %conv, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %29 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %30 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node16 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %30, i32 0, i32 0
  %nam17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 1
  %31 = load i8*, i8** %nam17, align 4
  %32 = load %struct.options*, %struct.options** %ops.addr, align 4
  %33 = load i32, i32* %func.addr, align 4
  %call18 = call i32 @eval_autoload(%struct.shfunc* %29, i8* %31, %struct.options* %32, i32 %33)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  store i32 1, i32* %ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %34 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %35 = bitcast %struct.fdhead* %34 to i32*
  %36 = load %struct.fdhead*, %struct.fdhead** %n, align 4
  %hlen = getelementptr inbounds %struct.fdhead, %struct.fdhead* %36, i32 0, i32 4
  %37 = load i32, i32* %hlen, align 4
  %add.ptr22 = getelementptr inbounds i32, i32* %35, i32 %37
  %38 = bitcast i32* %add.ptr22 to %struct.fdhead*
  store %struct.fdhead* %38, %struct.fdhead** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare %struct.eprog* @mkautofn(%struct.shfunc*) #1

declare i8* @ztrdup(i8*) #1

declare i32 @eval_autoload(%struct.shfunc*, i8*, %struct.options*, i32) #1

; Function Attrs: noinline nounwind
define internal void @copy_ecstr(%struct.eccstr* %s, i8* %p) #0 {
entry:
  %s.addr = alloca %struct.eccstr*, align 4
  %p.addr = alloca i8*, align 4
  store %struct.eccstr* %s, %struct.eccstr** %s.addr, align 4
  store i8* %p, i8** %p.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %tobool = icmp ne %struct.eccstr* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p.addr, align 4
  %2 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %aoffs = getelementptr inbounds %struct.eccstr, %struct.eccstr* %2, i32 0, i32 4
  %3 = load i32, i32* %aoffs, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %3
  %4 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %str = getelementptr inbounds %struct.eccstr, %struct.eccstr* %4, i32 0, i32 2
  %5 = load i8*, i8** %str, align 4
  %6 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %str1 = getelementptr inbounds %struct.eccstr, %struct.eccstr* %6, i32 0, i32 2
  %7 = load i8*, i8** %str1, align 4
  %call = call i32 @strlen(i8* %7)
  %add = add i32 %call, 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %5, i32 %add, i32 1, i1 false)
  %8 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %left = getelementptr inbounds %struct.eccstr, %struct.eccstr* %8, i32 0, i32 0
  %9 = load %struct.eccstr*, %struct.eccstr** %left, align 4
  %10 = load i8*, i8** %p.addr, align 4
  call void @copy_ecstr(%struct.eccstr* %9, i8* %10)
  %11 = load %struct.eccstr*, %struct.eccstr** %s.addr, align 4
  %right = getelementptr inbounds %struct.eccstr, %struct.eccstr* %11, i32 0, i32 1
  %12 = load %struct.eccstr*, %struct.eccstr** %right, align 4
  store %struct.eccstr* %12, %struct.eccstr** %s.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @strlen(i8*) #1

declare i8* @zrealloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @ecdel(i32 %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  %1 = load i32, i32* %p.addr, align 4
  %sub = sub nsw i32 %0, %1
  %sub1 = sub nsw i32 %sub, 1
  store i32 %sub1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** @ecbuf, align 4
  %4 = load i32, i32* %p.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %3, i32 %4
  %5 = bitcast i32* %add.ptr to i8*
  %6 = load i32*, i32** @ecbuf, align 4
  %7 = load i32, i32* %p.addr, align 4
  %add.ptr2 = getelementptr inbounds i32, i32* %6, i32 %7
  %add.ptr3 = getelementptr inbounds i32, i32* %add.ptr2, i32 1
  %8 = bitcast i32* %add.ptr3 to i8*
  %9 = load i32, i32* %n, align 4
  %mul = mul i32 %9, 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %5, i8* %8, i32 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @ecused, align 4
  %11 = load i32, i32* %p.addr, align 4
  call void @ecadjusthere(i32 %11, i32 -1)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal void @ecadjusthere(i32 %p, i32 %d) #0 {
entry:
  %p.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %h = alloca %struct.heredocs*, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  store %struct.heredocs* %0, %struct.heredocs** %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.heredocs*, %struct.heredocs** %h, align 4
  %tobool = icmp ne %struct.heredocs* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.heredocs*, %struct.heredocs** %h, align 4
  %pc = getelementptr inbounds %struct.heredocs, %struct.heredocs* %2, i32 0, i32 2
  %3 = load i32, i32* %pc, align 4
  %4 = load i32, i32* %p.addr, align 4
  %cmp = icmp sge i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %d.addr, align 4
  %6 = load %struct.heredocs*, %struct.heredocs** %h, align 4
  %pc1 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %6, i32 0, i32 2
  %7 = load i32, i32* %pc1, align 4
  %add = add nsw i32 %7, %5
  store i32 %add, i32* %pc1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.heredocs*, %struct.heredocs** %h, align 4
  %next = getelementptr inbounds %struct.heredocs, %struct.heredocs* %8, i32 0, i32 0
  %9 = load %struct.heredocs*, %struct.heredocs** %next, align 4
  store %struct.heredocs* %9, %struct.heredocs** %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @par_sublist2(i32* %cmplx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmplx.addr = alloca i32*, align 4
  %f = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 0, i32* %f, align 4
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 44
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* %f, align 4
  %or = or i32 %2, 4
  store i32 %or, i32* %f, align 4
  call void @zshlex()
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @tok, align 4
  %cmp1 = icmp eq i32 %3, 39
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %4 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* %f, align 4
  %or3 = or i32 %5, 8
  store i32 %or3, i32* %f, align 4
  call void @zshlex()
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %6 = load i32*, i32** %cmplx.addr, align 4
  %call = call i32 @par_pline(i32* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %7 = load i32, i32* %f, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end4
  %8 = load i32, i32* %f, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare void @cmdpush(i32) #1

; Function Attrs: noinline nounwind
define internal void @set_sublist_code(i32 %p, i32 %type, i32 %flags, i32 %skip, i32 %cmplx) #0 {
entry:
  %p.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %cmplx.addr = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %skip, i32* %skip.addr, align 4
  store i32 %cmplx, i32* %cmplx.addr, align 4
  %0 = load i32, i32* %cmplx.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %or = or i32 %1, %2
  %3 = load i32, i32* %skip.addr, align 4
  %shl = shl i32 %3, 5
  %or1 = or i32 %or, %shl
  %shl2 = shl i32 %or1, 5
  %or3 = or i32 2, %shl2
  %4 = load i32*, i32** @ecbuf, align 4
  %5 = load i32, i32* %p.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %4, i32 %5
  store i32 %or3, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %type.addr, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %or4 = or i32 %7, 16
  %or5 = or i32 %6, %or4
  %8 = load i32, i32* %skip.addr, align 4
  %shl6 = shl i32 %8, 5
  %or7 = or i32 %or5, %shl6
  %shl8 = shl i32 %or7, 5
  %or9 = or i32 2, %shl8
  %9 = load i32*, i32** @ecbuf, align 4
  %10 = load i32, i32* %p.addr, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i32 %10
  store i32 %or9, i32* %arrayidx10, align 4
  %11 = load i32*, i32** @ecbuf, align 4
  %12 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %12, 1
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i32 %add
  %13 = load i32, i32* %arrayidx11, align 4
  %shr = lshr i32 %13, 5
  %shr12 = lshr i32 %shr, 1
  %14 = load i32*, i32** @ecbuf, align 4
  %15 = load i32, i32* %p.addr, align 4
  %add13 = add nsw i32 %15, 1
  %arrayidx14 = getelementptr inbounds i32, i32* %14, i32 %add13
  store i32 %shr12, i32* %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @cmdpop() #1

; Function Attrs: noinline nounwind
define internal i32 @par_pline(i32* %cmplx) #0 {
entry:
  %retval = alloca i32, align 4
  %cmplx.addr = alloca i32*, align 4
  %p = alloca i32, align 4
  %line = alloca i32, align 4
  %r = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @toklineno, align 4
  store i32 %0, i32* %line, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %1 = load i32*, i32** %cmplx.addr, align 4
  %call1 = call i32 @par_cmd(i32* %1, i32 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %3, 25
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %4, align 4
  call void @cmdpush(i32 13)
  call void @zshlex()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %5 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %line, align 4
  %cmp4 = icmp sge i32 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %7 = load i32, i32* %line, align 4
  %add = add nsw i32 %7, 1
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %shl = shl i32 %cond, 1
  %or = or i32 1, %shl
  %shl5 = shl i32 %or, 5
  %or6 = or i32 3, %shl5
  %8 = load i32*, i32** @ecbuf, align 4
  %9 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %8, i32 %9
  store i32 %or6, i32* %arrayidx, align 4
  %10 = load i32, i32* %p, align 4
  %add7 = add nsw i32 %10, 1
  call void @ecispace(i32 %add7, i32 1)
  %11 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %p, align 4
  %sub8 = sub nsw i32 %sub, %12
  %13 = load i32*, i32** @ecbuf, align 4
  %14 = load i32, i32* %p, align 4
  %add9 = add nsw i32 %14, 1
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i32 %add9
  store i32 %sub8, i32* %arrayidx10, align 4
  %15 = load i32*, i32** %cmplx.addr, align 4
  %call11 = call i32 @par_pline(i32* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %cond.end
  store i32 38, i32* @tok, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %cond.end
  call void @cmdpop()
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* @tok, align 4
  %cmp15 = icmp eq i32 %16, 26
  br i1 %cmp15, label %if.then16, label %if.else61

if.then16:                                        ; preds = %if.else
  %17 = load i32, i32* %p, align 4
  %add17 = add nsw i32 %17, 1
  store i32 %add17, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %18 = load i32*, i32** @ecbuf, align 4
  %19 = load i32, i32* %r, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i32 %19
  %20 = load i32, i32* %arrayidx18, align 4
  %and = and i32 %20, 31
  %cmp19 = icmp eq i32 %and, 4
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32*, i32** @ecbuf, align 4
  %22 = load i32, i32* %r, align 4
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i32 %22
  %23 = load i32, i32* %arrayidx20, align 4
  %shr = lshr i32 %23, 5
  %and21 = and i32 %shr, 32
  %tobool22 = icmp ne i32 %and21, 0
  %cond23 = select i1 %tobool22, i32 4, i32 3
  %24 = load i32*, i32** @ecbuf, align 4
  %25 = load i32, i32* %r, align 4
  %arrayidx24 = getelementptr inbounds i32, i32* %24, i32 %25
  %26 = load i32, i32* %arrayidx24, align 4
  %shr25 = lshr i32 %26, 5
  %and26 = and i32 %shr25, 64
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 2, i32 0
  %add29 = add nsw i32 %cond23, %cond28
  %27 = load i32, i32* %r, align 4
  %add30 = add nsw i32 %27, %add29
  store i32 %add30, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %r, align 4
  call void @ecispace(i32 %28, i32 3)
  %29 = load i32*, i32** @ecbuf, align 4
  %30 = load i32, i32* %r, align 4
  %arrayidx31 = getelementptr inbounds i32, i32* %29, i32 %30
  store i32 452, i32* %arrayidx31, align 4
  %31 = load i32*, i32** @ecbuf, align 4
  %32 = load i32, i32* %r, align 4
  %add32 = add nsw i32 %32, 1
  %arrayidx33 = getelementptr inbounds i32, i32* %31, i32 %add32
  store i32 2, i32* %arrayidx33, align 4
  %call34 = call i32 @ecstrcode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %33 = load i32*, i32** @ecbuf, align 4
  %34 = load i32, i32* %r, align 4
  %add35 = add nsw i32 %34, 2
  %arrayidx36 = getelementptr inbounds i32, i32* %33, i32 %add35
  store i32 %call34, i32* %arrayidx36, align 4
  %35 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %35, align 4
  call void @cmdpush(i32 14)
  call void @zshlex()
  br label %while.cond37

while.cond37:                                     ; preds = %while.body39, %for.end
  %36 = load i32, i32* @tok, align 4
  %cmp38 = icmp eq i32 %36, 1
  br i1 %cmp38, label %while.body39, label %while.end40

while.body39:                                     ; preds = %while.cond37
  call void @zshlex()
  br label %while.cond37

while.end40:                                      ; preds = %while.cond37
  %37 = load i32, i32* %line, align 4
  %cmp41 = icmp sge i32 %37, 0
  br i1 %cmp41, label %cond.true42, label %cond.false44

cond.true42:                                      ; preds = %while.end40
  %38 = load i32, i32* %line, align 4
  %add43 = add nsw i32 %38, 1
  br label %cond.end45

cond.false44:                                     ; preds = %while.end40
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true42
  %cond46 = phi i32 [ %add43, %cond.true42 ], [ 0, %cond.false44 ]
  %shl47 = shl i32 %cond46, 1
  %or48 = or i32 1, %shl47
  %shl49 = shl i32 %or48, 5
  %or50 = or i32 3, %shl49
  %39 = load i32*, i32** @ecbuf, align 4
  %40 = load i32, i32* %p, align 4
  %arrayidx51 = getelementptr inbounds i32, i32* %39, i32 %40
  store i32 %or50, i32* %arrayidx51, align 4
  %41 = load i32, i32* %p, align 4
  %add52 = add nsw i32 %41, 1
  call void @ecispace(i32 %add52, i32 1)
  %42 = load i32, i32* @ecused, align 4
  %sub53 = sub nsw i32 %42, 1
  %43 = load i32, i32* %p, align 4
  %sub54 = sub nsw i32 %sub53, %43
  %44 = load i32*, i32** @ecbuf, align 4
  %45 = load i32, i32* %p, align 4
  %add55 = add nsw i32 %45, 1
  %arrayidx56 = getelementptr inbounds i32, i32* %44, i32 %add55
  store i32 %sub54, i32* %arrayidx56, align 4
  %46 = load i32*, i32** %cmplx.addr, align 4
  %call57 = call i32 @par_pline(i32* %46)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %cond.end45
  store i32 38, i32* @tok, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %cond.end45
  call void @cmdpop()
  store i32 1, i32* %retval, align 4
  br label %return

if.else61:                                        ; preds = %if.else
  %47 = load i32, i32* %line, align 4
  %cmp62 = icmp sge i32 %47, 0
  br i1 %cmp62, label %cond.true63, label %cond.false65

cond.true63:                                      ; preds = %if.else61
  %48 = load i32, i32* %line, align 4
  %add64 = add nsw i32 %48, 1
  br label %cond.end66

cond.false65:                                     ; preds = %if.else61
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true63
  %cond67 = phi i32 [ %add64, %cond.true63 ], [ 0, %cond.false65 ]
  %shl68 = shl i32 %cond67, 1
  %or69 = or i32 0, %shl68
  %shl70 = shl i32 %or69, 5
  %or71 = or i32 3, %shl70
  %49 = load i32*, i32** @ecbuf, align 4
  %50 = load i32, i32* %p, align 4
  %arrayidx72 = getelementptr inbounds i32, i32* %49, i32 %50
  store i32 %or71, i32* %arrayidx72, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end66, %if.end60, %if.end14, %if.then
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind
define internal i32 @par_cmd(i32* %cmplx, i32 %zsh_construct) #0 {
entry:
  %retval = alloca i32, align 4
  %cmplx.addr = alloca i32*, align 4
  %zsh_construct.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %nr = alloca i32, align 4
  %sr = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 %zsh_construct, i32* %zsh_construct.addr, align 4
  store i32 0, i32* %nr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %r, align 4
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp uge i32 %1, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @tok, align 4
  %cmp1 = icmp ule i32 %2, 24
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %3, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* @tok, align 4
  %cmp2 = icmp uge i32 %4, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* @tok, align 4
  %cmp3 = icmp ule i32 %5, 24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @par_redir(i32* %r, i8* null)
  %7 = load i32, i32* %nr, align 4
  %add = add nsw i32 %7, %call
  store i32 %add, i32* %nr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  %8 = load i32, i32* @tok, align 4
  switch i32 %8, label %sw.default [
    i32 52, label %sw.bb
    i32 53, label %sw.bb4
    i32 58, label %sw.bb5
    i32 43, label %sw.bb6
    i32 55, label %sw.bb7
    i32 62, label %sw.bb8
    i32 61, label %sw.bb9
    i32 57, label %sw.bb10
    i32 6, label %sw.bb11
    i32 41, label %sw.bb12
    i32 54, label %sw.bb13
    i32 40, label %sw.bb14
    i32 28, label %sw.bb15
    i32 60, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  call void @cmdpush(i32 0)
  %9 = load i32*, i32** %cmplx.addr, align 4
  call void @par_for(i32* %9)
  call void @cmdpop()
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @cmdpush(i32 15)
  %10 = load i32*, i32** %cmplx.addr, align 4
  call void @par_for(i32* %10)
  call void @cmdpop()
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %11 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %11, align 4
  call void @cmdpush(i32 3)
  %12 = load i32*, i32** %cmplx.addr, align 4
  call void @par_for(i32* %12)
  call void @cmdpop()
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @cmdpush(i32 16)
  %13 = load i32*, i32** %cmplx.addr, align 4
  call void @par_case(i32* %13)
  call void @cmdpop()
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %14 = load i32*, i32** %cmplx.addr, align 4
  call void @par_if(i32* %14)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @cmdpush(i32 1)
  %15 = load i32*, i32** %cmplx.addr, align 4
  call void @par_while(i32* %15)
  call void @cmdpop()
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @cmdpush(i32 4)
  %16 = load i32*, i32** %cmplx.addr, align 4
  call void @par_while(i32* %16)
  call void @cmdpop()
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @cmdpush(i32 2)
  %17 = load i32*, i32** %cmplx.addr, align 4
  call void @par_repeat(i32* %17)
  call void @cmdpop()
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %18 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %18, align 4
  call void @cmdpush(i32 18)
  %19 = load i32*, i32** %cmplx.addr, align 4
  %20 = load i32, i32* %zsh_construct.addr, align 4
  call void @par_subsh(i32* %19, i32 %20)
  call void @cmdpop()
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @cmdpush(i32 19)
  %21 = load i32*, i32** %cmplx.addr, align 4
  %22 = load i32, i32* %zsh_construct.addr, align 4
  call void @par_subsh(i32* %21, i32 %22)
  call void @cmdpop()
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @cmdpush(i32 17)
  %23 = load i32*, i32** %cmplx.addr, align 4
  call void @par_funcdef(i32* %23)
  call void @cmdpop()
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @cmdpush(i32 10)
  call void @par_dinbrack()
  call void @cmdpop()
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %call16 = call i32 @ecadd(i32 19)
  %24 = load i8*, i8** @tokstr, align 4
  %call17 = call i32 @ecstrcode(i8* %24)
  %call18 = call i32 @ecadd(i32 %call17)
  call void @zshlex()
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %25 = load i32, i32* @par_cmd.inpartime, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end21, label %if.then20

if.then20:                                        ; preds = %sw.bb19
  %26 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %26, align 4
  store i32 1, i32* @par_cmd.inpartime, align 4
  call void @par_time()
  store i32 0, i32* @par_cmd.inpartime, align 4
  br label %sw.epilog

if.end21:                                         ; preds = %sw.bb19
  store i32 34, i32* @tok, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end21
  %27 = load i32*, i32** %cmplx.addr, align 4
  %28 = load i32, i32* %nr, align 4
  %call22 = call i32 @par_simple(i32* %27, i32 %28)
  store i32 %call22, i32* %sr, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %if.then24

if.then24:                                        ; preds = %sw.default
  %29 = load i32, i32* %nr, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.then24
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then24
  br label %if.end32

if.else:                                          ; preds = %sw.default
  %30 = load i32, i32* %sr, align 4
  %cmp28 = icmp sgt i32 %30, 1
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.else
  %31 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %sr, align 4
  %sub = sub nsw i32 %32, 1
  %33 = load i32, i32* %r, align 4
  %add30 = add nsw i32 %33, %sub
  store i32 %add30, i32* %r, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end27
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %if.then20, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  %34 = load i32, i32* @tok, align 4
  %cmp33 = icmp uge i32 %34, 10
  br i1 %cmp33, label %land.lhs.true34, label %if.end45

land.lhs.true34:                                  ; preds = %sw.epilog
  %35 = load i32, i32* @tok, align 4
  %cmp35 = icmp ule i32 %35, 24
  br i1 %cmp35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %land.lhs.true34
  %36 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %36, align 4
  br label %while.cond37

while.cond37:                                     ; preds = %while.body42, %if.then36
  %37 = load i32, i32* @tok, align 4
  %cmp38 = icmp uge i32 %37, 10
  br i1 %cmp38, label %land.rhs39, label %land.end41

land.rhs39:                                       ; preds = %while.cond37
  %38 = load i32, i32* @tok, align 4
  %cmp40 = icmp ule i32 %38, 24
  br label %land.end41

land.end41:                                       ; preds = %land.rhs39, %while.cond37
  %39 = phi i1 [ false, %while.cond37 ], [ %cmp40, %land.rhs39 ]
  br i1 %39, label %while.body42, label %while.end44

while.body42:                                     ; preds = %land.end41
  %call43 = call i32 @par_redir(i32* %r, i8* null)
  br label %while.cond37

while.end44:                                      ; preds = %land.end41
  br label %if.end45

if.end45:                                         ; preds = %while.end44, %land.lhs.true34, %sw.epilog
  store i32 1, i32* @incmdpos, align 4
  store i32 0, i32* @incasepat, align 4
  store i32 0, i32* @incond, align 4
  store i32 0, i32* @intypeset, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then26
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind
define internal i32 @par_redir(i32* %rp, i8* %idstring) #0 {
entry:
  %retval = alloca i32, align 4
  %rp.addr = alloca i32*, align 4
  %idstring.addr = alloca i8*, align 4
  %r = alloca i32, align 4
  %type = alloca i32, align 4
  %fd1 = alloca i32, align 4
  %oldcmdpos = alloca i32, align 4
  %oldnc = alloca i32, align 4
  %ncodes = alloca i32, align 4
  %name = alloca i8*, align 4
  %hd = alloca %struct.heredocs**, align 4
  %htype = alloca i32, align 4
  store i32* %rp, i32** %rp.addr, align 4
  store i8* %idstring, i8** %idstring.addr, align 4
  %0 = load i32*, i32** %rp.addr, align 4
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %r, align 4
  %2 = load i32, i32* @incmdpos, align 4
  store i32 %2, i32* %oldcmdpos, align 4
  store i32 0, i32* @incmdpos, align 4
  %3 = load i32, i32* @nocorrect, align 4
  store i32 %3, i32* %oldnc, align 4
  %4 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %4, 14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* @tok, align 4
  %cmp1 = icmp ne i32 %5, 15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @nocorrect, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* @tok, align 4
  %sub = sub i32 %6, 10
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* @redirtab, i32 0, i32 %sub
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %type, align 4
  %8 = load i32, i32* @tokfd, align 4
  store i32 %8, i32* %fd1, align 4
  call void @zshlex()
  %9 = load i32, i32* @tok, align 4
  %cmp2 = icmp ne i32 %9, 34
  br i1 %cmp2, label %land.lhs.true3, label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  %10 = load i32, i32* @tok, align 4
  %cmp4 = icmp ne i32 %10, 35
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true3
  store i32 38, i32* @tok, align 4
  %11 = load i32, i32* @ecused, align 4
  store i32 %11, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true3, %if.end
  %12 = load i32, i32* %oldcmdpos, align 4
  store i32 %12, i32* @incmdpos, align 4
  %13 = load i32, i32* %oldnc, align 4
  store i32 %13, i32* @nocorrect, align 4
  %14 = load i32, i32* %fd1, align 4
  %cmp7 = icmp eq i32 %14, -1
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %15 = load i32, i32* %type, align 4
  %cmp9 = icmp sge i32 %15, 8
  br i1 %cmp9, label %land.lhs.true10, label %lor.rhs

land.lhs.true10:                                  ; preds = %if.then8
  %16 = load i32, i32* %type, align 4
  %cmp11 = icmp sle i32 %16, 13
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true10, %if.then8
  %17 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %17, 16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true10
  %18 = phi i1 [ true, %land.lhs.true10 ], [ %cmp12, %lor.rhs ]
  %cond = select i1 %18, i32 0, i32 1
  store i32 %cond, i32* %fd1, align 4
  br label %if.end13

if.end13:                                         ; preds = %lor.end, %if.end6
  %19 = load i8*, i8** @tokstr, align 4
  store i8* %19, i8** %name, align 4
  %20 = load i32, i32* %type, align 4
  switch i32 %20, label %sw.epilog [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 0, label %sw.bb30
    i32 1, label %sw.bb30
    i32 9, label %sw.bb53
    i32 8, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.end13, %if.end13
  %21 = load i32, i32* %type, align 4
  store i32 %21, i32* %htype, align 4
  %22 = load i8*, i8** %idstring.addr, align 4
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb
  %23 = load i32, i32* %type, align 4
  %or = or i32 %23, 32
  store i32 %or, i32* %type, align 4
  store i32 6, i32* %ncodes, align 4
  br label %if.end15

if.else:                                          ; preds = %sw.bb
  store i32 5, i32* %ncodes, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %24 = load i32, i32* %r, align 4
  %25 = load i32, i32* %ncodes, align 4
  call void @ecispace(i32 %24, i32 %25)
  %26 = load i32, i32* %r, align 4
  %27 = load i32, i32* %ncodes, align 4
  %add = add nsw i32 %26, %27
  %28 = load i32*, i32** %rp.addr, align 4
  store i32 %add, i32* %28, align 4
  %29 = load i32, i32* %type, align 4
  %or16 = or i32 %29, 64
  %shl = shl i32 %or16, 5
  %or17 = or i32 4, %shl
  %30 = load i32*, i32** @ecbuf, align 4
  %31 = load i32, i32* %r, align 4
  %arrayidx18 = getelementptr inbounds i32, i32* %30, i32 %31
  store i32 %or17, i32* %arrayidx18, align 4
  %32 = load i32, i32* %fd1, align 4
  %33 = load i32*, i32** @ecbuf, align 4
  %34 = load i32, i32* %r, align 4
  %add19 = add nsw i32 %34, 1
  %arrayidx20 = getelementptr inbounds i32, i32* %33, i32 %add19
  store i32 %32, i32* %arrayidx20, align 4
  %35 = load i8*, i8** %idstring.addr, align 4
  %tobool21 = icmp ne i8* %35, null
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end15
  %36 = load i8*, i8** %idstring.addr, align 4
  %call = call i32 @ecstrcode(i8* %36)
  %37 = load i32*, i32** @ecbuf, align 4
  %38 = load i32, i32* %r, align 4
  %add23 = add nsw i32 %38, 5
  %arrayidx24 = getelementptr inbounds i32, i32* %37, i32 %add23
  store i32 %call, i32* %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end15
  store %struct.heredocs** @hdocs, %struct.heredocs*** %hd, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %39 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %40 = load %struct.heredocs*, %struct.heredocs** %39, align 4
  %tobool26 = icmp ne %struct.heredocs* %40, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %42 = load %struct.heredocs*, %struct.heredocs** %41, align 4
  %next = getelementptr inbounds %struct.heredocs, %struct.heredocs* %42, i32 0, i32 0
  store %struct.heredocs** %next, %struct.heredocs*** %hd, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call27 = call i8* @zalloc(i32 16)
  %43 = bitcast i8* %call27 to %struct.heredocs*
  %44 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  store %struct.heredocs* %43, %struct.heredocs** %44, align 4
  %45 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %46 = load %struct.heredocs*, %struct.heredocs** %45, align 4
  %next28 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %46, i32 0, i32 0
  store %struct.heredocs* null, %struct.heredocs** %next28, align 4
  %47 = load i32, i32* %htype, align 4
  %48 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %49 = load %struct.heredocs*, %struct.heredocs** %48, align 4
  %type29 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %49, i32 0, i32 1
  store i32 %47, i32* %type29, align 4
  %50 = load i32, i32* %r, align 4
  %51 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %52 = load %struct.heredocs*, %struct.heredocs** %51, align 4
  %pc = getelementptr inbounds %struct.heredocs, %struct.heredocs* %52, i32 0, i32 2
  store i32 %50, i32* %pc, align 4
  %53 = load i8*, i8** @tokstr, align 4
  %54 = load %struct.heredocs**, %struct.heredocs*** %hd, align 4
  %55 = load %struct.heredocs*, %struct.heredocs** %54, align 4
  %str = getelementptr inbounds %struct.heredocs, %struct.heredocs* %55, i32 0, i32 3
  store i8* %53, i8** %str, align 4
  call void @zshlex()
  %56 = load i32, i32* %ncodes, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %if.end13, %if.end13
  %57 = load i8*, i8** @tokstr, align 4
  %arrayidx31 = getelementptr inbounds i8, i8* %57, i32 0
  %58 = load i8, i8* %arrayidx31, align 1
  %conv = sext i8 %58 to i32
  %cmp32 = icmp eq i32 %conv, -106
  br i1 %cmp32, label %land.lhs.true34, label %if.else40

land.lhs.true34:                                  ; preds = %sw.bb30
  %59 = load i8*, i8** @tokstr, align 4
  %arrayidx35 = getelementptr inbounds i8, i8* %59, i32 1
  %60 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %60 to i32
  %cmp37 = icmp eq i32 %conv36, -120
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %land.lhs.true34
  store i32 17, i32* %type, align 4
  br label %if.end52

if.else40:                                        ; preds = %land.lhs.true34, %sw.bb30
  %61 = load i8*, i8** @tokstr, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %61, i32 0
  %62 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %62 to i32
  %cmp43 = icmp eq i32 %conv42, -108
  br i1 %cmp43, label %land.lhs.true45, label %if.end51

land.lhs.true45:                                  ; preds = %if.else40
  %63 = load i8*, i8** @tokstr, align 4
  %arrayidx46 = getelementptr inbounds i8, i8* %63, i32 1
  %64 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %64 to i32
  %cmp48 = icmp eq i32 %conv47, -120
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true45
  store i32 38, i32* @tok, align 4
  %65 = load i32, i32* @ecused, align 4
  store i32 %65, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %land.lhs.true45, %if.else40
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then39
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end13
  %66 = load i8*, i8** @tokstr, align 4
  %arrayidx54 = getelementptr inbounds i8, i8* %66, i32 0
  %67 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %67 to i32
  %cmp56 = icmp eq i32 %conv55, -108
  br i1 %cmp56, label %land.lhs.true58, label %if.else64

land.lhs.true58:                                  ; preds = %sw.bb53
  %68 = load i8*, i8** @tokstr, align 4
  %arrayidx59 = getelementptr inbounds i8, i8* %68, i32 1
  %69 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %69 to i32
  %cmp61 = icmp eq i32 %conv60, -120
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %land.lhs.true58
  store i32 16, i32* %type, align 4
  br label %if.end76

if.else64:                                        ; preds = %land.lhs.true58, %sw.bb53
  %70 = load i8*, i8** @tokstr, align 4
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i32 0
  %71 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %71 to i32
  %cmp67 = icmp eq i32 %conv66, -106
  br i1 %cmp67, label %land.lhs.true69, label %if.end75

land.lhs.true69:                                  ; preds = %if.else64
  %72 = load i8*, i8** @tokstr, align 4
  %arrayidx70 = getelementptr inbounds i8, i8* %72, i32 1
  %73 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %73 to i32
  %cmp72 = icmp eq i32 %conv71, -120
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %land.lhs.true69
  store i32 38, i32* @tok, align 4
  %74 = load i32, i32* @ecused, align 4
  store i32 %74, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %land.lhs.true69, %if.else64
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then63
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end13
  %75 = load i8*, i8** @tokstr, align 4
  %arrayidx78 = getelementptr inbounds i8, i8* %75, i32 0
  %76 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %76 to i32
  %cmp80 = icmp eq i32 %conv79, -108
  br i1 %cmp80, label %land.lhs.true86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb77
  %77 = load i8*, i8** @tokstr, align 4
  %arrayidx82 = getelementptr inbounds i8, i8* %77, i32 0
  %78 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %78 to i32
  %cmp84 = icmp eq i32 %conv83, -106
  br i1 %cmp84, label %land.lhs.true86, label %if.end97

land.lhs.true86:                                  ; preds = %lor.lhs.false, %sw.bb77
  %79 = load i8*, i8** @tokstr, align 4
  %arrayidx87 = getelementptr inbounds i8, i8* %79, i32 1
  %80 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %80 to i32
  %cmp89 = icmp eq i32 %conv88, -120
  br i1 %cmp89, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true86
  %81 = load i8*, i8** @tokstr, align 4
  %arrayidx92 = getelementptr inbounds i8, i8* %81, i32 0
  %82 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %82 to i32
  %cmp94 = icmp eq i32 %conv93, -108
  %cond96 = select i1 %cmp94, i32 16, i32 17
  store i32 %cond96, i32* %type, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %land.lhs.true86, %lor.lhs.false
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.end97, %if.end76, %if.end52
  call void @zshlex()
  %83 = load i8*, i8** %idstring.addr, align 4
  %tobool98 = icmp ne i8* %83, null
  br i1 %tobool98, label %if.then99, label %if.else101

if.then99:                                        ; preds = %sw.epilog
  %84 = load i32, i32* %type, align 4
  %or100 = or i32 %84, 32
  store i32 %or100, i32* %type, align 4
  store i32 4, i32* %ncodes, align 4
  br label %if.end102

if.else101:                                       ; preds = %sw.epilog
  store i32 3, i32* %ncodes, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then99
  %85 = load i32, i32* %r, align 4
  %86 = load i32, i32* %ncodes, align 4
  call void @ecispace(i32 %85, i32 %86)
  %87 = load i32, i32* %r, align 4
  %88 = load i32, i32* %ncodes, align 4
  %add103 = add nsw i32 %87, %88
  %89 = load i32*, i32** %rp.addr, align 4
  store i32 %add103, i32* %89, align 4
  %90 = load i32, i32* %type, align 4
  %shl104 = shl i32 %90, 5
  %or105 = or i32 4, %shl104
  %91 = load i32*, i32** @ecbuf, align 4
  %92 = load i32, i32* %r, align 4
  %arrayidx106 = getelementptr inbounds i32, i32* %91, i32 %92
  store i32 %or105, i32* %arrayidx106, align 4
  %93 = load i32, i32* %fd1, align 4
  %94 = load i32*, i32** @ecbuf, align 4
  %95 = load i32, i32* %r, align 4
  %add107 = add nsw i32 %95, 1
  %arrayidx108 = getelementptr inbounds i32, i32* %94, i32 %add107
  store i32 %93, i32* %arrayidx108, align 4
  %96 = load i8*, i8** %name, align 4
  %call109 = call i32 @ecstrcode(i8* %96)
  %97 = load i32*, i32** @ecbuf, align 4
  %98 = load i32, i32* %r, align 4
  %add110 = add nsw i32 %98, 2
  %arrayidx111 = getelementptr inbounds i32, i32* %97, i32 %add110
  store i32 %call109, i32* %arrayidx111, align 4
  %99 = load i8*, i8** %idstring.addr, align 4
  %tobool112 = icmp ne i8* %99, null
  br i1 %tobool112, label %if.then113, label %if.end117

if.then113:                                       ; preds = %if.end102
  %100 = load i8*, i8** %idstring.addr, align 4
  %call114 = call i32 @ecstrcode(i8* %100)
  %101 = load i32*, i32** @ecbuf, align 4
  %102 = load i32, i32* %r, align 4
  %add115 = add nsw i32 %102, 3
  %arrayidx116 = getelementptr inbounds i32, i32* %101, i32 %add115
  store i32 %call114, i32* %arrayidx116, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.end102
  %103 = load i32, i32* %ncodes, align 4
  store i32 %103, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end117, %if.then74, %if.then50, %for.end, %if.then5
  %104 = load i32, i32* %retval, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind
define internal void @par_for(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %csh = alloca i32, align 4
  %p = alloca i32, align 4
  %sel = alloca i32, align 4
  %type = alloca i32, align 4
  %np = alloca i32, align 4
  %n = alloca i32, align 4
  %posix_in = alloca i32, align 4
  %ona = alloca i32, align 4
  %onc = alloca i32, align 4
  %eu = alloca i32, align 4
  %eu111 = alloca i32, align 4
  %eu129 = alloca i32, align 4
  %eu145 = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %1, 53
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %csh, align 4
  %2 = load i32, i32* @tok, align 4
  %cmp1 = icmp eq i32 %2, 58
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* %sel, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  store i32 0, i32* @incmdpos, align 4
  %3 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %3, 52
  %cond = select i1 %cmp3, i32 2, i32 0
  store i32 %cond, i32* @infor, align 4
  call void @zshlex()
  %4 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %4, 28
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @zshlex()
  %5 = load i32, i32* @tok, align 4
  %cmp7 = icmp ne i32 %5, 28
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 38, i32* @tok, align 4
  %6 = load i32, i32* %oecused, align 4
  store i32 %6, i32* @ecused, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** @tokstr, align 4
  %call10 = call i32 @ecstrcode(i8* %7)
  %call11 = call i32 @ecadd(i32 %call10)
  call void @zshlex()
  %8 = load i32, i32* @tok, align 4
  %cmp12 = icmp ne i32 %8, 28
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 38, i32* @tok, align 4
  %9 = load i32, i32* %oecused, align 4
  store i32 %9, i32* @ecused, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %10 = load i8*, i8** @tokstr, align 4
  %call16 = call i32 @ecstrcode(i8* %10)
  %call17 = call i32 @ecadd(i32 %call16)
  call void @zshlex()
  %11 = load i32, i32* @tok, align 4
  %cmp18 = icmp ne i32 %11, 29
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  store i32 38, i32* @tok, align 4
  %12 = load i32, i32* %oecused, align 4
  store i32 %12, i32* @ecused, align 4
  br label %return

if.end21:                                         ; preds = %if.end15
  %13 = load i8*, i8** @tokstr, align 4
  %call22 = call i32 @ecstrcode(i8* %13)
  %call23 = call i32 @ecadd(i32 %call22)
  store i32 0, i32* @infor, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @zshlex()
  store i32 2, i32* %type, align 4
  br label %if.end88

if.else:                                          ; preds = %entry
  store i32 0, i32* %np, align 4
  %14 = load i32, i32* @noaliases, align 4
  store i32 %14, i32* %ona, align 4
  %15 = load i32, i32* @nocorrect, align 4
  store i32 %15, i32* %onc, align 4
  store i32 0, i32* @infor, align 4
  %16 = load i32, i32* @tok, align 4
  %cmp24 = icmp ne i32 %16, 34
  br i1 %cmp24, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load i8*, i8** @tokstr, align 4
  %call26 = call i32 @isident(i8* %17)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end28, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false, %if.else
  store i32 38, i32* @tok, align 4
  %18 = load i32, i32* %oecused, align 4
  store i32 %18, i32* @ecused, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  %19 = load i32, i32* %sel, align 4
  %tobool29 = icmp ne i32 %19, 0
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 @ecadd(i32 0)
  store i32 %call31, i32* %np, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store i32 0, i32* %n, align 4
  store i32 1, i32* @incmdpos, align 4
  store i32 1, i32* @nocorrect, align 4
  store i32 1, i32* @noaliases, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end49, %if.end32
  %20 = load i32, i32* %n, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %n, align 4
  %21 = load i8*, i8** @tokstr, align 4
  %call33 = call i32 @ecstrcode(i8* %21)
  %call34 = call i32 @ecadd(i32 %call33)
  call void @zshlex()
  %22 = load i32, i32* @tok, align 4
  %cmp35 = icmp ne i32 %22, 34
  br i1 %cmp35, label %if.then42, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %for.cond
  %23 = load i8*, i8** @tokstr, align 4
  %call38 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %lor.lhs.false40, label %if.then42

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %24 = load i32, i32* %sel, align 4
  %tobool41 = icmp ne i32 %24, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false40, %lor.lhs.false37, %for.cond
  br label %for.end

if.end43:                                         ; preds = %lor.lhs.false40
  %25 = load i8*, i8** @tokstr, align 4
  %call44 = call i32 @isident(i8* %25)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %lor.lhs.false46, label %if.then48

lor.lhs.false46:                                  ; preds = %if.end43
  %26 = load i32, i32* @errflag, align 4
  %tobool47 = icmp ne i32 %26, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false46, %if.end43
  %27 = load i32, i32* %ona, align 4
  store i32 %27, i32* @noaliases, align 4
  %28 = load i32, i32* %onc, align 4
  store i32 %28, i32* @nocorrect, align 4
  store i32 38, i32* @tok, align 4
  %29 = load i32, i32* %oecused, align 4
  store i32 %29, i32* @ecused, align 4
  br label %return

if.end49:                                         ; preds = %lor.lhs.false46
  br label %for.cond

for.end:                                          ; preds = %if.then42
  %30 = load i32, i32* %ona, align 4
  store i32 %30, i32* @noaliases, align 4
  %31 = load i32, i32* %onc, align 4
  store i32 %31, i32* @nocorrect, align 4
  %32 = load i32, i32* %sel, align 4
  %tobool50 = icmp ne i32 %32, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %for.end
  %33 = load i32, i32* %n, align 4
  %34 = load i32*, i32** @ecbuf, align 4
  %35 = load i32, i32* %np, align 4
  %arrayidx = getelementptr inbounds i32, i32* %34, i32 %35
  store i32 %33, i32* %arrayidx, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %for.end
  %36 = load i32, i32* @isnewlin, align 4
  store i32 %36, i32* %posix_in, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end52
  %37 = load i32, i32* @isnewlin, align 4
  %tobool53 = icmp ne i32 %37, 0
  br i1 %tobool53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i32, i32* @tok, align 4
  %cmp54 = icmp eq i32 %38, 34
  br i1 %cmp54, label %land.lhs.true, label %if.else68

land.lhs.true:                                    ; preds = %while.end
  %39 = load i8*, i8** @tokstr, align 4
  %call56 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else68, label %if.then58

if.then58:                                        ; preds = %land.lhs.true
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %call59 = call i32 @ecadd(i32 0)
  store i32 %call59, i32* %np, align 4
  %call60 = call i32 @par_wordlist()
  store i32 %call60, i32* %n, align 4
  %40 = load i32, i32* @tok, align 4
  %cmp61 = icmp ne i32 %40, 1
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then58
  store i32 38, i32* @tok, align 4
  %41 = load i32, i32* %oecused, align 4
  store i32 %41, i32* @ecused, align 4
  br label %return

if.end64:                                         ; preds = %if.then58
  %42 = load i32, i32* %n, align 4
  %43 = load i32*, i32** @ecbuf, align 4
  %44 = load i32, i32* %np, align 4
  %arrayidx65 = getelementptr inbounds i32, i32* %43, i32 %44
  store i32 %42, i32* %arrayidx65, align 4
  %45 = load i32, i32* %sel, align 4
  %tobool66 = icmp ne i32 %45, 0
  %cond67 = select i1 %tobool66, i32 1, i32 1
  store i32 %cond67, i32* %type, align 4
  br label %if.end87

if.else68:                                        ; preds = %land.lhs.true, %while.end
  %46 = load i32, i32* %posix_in, align 4
  %tobool69 = icmp ne i32 %46, 0
  br i1 %tobool69, label %if.else83, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.else68
  %47 = load i32, i32* @tok, align 4
  %cmp71 = icmp eq i32 %47, 6
  br i1 %cmp71, label %if.then73, label %if.else83

if.then73:                                        ; preds = %land.lhs.true70
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %call74 = call i32 @ecadd(i32 0)
  store i32 %call74, i32* %np, align 4
  %call75 = call i32 @par_nl_wordlist()
  store i32 %call75, i32* %n, align 4
  %48 = load i32, i32* @tok, align 4
  %cmp76 = icmp ne i32 %48, 7
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then73
  store i32 38, i32* @tok, align 4
  %49 = load i32, i32* %oecused, align 4
  store i32 %49, i32* @ecused, align 4
  br label %return

if.end79:                                         ; preds = %if.then73
  %50 = load i32, i32* %n, align 4
  %51 = load i32*, i32** @ecbuf, align 4
  %52 = load i32, i32* %np, align 4
  %arrayidx80 = getelementptr inbounds i32, i32* %51, i32 %52
  store i32 %50, i32* %arrayidx80, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @zshlex()
  %53 = load i32, i32* %sel, align 4
  %tobool81 = icmp ne i32 %53, 0
  %cond82 = select i1 %tobool81, i32 1, i32 1
  store i32 %cond82, i32* %type, align 4
  br label %if.end86

if.else83:                                        ; preds = %land.lhs.true70, %if.else68
  %54 = load i32, i32* %sel, align 4
  %tobool84 = icmp ne i32 %54, 0
  %cond85 = select i1 %tobool84, i32 0, i32 0
  store i32 %cond85, i32* %type, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.end79
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end64
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end21
  store i32 1, i32* @incmdpos, align 4
  br label %while.cond89

while.cond89:                                     ; preds = %while.body92, %if.end88
  %55 = load i32, i32* @tok, align 4
  %cmp90 = icmp eq i32 %55, 1
  br i1 %cmp90, label %while.body92, label %while.end93

while.body92:                                     ; preds = %while.cond89
  call void @zshlex()
  br label %while.cond89

while.end93:                                      ; preds = %while.cond89
  %56 = load i32, i32* @tok, align 4
  %cmp94 = icmp eq i32 %56, 45
  br i1 %cmp94, label %if.then96, label %if.else106

if.then96:                                        ; preds = %while.end93
  call void @zshlex()
  br label %do.body

do.body:                                          ; preds = %if.then96
  %57 = load i32, i32* @ecused, align 4
  store i32 %57, i32* %eu, align 4
  %58 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %58)
  %59 = load i32, i32* %eu, align 4
  %60 = load i32, i32* @ecused, align 4
  %cmp97 = icmp eq i32 %59, %60
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %do.body
  %call100 = call i32 @ecadd(i32 0)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end101
  %61 = load i32, i32* @tok, align 4
  %cmp102 = icmp ne i32 %61, 46
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %do.end
  store i32 38, i32* @tok, align 4
  %62 = load i32, i32* %oecused, align 4
  store i32 %62, i32* @ecused, align 4
  br label %return

if.end105:                                        ; preds = %do.end
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end155

if.else106:                                       ; preds = %while.end93
  %63 = load i32, i32* @tok, align 4
  %cmp107 = icmp eq i32 %63, 41
  br i1 %cmp107, label %if.then109, label %if.else122

if.then109:                                       ; preds = %if.else106
  call void @zshlex()
  br label %do.body110

do.body110:                                       ; preds = %if.then109
  %64 = load i32, i32* @ecused, align 4
  store i32 %64, i32* %eu111, align 4
  %65 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %65)
  %66 = load i32, i32* %eu111, align 4
  %67 = load i32, i32* @ecused, align 4
  %cmp112 = icmp eq i32 %66, %67
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %do.body110
  %call115 = call i32 @ecadd(i32 0)
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %do.body110
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  %68 = load i32, i32* @tok, align 4
  %cmp118 = icmp ne i32 %68, 42
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %do.end117
  store i32 38, i32* @tok, align 4
  %69 = load i32, i32* %oecused, align 4
  store i32 %69, i32* @ecused, align 4
  br label %return

if.end121:                                        ; preds = %do.end117
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end154

if.else122:                                       ; preds = %if.else106
  %70 = load i32, i32* %csh, align 4
  %tobool123 = icmp ne i32 %70, 0
  br i1 %tobool123, label %if.then127, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.else122
  %71 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 44), align 1
  %conv125 = sext i8 %71 to i32
  %tobool126 = icmp ne i32 %conv125, 0
  br i1 %tobool126, label %if.then127, label %if.else140

if.then127:                                       ; preds = %lor.lhs.false124, %if.else122
  br label %do.body128

do.body128:                                       ; preds = %if.then127
  %72 = load i32, i32* @ecused, align 4
  store i32 %72, i32* %eu129, align 4
  %73 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %73)
  %74 = load i32, i32* %eu129, align 4
  %75 = load i32, i32* @ecused, align 4
  %cmp130 = icmp eq i32 %74, %75
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %do.body128
  %call133 = call i32 @ecadd(i32 0)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %do.body128
  br label %do.end135

do.end135:                                        ; preds = %if.end134
  %76 = load i32, i32* @tok, align 4
  %cmp136 = icmp ne i32 %76, 49
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.end135
  store i32 38, i32* @tok, align 4
  %77 = load i32, i32* %oecused, align 4
  store i32 %77, i32* @ecused, align 4
  br label %return

if.end139:                                        ; preds = %do.end135
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end153

if.else140:                                       ; preds = %lor.lhs.false124
  %78 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %tobool141 = icmp ne i8 %78, 0
  br i1 %tobool141, label %if.else143, label %if.then142

if.then142:                                       ; preds = %if.else140
  store i32 38, i32* @tok, align 4
  %79 = load i32, i32* %oecused, align 4
  store i32 %79, i32* @ecused, align 4
  br label %return

if.else143:                                       ; preds = %if.else140
  br label %do.body144

do.body144:                                       ; preds = %if.else143
  %80 = load i32, i32* @ecused, align 4
  store i32 %80, i32* %eu145, align 4
  %81 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list1(i32* %81)
  %82 = load i32, i32* %eu145, align 4
  %83 = load i32, i32* @ecused, align 4
  %cmp146 = icmp eq i32 %82, %83
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %do.body144
  %call149 = call i32 @ecadd(i32 0)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %do.body144
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  br label %if.end152

if.end152:                                        ; preds = %do.end151
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end139
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end121
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end105
  %84 = load i32, i32* %sel, align 4
  %tobool156 = icmp ne i32 %84, 0
  br i1 %tobool156, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end155
  %85 = load i32, i32* %type, align 4
  %86 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %86, 1
  %87 = load i32, i32* %p, align 4
  %sub157 = sub nsw i32 %sub, %87
  %shl = shl i32 %sub157, 1
  %or = or i32 %85, %shl
  %shl158 = shl i32 %or, 5
  %or159 = or i32 13, %shl158
  br label %cond.end

cond.false:                                       ; preds = %if.end155
  %88 = load i32, i32* %type, align 4
  %89 = load i32, i32* @ecused, align 4
  %sub160 = sub nsw i32 %89, 1
  %90 = load i32, i32* %p, align 4
  %sub161 = sub nsw i32 %sub160, %90
  %shl162 = shl i32 %sub161, 2
  %or163 = or i32 %88, %shl162
  %shl164 = shl i32 %or163, 5
  %or165 = or i32 12, %shl164
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond166 = phi i32 [ %or159, %cond.true ], [ %or165, %cond.false ]
  %91 = load i32*, i32** @ecbuf, align 4
  %92 = load i32, i32* %p, align 4
  %arrayidx167 = getelementptr inbounds i32, i32* %91, i32 %92
  store i32 %cond166, i32* %arrayidx167, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then142, %if.then138, %if.then120, %if.then104, %if.then78, %if.then63, %if.then48, %if.then27, %if.then20, %if.then14, %if.then9
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_case(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %brflag = alloca i32, align 4
  %p = alloca i32, align 4
  %pp = alloca i32, align 4
  %palts = alloca i32, align 4
  %type = alloca i32, align 4
  %nalts = alloca i32, align 4
  %ona = alloca i32, align 4
  %onc = alloca i32, align 4
  %str = alloca i8*, align 4
  %skip_zshlex = alloca i32, align 4
  %pct = alloca i32, align 4
  %sl = alloca i32, align 4
  %s = alloca i8*, align 4
  %eu = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %1, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 38, i32* @tok, align 4
  %2 = load i32, i32* %oecused, align 4
  store i32 %2, i32* @ecused, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @tokstr, align 4
  %call1 = call i32 @ecstrcode(i8* %3)
  %call2 = call i32 @ecadd(i32 %call1)
  store i32 1, i32* @incmdpos, align 4
  %4 = load i32, i32* @noaliases, align 4
  store i32 %4, i32* %ona, align 4
  %5 = load i32, i32* @nocorrect, align 4
  store i32 %5, i32* %onc, align 4
  store i32 1, i32* @nocorrect, align 4
  store i32 1, i32* @noaliases, align 4
  call void @zshlex()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* @tok, align 4
  %cmp4 = icmp eq i32 %7, 34
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %while.end
  %8 = load i8*, i8** @tokstr, align 4
  %call5 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true6, label %if.end9

land.lhs.true6:                                   ; preds = %land.lhs.true, %while.end
  %9 = load i32, i32* @tok, align 4
  %cmp7 = icmp ne i32 %9, 41
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  %10 = load i32, i32* %ona, align 4
  store i32 %10, i32* @noaliases, align 4
  %11 = load i32, i32* %onc, align 4
  store i32 %11, i32* @nocorrect, align 4
  store i32 38, i32* @tok, align 4
  %12 = load i32, i32* %oecused, align 4
  store i32 %12, i32* @ecused, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true
  %13 = load i32, i32* @tok, align 4
  %cmp10 = icmp eq i32 %13, 41
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, i32* %brflag, align 4
  store i32 1, i32* @incasepat, align 4
  store i32 0, i32* @incmdpos, align 4
  %14 = load i32, i32* %ona, align 4
  store i32 %14, i32* @noaliases, align 4
  %15 = load i32, i32* %onc, align 4
  store i32 %15, i32* @nocorrect, align 4
  call void @zshlex()
  br label %for.cond

for.cond:                                         ; preds = %if.end191, %if.end9
  br label %while.cond11

while.cond11:                                     ; preds = %while.body14, %for.cond
  %16 = load i32, i32* @tok, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %while.body14, label %while.end15

while.body14:                                     ; preds = %while.cond11
  call void @zshlex()
  br label %while.cond11

while.end15:                                      ; preds = %while.cond11
  %17 = load i32, i32* @tok, align 4
  %cmp16 = icmp eq i32 %17, 42
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end15
  br label %for.end192

if.end19:                                         ; preds = %while.end15
  %18 = load i32, i32* @tok, align 4
  %cmp20 = icmp eq i32 %18, 6
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @zshlex()
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %19 = load i32, i32* @tok, align 4
  %cmp24 = icmp eq i32 %19, 25
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  %call27 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  store i8* %call27, i8** %str, align 4
  store i32 1, i32* %skip_zshlex, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end23
  %20 = load i32, i32* @tok, align 4
  %cmp28 = icmp ne i32 %20, 34
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  store i32 38, i32* @tok, align 4
  %21 = load i32, i32* %oecused, align 4
  store i32 %21, i32* @ecused, align 4
  br label %return

if.end31:                                         ; preds = %if.else
  %22 = load i8*, i8** @tokstr, align 4
  %call32 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end31
  br label %for.end192

if.end35:                                         ; preds = %if.end31
  %23 = load i8*, i8** @tokstr, align 4
  %call36 = call i8* @dupstring(i8* %23)
  store i8* %call36, i8** %str, align 4
  store i32 0, i32* %skip_zshlex, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then26
  store i32 1, i32* %type, align 4
  %call38 = call i32 @ecadd(i32 0)
  store i32 %call38, i32* %pp, align 4
  %call39 = call i32 @ecadd(i32 0)
  store i32 %call39, i32* %palts, align 4
  store i32 0, i32* %nalts, align 4
  store i32 -1, i32* @incasepat, align 4
  store i32 1, i32* @incmdpos, align 4
  %24 = load i32, i32* %skip_zshlex, align 4
  %tobool40 = icmp ne i32 %24, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end37
  call void @zshlex()
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  br label %for.cond43

for.cond43:                                       ; preds = %sw.epilog, %if.end42
  %25 = load i32, i32* @tok, align 4
  %cmp44 = icmp eq i32 %25, 7
  br i1 %cmp44, label %if.then46, label %if.else51

if.then46:                                        ; preds = %for.cond43
  %26 = load i8*, i8** %str, align 4
  %call47 = call i32 @ecstrcode(i8* %26)
  %call48 = call i32 @ecadd(i32 %call47)
  %27 = load i32, i32* @ecnpats, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* @ecnpats, align 4
  %call49 = call i32 @ecadd(i32 %27)
  %28 = load i32, i32* %nalts, align 4
  %inc50 = add nsw i32 %28, 1
  store i32 %inc50, i32* %nalts, align 4
  store i32 0, i32* @incasepat, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @zshlex()
  br label %for.end150

if.else51:                                        ; preds = %for.cond43
  %29 = load i32, i32* @tok, align 4
  %cmp52 = icmp eq i32 %29, 25
  br i1 %cmp52, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.else51
  %30 = load i8*, i8** %str, align 4
  %call55 = call i32 @ecstrcode(i8* %30)
  %call56 = call i32 @ecadd(i32 %call55)
  %31 = load i32, i32* @ecnpats, align 4
  %inc57 = add nsw i32 %31, 1
  store i32 %inc57, i32* @ecnpats, align 4
  %call58 = call i32 @ecadd(i32 %31)
  %32 = load i32, i32* %nalts, align 4
  %inc59 = add nsw i32 %32, 1
  store i32 %inc59, i32* %nalts, align 4
  store i32 1, i32* @incasepat, align 4
  store i32 0, i32* @incmdpos, align 4
  br label %if.end145

if.else60:                                        ; preds = %if.else51
  %33 = load i32, i32* %nalts, align 4
  %tobool61 = icmp ne i32 %33, 0
  br i1 %tobool61, label %if.end144, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.else60
  %34 = load i8*, i8** %str, align 4
  %arrayidx = getelementptr inbounds i8, i8* %34, i32 0
  %35 = load i8, i8* %arrayidx, align 1
  %conv63 = sext i8 %35 to i32
  %cmp64 = icmp eq i32 %conv63, -120
  br i1 %cmp64, label %if.then66, label %if.end144

if.then66:                                        ; preds = %land.lhs.true62
  store i32 0, i32* %pct, align 4
  %36 = load i8*, i8** %str, align 4
  store i8* %36, i8** %s, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc, %if.then66
  %37 = load i8*, i8** %s, align 4
  %38 = load i8, i8* %37, align 1
  %tobool68 = icmp ne i8 %38, 0
  br i1 %tobool68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond67
  %39 = load i8*, i8** %s, align 4
  %40 = load i8, i8* %39, align 1
  %conv69 = sext i8 %40 to i32
  %cmp70 = icmp eq i32 %conv69, -120
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %for.body
  %41 = load i32, i32* %pct, align 4
  %inc73 = add nsw i32 %41, 1
  store i32 %inc73, i32* %pct, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %for.body
  %42 = load i32, i32* %pct, align 4
  %tobool75 = icmp ne i32 %42, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  br label %for.end

if.end77:                                         ; preds = %if.end74
  %43 = load i32, i32* %pct, align 4
  %cmp78 = icmp eq i32 %43, 1
  br i1 %cmp78, label %if.then80, label %if.end121

if.then80:                                        ; preds = %if.end77
  %44 = load i8*, i8** %s, align 4
  %45 = load i8, i8* %44, align 1
  %conv81 = sext i8 %45 to i32
  %cmp82 = icmp eq i32 %conv81, -114
  br i1 %cmp82, label %if.then87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then80
  %46 = load i8*, i8** %s, align 4
  %47 = load i8, i8* %46, align 1
  %conv84 = sext i8 %47 to i32
  %cmp85 = icmp eq i32 %conv84, -120
  br i1 %cmp85, label %if.then87, label %if.end95

if.then87:                                        ; preds = %lor.lhs.false, %if.then80
  br label %while.cond88

while.cond88:                                     ; preds = %while.body93, %if.then87
  %48 = load i8*, i8** %s, align 4
  %arrayidx89 = getelementptr inbounds i8, i8* %48, i32 1
  %49 = load i8, i8* %arrayidx89, align 1
  %idxprom = zext i8 %49 to i32
  %arrayidx90 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %50 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %50 to i32
  %and = and i32 %conv91, 4
  %tobool92 = icmp ne i32 %and, 0
  br i1 %tobool92, label %while.body93, label %while.end94

while.body93:                                     ; preds = %while.cond88
  %51 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %51, i32 1
  call void @chuck(i8* %add.ptr)
  br label %while.cond88

while.end94:                                      ; preds = %while.cond88
  br label %if.end95

if.end95:                                         ; preds = %while.end94, %lor.lhs.false
  %52 = load i8*, i8** %s, align 4
  %53 = load i8, i8* %52, align 1
  %conv96 = sext i8 %53 to i32
  %cmp97 = icmp eq i32 %conv96, -114
  br i1 %cmp97, label %if.then103, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end95
  %54 = load i8*, i8** %s, align 4
  %55 = load i8, i8* %54, align 1
  %conv100 = sext i8 %55 to i32
  %cmp101 = icmp eq i32 %conv100, -118
  br i1 %cmp101, label %if.then103, label %if.end120

if.then103:                                       ; preds = %lor.lhs.false99, %if.end95
  br label %while.cond104

while.cond104:                                    ; preds = %while.body118, %if.then103
  %56 = load i8*, i8** %s, align 4
  %arrayidx105 = getelementptr inbounds i8, i8* %56, i32 -1
  %57 = load i8, i8* %arrayidx105, align 1
  %idxprom106 = zext i8 %57 to i32
  %arrayidx107 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom106
  %58 = load i16, i16* %arrayidx107, align 2
  %conv108 = sext i16 %58 to i32
  %and109 = and i32 %conv108, 4
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond104
  %59 = load i8*, i8** %s, align 4
  %60 = load i8*, i8** %str, align 4
  %add.ptr111 = getelementptr inbounds i8, i8* %60, i32 1
  %cmp112 = icmp ult i8* %59, %add.ptr111
  br i1 %cmp112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %61 = load i8*, i8** %s, align 4
  %arrayidx114 = getelementptr inbounds i8, i8* %61, i32 -2
  %62 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %62 to i32
  %cmp116 = icmp ne i32 %conv115, -125
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %63 = phi i1 [ true, %land.rhs ], [ %cmp116, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond104
  %64 = phi i1 [ false, %while.cond104 ], [ %63, %lor.end ]
  br i1 %64, label %while.body118, label %while.end119

while.body118:                                    ; preds = %land.end
  %65 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %incdec.ptr, i8** %s, align 4
  call void @chuck(i8* %incdec.ptr)
  br label %while.cond104

while.end119:                                     ; preds = %land.end
  br label %if.end120

if.end120:                                        ; preds = %while.end119, %lor.lhs.false99
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end77
  %66 = load i8*, i8** %s, align 4
  %67 = load i8, i8* %66, align 1
  %conv122 = sext i8 %67 to i32
  %cmp123 = icmp eq i32 %conv122, -118
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  %68 = load i32, i32* %pct, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %pct, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end121
  br label %for.inc

for.inc:                                          ; preds = %if.end126
  %69 = load i8*, i8** %s, align 4
  %incdec.ptr127 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr127, i8** %s, align 4
  br label %for.cond67

for.end:                                          ; preds = %if.then76, %for.cond67
  %70 = load i8*, i8** %s, align 4
  %71 = load i8, i8* %70, align 1
  %conv128 = sext i8 %71 to i32
  %tobool129 = icmp ne i32 %conv128, 0
  br i1 %tobool129, label %if.then135, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %for.end
  %72 = load i32, i32* %pct, align 4
  %tobool131 = icmp ne i32 %72, 0
  br i1 %tobool131, label %if.then135, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false130
  %73 = load i8*, i8** %s, align 4
  %74 = load i8*, i8** %str, align 4
  %cmp133 = icmp eq i8* %73, %74
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %lor.lhs.false132, %lor.lhs.false130, %for.end
  store i32 38, i32* @tok, align 4
  %75 = load i32, i32* %oecused, align 4
  store i32 %75, i32* @ecused, align 4
  br label %return

if.end136:                                        ; preds = %lor.lhs.false132
  %76 = load i8*, i8** %str, align 4
  %call137 = call i32 @strlen(i8* %76)
  store i32 %call137, i32* %sl, align 4
  %77 = load i8*, i8** %str, align 4
  %78 = load i32, i32* %sl, align 4
  %sub = sub nsw i32 %78, 1
  %arrayidx138 = getelementptr inbounds i8, i8* %77, i32 %sub
  store i8 0, i8* %arrayidx138, align 1
  %79 = load i8*, i8** %str, align 4
  call void @chuck(i8* %79)
  %80 = load i8*, i8** %str, align 4
  %call139 = call i32 @ecstrcode(i8* %80)
  %call140 = call i32 @ecadd(i32 %call139)
  %81 = load i32, i32* @ecnpats, align 4
  %inc141 = add nsw i32 %81, 1
  store i32 %inc141, i32* @ecnpats, align 4
  %call142 = call i32 @ecadd(i32 %81)
  %82 = load i32, i32* %nalts, align 4
  %inc143 = add nsw i32 %82, 1
  store i32 %inc143, i32* %nalts, align 4
  br label %for.end150

if.end144:                                        ; preds = %land.lhs.true62, %if.else60
  store i32 38, i32* @tok, align 4
  %83 = load i32, i32* %oecused, align 4
  store i32 %83, i32* @ecused, align 4
  br label %return

if.end145:                                        ; preds = %if.then54
  br label %if.end146

if.end146:                                        ; preds = %if.end145
  call void @zshlex()
  %84 = load i32, i32* @tok, align 4
  switch i32 %84, label %sw.default [
    i32 34, label %sw.bb
    i32 7, label %sw.bb148
    i32 25, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.end146
  %85 = load i8*, i8** @tokstr, align 4
  %call147 = call i8* @dupstring(i8* %85)
  store i8* %call147, i8** %str, align 4
  call void @zshlex()
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.end146, %if.end146
  %call149 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  store i8* %call149, i8** %str, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end146
  store i32 38, i32* @tok, align 4
  %86 = load i32, i32* %oecused, align 4
  store i32 %86, i32* @ecused, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb148, %sw.bb
  br label %for.cond43

for.end150:                                       ; preds = %if.end136, %if.then46
  store i32 0, i32* @incasepat, align 4
  br label %do.body

do.body:                                          ; preds = %for.end150
  %87 = load i32, i32* @ecused, align 4
  store i32 %87, i32* %eu, align 4
  %88 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %88)
  %89 = load i32, i32* %eu, align 4
  %90 = load i32, i32* @ecused, align 4
  %cmp151 = icmp eq i32 %89, %90
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %do.body
  %call154 = call i32 @ecadd(i32 0)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end155
  %91 = load i32, i32* @tok, align 4
  %cmp156 = icmp eq i32 %91, 31
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %do.end
  store i32 2, i32* %type, align 4
  br label %if.end164

if.else159:                                       ; preds = %do.end
  %92 = load i32, i32* @tok, align 4
  %cmp160 = icmp eq i32 %92, 32
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.else159
  store i32 3, i32* %type, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %if.else159
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then158
  %93 = load i32, i32* %type, align 4
  %94 = load i32, i32* @ecused, align 4
  %sub165 = sub nsw i32 %94, 1
  %95 = load i32, i32* %pp, align 4
  %sub166 = sub nsw i32 %sub165, %95
  %shl = shl i32 %sub166, 3
  %or = or i32 %93, %shl
  %shl167 = shl i32 %or, 5
  %or168 = or i32 16, %shl167
  %96 = load i32*, i32** @ecbuf, align 4
  %97 = load i32, i32* %pp, align 4
  %arrayidx169 = getelementptr inbounds i32, i32* %96, i32 %97
  store i32 %or168, i32* %arrayidx169, align 4
  %98 = load i32, i32* %nalts, align 4
  %99 = load i32*, i32** @ecbuf, align 4
  %100 = load i32, i32* %palts, align 4
  %arrayidx170 = getelementptr inbounds i32, i32* %99, i32 %100
  store i32 %98, i32* %arrayidx170, align 4
  %101 = load i32, i32* @tok, align 4
  %cmp171 = icmp eq i32 %101, 50
  br i1 %cmp171, label %land.lhs.true173, label %lor.lhs.false175

land.lhs.true173:                                 ; preds = %if.end164
  %102 = load i32, i32* %brflag, align 4
  %tobool174 = icmp ne i32 %102, 0
  br i1 %tobool174, label %lor.lhs.false175, label %if.then180

lor.lhs.false175:                                 ; preds = %land.lhs.true173, %if.end164
  %103 = load i32, i32* @tok, align 4
  %cmp176 = icmp eq i32 %103, 42
  br i1 %cmp176, label %land.lhs.true178, label %if.end181

land.lhs.true178:                                 ; preds = %lor.lhs.false175
  %104 = load i32, i32* %brflag, align 4
  %tobool179 = icmp ne i32 %104, 0
  br i1 %tobool179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %land.lhs.true178, %land.lhs.true173
  br label %for.end192

if.end181:                                        ; preds = %land.lhs.true178, %lor.lhs.false175
  %105 = load i32, i32* @tok, align 4
  %cmp182 = icmp ne i32 %105, 4
  br i1 %cmp182, label %land.lhs.true184, label %if.end191

land.lhs.true184:                                 ; preds = %if.end181
  %106 = load i32, i32* @tok, align 4
  %cmp185 = icmp ne i32 %106, 31
  br i1 %cmp185, label %land.lhs.true187, label %if.end191

land.lhs.true187:                                 ; preds = %land.lhs.true184
  %107 = load i32, i32* @tok, align 4
  %cmp188 = icmp ne i32 %107, 32
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %land.lhs.true187
  store i32 38, i32* @tok, align 4
  %108 = load i32, i32* %oecused, align 4
  store i32 %108, i32* @ecused, align 4
  br label %return

if.end191:                                        ; preds = %land.lhs.true187, %land.lhs.true184, %if.end181
  store i32 1, i32* @incasepat, align 4
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %for.cond

for.end192:                                       ; preds = %if.then180, %if.then34, %if.then18
  store i32 1, i32* @incmdpos, align 4
  store i32 0, i32* @incasepat, align 4
  call void @zshlex()
  %109 = load i32, i32* @ecused, align 4
  %sub193 = sub nsw i32 %109, 1
  %110 = load i32, i32* %p, align 4
  %sub194 = sub nsw i32 %sub193, %110
  %shl195 = shl i32 %sub194, 3
  %or196 = or i32 0, %shl195
  %shl197 = shl i32 %or196, 5
  %or198 = or i32 16, %shl197
  %111 = load i32*, i32** @ecbuf, align 4
  %112 = load i32, i32* %p, align 4
  %arrayidx199 = getelementptr inbounds i32, i32* %111, i32 %112
  store i32 %or198, i32* %arrayidx199, align 4
  br label %return

return:                                           ; preds = %for.end192, %if.then190, %sw.default, %if.end144, %if.then135, %if.then30, %if.then8, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_if(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %p = alloca i32, align 4
  %pp = alloca i32, align 4
  %type = alloca i32, align 4
  %usebrace = alloca i32, align 4
  %xtok = alloca i32, align 4
  %nc = alloca i8, align 1
  %eu = alloca i32, align 4
  %eu33 = alloca i32, align 4
  %eu50 = alloca i32, align 4
  %eu77 = alloca i32, align 4
  %eu110 = alloca i32, align 4
  %eu123 = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  store i32 0, i32* %usebrace, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end92, %entry
  %1 = load i32, i32* @tok, align 4
  store i32 %1, i32* %xtok, align 4
  %2 = load i32, i32* %xtok, align 4
  %cmp = icmp eq i32 %2, 55
  %cond = select i1 %cmp, i32 5, i32 8
  call void @cmdpush(i32 %cond)
  %3 = load i32, i32* %xtok, align 4
  %cmp1 = icmp eq i32 %3, 51
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %for.end

if.end:                                           ; preds = %for.cond
  call void @zshlex()
  %4 = load i32, i32* %xtok, align 4
  %cmp2 = icmp eq i32 %4, 48
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %5 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %xtok, align 4
  %cmp6 = icmp eq i32 %6, 55
  br i1 %cmp6, label %if.end9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %7 = load i32, i32* %xtok, align 4
  %cmp7 = icmp eq i32 %7, 47
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %8 = load i32, i32* %oecused, align 4
  store i32 %8, i32* @ecused, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false, %while.end
  %call10 = call i32 @ecadd(i32 0)
  store i32 %call10, i32* %pp, align 4
  %9 = load i32, i32* %xtok, align 4
  %cmp11 = icmp eq i32 %9, 55
  %cond12 = select i1 %cmp11, i32 1, i32 2
  store i32 %cond12, i32* %type, align 4
  br label %do.body

do.body:                                          ; preds = %if.end9
  %10 = load i32, i32* @ecused, align 4
  store i32 %10, i32* %eu, align 4
  %11 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %11)
  %12 = load i32, i32* %eu, align 4
  %13 = load i32, i32* @ecused, align 4
  %cmp13 = icmp eq i32 %12, %13
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body
  %call15 = call i32 @ecadd(i32 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end16
  store i32 1, i32* @incmdpos, align 4
  %14 = load i32, i32* @tok, align 4
  %cmp17 = icmp eq i32 %14, 37
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %15 = load i32, i32* %oecused, align 4
  store i32 %15, i32* @ecused, align 4
  br label %return

if.end19:                                         ; preds = %do.end
  br label %while.cond20

while.cond20:                                     ; preds = %while.body22, %if.end19
  %16 = load i32, i32* @tok, align 4
  %cmp21 = icmp eq i32 %16, 1
  br i1 %cmp21, label %while.body22, label %while.end23

while.body22:                                     ; preds = %while.cond20
  call void @zshlex()
  br label %while.cond20

while.end23:                                      ; preds = %while.cond20
  store i32 51, i32* %xtok, align 4
  %17 = load i8*, i8** @cmdstack, align 4
  %18 = load i32, i32* @cmdsp, align 4
  %sub = sub nsw i32 %18, 1
  %arrayidx = getelementptr inbounds i8, i8* %17, i32 %sub
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %cmp24 = icmp eq i32 %conv, 5
  %cond26 = select i1 %cmp24, i32 6, i32 26
  %conv27 = trunc i32 %cond26 to i8
  store i8 %conv27, i8* %nc, align 1
  %20 = load i32, i32* @tok, align 4
  %cmp28 = icmp eq i32 %20, 59
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %while.end23
  store i32 0, i32* %usebrace, align 4
  call void @cmdpop()
  %21 = load i8, i8* %nc, align 1
  %conv31 = zext i8 %21 to i32
  call void @cmdpush(i32 %conv31)
  call void @zshlex()
  br label %do.body32

do.body32:                                        ; preds = %if.then30
  %22 = load i32, i32* @ecused, align 4
  store i32 %22, i32* %eu33, align 4
  %23 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %23)
  %24 = load i32, i32* %eu33, align 4
  %25 = load i32, i32* @ecused, align 4
  %cmp34 = icmp eq i32 %24, %25
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %do.body32
  %call37 = call i32 @ecadd(i32 0)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %do.body32
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  %26 = load i32, i32* %type, align 4
  %27 = load i32, i32* @ecused, align 4
  %sub40 = sub nsw i32 %27, 1
  %28 = load i32, i32* %pp, align 4
  %sub41 = sub nsw i32 %sub40, %28
  %shl = shl i32 %sub41, 2
  %or = or i32 %26, %shl
  %shl42 = shl i32 %or, 5
  %or43 = or i32 17, %shl42
  %29 = load i32*, i32** @ecbuf, align 4
  %30 = load i32, i32* %pp, align 4
  %arrayidx44 = getelementptr inbounds i32, i32* %29, i32 %30
  store i32 %or43, i32* %arrayidx44, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @cmdpop()
  br label %if.end92

if.else:                                          ; preds = %while.end23
  %31 = load i32, i32* @tok, align 4
  %cmp45 = icmp eq i32 %31, 41
  br i1 %cmp45, label %if.then47, label %if.else72

if.then47:                                        ; preds = %if.else
  store i32 1, i32* %usebrace, align 4
  call void @cmdpop()
  %32 = load i8, i8* %nc, align 1
  %conv48 = zext i8 %32 to i32
  call void @cmdpush(i32 %conv48)
  call void @zshlex()
  br label %do.body49

do.body49:                                        ; preds = %if.then47
  %33 = load i32, i32* @ecused, align 4
  store i32 %33, i32* %eu50, align 4
  %34 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %34)
  %35 = load i32, i32* %eu50, align 4
  %36 = load i32, i32* @ecused, align 4
  %cmp51 = icmp eq i32 %35, %36
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.body49
  %call54 = call i32 @ecadd(i32 0)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.body49
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  %37 = load i32, i32* @tok, align 4
  %cmp57 = icmp ne i32 %37, 42
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %do.end56
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %38 = load i32, i32* %oecused, align 4
  store i32 %38, i32* @ecused, align 4
  br label %return

if.end60:                                         ; preds = %do.end56
  %39 = load i32, i32* %type, align 4
  %40 = load i32, i32* @ecused, align 4
  %sub61 = sub nsw i32 %40, 1
  %41 = load i32, i32* %pp, align 4
  %sub62 = sub nsw i32 %sub61, %41
  %shl63 = shl i32 %sub62, 2
  %or64 = or i32 %39, %shl63
  %shl65 = shl i32 %or64, 5
  %or66 = or i32 17, %shl65
  %42 = load i32*, i32** @ecbuf, align 4
  %43 = load i32, i32* %pp, align 4
  %arrayidx67 = getelementptr inbounds i32, i32* %42, i32 %43
  store i32 %or66, i32* %arrayidx67, align 4
  call void @zshlex()
  store i32 1, i32* @incmdpos, align 4
  %44 = load i32, i32* @tok, align 4
  %cmp68 = icmp eq i32 %44, 1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end60
  br label %for.end

if.end71:                                         ; preds = %if.end60
  call void @cmdpop()
  br label %if.end91

if.else72:                                        ; preds = %if.else
  %45 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %tobool = icmp ne i8 %45, 0
  br i1 %tobool, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.else72
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %46 = load i32, i32* %oecused, align 4
  store i32 %46, i32* @ecused, align 4
  br label %return

if.else74:                                        ; preds = %if.else72
  call void @cmdpop()
  %47 = load i8, i8* %nc, align 1
  %conv75 = zext i8 %47 to i32
  call void @cmdpush(i32 %conv75)
  br label %do.body76

do.body76:                                        ; preds = %if.else74
  %48 = load i32, i32* @ecused, align 4
  store i32 %48, i32* %eu77, align 4
  %49 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list1(i32* %49)
  %50 = load i32, i32* %eu77, align 4
  %51 = load i32, i32* @ecused, align 4
  %cmp78 = icmp eq i32 %50, %51
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %do.body76
  %call81 = call i32 @ecadd(i32 0)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %do.body76
  br label %do.end83

do.end83:                                         ; preds = %if.end82
  %52 = load i32, i32* %type, align 4
  %53 = load i32, i32* @ecused, align 4
  %sub84 = sub nsw i32 %53, 1
  %54 = load i32, i32* %pp, align 4
  %sub85 = sub nsw i32 %sub84, %54
  %shl86 = shl i32 %sub85, 2
  %or87 = or i32 %52, %shl86
  %shl88 = shl i32 %or87, 5
  %or89 = or i32 17, %shl88
  %55 = load i32*, i32** @ecbuf, align 4
  %56 = load i32, i32* %pp, align 4
  %arrayidx90 = getelementptr inbounds i32, i32* %55, i32 %56
  store i32 %or89, i32* %arrayidx90, align 4
  store i32 1, i32* @incmdpos, align 4
  br label %for.end

if.end91:                                         ; preds = %if.end71
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %do.end39
  br label %for.cond

for.end:                                          ; preds = %do.end83, %if.then70, %if.then3, %if.then
  call void @cmdpop()
  %57 = load i32, i32* %xtok, align 4
  %cmp93 = icmp eq i32 %57, 48
  br i1 %cmp93, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %for.end
  %58 = load i32, i32* @tok, align 4
  %cmp96 = icmp eq i32 %58, 48
  br i1 %cmp96, label %if.then98, label %if.end142

if.then98:                                        ; preds = %lor.lhs.false95, %for.end
  %call99 = call i32 @ecadd(i32 0)
  store i32 %call99, i32* %pp, align 4
  call void @cmdpush(i32 7)
  br label %while.cond100

while.cond100:                                    ; preds = %while.body103, %if.then98
  %59 = load i32, i32* @tok, align 4
  %cmp101 = icmp eq i32 %59, 1
  br i1 %cmp101, label %while.body103, label %while.end104

while.body103:                                    ; preds = %while.cond100
  call void @zshlex()
  br label %while.cond100

while.end104:                                     ; preds = %while.cond100
  %60 = load i32, i32* @tok, align 4
  %cmp105 = icmp eq i32 %60, 41
  br i1 %cmp105, label %land.lhs.true, label %if.else121

land.lhs.true:                                    ; preds = %while.end104
  %61 = load i32, i32* %usebrace, align 4
  %tobool107 = icmp ne i32 %61, 0
  br i1 %tobool107, label %if.then108, label %if.else121

if.then108:                                       ; preds = %land.lhs.true
  call void @zshlex()
  br label %do.body109

do.body109:                                       ; preds = %if.then108
  %62 = load i32, i32* @ecused, align 4
  store i32 %62, i32* %eu110, align 4
  %63 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %63)
  %64 = load i32, i32* %eu110, align 4
  %65 = load i32, i32* @ecused, align 4
  %cmp111 = icmp eq i32 %64, %65
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %do.body109
  %call114 = call i32 @ecadd(i32 0)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %do.body109
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  %66 = load i32, i32* @tok, align 4
  %cmp117 = icmp ne i32 %66, 42
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %do.end116
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %67 = load i32, i32* %oecused, align 4
  store i32 %67, i32* @ecused, align 4
  br label %return

if.end120:                                        ; preds = %do.end116
  br label %if.end134

if.else121:                                       ; preds = %land.lhs.true, %while.end104
  br label %do.body122

do.body122:                                       ; preds = %if.else121
  %68 = load i32, i32* @ecused, align 4
  store i32 %68, i32* %eu123, align 4
  %69 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %69)
  %70 = load i32, i32* %eu123, align 4
  %71 = load i32, i32* @ecused, align 4
  %cmp124 = icmp eq i32 %70, %71
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %do.body122
  %call127 = call i32 @ecadd(i32 0)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %do.body122
  br label %do.end129

do.end129:                                        ; preds = %if.end128
  %72 = load i32, i32* @tok, align 4
  %cmp130 = icmp ne i32 %72, 51
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %do.end129
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %73 = load i32, i32* %oecused, align 4
  store i32 %73, i32* @ecused, align 4
  br label %return

if.end133:                                        ; preds = %do.end129
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end120
  store i32 0, i32* @incmdpos, align 4
  %74 = load i32, i32* @ecused, align 4
  %sub135 = sub nsw i32 %74, 1
  %75 = load i32, i32* %pp, align 4
  %sub136 = sub nsw i32 %sub135, %75
  %shl137 = shl i32 %sub136, 2
  %or138 = or i32 3, %shl137
  %shl139 = shl i32 %or138, 5
  %or140 = or i32 17, %shl139
  %76 = load i32*, i32** @ecbuf, align 4
  %77 = load i32, i32* %pp, align 4
  %arrayidx141 = getelementptr inbounds i32, i32* %76, i32 %77
  store i32 %or140, i32* %arrayidx141, align 4
  call void @zshlex()
  call void @cmdpop()
  br label %if.end142

if.end142:                                        ; preds = %if.end134, %lor.lhs.false95
  %78 = load i32, i32* @ecused, align 4
  %sub143 = sub nsw i32 %78, 1
  %79 = load i32, i32* %p, align 4
  %sub144 = sub nsw i32 %sub143, %79
  %shl145 = shl i32 %sub144, 2
  %or146 = or i32 0, %shl145
  %shl147 = shl i32 %or146, 5
  %or148 = or i32 17, %shl147
  %80 = load i32*, i32** @ecbuf, align 4
  %81 = load i32, i32* %p, align 4
  %arrayidx149 = getelementptr inbounds i32, i32* %80, i32 %81
  store i32 %or148, i32* %arrayidx149, align 4
  br label %return

return:                                           ; preds = %if.end142, %if.then132, %if.then119, %if.then73, %if.then59, %if.then18, %if.then8
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_while(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %p = alloca i32, align 4
  %type = alloca i32, align 4
  %eu = alloca i32, align 4
  %eu7 = alloca i32, align 4
  %eu19 = alloca i32, align 4
  %eu31 = alloca i32, align 4
  %eu45 = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %1, 61
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %type, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  call void @zshlex()
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @ecused, align 4
  store i32 %2, i32* %eu, align 4
  %3 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %3)
  %4 = load i32, i32* %eu, align 4
  %5 = load i32, i32* @ecused, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call2 = call i32 @ecadd(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* @incmdpos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %6 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* @tok, align 4
  %cmp4 = icmp eq i32 %7, 45
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.end
  call void @zshlex()
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  %8 = load i32, i32* @ecused, align 4
  store i32 %8, i32* %eu7, align 4
  %9 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %9)
  %10 = load i32, i32* %eu7, align 4
  %11 = load i32, i32* @ecused, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body6
  %call10 = call i32 @ecadd(i32 0)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %12 = load i32, i32* @tok, align 4
  %cmp13 = icmp ne i32 %12, 46
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end12
  store i32 38, i32* @tok, align 4
  %13 = load i32, i32* %oecused, align 4
  store i32 %13, i32* @ecused, align 4
  br label %return

if.end15:                                         ; preds = %do.end12
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end54

if.else:                                          ; preds = %while.end
  %14 = load i32, i32* @tok, align 4
  %cmp16 = icmp eq i32 %14, 41
  br i1 %cmp16, label %if.then17, label %if.else28

if.then17:                                        ; preds = %if.else
  call void @zshlex()
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  %15 = load i32, i32* @ecused, align 4
  store i32 %15, i32* %eu19, align 4
  %16 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %16)
  %17 = load i32, i32* %eu19, align 4
  %18 = load i32, i32* @ecused, align 4
  %cmp20 = icmp eq i32 %17, %18
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.body18
  %call22 = call i32 @ecadd(i32 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body18
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  %19 = load i32, i32* @tok, align 4
  %cmp25 = icmp ne i32 %19, 42
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.end24
  store i32 38, i32* @tok, align 4
  %20 = load i32, i32* %oecused, align 4
  store i32 %20, i32* @ecused, align 4
  br label %return

if.end27:                                         ; preds = %do.end24
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end53

if.else28:                                        ; preds = %if.else
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 44), align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %if.then29, label %if.else40

if.then29:                                        ; preds = %if.else28
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  %22 = load i32, i32* @ecused, align 4
  store i32 %22, i32* %eu31, align 4
  %23 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %23)
  %24 = load i32, i32* %eu31, align 4
  %25 = load i32, i32* @ecused, align 4
  %cmp32 = icmp eq i32 %24, %25
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %do.body30
  %call34 = call i32 @ecadd(i32 0)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body30
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %26 = load i32, i32* @tok, align 4
  %cmp37 = icmp ne i32 %26, 49
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.end36
  store i32 38, i32* @tok, align 4
  %27 = load i32, i32* %oecused, align 4
  store i32 %27, i32* @ecused, align 4
  br label %return

if.end39:                                         ; preds = %do.end36
  call void @zshlex()
  br label %if.end52

if.else40:                                        ; preds = %if.else28
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %tobool41 = icmp ne i8 %28, 0
  br i1 %tobool41, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.else40
  store i32 38, i32* @tok, align 4
  %29 = load i32, i32* %oecused, align 4
  store i32 %29, i32* @ecused, align 4
  br label %return

if.else43:                                        ; preds = %if.else40
  br label %do.body44

do.body44:                                        ; preds = %if.else43
  %30 = load i32, i32* @ecused, align 4
  store i32 %30, i32* %eu45, align 4
  %31 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list1(i32* %31)
  %32 = load i32, i32* %eu45, align 4
  %33 = load i32, i32* @ecused, align 4
  %cmp46 = icmp eq i32 %32, %33
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %do.body44
  %call48 = call i32 @ecadd(i32 0)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %do.body44
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %if.end51

if.end51:                                         ; preds = %do.end50
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end39
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end27
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end15
  %34 = load i32, i32* %type, align 4
  %35 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %35, 1
  %36 = load i32, i32* %p, align 4
  %sub55 = sub nsw i32 %sub, %36
  %shl = shl i32 %sub55, 1
  %or = or i32 %34, %shl
  %shl56 = shl i32 %or, 5
  %or57 = or i32 14, %shl56
  %37 = load i32*, i32** @ecbuf, align 4
  %38 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %37, i32 %38
  store i32 %or57, i32* %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then42, %if.then38, %if.then26, %if.then14
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_repeat(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %p = alloca i32, align 4
  %eu = alloca i32, align 4
  %eu16 = alloca i32, align 4
  %eu28 = alloca i32, align 4
  %eu42 = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %1, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 38, i32* @tok, align 4
  %2 = load i32, i32* %oecused, align 4
  store i32 %2, i32* @ecused, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @tokstr, align 4
  %call1 = call i32 @ecstrcode(i8* %3)
  %call2 = call i32 @ecadd(i32 %call1)
  store i32 1, i32* @incmdpos, align 4
  call void @zshlex()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* @tok, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* @tok, align 4
  %cmp4 = icmp eq i32 %5, 45
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.end
  call void @zshlex()
  br label %do.body

do.body:                                          ; preds = %if.then5
  %6 = load i32, i32* @ecused, align 4
  store i32 %6, i32* %eu, align 4
  %7 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %7)
  %8 = load i32, i32* %eu, align 4
  %9 = load i32, i32* @ecused, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  %call8 = call i32 @ecadd(i32 0)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  %10 = load i32, i32* @tok, align 4
  %cmp10 = icmp ne i32 %10, 46
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end
  store i32 38, i32* @tok, align 4
  %11 = load i32, i32* %oecused, align 4
  store i32 %11, i32* @ecused, align 4
  br label %return

if.end12:                                         ; preds = %do.end
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end51

if.else:                                          ; preds = %while.end
  %12 = load i32, i32* @tok, align 4
  %cmp13 = icmp eq i32 %12, 41
  br i1 %cmp13, label %if.then14, label %if.else25

if.then14:                                        ; preds = %if.else
  call void @zshlex()
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  %13 = load i32, i32* @ecused, align 4
  store i32 %13, i32* %eu16, align 4
  %14 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %14)
  %15 = load i32, i32* %eu16, align 4
  %16 = load i32, i32* @ecused, align 4
  %cmp17 = icmp eq i32 %15, %16
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.body15
  %call19 = call i32 @ecadd(i32 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %17 = load i32, i32* @tok, align 4
  %cmp22 = icmp ne i32 %17, 42
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.end21
  store i32 38, i32* @tok, align 4
  %18 = load i32, i32* %oecused, align 4
  store i32 %18, i32* @ecused, align 4
  br label %return

if.end24:                                         ; preds = %do.end21
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  br label %if.end50

if.else25:                                        ; preds = %if.else
  %19 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 44), align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then26, label %if.else37

if.then26:                                        ; preds = %if.else25
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %20 = load i32, i32* @ecused, align 4
  store i32 %20, i32* %eu28, align 4
  %21 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %21)
  %22 = load i32, i32* %eu28, align 4
  %23 = load i32, i32* @ecused, align 4
  %cmp29 = icmp eq i32 %22, %23
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.body27
  %call31 = call i32 @ecadd(i32 0)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body27
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %24 = load i32, i32* @tok, align 4
  %cmp34 = icmp ne i32 %24, 49
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.end33
  store i32 38, i32* @tok, align 4
  %25 = load i32, i32* %oecused, align 4
  store i32 %25, i32* @ecused, align 4
  br label %return

if.end36:                                         ; preds = %do.end33
  call void @zshlex()
  br label %if.end49

if.else37:                                        ; preds = %if.else25
  %26 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %tobool38 = icmp ne i8 %26, 0
  br i1 %tobool38, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.else37
  store i32 38, i32* @tok, align 4
  %27 = load i32, i32* %oecused, align 4
  store i32 %27, i32* @ecused, align 4
  br label %return

if.else40:                                        ; preds = %if.else37
  br label %do.body41

do.body41:                                        ; preds = %if.else40
  %28 = load i32, i32* @ecused, align 4
  store i32 %28, i32* %eu42, align 4
  %29 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list1(i32* %29)
  %30 = load i32, i32* %eu42, align 4
  %31 = load i32, i32* @ecused, align 4
  %cmp43 = icmp eq i32 %30, %31
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %do.body41
  %call45 = call i32 @ecadd(i32 0)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body41
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %do.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end36
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end24
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end12
  %32 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %32, 1
  %33 = load i32, i32* %p, align 4
  %sub52 = sub nsw i32 %sub, %33
  %shl = shl i32 %sub52, 5
  %or = or i32 15, %shl
  %34 = load i32*, i32** @ecbuf, align 4
  %35 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %34, i32 %35
  store i32 %or, i32* %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then39, %if.then35, %if.then23, %if.then11, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_subsh(i32* %cmplx, i32 %zsh_construct) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %zsh_construct.addr = alloca i32, align 4
  %otok = alloca i32, align 4
  %oecused = alloca i32, align 4
  %p = alloca i32, align 4
  %pp = alloca i32, align 4
  %eu = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 %zsh_construct, i32* %zsh_construct.addr, align 4
  %0 = load i32, i32* @tok, align 4
  store i32 %0, i32* %otok, align 4
  %1 = load i32, i32* @ecused, align 4
  store i32 %1, i32* %oecused, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %call1 = call i32 @ecadd(i32 0)
  store i32 %call1, i32* %pp, align 4
  call void @zshlex()
  %2 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %2)
  %call2 = call i32 @ecadd(i32 0)
  %3 = load i32, i32* @tok, align 4
  %4 = load i32, i32* %otok, align 4
  %cmp = icmp eq i32 %4, 6
  %cond = select i1 %cmp, i32 7, i32 42
  %cmp3 = icmp ne i32 %3, %cond
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 38, i32* @tok, align 4
  %5 = load i32, i32* %oecused, align 4
  store i32 %5, i32* @ecused, align 4
  br label %if.end42

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %zsh_construct.addr, align 4
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @incmdpos, align 4
  call void @zshlex()
  %7 = load i32, i32* %otok, align 4
  %cmp4 = icmp eq i32 %7, 41
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %8, 34
  br i1 %cmp5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load i8*, i8** @tokstr, align 4
  %call7 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %10 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %pp, align 4
  %sub10 = sub nsw i32 %sub, %11
  %shl = shl i32 %sub10, 5
  %or = or i32 21, %shl
  %12 = load i32*, i32** @ecbuf, align 4
  %13 = load i32, i32* %pp, align 4
  %arrayidx = getelementptr inbounds i32, i32* %12, i32 %13
  store i32 %or, i32* %arrayidx, align 4
  store i32 1, i32* @incmdpos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then9
  call void @zshlex()
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, i32* @tok, align 4
  %cmp11 = icmp eq i32 %14, 1
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* @tok, align 4
  %cmp12 = icmp ne i32 %15, 41
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end
  store i32 38, i32* @tok, align 4
  %16 = load i32, i32* %oecused, align 4
  store i32 %16, i32* @ecused, align 4
  br label %if.end42

if.end14:                                         ; preds = %do.end
  call void @cmdpop()
  call void @cmdpush(i32 31)
  call void @zshlex()
  br label %do.body15

do.body15:                                        ; preds = %if.end14
  %17 = load i32, i32* @ecused, align 4
  store i32 %17, i32* %eu, align 4
  %18 = load i32*, i32** %cmplx.addr, align 4
  call void @par_list(i32* %18)
  %19 = load i32, i32* %eu, align 4
  %20 = load i32, i32* @ecused, align 4
  %cmp16 = icmp eq i32 %19, %20
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.body15
  %call18 = call i32 @ecadd(i32 0)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end21
  %21 = load i32, i32* @tok, align 4
  %cmp22 = icmp eq i32 %21, 1
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* @incmdpos, align 4
  %22 = load i32, i32* @tok, align 4
  %cmp23 = icmp ne i32 %22, 42
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.end
  store i32 38, i32* @tok, align 4
  %23 = load i32, i32* %oecused, align 4
  store i32 %23, i32* @ecused, align 4
  br label %if.end42

if.end25:                                         ; preds = %while.end
  call void @zshlex()
  %24 = load i32, i32* @ecused, align 4
  %sub26 = sub nsw i32 %24, 1
  %25 = load i32, i32* %p, align 4
  %sub27 = sub nsw i32 %sub26, %25
  %shl28 = shl i32 %sub27, 5
  %or29 = or i32 21, %shl28
  %26 = load i32*, i32** @ecbuf, align 4
  %27 = load i32, i32* %p, align 4
  %arrayidx30 = getelementptr inbounds i32, i32* %26, i32 %27
  store i32 %or29, i32* %arrayidx30, align 4
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %28 = load i32, i32* %otok, align 4
  %cmp31 = icmp eq i32 %28, 6
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %29 = load i32, i32* @ecused, align 4
  %sub32 = sub nsw i32 %29, 1
  %30 = load i32, i32* %p, align 4
  %sub33 = sub nsw i32 %sub32, %30
  %shl34 = shl i32 %sub33, 5
  %or35 = or i32 8, %shl34
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %31 = load i32, i32* @ecused, align 4
  %sub36 = sub nsw i32 %31, 1
  %32 = load i32, i32* %p, align 4
  %sub37 = sub nsw i32 %sub36, %32
  %shl38 = shl i32 %sub37, 5
  %or39 = or i32 9, %shl38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond40 = phi i32 [ %or35, %cond.true ], [ %or39, %cond.false ]
  %33 = load i32*, i32** @ecbuf, align 4
  %34 = load i32, i32* %p, align 4
  %arrayidx41 = getelementptr inbounds i32, i32* %33, i32 %34
  store i32 %cond40, i32* %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then, %if.then13, %if.then24, %cond.end, %if.end25
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_funcdef(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %oecused = alloca i32, align 4
  %num = alloca i32, align 4
  %onp = alloca i32, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %so = alloca i32, align 4
  %oecssub = alloca i32, align 4
  %oldlineno = alloca i32, align 4
  %parg = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %c, align 4
  %1 = load i32, i32* @ecssub, align 4
  store i32 %1, i32* %oecssub, align 4
  %2 = load i32, i32* @lineno, align 4
  store i32 %2, i32* %oldlineno, align 4
  store i32 0, i32* @lineno, align 4
  store i32 1, i32* @nocorrect, align 4
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %call1 = call i32 @ecadd(i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %3, 34
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** @tokstr, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, -113
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** @tokstr, align 4
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 123
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body
  %8 = load i8*, i8** @tokstr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 1
  %9 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 41, i32* @tok, align 4
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i8*, i8** @tokstr, align 4
  %call7 = call i32 @ecstrcode(i8* %10)
  %call8 = call i32 @ecadd(i32 %call7)
  %11 = load i32, i32* %num, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %num, align 4
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %call9 = call i32 @ecadd(i32 0)
  %call10 = call i32 @ecadd(i32 0)
  %call11 = call i32 @ecadd(i32 0)
  store i32 0, i32* @nocorrect, align 4
  store i32 1, i32* @incmdpos, align 4
  %12 = load i32, i32* @tok, align 4
  %cmp12 = icmp eq i32 %12, 27
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  call void @zshlex()
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end
  br label %while.cond16

while.cond16:                                     ; preds = %while.body19, %if.end15
  %13 = load i32, i32* @tok, align 4
  %cmp17 = icmp eq i32 %13, 1
  br i1 %cmp17, label %while.body19, label %while.end20

while.body19:                                     ; preds = %while.cond16
  call void @zshlex()
  br label %while.cond16

while.end20:                                      ; preds = %while.cond16
  %14 = load i32, i32* @ecnfunc, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* @ecnfunc, align 4
  %15 = load i32, i32* @ecsoffs, align 4
  store i32 %15, i32* %so, align 4
  store i32 %15, i32* @ecssub, align 4
  %16 = load i32, i32* @ecnpats, align 4
  store i32 %16, i32* %onp, align 4
  store i32 0, i32* @ecnpats, align 4
  %17 = load i32, i32* @tok, align 4
  %cmp22 = icmp eq i32 %17, 41
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.end20
  call void @zshlex()
  call void @par_list(i32* %c)
  %18 = load i32, i32* @tok, align 4
  %cmp25 = icmp ne i32 %18, 42
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  %19 = load i32, i32* %oldlineno, align 4
  %20 = load i32, i32* @lineno, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* @lineno, align 4
  %21 = load i32, i32* %onp, align 4
  store i32 %21, i32* @ecnpats, align 4
  %22 = load i32, i32* %oecssub, align 4
  store i32 %22, i32* @ecssub, align 4
  store i32 38, i32* @tok, align 4
  %23 = load i32, i32* %oecused, align 4
  store i32 %23, i32* @ecused, align 4
  br label %return

if.end28:                                         ; preds = %if.then24
  %24 = load i32, i32* %num, align 4
  %cmp29 = icmp eq i32 %24, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 0, i32* @incmdpos, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  call void @zshlex()
  br label %if.end38

if.else:                                          ; preds = %while.end20
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %tobool33 = icmp ne i8 %25, 0
  br i1 %tobool33, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.else
  %26 = load i32, i32* %oldlineno, align 4
  %27 = load i32, i32* @lineno, align 4
  %add35 = add nsw i32 %27, %26
  store i32 %add35, i32* @lineno, align 4
  %28 = load i32, i32* %onp, align 4
  store i32 %28, i32* @ecnpats, align 4
  %29 = load i32, i32* %oecssub, align 4
  store i32 %29, i32* @ecssub, align 4
  store i32 38, i32* @tok, align 4
  %30 = load i32, i32* %oecused, align 4
  store i32 %30, i32* @ecused, align 4
  br label %return

if.else36:                                        ; preds = %if.else
  call void @par_list1(i32* %c)
  br label %if.end37

if.end37:                                         ; preds = %if.else36
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end32
  %call39 = call i32 @ecadd(i32 0)
  %31 = load i32, i32* %so, align 4
  %32 = load i32, i32* %oecssub, align 4
  %sub = sub nsw i32 %31, %32
  %33 = load i32*, i32** @ecbuf, align 4
  %34 = load i32, i32* %p, align 4
  %35 = load i32, i32* %num, align 4
  %add40 = add nsw i32 %34, %35
  %add41 = add nsw i32 %add40, 2
  %arrayidx42 = getelementptr inbounds i32, i32* %33, i32 %add41
  store i32 %sub, i32* %arrayidx42, align 4
  %36 = load i32, i32* @ecsoffs, align 4
  %37 = load i32, i32* %so, align 4
  %sub43 = sub nsw i32 %36, %37
  %38 = load i32*, i32** @ecbuf, align 4
  %39 = load i32, i32* %p, align 4
  %40 = load i32, i32* %num, align 4
  %add44 = add nsw i32 %39, %40
  %add45 = add nsw i32 %add44, 3
  %arrayidx46 = getelementptr inbounds i32, i32* %38, i32 %add45
  store i32 %sub43, i32* %arrayidx46, align 4
  %41 = load i32, i32* @ecnpats, align 4
  %42 = load i32*, i32** @ecbuf, align 4
  %43 = load i32, i32* %p, align 4
  %44 = load i32, i32* %num, align 4
  %add47 = add nsw i32 %43, %44
  %add48 = add nsw i32 %add47, 4
  %arrayidx49 = getelementptr inbounds i32, i32* %42, i32 %add48
  store i32 %41, i32* %arrayidx49, align 4
  %45 = load i32, i32* %num, align 4
  %46 = load i32*, i32** @ecbuf, align 4
  %47 = load i32, i32* %p, align 4
  %add50 = add nsw i32 %47, 1
  %arrayidx51 = getelementptr inbounds i32, i32* %46, i32 %add50
  store i32 %45, i32* %arrayidx51, align 4
  %48 = load i32, i32* %onp, align 4
  store i32 %48, i32* @ecnpats, align 4
  %49 = load i32, i32* %oecssub, align 4
  store i32 %49, i32* @ecssub, align 4
  %50 = load i32, i32* @ecnfunc, align 4
  %inc52 = add nsw i32 %50, 1
  store i32 %inc52, i32* @ecnfunc, align 4
  %51 = load i32, i32* @ecused, align 4
  %sub53 = sub nsw i32 %51, 1
  %52 = load i32, i32* %p, align 4
  %sub54 = sub nsw i32 %sub53, %52
  %shl = shl i32 %sub54, 5
  %or = or i32 11, %shl
  %53 = load i32*, i32** @ecbuf, align 4
  %54 = load i32, i32* %p, align 4
  %arrayidx55 = getelementptr inbounds i32, i32* %53, i32 %54
  store i32 %or, i32* %arrayidx55, align 4
  %55 = load i32, i32* %num, align 4
  %cmp56 = icmp eq i32 %55, 0
  br i1 %cmp56, label %if.then58, label %if.end77

if.then58:                                        ; preds = %if.end38
  %call59 = call i32 @ecadd(i32 0)
  store i32 %call59, i32* %parg, align 4
  %call60 = call i32 @ecadd(i32 0)
  br label %while.cond61

while.cond61:                                     ; preds = %while.body64, %if.then58
  %56 = load i32, i32* @tok, align 4
  %cmp62 = icmp eq i32 %56, 34
  br i1 %cmp62, label %while.body64, label %while.end68

while.body64:                                     ; preds = %while.cond61
  %57 = load i8*, i8** @tokstr, align 4
  %call65 = call i32 @ecstrcode(i8* %57)
  %call66 = call i32 @ecadd(i32 %call65)
  %58 = load i32, i32* %num, align 4
  %inc67 = add nsw i32 %58, 1
  store i32 %inc67, i32* %num, align 4
  call void @zshlex()
  br label %while.cond61

while.end68:                                      ; preds = %while.cond61
  %59 = load i32, i32* %num, align 4
  %cmp69 = icmp sgt i32 %59, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %while.end68
  %60 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %60, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %while.end68
  %61 = load i32, i32* @ecused, align 4
  %62 = load i32, i32* %parg, align 4
  %sub73 = sub nsw i32 %61, %62
  %63 = load i32*, i32** @ecbuf, align 4
  %64 = load i32, i32* %parg, align 4
  %arrayidx74 = getelementptr inbounds i32, i32* %63, i32 %64
  store i32 %sub73, i32* %arrayidx74, align 4
  %65 = load i32, i32* %num, align 4
  %66 = load i32*, i32** @ecbuf, align 4
  %67 = load i32, i32* %parg, align 4
  %add75 = add nsw i32 %67, 1
  %arrayidx76 = getelementptr inbounds i32, i32* %66, i32 %add75
  store i32 %65, i32* %arrayidx76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end72, %if.end38
  %68 = load i32, i32* %oldlineno, align 4
  %69 = load i32, i32* @lineno, align 4
  %add78 = add nsw i32 %69, %68
  store i32 %add78, i32* @lineno, align 4
  br label %return

return:                                           ; preds = %if.end77, %if.then34, %if.then27
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_dinbrack() #0 {
entry:
  %oecused = alloca i32, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  store i32 1, i32* @incond, align 4
  store i32 0, i32* @incmdpos, align 4
  call void @zshlex()
  %call = call i32 @par_cond()
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %1, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 38, i32* @tok, align 4
  %2 = load i32, i32* %oecused, align 4
  store i32 %2, i32* @ecused, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @incond, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @zshlex()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @par_time() #0 {
entry:
  %p = alloca i32, align 4
  %f = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4
  call void @zshlex()
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  %call1 = call i32 @ecadd(i32 0)
  %call2 = call i32 @par_sublist2(i32* %c)
  store i32 %call2, i32* %f, align 4
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @ecused, align 4
  %1 = load i32*, i32** @ecbuf, align 4
  %2 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %2
  store i32 10, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** @ecbuf, align 4
  %4 = load i32, i32* %p, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i32 %4
  store i32 42, i32* %arrayidx3, align 4
  %5 = load i32, i32* %p, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %f, align 4
  %7 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %7, 2
  %8 = load i32, i32* %p, align 4
  %sub4 = sub nsw i32 %sub, %8
  %9 = load i32, i32* %c, align 4
  call void @set_sublist_code(i32 %add, i32 0, i32 %6, i32 %sub4, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @par_simple(i32* %cmplx, i32 %nr) #0 {
entry:
  %retval = alloca i32, align 4
  %cmplx.addr = alloca i32*, align 4
  %nr.addr = alloca i32, align 4
  %oecused = alloca i32, align 4
  %isnull = alloca i32, align 4
  %r = alloca i32, align 4
  %argc = alloca i32, align 4
  %p = alloca i32, align 4
  %isfunc = alloca i32, align 4
  %sr = alloca i32, align 4
  %c = alloca i32, align 4
  %nrediradd = alloca i32, align 4
  %assignments = alloca i32, align 4
  %ppost = alloca i32, align 4
  %is_typeset = alloca i32, align 4
  %hasalias = alloca i8*, align 4
  %postassigns = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %name = alloca i8*, align 4
  %str = alloca i8*, align 4
  %oldcmdpos = alloca i32, align 4
  %n = alloca i32, align 4
  %type2 = alloca i32, align 4
  %redir_var = alloca i32, align 4
  %eptr = alloca i8*, align 4
  %ptr134 = alloca i8*, align 4
  %toksave = alloca i8*, align 4
  %idstring = alloca i8*, align 4
  %ptr212 = alloca i8*, align 4
  %name213 = alloca i8*, align 4
  %str214 = alloca i8*, align 4
  %n267 = alloca i32, align 4
  %parr = alloca i32, align 4
  %oldlineno = alloca i32, align 4
  %onp = alloca i32, align 4
  %so = alloca i32, align 4
  %oecssub = alloca i32, align 4
  %c324 = alloca i32, align 4
  %ll = alloca i32, align 4
  %sl = alloca i32, align 4
  %c335 = alloca i32, align 4
  %parg = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  store i32 %nr, i32* %nr.addr, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %oecused, align 4
  store i32 1, i32* %isnull, align 4
  store i32 0, i32* %argc, align 4
  store i32 0, i32* %isfunc, align 4
  store i32 0, i32* %sr, align 4
  %1 = load i32*, i32** %cmplx.addr, align 4
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %c, align 4
  store i32 0, i32* %assignments, align 4
  store i32 0, i32* %ppost, align 4
  store i32 0, i32* %is_typeset, align 4
  %call = call i8* @input_hasalias()
  store i8* %call, i8** %hasalias, align 4
  store i32 0, i32* %postassigns, align 4
  %3 = load i32, i32* @ecused, align 4
  store i32 %3, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end104, %if.then95, %entry
  %4 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %4, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 1, i32* %c, align 4
  %5 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* @nocorrect, align 4
  br label %if.end100

if.else:                                          ; preds = %for.cond
  %6 = load i32, i32* @tok, align 4
  %cmp1 = icmp eq i32 %6, 35
  br i1 %cmp1, label %if.then2, label %if.else61

if.then2:                                         ; preds = %if.else
  %7 = load i8*, i8** @tokstr, align 4
  store i8* %7, i8** %name, align 4
  %8 = load i8*, i8** @tokstr, align 4
  store i8* %8, i8** %ptr, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then2
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond3
  %11 = load i8*, i8** %ptr, align 4
  %12 = load i8, i8* %11, align 1
  %conv4 = sext i8 %12 to i32
  %cmp5 = icmp ne i32 %conv4, -111
  br i1 %cmp5, label %land.lhs.true7, label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %13 = load i8*, i8** %ptr, align 4
  %14 = load i8, i8* %13, align 1
  %conv8 = sext i8 %14 to i32
  %cmp9 = icmp ne i32 %conv8, 61
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  %15 = load i8*, i8** %ptr, align 4
  %16 = load i8, i8* %15, align 1
  %conv11 = sext i8 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 43
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %land.lhs.true, %for.cond3
  %17 = phi i1 [ false, %land.lhs.true7 ], [ false, %land.lhs.true ], [ false, %for.cond3 ], [ %cmp12, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %for.cond3

for.end:                                          ; preds = %land.end
  %19 = load i8*, i8** %ptr, align 4
  %20 = load i8, i8* %19, align 1
  %conv14 = sext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, -111
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %for.end
  %call18 = call i32 @skipparens(i8 signext -111, i8 signext -110, i8** %ptr)
  br label %if.end

if.end:                                           ; preds = %if.then17, %for.end
  %21 = load i8*, i8** %ptr, align 4
  %22 = load i8, i8* %21, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 43
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.end
  %23 = load i8*, i8** %ptr, align 4
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %ptr, align 4
  store i8 0, i8* %23, align 1
  %call24 = call i32 @ecadd(i32 69)
  br label %if.end27

if.else25:                                        ; preds = %if.end
  %call26 = call i32 @ecadd(i32 5)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then22
  %24 = load i8*, i8** %ptr, align 4
  %25 = load i8, i8* %24, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 61
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end27
  %26 = load i8*, i8** %ptr, align 4
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %add.ptr, i8** %str, align 4
  br label %if.end34

if.else32:                                        ; preds = %if.end27
  %28 = load i8*, i8** @tokstr, align 4
  %call33 = call i32 @equalsplit(i8* %28, i8** %str)
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  %29 = load i8*, i8** %str, align 4
  store i8* %29, i8** %ptr, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc54, %if.end34
  %30 = load i8*, i8** %ptr, align 4
  %31 = load i8, i8* %30, align 1
  %tobool36 = icmp ne i8 %31, 0
  br i1 %tobool36, label %for.body37, label %for.end56

for.body37:                                       ; preds = %for.cond35
  %32 = load i8*, i8** %ptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %32, i32 1
  %33 = load i8, i8* %arrayidx, align 1
  %conv38 = sext i8 %33 to i32
  %cmp39 = icmp eq i32 %conv38, -120
  br i1 %cmp39, label %land.lhs.true41, label %if.end53

land.lhs.true41:                                  ; preds = %for.body37
  %34 = load i8*, i8** %ptr, align 4
  %35 = load i8, i8* %34, align 1
  %conv42 = sext i8 %35 to i32
  %cmp43 = icmp eq i32 %conv42, -115
  br i1 %cmp43, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true41
  %36 = load i8*, i8** %ptr, align 4
  %37 = load i8, i8* %36, align 1
  %conv45 = sext i8 %37 to i32
  %cmp46 = icmp eq i32 %conv45, -108
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %38 = load i8*, i8** %ptr, align 4
  %39 = load i8, i8* %38, align 1
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp eq i32 %conv49, -106
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false48, %lor.lhs.false, %land.lhs.true41
  %40 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %40, align 4
  br label %for.end56

if.end53:                                         ; preds = %lor.lhs.false48, %for.body37
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %41 = load i8*, i8** %ptr, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr55, i8** %ptr, align 4
  br label %for.cond35

for.end56:                                        ; preds = %if.then52, %for.cond35
  %42 = load i8*, i8** %name, align 4
  %call57 = call i32 @ecstrcode(i8* %42)
  %call58 = call i32 @ecadd(i32 %call57)
  %43 = load i8*, i8** %str, align 4
  %call59 = call i32 @ecstrcode(i8* %43)
  %call60 = call i32 @ecadd(i32 %call59)
  store i32 0, i32* %isnull, align 4
  store i32 1, i32* %assignments, align 4
  br label %if.end99

if.else61:                                        ; preds = %if.else
  %44 = load i32, i32* @tok, align 4
  %cmp62 = icmp eq i32 %44, 36
  br i1 %cmp62, label %if.then64, label %if.else89

if.then64:                                        ; preds = %if.else61
  %45 = load i32, i32* @incmdpos, align 4
  store i32 %45, i32* %oldcmdpos, align 4
  store i32 1, i32* %c, align 4
  %46 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %46, align 4
  %call65 = call i32 @ecadd(i32 0)
  store i32 %call65, i32* %p, align 4
  store i32 0, i32* @incmdpos, align 4
  %47 = load i8*, i8** @tokstr, align 4
  %call66 = call i32 @strlen(i8* %47)
  %sub = sub i32 %call66, 1
  store i32 %sub, i32* %type2, align 4
  %tobool67 = icmp ne i32 %sub, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.else75

land.lhs.true68:                                  ; preds = %if.then64
  %48 = load i8*, i8** @tokstr, align 4
  %49 = load i32, i32* %type2, align 4
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i32 %49
  %50 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %50 to i32
  %cmp71 = icmp eq i32 %conv70, 43
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %land.lhs.true68
  %51 = load i8*, i8** @tokstr, align 4
  %52 = load i32, i32* %type2, align 4
  %arrayidx74 = getelementptr inbounds i8, i8* %51, i32 %52
  store i8 0, i8* %arrayidx74, align 1
  store i32 1, i32* %type2, align 4
  br label %if.end76

if.else75:                                        ; preds = %land.lhs.true68, %if.then64
  store i32 0, i32* %type2, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then73
  %53 = load i8*, i8** @tokstr, align 4
  %call77 = call i32 @ecstrcode(i8* %53)
  %call78 = call i32 @ecadd(i32 %call77)
  call void @cmdpush(i32 20)
  call void @zshlex()
  %call79 = call i32 @par_nl_wordlist()
  store i32 %call79, i32* %n, align 4
  %54 = load i32, i32* %type2, align 4
  %shl = shl i32 %54, 1
  %or = or i32 1, %shl
  %55 = load i32, i32* %n, align 4
  %shl80 = shl i32 %55, 2
  %or81 = or i32 %or, %shl80
  %shl82 = shl i32 %or81, 5
  %or83 = or i32 5, %shl82
  %56 = load i32*, i32** @ecbuf, align 4
  %57 = load i32, i32* %p, align 4
  %arrayidx84 = getelementptr inbounds i32, i32* %56, i32 %57
  store i32 %or83, i32* %arrayidx84, align 4
  call void @cmdpop()
  %58 = load i32, i32* @tok, align 4
  %cmp85 = icmp ne i32 %58, 7
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end76
  store i32 38, i32* @tok, align 4
  %59 = load i32, i32* %oecused, align 4
  store i32 %59, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end76
  %60 = load i32, i32* %oldcmdpos, align 4
  store i32 %60, i32* @incmdpos, align 4
  store i32 0, i32* %isnull, align 4
  store i32 1, i32* %assignments, align 4
  br label %if.end98

if.else89:                                        ; preds = %if.else61
  %61 = load i32, i32* @tok, align 4
  %cmp90 = icmp uge i32 %61, 10
  br i1 %cmp90, label %land.lhs.true92, label %if.else97

land.lhs.true92:                                  ; preds = %if.else89
  %62 = load i32, i32* @tok, align 4
  %cmp93 = icmp ule i32 %62, 24
  br i1 %cmp93, label %if.then95, label %if.else97

if.then95:                                        ; preds = %land.lhs.true92
  store i32 1, i32* %c, align 4
  %63 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %63, align 4
  %call96 = call i32 @par_redir(i32* %r, i8* null)
  %64 = load i32, i32* %nr.addr, align 4
  %add = add nsw i32 %64, %call96
  store i32 %add, i32* %nr.addr, align 4
  br label %for.cond

if.else97:                                        ; preds = %land.lhs.true92, %if.else89
  br label %for.end105

if.end98:                                         ; preds = %if.end88
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %for.end56
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then
  call void @zshlex()
  %65 = load i8*, i8** %hasalias, align 4
  %tobool101 = icmp ne i8* %65, null
  br i1 %tobool101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.end100
  %call103 = call i8* @input_hasalias()
  store i8* %call103, i8** %hasalias, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end100
  br label %for.cond

for.end105:                                       ; preds = %if.else97
  %66 = load i32, i32* @tok, align 4
  %cmp106 = icmp eq i32 %66, 5
  br i1 %cmp106, label %if.then111, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %for.end105
  %67 = load i32, i32* @tok, align 4
  %cmp109 = icmp eq i32 %67, 30
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %lor.lhs.false108, %for.end105
  store i32 38, i32* @tok, align 4
  %68 = load i32, i32* %oecused, align 4
  store i32 %68, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end112:                                        ; preds = %lor.lhs.false108
  %call113 = call i32 @ecadd(i32 6)
  store i32 %call113, i32* %p, align 4
  br label %for.cond114

for.cond114:                                      ; preds = %if.end416, %if.end112
  %69 = load i32, i32* @tok, align 4
  %cmp115 = icmp eq i32 %69, 34
  br i1 %cmp115, label %if.then120, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %for.cond114
  %70 = load i32, i32* @tok, align 4
  %cmp118 = icmp eq i32 %70, 63
  br i1 %cmp118, label %if.then120, label %if.else194

if.then120:                                       ; preds = %lor.lhs.false117, %for.cond114
  store i32 0, i32* %redir_var, align 4
  %71 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %71, align 4
  store i32 0, i32* @incmdpos, align 4
  %72 = load i32, i32* @tok, align 4
  %cmp121 = icmp eq i32 %72, 63
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then120
  store i32 1, i32* %is_typeset, align 4
  store i32 1, i32* @intypeset, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.then120
  %73 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %tobool125 = icmp ne i8 %73, 0
  br i1 %tobool125, label %if.end173, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.end124
  %74 = load i8*, i8** @tokstr, align 4
  %75 = load i8, i8* %74, align 1
  %conv127 = sext i8 %75 to i32
  %cmp128 = icmp eq i32 %conv127, -113
  br i1 %cmp128, label %if.then130, label %if.end173

if.then130:                                       ; preds = %land.lhs.true126
  %76 = load i8*, i8** @tokstr, align 4
  %77 = load i8*, i8** @tokstr, align 4
  %call131 = call i32 @strlen(i8* %77)
  %add.ptr132 = getelementptr inbounds i8, i8* %76, i32 %call131
  %add.ptr133 = getelementptr inbounds i8, i8* %add.ptr132, i32 -1
  store i8* %add.ptr133, i8** %eptr, align 4
  %78 = load i8*, i8** %eptr, align 4
  store i8* %78, i8** %ptr134, align 4
  %79 = load i8*, i8** %ptr134, align 4
  %80 = load i8, i8* %79, align 1
  %conv135 = sext i8 %80 to i32
  %cmp136 = icmp eq i32 %conv135, -112
  br i1 %cmp136, label %land.lhs.true138, label %if.end172

land.lhs.true138:                                 ; preds = %if.then130
  %81 = load i8*, i8** %ptr134, align 4
  %82 = load i8*, i8** @tokstr, align 4
  %add.ptr139 = getelementptr inbounds i8, i8* %82, i32 1
  %cmp140 = icmp ugt i8* %81, %add.ptr139
  br i1 %cmp140, label %if.then142, label %if.end172

if.then142:                                       ; preds = %land.lhs.true138
  %83 = load i8*, i8** @tokstr, align 4
  %add.ptr143 = getelementptr inbounds i8, i8* %83, i32 1
  %call144 = call i8* @itype_end(i8* %add.ptr143, i32 128, i32 0)
  %84 = load i8*, i8** %ptr134, align 4
  %cmp145 = icmp uge i8* %call144, %84
  br i1 %cmp145, label %if.then147, label %if.end171

if.then147:                                       ; preds = %if.then142
  %85 = load i8*, i8** @tokstr, align 4
  store i8* %85, i8** %toksave, align 4
  %86 = load i8*, i8** @tokstr, align 4
  %add.ptr148 = getelementptr inbounds i8, i8* %86, i32 1
  %87 = load i8*, i8** %eptr, align 4
  %88 = load i8*, i8** @tokstr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %87 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %88 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub149 = sub nsw i32 %sub.ptr.sub, 1
  %call150 = call i8* @dupstrpfx(i8* %add.ptr148, i32 %sub149)
  store i8* %call150, i8** %idstring, align 4
  store i32 1, i32* %redir_var, align 4
  call void @zshlex()
  %89 = load i8*, i8** %hasalias, align 4
  %tobool151 = icmp ne i8* %89, null
  br i1 %tobool151, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.then147
  %call153 = call i8* @input_hasalias()
  store i8* %call153, i8** %hasalias, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.then147
  %90 = load i32, i32* @tok, align 4
  %cmp155 = icmp uge i32 %90, 10
  br i1 %cmp155, label %land.lhs.true157, label %if.else167

land.lhs.true157:                                 ; preds = %if.end154
  %91 = load i32, i32* @tok, align 4
  %cmp158 = icmp ule i32 %91, 24
  br i1 %cmp158, label %land.lhs.true160, label %if.else167

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %92 = load i32, i32* @tokfd, align 4
  %cmp161 = icmp eq i32 %92, -1
  br i1 %cmp161, label %if.then163, label %if.else167

if.then163:                                       ; preds = %land.lhs.true160
  store i32 1, i32* %c, align 4
  %93 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %93, align 4
  %94 = load i8*, i8** %idstring, align 4
  %call164 = call i32 @par_redir(i32* %r, i8* %94)
  store i32 %call164, i32* %nrediradd, align 4
  %95 = load i32, i32* %nrediradd, align 4
  %96 = load i32, i32* %p, align 4
  %add165 = add nsw i32 %96, %95
  store i32 %add165, i32* %p, align 4
  %97 = load i32, i32* %nrediradd, align 4
  %98 = load i32, i32* %sr, align 4
  %add166 = add nsw i32 %98, %97
  store i32 %add166, i32* %sr, align 4
  br label %if.end170

if.else167:                                       ; preds = %land.lhs.true160, %land.lhs.true157, %if.end154
  %99 = load i8*, i8** %toksave, align 4
  %call168 = call i32 @ecstrcode(i8* %99)
  %call169 = call i32 @ecadd(i32 %call168)
  %100 = load i32, i32* %argc, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %argc, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.else167, %if.then163
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then142
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %land.lhs.true138, %if.then130
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %land.lhs.true126, %if.end124
  %101 = load i32, i32* %redir_var, align 4
  %tobool174 = icmp ne i32 %101, 0
  br i1 %tobool174, label %if.end193, label %if.then175

if.then175:                                       ; preds = %if.end173
  %102 = load i32, i32* %postassigns, align 4
  %tobool176 = icmp ne i32 %102, 0
  br i1 %tobool176, label %if.then177, label %if.else184

if.then177:                                       ; preds = %if.then175
  %103 = load i32, i32* %postassigns, align 4
  %inc178 = add i32 %103, 1
  store i32 %inc178, i32* %postassigns, align 4
  %call179 = call i32 @ecadd(i32 69)
  %104 = load i8*, i8** @tokstr, align 4
  %call180 = call i32 @ecstrcode(i8* %104)
  %call181 = call i32 @ecadd(i32 %call180)
  %call182 = call i32 @ecstrcode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %call183 = call i32 @ecadd(i32 %call182)
  br label %if.end188

if.else184:                                       ; preds = %if.then175
  %105 = load i8*, i8** @tokstr, align 4
  %call185 = call i32 @ecstrcode(i8* %105)
  %call186 = call i32 @ecadd(i32 %call185)
  %106 = load i32, i32* %argc, align 4
  %inc187 = add nsw i32 %106, 1
  store i32 %inc187, i32* %argc, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then177
  call void @zshlex()
  %107 = load i8*, i8** %hasalias, align 4
  %tobool189 = icmp ne i8* %107, null
  br i1 %tobool189, label %if.end192, label %if.then190

if.then190:                                       ; preds = %if.end188
  %call191 = call i8* @input_hasalias()
  store i8* %call191, i8** %hasalias, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end188
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end173
  br label %if.end416

if.else194:                                       ; preds = %lor.lhs.false117
  %108 = load i32, i32* @tok, align 4
  %cmp195 = icmp uge i32 %108, 10
  br i1 %cmp195, label %land.lhs.true197, label %if.else208

land.lhs.true197:                                 ; preds = %if.else194
  %109 = load i32, i32* @tok, align 4
  %cmp198 = icmp ule i32 %109, 24
  br i1 %cmp198, label %if.then200, label %if.else208

if.then200:                                       ; preds = %land.lhs.true197
  store i32 1, i32* %c, align 4
  %110 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %110, align 4
  %call201 = call i32 @par_redir(i32* %r, i8* null)
  store i32 %call201, i32* %nrediradd, align 4
  %111 = load i32, i32* %nrediradd, align 4
  %112 = load i32, i32* %p, align 4
  %add202 = add nsw i32 %112, %111
  store i32 %add202, i32* %p, align 4
  %113 = load i32, i32* %ppost, align 4
  %tobool203 = icmp ne i32 %113, 0
  br i1 %tobool203, label %if.then204, label %if.end206

if.then204:                                       ; preds = %if.then200
  %114 = load i32, i32* %nrediradd, align 4
  %115 = load i32, i32* %ppost, align 4
  %add205 = add nsw i32 %115, %114
  store i32 %add205, i32* %ppost, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.then200
  %116 = load i32, i32* %nrediradd, align 4
  %117 = load i32, i32* %sr, align 4
  %add207 = add nsw i32 %117, %116
  store i32 %add207, i32* %sr, align 4
  br label %if.end415

if.else208:                                       ; preds = %land.lhs.true197, %if.else194
  %118 = load i32, i32* @tok, align 4
  %cmp209 = icmp eq i32 %118, 35
  br i1 %cmp209, label %if.then211, label %if.else263

if.then211:                                       ; preds = %if.else208
  %119 = load i32, i32* %postassigns, align 4
  %inc215 = add i32 %119, 1
  store i32 %inc215, i32* %postassigns, align 4
  %tobool216 = icmp ne i32 %119, 0
  br i1 %tobool216, label %if.end219, label %if.then217

if.then217:                                       ; preds = %if.then211
  %call218 = call i32 @ecadd(i32 0)
  store i32 %call218, i32* %ppost, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.then211
  %120 = load i8*, i8** @tokstr, align 4
  store i8* %120, i8** %name213, align 4
  %121 = load i8*, i8** @tokstr, align 4
  store i8* %121, i8** %ptr212, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc237, %if.end219
  %122 = load i8*, i8** %ptr212, align 4
  %123 = load i8, i8* %122, align 1
  %conv221 = sext i8 %123 to i32
  %tobool222 = icmp ne i32 %conv221, 0
  br i1 %tobool222, label %land.lhs.true223, label %land.end235

land.lhs.true223:                                 ; preds = %for.cond220
  %124 = load i8*, i8** %ptr212, align 4
  %125 = load i8, i8* %124, align 1
  %conv224 = sext i8 %125 to i32
  %cmp225 = icmp ne i32 %conv224, -111
  br i1 %cmp225, label %land.lhs.true227, label %land.end235

land.lhs.true227:                                 ; preds = %land.lhs.true223
  %126 = load i8*, i8** %ptr212, align 4
  %127 = load i8, i8* %126, align 1
  %conv228 = sext i8 %127 to i32
  %cmp229 = icmp ne i32 %conv228, 61
  br i1 %cmp229, label %land.rhs231, label %land.end235

land.rhs231:                                      ; preds = %land.lhs.true227
  %128 = load i8*, i8** %ptr212, align 4
  %129 = load i8, i8* %128, align 1
  %conv232 = sext i8 %129 to i32
  %cmp233 = icmp ne i32 %conv232, 43
  br label %land.end235

land.end235:                                      ; preds = %land.rhs231, %land.lhs.true227, %land.lhs.true223, %for.cond220
  %130 = phi i1 [ false, %land.lhs.true227 ], [ false, %land.lhs.true223 ], [ false, %for.cond220 ], [ %cmp233, %land.rhs231 ]
  br i1 %130, label %for.body236, label %for.end239

for.body236:                                      ; preds = %land.end235
  br label %for.inc237

for.inc237:                                       ; preds = %for.body236
  %131 = load i8*, i8** %ptr212, align 4
  %incdec.ptr238 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr238, i8** %ptr212, align 4
  br label %for.cond220

for.end239:                                       ; preds = %land.end235
  %132 = load i8*, i8** %ptr212, align 4
  %133 = load i8, i8* %132, align 1
  %conv240 = sext i8 %133 to i32
  %cmp241 = icmp eq i32 %conv240, -111
  br i1 %cmp241, label %if.then243, label %if.end245

if.then243:                                       ; preds = %for.end239
  %call244 = call i32 @skipparens(i8 signext -111, i8 signext -110, i8** %ptr212)
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %for.end239
  %call246 = call i32 @ecadd(i32 5)
  %134 = load i8*, i8** %ptr212, align 4
  %135 = load i8, i8* %134, align 1
  %conv247 = sext i8 %135 to i32
  %cmp248 = icmp eq i32 %conv247, 61
  br i1 %cmp248, label %if.then250, label %if.else252

if.then250:                                       ; preds = %if.end245
  %136 = load i8*, i8** %ptr212, align 4
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %ptr212, align 4
  %add.ptr251 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %add.ptr251, i8** %str214, align 4
  br label %if.end254

if.else252:                                       ; preds = %if.end245
  %138 = load i8*, i8** @tokstr, align 4
  %call253 = call i32 @equalsplit(i8* %138, i8** %str214)
  br label %if.end254

if.end254:                                        ; preds = %if.else252, %if.then250
  %139 = load i8*, i8** %name213, align 4
  %call255 = call i32 @ecstrcode(i8* %139)
  %call256 = call i32 @ecadd(i32 %call255)
  %140 = load i8*, i8** %str214, align 4
  %call257 = call i32 @ecstrcode(i8* %140)
  %call258 = call i32 @ecadd(i32 %call257)
  call void @zshlex()
  %141 = load i8*, i8** %hasalias, align 4
  %tobool259 = icmp ne i8* %141, null
  br i1 %tobool259, label %if.end262, label %if.then260

if.then260:                                       ; preds = %if.end254
  %call261 = call i8* @input_hasalias()
  store i8* %call261, i8** %hasalias, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then260, %if.end254
  br label %if.end414

if.else263:                                       ; preds = %if.else208
  %142 = load i32, i32* @tok, align 4
  %cmp264 = icmp eq i32 %142, 36
  br i1 %cmp264, label %if.then266, label %if.else286

if.then266:                                       ; preds = %if.else263
  %143 = load i32, i32* %postassigns, align 4
  %inc268 = add i32 %143, 1
  store i32 %inc268, i32* %postassigns, align 4
  %tobool269 = icmp ne i32 %143, 0
  br i1 %tobool269, label %if.end272, label %if.then270

if.then270:                                       ; preds = %if.then266
  %call271 = call i32 @ecadd(i32 0)
  store i32 %call271, i32* %ppost, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.then266
  %call273 = call i32 @ecadd(i32 0)
  store i32 %call273, i32* %parr, align 4
  %144 = load i8*, i8** @tokstr, align 4
  %call274 = call i32 @ecstrcode(i8* %144)
  %call275 = call i32 @ecadd(i32 %call274)
  call void @cmdpush(i32 20)
  store i32 0, i32* @intypeset, align 4
  call void @zshlex()
  %call276 = call i32 @par_nl_wordlist()
  store i32 %call276, i32* %n267, align 4
  %145 = load i32, i32* %n267, align 4
  %shl277 = shl i32 %145, 2
  %or278 = or i32 1, %shl277
  %shl279 = shl i32 %or278, 5
  %or280 = or i32 5, %shl279
  %146 = load i32*, i32** @ecbuf, align 4
  %147 = load i32, i32* %parr, align 4
  %arrayidx281 = getelementptr inbounds i32, i32* %146, i32 %147
  store i32 %or280, i32* %arrayidx281, align 4
  call void @cmdpop()
  store i32 1, i32* @intypeset, align 4
  %148 = load i32, i32* @tok, align 4
  %cmp282 = icmp ne i32 %148, 7
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %if.end272
  store i32 38, i32* @tok, align 4
  %149 = load i32, i32* %oecused, align 4
  store i32 %149, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end285:                                        ; preds = %if.end272
  call void @zshlex()
  br label %if.end413

if.else286:                                       ; preds = %if.else263
  %150 = load i32, i32* @tok, align 4
  %cmp287 = icmp eq i32 %150, 27
  br i1 %cmp287, label %if.then289, label %if.else412

if.then289:                                       ; preds = %if.else286
  %151 = load i32, i32* @lineno, align 4
  store i32 %151, i32* %oldlineno, align 4
  %152 = load i32, i32* @ecssub, align 4
  store i32 %152, i32* %oecssub, align 4
  %153 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 119), align 1
  %tobool290 = icmp ne i8 %153, 0
  br i1 %tobool290, label %if.end295, label %land.lhs.true291

land.lhs.true291:                                 ; preds = %if.then289
  %154 = load i32, i32* %argc, align 4
  %cmp292 = icmp sgt i32 %154, 1
  br i1 %cmp292, label %if.then294, label %if.end295

if.then294:                                       ; preds = %land.lhs.true291
  store i32 38, i32* @tok, align 4
  %155 = load i32, i32* %oecused, align 4
  store i32 %155, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end295:                                        ; preds = %land.lhs.true291, %if.then289
  %156 = load i32, i32* %assignments, align 4
  %tobool296 = icmp ne i32 %156, 0
  br i1 %tobool296, label %if.then299, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %if.end295
  %157 = load i32, i32* %postassigns, align 4
  %tobool298 = icmp ne i32 %157, 0
  br i1 %tobool298, label %if.then299, label %if.end300

if.then299:                                       ; preds = %lor.lhs.false297, %if.end295
  store i32 38, i32* @tok, align 4
  %158 = load i32, i32* %oecused, align 4
  store i32 %158, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end300:                                        ; preds = %lor.lhs.false297
  %159 = load i8*, i8** %hasalias, align 4
  %tobool301 = icmp ne i8* %159, null
  br i1 %tobool301, label %land.lhs.true302, label %if.end311

land.lhs.true302:                                 ; preds = %if.end300
  %160 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 2), align 1
  %tobool303 = icmp ne i8 %160, 0
  br i1 %tobool303, label %if.end311, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %land.lhs.true302
  %161 = load i32, i32* %argc, align 4
  %tobool305 = icmp ne i32 %161, 0
  br i1 %tobool305, label %land.lhs.true306, label %if.end311

land.lhs.true306:                                 ; preds = %land.lhs.true304
  %162 = load i8*, i8** %hasalias, align 4
  %call307 = call i8* @input_hasalias()
  %cmp308 = icmp ne i8* %162, %call307
  br i1 %cmp308, label %if.then310, label %if.end311

if.then310:                                       ; preds = %land.lhs.true306
  %163 = load i8*, i8** %hasalias, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %163)
  store i32 38, i32* @tok, align 4
  %164 = load i32, i32* %oecused, align 4
  store i32 %164, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end311:                                        ; preds = %land.lhs.true306, %land.lhs.true304, %land.lhs.true302, %if.end300
  %165 = load i32, i32* %c, align 4
  %166 = load i32*, i32** %cmplx.addr, align 4
  store i32 %165, i32* %166, align 4
  store i32 0, i32* @lineno, align 4
  store i32 1, i32* @incmdpos, align 4
  call void @cmdpush(i32 17)
  call void @zshlex()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end311
  %167 = load i32, i32* @tok, align 4
  %cmp312 = icmp eq i32 %167, 1
  br i1 %cmp312, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %168 = load i32, i32* %p, align 4
  %add314 = add nsw i32 %168, 1
  call void @ecispace(i32 %add314, i32 1)
  %169 = load i32, i32* %argc, align 4
  %170 = load i32*, i32** @ecbuf, align 4
  %171 = load i32, i32* %p, align 4
  %add315 = add nsw i32 %171, 1
  %arrayidx316 = getelementptr inbounds i32, i32* %170, i32 %add315
  store i32 %169, i32* %arrayidx316, align 4
  %call317 = call i32 @ecadd(i32 0)
  %call318 = call i32 @ecadd(i32 0)
  %call319 = call i32 @ecadd(i32 0)
  %172 = load i32, i32* @ecnfunc, align 4
  %inc320 = add nsw i32 %172, 1
  store i32 %inc320, i32* @ecnfunc, align 4
  %173 = load i32, i32* @ecsoffs, align 4
  store i32 %173, i32* %so, align 4
  store i32 %173, i32* @ecssub, align 4
  %174 = load i32, i32* @ecnpats, align 4
  store i32 %174, i32* %onp, align 4
  store i32 0, i32* @ecnpats, align 4
  %175 = load i32, i32* @tok, align 4
  %cmp321 = icmp eq i32 %175, 41
  br i1 %cmp321, label %if.then323, label %if.else334

if.then323:                                       ; preds = %while.end
  store i32 0, i32* %c324, align 4
  call void @zshlex()
  call void @par_list(i32* %c324)
  %176 = load i32, i32* @tok, align 4
  %cmp325 = icmp ne i32 %176, 42
  br i1 %cmp325, label %if.then327, label %if.end329

if.then327:                                       ; preds = %if.then323
  call void @cmdpop()
  %177 = load i32, i32* %oldlineno, align 4
  %178 = load i32, i32* @lineno, align 4
  %add328 = add nsw i32 %178, %177
  store i32 %add328, i32* @lineno, align 4
  %179 = load i32, i32* %onp, align 4
  store i32 %179, i32* @ecnpats, align 4
  %180 = load i32, i32* %oecssub, align 4
  store i32 %180, i32* @ecssub, align 4
  store i32 38, i32* @tok, align 4
  %181 = load i32, i32* %oecused, align 4
  store i32 %181, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end329:                                        ; preds = %if.then323
  %182 = load i32, i32* %argc, align 4
  %cmp330 = icmp eq i32 %182, 0
  br i1 %cmp330, label %if.then332, label %if.end333

if.then332:                                       ; preds = %if.end329
  store i32 0, i32* @incmdpos, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then332, %if.end329
  call void @zshlex()
  br label %if.end351

if.else334:                                       ; preds = %while.end
  store i32 0, i32* %c335, align 4
  %call336 = call i32 @ecadd(i32 0)
  store i32 %call336, i32* %ll, align 4
  %call337 = call i32 @ecadd(i32 0)
  store i32 %call337, i32* %sl, align 4
  %call338 = call i32 @ecadd(i32 3)
  %183 = load i32, i32* %argc, align 4
  %cmp339 = icmp eq i32 %183, 0
  %conv340 = zext i1 %cmp339 to i32
  %call341 = call i32 @par_cmd(i32* %c335, i32 %conv340)
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.end344, label %if.then343

if.then343:                                       ; preds = %if.else334
  call void @cmdpop()
  store i32 38, i32* @tok, align 4
  %184 = load i32, i32* %oecused, align 4
  store i32 %184, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end344:                                        ; preds = %if.else334
  %185 = load i32, i32* %argc, align 4
  %cmp345 = icmp eq i32 %185, 0
  br i1 %cmp345, label %if.then347, label %if.end348

if.then347:                                       ; preds = %if.end344
  store i32 0, i32* @incmdpos, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.then347, %if.end344
  %186 = load i32, i32* %sl, align 4
  %187 = load i32, i32* @ecused, align 4
  %sub349 = sub nsw i32 %187, 1
  %188 = load i32, i32* %sl, align 4
  %sub350 = sub nsw i32 %sub349, %188
  %189 = load i32, i32* %c335, align 4
  call void @set_sublist_code(i32 %186, i32 0, i32 0, i32 %sub350, i32 %189)
  %190 = load i32, i32* %ll, align 4
  %191 = load i32, i32* %c335, align 4
  call void @set_list_code(i32 %190, i32 18, i32 %191)
  br label %if.end351

if.end351:                                        ; preds = %if.end348, %if.end333
  call void @cmdpop()
  %call352 = call i32 @ecadd(i32 0)
  %192 = load i32, i32* %so, align 4
  %193 = load i32, i32* %oecssub, align 4
  %sub353 = sub nsw i32 %192, %193
  %194 = load i32*, i32** @ecbuf, align 4
  %195 = load i32, i32* %p, align 4
  %196 = load i32, i32* %argc, align 4
  %add354 = add nsw i32 %195, %196
  %add355 = add nsw i32 %add354, 2
  %arrayidx356 = getelementptr inbounds i32, i32* %194, i32 %add355
  store i32 %sub353, i32* %arrayidx356, align 4
  %197 = load i32, i32* @ecsoffs, align 4
  %198 = load i32, i32* %so, align 4
  %sub357 = sub nsw i32 %197, %198
  %199 = load i32*, i32** @ecbuf, align 4
  %200 = load i32, i32* %p, align 4
  %201 = load i32, i32* %argc, align 4
  %add358 = add nsw i32 %200, %201
  %add359 = add nsw i32 %add358, 3
  %arrayidx360 = getelementptr inbounds i32, i32* %199, i32 %add359
  store i32 %sub357, i32* %arrayidx360, align 4
  %202 = load i32, i32* @ecnpats, align 4
  %203 = load i32*, i32** @ecbuf, align 4
  %204 = load i32, i32* %p, align 4
  %205 = load i32, i32* %argc, align 4
  %add361 = add nsw i32 %204, %205
  %add362 = add nsw i32 %add361, 4
  %arrayidx363 = getelementptr inbounds i32, i32* %203, i32 %add362
  store i32 %202, i32* %arrayidx363, align 4
  %206 = load i32, i32* %onp, align 4
  store i32 %206, i32* @ecnpats, align 4
  %207 = load i32, i32* %oecssub, align 4
  store i32 %207, i32* @ecssub, align 4
  %208 = load i32, i32* @ecnfunc, align 4
  %inc364 = add nsw i32 %208, 1
  store i32 %inc364, i32* @ecnfunc, align 4
  %209 = load i32, i32* @ecused, align 4
  %sub365 = sub nsw i32 %209, 1
  %210 = load i32, i32* %p, align 4
  %sub366 = sub nsw i32 %sub365, %210
  %shl367 = shl i32 %sub366, 5
  %or368 = or i32 11, %shl367
  %211 = load i32*, i32** @ecbuf, align 4
  %212 = load i32, i32* %p, align 4
  %arrayidx369 = getelementptr inbounds i32, i32* %211, i32 %212
  store i32 %or368, i32* %arrayidx369, align 4
  %213 = load i32, i32* %argc, align 4
  %cmp370 = icmp eq i32 %213, 0
  br i1 %cmp370, label %if.then372, label %if.end410

if.then372:                                       ; preds = %if.end351
  %call373 = call i32 @ecadd(i32 0)
  store i32 %call373, i32* %parg, align 4
  %call374 = call i32 @ecadd(i32 0)
  br label %while.cond375

while.cond375:                                    ; preds = %if.end400, %if.then372
  %214 = load i32, i32* @tok, align 4
  %cmp376 = icmp eq i32 %214, 34
  br i1 %cmp376, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond375
  %215 = load i32, i32* @tok, align 4
  %cmp378 = icmp uge i32 %215, 10
  br i1 %cmp378, label %land.rhs380, label %land.end383

land.rhs380:                                      ; preds = %lor.rhs
  %216 = load i32, i32* @tok, align 4
  %cmp381 = icmp ule i32 %216, 24
  br label %land.end383

land.end383:                                      ; preds = %land.rhs380, %lor.rhs
  %217 = phi i1 [ false, %lor.rhs ], [ %cmp381, %land.rhs380 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end383, %while.cond375
  %218 = phi i1 [ true, %while.cond375 ], [ %217, %land.end383 ]
  br i1 %218, label %while.body384, label %while.end401

while.body384:                                    ; preds = %lor.end
  %219 = load i32, i32* @tok, align 4
  %cmp385 = icmp eq i32 %219, 34
  br i1 %cmp385, label %if.then387, label %if.else391

if.then387:                                       ; preds = %while.body384
  %220 = load i8*, i8** @tokstr, align 4
  %call388 = call i32 @ecstrcode(i8* %220)
  %call389 = call i32 @ecadd(i32 %call388)
  %221 = load i32, i32* %argc, align 4
  %inc390 = add nsw i32 %221, 1
  store i32 %inc390, i32* %argc, align 4
  call void @zshlex()
  br label %if.end400

if.else391:                                       ; preds = %while.body384
  store i32 1, i32* %c, align 4
  %222 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %222, align 4
  %call392 = call i32 @par_redir(i32* %r, i8* null)
  store i32 %call392, i32* %nrediradd, align 4
  %223 = load i32, i32* %nrediradd, align 4
  %224 = load i32, i32* %p, align 4
  %add393 = add nsw i32 %224, %223
  store i32 %add393, i32* %p, align 4
  %225 = load i32, i32* %ppost, align 4
  %tobool394 = icmp ne i32 %225, 0
  br i1 %tobool394, label %if.then395, label %if.end397

if.then395:                                       ; preds = %if.else391
  %226 = load i32, i32* %nrediradd, align 4
  %227 = load i32, i32* %ppost, align 4
  %add396 = add nsw i32 %227, %226
  store i32 %add396, i32* %ppost, align 4
  br label %if.end397

if.end397:                                        ; preds = %if.then395, %if.else391
  %228 = load i32, i32* %nrediradd, align 4
  %229 = load i32, i32* %sr, align 4
  %add398 = add nsw i32 %229, %228
  store i32 %add398, i32* %sr, align 4
  %230 = load i32, i32* %nrediradd, align 4
  %231 = load i32, i32* %parg, align 4
  %add399 = add nsw i32 %231, %230
  store i32 %add399, i32* %parg, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.end397, %if.then387
  br label %while.cond375

while.end401:                                     ; preds = %lor.end
  %232 = load i32, i32* %argc, align 4
  %cmp402 = icmp sgt i32 %232, 0
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %while.end401
  %233 = load i32*, i32** %cmplx.addr, align 4
  store i32 1, i32* %233, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then404, %while.end401
  %234 = load i32, i32* @ecused, align 4
  %235 = load i32, i32* %parg, align 4
  %sub406 = sub nsw i32 %234, %235
  %236 = load i32*, i32** @ecbuf, align 4
  %237 = load i32, i32* %parg, align 4
  %arrayidx407 = getelementptr inbounds i32, i32* %236, i32 %237
  store i32 %sub406, i32* %arrayidx407, align 4
  %238 = load i32, i32* %argc, align 4
  %239 = load i32*, i32** @ecbuf, align 4
  %240 = load i32, i32* %parg, align 4
  %add408 = add nsw i32 %240, 1
  %arrayidx409 = getelementptr inbounds i32, i32* %239, i32 %add408
  store i32 %238, i32* %arrayidx409, align 4
  br label %if.end410

if.end410:                                        ; preds = %if.end405, %if.end351
  %241 = load i32, i32* %oldlineno, align 4
  %242 = load i32, i32* @lineno, align 4
  %add411 = add nsw i32 %242, %241
  store i32 %add411, i32* @lineno, align 4
  store i32 1, i32* %isfunc, align 4
  store i32 0, i32* %isnull, align 4
  br label %for.end417

if.else412:                                       ; preds = %if.else286
  br label %for.end417

if.end413:                                        ; preds = %if.end285
  br label %if.end414

if.end414:                                        ; preds = %if.end413, %if.end262
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %if.end206
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.end193
  store i32 0, i32* %isnull, align 4
  br label %for.cond114

for.end417:                                       ; preds = %if.else412, %if.end410
  %243 = load i32, i32* %isnull, align 4
  %tobool418 = icmp ne i32 %243, 0
  br i1 %tobool418, label %land.lhs.true419, label %if.end423

land.lhs.true419:                                 ; preds = %for.end417
  %244 = load i32, i32* %sr, align 4
  %245 = load i32, i32* %nr.addr, align 4
  %add420 = add nsw i32 %244, %245
  %tobool421 = icmp ne i32 %add420, 0
  br i1 %tobool421, label %if.end423, label %if.then422

if.then422:                                       ; preds = %land.lhs.true419
  %246 = load i32, i32* %p, align 4
  store i32 %246, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end423:                                        ; preds = %land.lhs.true419, %for.end417
  store i32 1, i32* @incmdpos, align 4
  store i32 0, i32* @intypeset, align 4
  %247 = load i32, i32* %isfunc, align 4
  %tobool424 = icmp ne i32 %247, 0
  br i1 %tobool424, label %if.end442, label %if.then425

if.then425:                                       ; preds = %if.end423
  %248 = load i32, i32* %is_typeset, align 4
  %tobool426 = icmp ne i32 %248, 0
  br i1 %tobool426, label %if.then427, label %if.else437

if.then427:                                       ; preds = %if.then425
  %249 = load i32, i32* %argc, align 4
  %shl428 = shl i32 %249, 5
  %or429 = or i32 7, %shl428
  %250 = load i32*, i32** @ecbuf, align 4
  %251 = load i32, i32* %p, align 4
  %arrayidx430 = getelementptr inbounds i32, i32* %250, i32 %251
  store i32 %or429, i32* %arrayidx430, align 4
  %252 = load i32, i32* %postassigns, align 4
  %tobool431 = icmp ne i32 %252, 0
  br i1 %tobool431, label %if.then432, label %if.else434

if.then432:                                       ; preds = %if.then427
  %253 = load i32, i32* %postassigns, align 4
  %254 = load i32*, i32** @ecbuf, align 4
  %255 = load i32, i32* %ppost, align 4
  %arrayidx433 = getelementptr inbounds i32, i32* %254, i32 %255
  store i32 %253, i32* %arrayidx433, align 4
  br label %if.end436

if.else434:                                       ; preds = %if.then427
  %call435 = call i32 @ecadd(i32 0)
  br label %if.end436

if.end436:                                        ; preds = %if.else434, %if.then432
  br label %if.end441

if.else437:                                       ; preds = %if.then425
  %256 = load i32, i32* %argc, align 4
  %shl438 = shl i32 %256, 5
  %or439 = or i32 6, %shl438
  %257 = load i32*, i32** @ecbuf, align 4
  %258 = load i32, i32* %p, align 4
  %arrayidx440 = getelementptr inbounds i32, i32* %257, i32 %258
  store i32 %or439, i32* %arrayidx440, align 4
  br label %if.end441

if.end441:                                        ; preds = %if.else437, %if.end436
  br label %if.end442

if.end442:                                        ; preds = %if.end441, %if.end423
  %259 = load i32, i32* %sr, align 4
  %add443 = add nsw i32 %259, 1
  store i32 %add443, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end442, %if.then422, %if.then343, %if.then327, %if.then310, %if.then299, %if.then294, %if.then284, %if.then111, %if.then87
  %260 = load i32, i32* %retval, align 4
  ret i32 %260
}

declare i32 @isident(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @par_wordlist() #0 {
entry:
  %num = alloca i32, align 4
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 34
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** @tokstr, align 4
  %call = call i32 @ecstrcode(i8* %1)
  %call1 = call i32 @ecadd(i32 %call)
  %2 = load i32, i32* %num, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %num, align 4
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %num, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind
define internal i32 @par_nl_wordlist() #0 {
entry:
  %num = alloca i32, align 4
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 34
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, i32* @tok, align 4
  %cmp1 = icmp eq i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i32, i32* @tok, align 4
  %cmp2 = icmp ne i32 %3, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** @tokstr, align 4
  %call = call i32 @ecstrcode(i8* %4)
  %call3 = call i32 @ecadd(i32 %call)
  %5 = load i32, i32* %num, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call void @zshlex()
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %6 = load i32, i32* %num, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal void @par_list1(i32* %cmplx) #0 {
entry:
  %cmplx.addr = alloca i32*, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %cmplx, i32** %cmplx.addr, align 4
  %call = call i32 @ecadd(i32 0)
  store i32 %call, i32* %p, align 4
  store i32 0, i32* %c, align 4
  %call1 = call i32 @par_sublist(i32* %c)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %p, align 4
  %1 = load i32, i32* %c, align 4
  call void @set_list_code(i32 %0, i32 18, i32 %1)
  %2 = load i32, i32* %c, align 4
  %3 = load i32*, i32** %cmplx.addr, align 4
  %4 = load i32, i32* %3, align 4
  %or = or i32 %4, %2
  store i32 %or, i32* %3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @ecused, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @ecused, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @chuck(i8*) #1

declare i8* @input_hasalias() #1

declare i32 @skipparens(i8 signext, i8 signext, i8**) #1

declare i32 @equalsplit(i8*, i8**) #1

declare i8* @itype_end(i8*, i32, i32) #1

declare i8* @dupstrpfx(i8*, i32) #1

declare void @zwarn(i8*, ...) #1

declare i32 @hasher(i8*) #1

declare i32 @has_token(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @par_cond_1() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %0 = load i32, i32* @ecused, align 4
  store i32 %0, i32* %p, align 4
  %call = call i32 @par_cond_2()
  store i32 %call, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load void ()*, void ()** @condlex, align 4
  %cmp1 = icmp ne void ()* %2, @testlex
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** @zshlextext, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load void ()*, void ()** @condlex, align 4
  call void %6()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* @tok, align 4
  %cmp4 = icmp eq i32 %7, 9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load void ()*, void ()** @condlex, align 4
  call void %8()
  br label %while.cond6

while.cond6:                                      ; preds = %while.body17, %if.then
  %9 = load i32, i32* @tok, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %land.lhs.true9, label %land.end16

land.lhs.true9:                                   ; preds = %while.cond6
  %10 = load void ()*, void ()** @condlex, align 4
  %cmp10 = icmp ne void ()* %10, @testlex
  br i1 %cmp10, label %land.rhs12, label %land.end16

land.rhs12:                                       ; preds = %land.lhs.true9
  %11 = load i8*, i8** @zshlextext, align 4
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp ne i32 %conv13, 59
  br label %land.end16

land.end16:                                       ; preds = %land.rhs12, %land.lhs.true9, %while.cond6
  %13 = phi i1 [ false, %land.lhs.true9 ], [ false, %while.cond6 ], [ %cmp14, %land.rhs12 ]
  br i1 %13, label %while.body17, label %while.end18

while.body17:                                     ; preds = %land.end16
  %14 = load void ()*, void ()** @condlex, align 4
  call void %14()
  br label %while.cond6

while.end18:                                      ; preds = %land.end16
  %15 = load i32, i32* %p, align 4
  call void @ecispace(i32 %15, i32 1)
  %call19 = call i32 @par_cond_1()
  %16 = load i32, i32* @ecused, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load i32, i32* %p, align 4
  %sub20 = sub nsw i32 %sub, %17
  %shl = shl i32 %sub20, 7
  %or = or i32 1, %shl
  %shl21 = shl i32 %or, 5
  %or22 = or i32 18, %shl21
  %18 = load i32*, i32** @ecbuf, align 4
  %19 = load i32, i32* %p, align 4
  %arrayidx = getelementptr inbounds i32, i32* %18, i32 %19
  store i32 %or22, i32* %arrayidx, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %20 = load i32, i32* %r, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %while.end18
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare void @testlex() #1

; Function Attrs: noinline nounwind
define internal i32 @par_cond_2() #0 {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca i8*, align 4
  %s2 = alloca i8*, align 4
  %s3 = alloca i8*, align 4
  %dble = alloca i32, align 4
  %n_testargs = alloca i32, align 4
  %r = alloca i32, align 4
  %xtok = alloca i32, align 4
  %l = alloca %union.linkroot*, align 4
  store i32 0, i32* %dble, align 4
  %0 = load void ()*, void ()** @condlex, align 4
  %cmp = icmp eq void ()* %0, @testlex
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** @testargs, align 4
  %call = call i32 @arrlen(i8** %1)
  %add = add nsw i32 %call, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %n_testargs, align 4
  %2 = load i32, i32* %n_testargs, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load i32, i32* @tok, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  %call4 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  %call5 = call i32 @par_cond_double(i8* %call3, i8* %call4)
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %n_testargs, align 4
  %cmp6 = icmp eq i32 %4, 1
  br i1 %cmp6, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** @tokstr, align 4
  store i8* %5, i8** %s1, align 4
  %6 = load void ()*, void ()** @condlex, align 4
  call void %6()
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 132), align 1
  %tobool8 = icmp ne i8 %7, 0
  br i1 %tobool8, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then7
  %8 = load i8*, i8** %s1, align 4
  %call9 = call i32 @check_cond(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %s1, align 4
  %call12 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %call13 = call i32 @par_cond_double(i8* %9, i8* %call12)
  store i32 %call13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %if.then7
  %call15 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  %10 = load i8*, i8** %s1, align 4
  %call16 = call i32 @par_cond_double(i8* %call15, i8* %10)
  store i32 %call16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  %11 = load i32, i32* %n_testargs, align 4
  %cmp18 = icmp sgt i32 %11, 2
  br i1 %cmp18, label %if.then19, label %if.end41

if.then19:                                        ; preds = %if.end17
  %12 = load i8**, i8*** @testargs, align 4
  %13 = load i8*, i8** %12, align 4
  %call20 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then38

lor.lhs.false:                                    ; preds = %if.then19
  %14 = load i8**, i8*** @testargs, align 4
  %15 = load i8*, i8** %14, align 4
  %call22 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false24, label %if.then38

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %16 = load i8**, i8*** @testargs, align 4
  %17 = load i8*, i8** %16, align 4
  %call25 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then38

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %18 = load i8**, i8*** @testargs, align 4
  %19 = load i8*, i8** %18, align 4
  %20 = load i8, i8* %19, align 1
  %conv = sext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv, 45
  br i1 %cmp28, label %land.lhs.true34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %21 = load i8**, i8*** @testargs, align 4
  %22 = load i8*, i8** %21, align 4
  %23 = load i8, i8* %22, align 1
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp eq i32 %conv31, -101
  br i1 %cmp32, label %land.lhs.true34, label %if.end40

land.lhs.true34:                                  ; preds = %lor.lhs.false30, %lor.lhs.false27
  %24 = load i8**, i8*** @testargs, align 4
  %25 = load i8*, i8** %24, align 4
  %add.ptr = getelementptr inbounds i8, i8* %25, i32 1
  %call35 = call i32 @get_cond_num(i8* %add.ptr)
  %cmp36 = icmp sge i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %land.lhs.true34, %lor.lhs.false24, %lor.lhs.false, %if.then19
  %26 = load i8*, i8** @tokstr, align 4
  store i8* %26, i8** %s1, align 4
  %27 = load void ()*, void ()** @condlex, align 4
  call void %27()
  %28 = load i8*, i8** @tokstr, align 4
  store i8* %28, i8** %s2, align 4
  %29 = load void ()*, void ()** @condlex, align 4
  call void %29()
  %30 = load i8*, i8** @tokstr, align 4
  store i8* %30, i8** %s3, align 4
  %31 = load void ()*, void ()** @condlex, align 4
  call void %31()
  %32 = load i8*, i8** %s1, align 4
  %33 = load i8*, i8** %s2, align 4
  %34 = load i8*, i8** %s3, align 4
  %call39 = call i32 @par_cond_triple(i8* %32, i8* %33, i8* %34)
  store i32 %call39, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %land.lhs.true34, %lor.lhs.false30
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end17
  br label %if.end50

if.else:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %35 = load i32, i32* @tok, align 4
  %cmp42 = icmp eq i32 %35, 1
  br i1 %cmp42, label %land.lhs.true44, label %land.end

land.lhs.true44:                                  ; preds = %while.cond
  %36 = load void ()*, void ()** @condlex, align 4
  %cmp45 = icmp ne void ()* %36, @testlex
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true44
  %37 = load i8*, i8** @zshlextext, align 4
  %38 = load i8, i8* %37, align 1
  %conv47 = sext i8 %38 to i32
  %cmp48 = icmp ne i32 %conv47, 59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true44, %while.cond
  %39 = phi i1 [ false, %land.lhs.true44 ], [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load void ()*, void ()** @condlex, align 4
  call void %40()
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end50

if.end50:                                         ; preds = %while.end, %if.end41
  %41 = load i32, i32* @tok, align 4
  %cmp51 = icmp eq i32 %41, 39
  br i1 %cmp51, label %if.then53, label %if.end66

if.then53:                                        ; preds = %if.end50
  %42 = load i32, i32* %n_testargs, align 4
  %cmp54 = icmp sgt i32 %42, 1
  br i1 %cmp54, label %land.lhs.true56, label %if.then62

land.lhs.true56:                                  ; preds = %if.then53
  %43 = load i8**, i8*** @testargs, align 4
  %44 = load i8*, i8** %43, align 4
  %call57 = call i32 @check_cond(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end65, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true56
  %45 = load i8**, i8*** @testargs, align 4
  %46 = load i8*, i8** %45, align 4
  %call60 = call i32 @check_cond(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end65, label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59, %if.then53
  %47 = load void ()*, void ()** @condlex, align 4
  call void %47()
  %call63 = call i32 @ecadd(i32 18)
  %call64 = call i32 @par_cond_2()
  store i32 %call64, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %lor.lhs.false59, %land.lhs.true56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end50
  %48 = load i32, i32* @tok, align 4
  %cmp67 = icmp eq i32 %48, 6
  br i1 %cmp67, label %if.then69, label %if.end101

if.then69:                                        ; preds = %if.end66
  %49 = load void ()*, void ()** @condlex, align 4
  call void %49()
  br label %while.cond70

while.cond70:                                     ; preds = %while.body81, %if.then69
  %50 = load i32, i32* @tok, align 4
  %cmp71 = icmp eq i32 %50, 1
  br i1 %cmp71, label %land.lhs.true73, label %land.end80

land.lhs.true73:                                  ; preds = %while.cond70
  %51 = load void ()*, void ()** @condlex, align 4
  %cmp74 = icmp ne void ()* %51, @testlex
  br i1 %cmp74, label %land.rhs76, label %land.end80

land.rhs76:                                       ; preds = %land.lhs.true73
  %52 = load i8*, i8** @zshlextext, align 4
  %53 = load i8, i8* %52, align 1
  %conv77 = sext i8 %53 to i32
  %cmp78 = icmp ne i32 %conv77, 59
  br label %land.end80

land.end80:                                       ; preds = %land.rhs76, %land.lhs.true73, %while.cond70
  %54 = phi i1 [ false, %land.lhs.true73 ], [ false, %while.cond70 ], [ %cmp78, %land.rhs76 ]
  br i1 %54, label %while.body81, label %while.end82

while.body81:                                     ; preds = %land.end80
  %55 = load void ()*, void ()** @condlex, align 4
  call void %55()
  br label %while.cond70

while.end82:                                      ; preds = %land.end80
  %call83 = call i32 @par_cond()
  store i32 %call83, i32* %r, align 4
  br label %while.cond84

while.cond84:                                     ; preds = %while.body95, %while.end82
  %56 = load i32, i32* @tok, align 4
  %cmp85 = icmp eq i32 %56, 1
  br i1 %cmp85, label %land.lhs.true87, label %land.end94

land.lhs.true87:                                  ; preds = %while.cond84
  %57 = load void ()*, void ()** @condlex, align 4
  %cmp88 = icmp ne void ()* %57, @testlex
  br i1 %cmp88, label %land.rhs90, label %land.end94

land.rhs90:                                       ; preds = %land.lhs.true87
  %58 = load i8*, i8** @zshlextext, align 4
  %59 = load i8, i8* %58, align 1
  %conv91 = sext i8 %59 to i32
  %cmp92 = icmp ne i32 %conv91, 59
  br label %land.end94

land.end94:                                       ; preds = %land.rhs90, %land.lhs.true87, %while.cond84
  %60 = phi i1 [ false, %land.lhs.true87 ], [ false, %while.cond84 ], [ %cmp92, %land.rhs90 ]
  br i1 %60, label %while.body95, label %while.end96

while.body95:                                     ; preds = %land.end94
  %61 = load void ()*, void ()** @condlex, align 4
  call void %61()
  br label %while.cond84

while.end96:                                      ; preds = %land.end94
  %62 = load i32, i32* @tok, align 4
  %cmp97 = icmp ne i32 %62, 7
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %while.end96
  store i32 38, i32* @tok, align 4
  %63 = load i32, i32* @ecused, align 4
  store i32 %63, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %while.end96
  %64 = load void ()*, void ()** @condlex, align 4
  call void %64()
  %65 = load i32, i32* %r, align 4
  store i32 %65, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %if.end66
  %66 = load i8*, i8** @tokstr, align 4
  store i8* %66, i8** %s1, align 4
  %67 = load i8*, i8** %s1, align 4
  %tobool102 = icmp ne i8* %67, null
  br i1 %tobool102, label %land.lhs.true103, label %land.end120

land.lhs.true103:                                 ; preds = %if.end101
  %68 = load i8*, i8** %s1, align 4
  %69 = load i8, i8* %68, align 1
  %conv104 = sext i8 %69 to i32
  %cmp105 = icmp eq i32 %conv104, 45
  br i1 %cmp105, label %land.lhs.true111, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %land.lhs.true103
  %70 = load i8*, i8** %s1, align 4
  %71 = load i8, i8* %70, align 1
  %conv108 = sext i8 %71 to i32
  %cmp109 = icmp eq i32 %conv108, -101
  br i1 %cmp109, label %land.lhs.true111, label %land.end120

land.lhs.true111:                                 ; preds = %lor.lhs.false107, %land.lhs.true103
  %72 = load i32, i32* %n_testargs, align 4
  %tobool112 = icmp ne i32 %72, 0
  br i1 %tobool112, label %lor.lhs.false113, label %land.rhs118

lor.lhs.false113:                                 ; preds = %land.lhs.true111
  %73 = load i8*, i8** %s1, align 4
  %add.ptr114 = getelementptr inbounds i8, i8* %73, i32 1
  %call115 = call i32 @strspn(i8* %add.ptr114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  %cmp116 = icmp eq i32 %call115, 1
  br i1 %cmp116, label %land.rhs118, label %land.end120

land.rhs118:                                      ; preds = %lor.lhs.false113, %land.lhs.true111
  %74 = load i8*, i8** %s1, align 4
  %arrayidx = getelementptr inbounds i8, i8* %74, i32 2
  %75 = load i8, i8* %arrayidx, align 1
  %tobool119 = icmp ne i8 %75, 0
  %lnot = xor i1 %tobool119, true
  br label %land.end120

land.end120:                                      ; preds = %land.rhs118, %lor.lhs.false113, %lor.lhs.false107, %if.end101
  %76 = phi i1 [ false, %lor.lhs.false113 ], [ false, %lor.lhs.false107 ], [ false, %if.end101 ], [ %lnot, %land.rhs118 ]
  %land.ext = zext i1 %76 to i32
  store i32 %land.ext, i32* %dble, align 4
  %77 = load i32, i32* @tok, align 4
  %cmp121 = icmp ne i32 %77, 34
  br i1 %cmp121, label %if.then123, label %if.end147

if.then123:                                       ; preds = %land.end120
  %78 = load i8*, i8** %s1, align 4
  %tobool124 = icmp ne i8* %78, null
  br i1 %tobool124, label %land.lhs.true125, label %if.else146

land.lhs.true125:                                 ; preds = %if.then123
  %79 = load i32, i32* @tok, align 4
  %cmp126 = icmp ne i32 %79, 38
  br i1 %cmp126, label %land.lhs.true128, label %if.else146

land.lhs.true128:                                 ; preds = %land.lhs.true125
  %80 = load i32, i32* %dble, align 4
  %tobool129 = icmp ne i32 %80, 0
  br i1 %tobool129, label %lor.lhs.false130, label %if.then132

lor.lhs.false130:                                 ; preds = %land.lhs.true128
  %81 = load i32, i32* %n_testargs, align 4
  %tobool131 = icmp ne i32 %81, 0
  br i1 %tobool131, label %if.then132, label %if.else146

if.then132:                                       ; preds = %lor.lhs.false130, %land.lhs.true128
  br label %do.body

do.body:                                          ; preds = %land.end142, %if.then132
  %82 = load void ()*, void ()** @condlex, align 4
  call void %82()
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %83 = load i32, i32* @tok, align 4
  %cmp133 = icmp eq i32 %83, 1
  br i1 %cmp133, label %land.lhs.true135, label %land.end142

land.lhs.true135:                                 ; preds = %do.cond
  %84 = load void ()*, void ()** @condlex, align 4
  %cmp136 = icmp ne void ()* %84, @testlex
  br i1 %cmp136, label %land.rhs138, label %land.end142

land.rhs138:                                      ; preds = %land.lhs.true135
  %85 = load i8*, i8** @zshlextext, align 4
  %86 = load i8, i8* %85, align 1
  %conv139 = sext i8 %86 to i32
  %cmp140 = icmp ne i32 %conv139, 59
  br label %land.end142

land.end142:                                      ; preds = %land.rhs138, %land.lhs.true135, %do.cond
  %87 = phi i1 [ false, %land.lhs.true135 ], [ false, %do.cond ], [ %cmp140, %land.rhs138 ]
  br i1 %87, label %do.body, label %do.end

do.end:                                           ; preds = %land.end142
  %call144 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  %88 = load i8*, i8** %s1, align 4
  %call145 = call i32 @par_cond_double(i8* %call144, i8* %88)
  store i32 %call145, i32* %retval, align 4
  br label %return

if.else146:                                       ; preds = %lor.lhs.false130, %land.lhs.true125, %if.then123
  store i32 38, i32* @tok, align 4
  %89 = load i32, i32* @ecused, align 4
  store i32 %89, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end147:                                        ; preds = %land.end120
  %90 = load void ()*, void ()** @condlex, align 4
  call void %90()
  %91 = load i32, i32* %n_testargs, align 4
  %cmp148 = icmp eq i32 %91, 2
  br i1 %cmp148, label %land.lhs.true150, label %if.else166

land.lhs.true150:                                 ; preds = %if.end147
  %92 = load i32, i32* @tok, align 4
  %cmp151 = icmp ne i32 %92, 34
  br i1 %cmp151, label %land.lhs.true153, label %if.else166

land.lhs.true153:                                 ; preds = %land.lhs.true150
  %93 = load i8*, i8** @tokstr, align 4
  %tobool154 = icmp ne i8* %93, null
  br i1 %tobool154, label %land.lhs.true155, label %if.else166

land.lhs.true155:                                 ; preds = %land.lhs.true153
  %94 = load i8*, i8** %s1, align 4
  %arrayidx156 = getelementptr inbounds i8, i8* %94, i32 0
  %95 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %95 to i32
  %cmp158 = icmp eq i32 %conv157, 45
  br i1 %cmp158, label %if.then165, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %land.lhs.true155
  %96 = load i8*, i8** %s1, align 4
  %arrayidx161 = getelementptr inbounds i8, i8* %96, i32 0
  %97 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %97 to i32
  %cmp163 = icmp eq i32 %conv162, -101
  br i1 %cmp163, label %if.then165, label %if.else166

if.then165:                                       ; preds = %lor.lhs.false160, %land.lhs.true155
  store i32 34, i32* @tok, align 4
  br label %if.end181

if.else166:                                       ; preds = %lor.lhs.false160, %land.lhs.true153, %land.lhs.true150, %if.end147
  br label %while.cond167

while.cond167:                                    ; preds = %while.body179, %if.else166
  %98 = load i32, i32* @tok, align 4
  %cmp168 = icmp eq i32 %98, 1
  br i1 %cmp168, label %land.lhs.true170, label %land.end177

land.lhs.true170:                                 ; preds = %while.cond167
  %99 = load void ()*, void ()** @condlex, align 4
  %cmp171 = icmp ne void ()* %99, @testlex
  br i1 %cmp171, label %land.rhs173, label %land.end177

land.rhs173:                                      ; preds = %land.lhs.true170
  %100 = load i8*, i8** @zshlextext, align 4
  %101 = load i8, i8* %100, align 1
  %conv174 = sext i8 %101 to i32
  %cmp175 = icmp ne i32 %conv174, 59
  br label %land.end177

land.end177:                                      ; preds = %land.rhs173, %land.lhs.true170, %while.cond167
  %102 = phi i1 [ false, %land.lhs.true170 ], [ false, %while.cond167 ], [ %cmp175, %land.rhs173 ]
  br i1 %102, label %while.body179, label %while.end180

while.body179:                                    ; preds = %land.end177
  %103 = load void ()*, void ()** @condlex, align 4
  call void %103()
  br label %while.cond167

while.end180:                                     ; preds = %land.end177
  br label %if.end181

if.end181:                                        ; preds = %while.end180, %if.then165
  %104 = load i32, i32* @tok, align 4
  %cmp182 = icmp eq i32 %104, 14
  br i1 %cmp182, label %if.then187, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %if.end181
  %105 = load i32, i32* @tok, align 4
  %cmp185 = icmp eq i32 %105, 10
  br i1 %cmp185, label %if.then187, label %if.end228

if.then187:                                       ; preds = %lor.lhs.false184, %if.end181
  %106 = load i32, i32* @tok, align 4
  store i32 %106, i32* %xtok, align 4
  br label %do.body188

do.body188:                                       ; preds = %land.end199, %if.then187
  %107 = load void ()*, void ()** @condlex, align 4
  call void %107()
  br label %do.cond189

do.cond189:                                       ; preds = %do.body188
  %108 = load i32, i32* @tok, align 4
  %cmp190 = icmp eq i32 %108, 1
  br i1 %cmp190, label %land.lhs.true192, label %land.end199

land.lhs.true192:                                 ; preds = %do.cond189
  %109 = load void ()*, void ()** @condlex, align 4
  %cmp193 = icmp ne void ()* %109, @testlex
  br i1 %cmp193, label %land.rhs195, label %land.end199

land.rhs195:                                      ; preds = %land.lhs.true192
  %110 = load i8*, i8** @zshlextext, align 4
  %111 = load i8, i8* %110, align 1
  %conv196 = sext i8 %111 to i32
  %cmp197 = icmp ne i32 %conv196, 59
  br label %land.end199

land.end199:                                      ; preds = %land.rhs195, %land.lhs.true192, %do.cond189
  %112 = phi i1 [ false, %land.lhs.true192 ], [ false, %do.cond189 ], [ %cmp197, %land.rhs195 ]
  br i1 %112, label %do.body188, label %do.end201

do.end201:                                        ; preds = %land.end199
  %113 = load i32, i32* @tok, align 4
  %cmp202 = icmp ne i32 %113, 34
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %do.end201
  store i32 38, i32* @tok, align 4
  %114 = load i32, i32* @ecused, align 4
  store i32 %114, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end205:                                        ; preds = %do.end201
  %115 = load i8*, i8** @tokstr, align 4
  store i8* %115, i8** %s3, align 4
  br label %do.body206

do.body206:                                       ; preds = %land.end217, %if.end205
  %116 = load void ()*, void ()** @condlex, align 4
  call void %116()
  br label %do.cond207

do.cond207:                                       ; preds = %do.body206
  %117 = load i32, i32* @tok, align 4
  %cmp208 = icmp eq i32 %117, 1
  br i1 %cmp208, label %land.lhs.true210, label %land.end217

land.lhs.true210:                                 ; preds = %do.cond207
  %118 = load void ()*, void ()** @condlex, align 4
  %cmp211 = icmp ne void ()* %118, @testlex
  br i1 %cmp211, label %land.rhs213, label %land.end217

land.rhs213:                                      ; preds = %land.lhs.true210
  %119 = load i8*, i8** @zshlextext, align 4
  %120 = load i8, i8* %119, align 1
  %conv214 = sext i8 %120 to i32
  %cmp215 = icmp ne i32 %conv214, 59
  br label %land.end217

land.end217:                                      ; preds = %land.rhs213, %land.lhs.true210, %do.cond207
  %121 = phi i1 [ false, %land.lhs.true210 ], [ false, %do.cond207 ], [ %cmp215, %land.rhs213 ]
  br i1 %121, label %do.body206, label %do.end219

do.end219:                                        ; preds = %land.end217
  %122 = load i32, i32* %xtok, align 4
  %cmp220 = icmp eq i32 %122, 14
  %cond222 = select i1 %cmp220, i32 6, i32 7
  %shl = shl i32 %cond222, 5
  %or = or i32 18, %shl
  %call223 = call i32 @ecadd(i32 %or)
  %123 = load i8*, i8** %s1, align 4
  %call224 = call i32 @ecstrcode(i8* %123)
  %call225 = call i32 @ecadd(i32 %call224)
  %124 = load i8*, i8** %s3, align 4
  %call226 = call i32 @ecstrcode(i8* %124)
  %call227 = call i32 @ecadd(i32 %call226)
  store i32 1, i32* %retval, align 4
  br label %return

if.end228:                                        ; preds = %lor.lhs.false184
  %125 = load i32, i32* @tok, align 4
  %cmp229 = icmp ne i32 %125, 34
  br i1 %cmp229, label %if.then231, label %if.end245

if.then231:                                       ; preds = %if.end228
  %126 = load i32, i32* @tok, align 4
  %cmp232 = icmp ne i32 %126, 38
  br i1 %cmp232, label %if.then234, label %if.else244

if.then234:                                       ; preds = %if.then231
  %127 = load i32, i32* %dble, align 4
  %tobool235 = icmp ne i32 %127, 0
  br i1 %tobool235, label %lor.lhs.false236, label %if.then238

lor.lhs.false236:                                 ; preds = %if.then234
  %128 = load i32, i32* %n_testargs, align 4
  %tobool237 = icmp ne i32 %128, 0
  br i1 %tobool237, label %if.then238, label %if.else241

if.then238:                                       ; preds = %lor.lhs.false236, %if.then234
  %call239 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  %129 = load i8*, i8** %s1, align 4
  %call240 = call i32 @par_cond_double(i8* %call239, i8* %129)
  store i32 %call240, i32* %retval, align 4
  br label %return

if.else241:                                       ; preds = %lor.lhs.false236
  %130 = load i8*, i8** %s1, align 4
  %call242 = call %union.linkroot* @newlinklist()
  %call243 = call i32 @par_cond_multi(i8* %130, %union.linkroot* %call242)
  store i32 %call243, i32* %retval, align 4
  br label %return

if.else244:                                       ; preds = %if.then231
  store i32 38, i32* @tok, align 4
  %131 = load i32, i32* @ecused, align 4
  store i32 %131, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end245:                                        ; preds = %if.end228
  %132 = load i8*, i8** @tokstr, align 4
  store i8* %132, i8** %s2, align 4
  %133 = load i32, i32* %n_testargs, align 4
  %tobool246 = icmp ne i32 %133, 0
  br i1 %tobool246, label %if.end263, label %if.then247

if.then247:                                       ; preds = %if.end245
  %134 = load i8*, i8** %s2, align 4
  %tobool248 = icmp ne i8* %134, null
  br i1 %tobool248, label %land.lhs.true249, label %land.end261

land.lhs.true249:                                 ; preds = %if.then247
  %135 = load i8*, i8** %s2, align 4
  %136 = load i8, i8* %135, align 1
  %conv250 = sext i8 %136 to i32
  %cmp251 = icmp eq i32 %conv250, 45
  br i1 %cmp251, label %land.rhs257, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %land.lhs.true249
  %137 = load i8*, i8** %s2, align 4
  %138 = load i8, i8* %137, align 1
  %conv254 = sext i8 %138 to i32
  %cmp255 = icmp eq i32 %conv254, -101
  br i1 %cmp255, label %land.rhs257, label %land.end261

land.rhs257:                                      ; preds = %lor.lhs.false253, %land.lhs.true249
  %139 = load i8*, i8** %s2, align 4
  %arrayidx258 = getelementptr inbounds i8, i8* %139, i32 2
  %140 = load i8, i8* %arrayidx258, align 1
  %tobool259 = icmp ne i8 %140, 0
  %lnot260 = xor i1 %tobool259, true
  br label %land.end261

land.end261:                                      ; preds = %land.rhs257, %lor.lhs.false253, %if.then247
  %141 = phi i1 [ false, %lor.lhs.false253 ], [ false, %if.then247 ], [ %lnot260, %land.rhs257 ]
  %land.ext262 = zext i1 %141 to i32
  store i32 %land.ext262, i32* %dble, align 4
  br label %if.end263

if.end263:                                        ; preds = %land.end261, %if.end245
  %142 = load i32, i32* @incond, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* @incond, align 4
  br label %do.body264

do.body264:                                       ; preds = %land.end275, %if.end263
  %143 = load void ()*, void ()** @condlex, align 4
  call void %143()
  br label %do.cond265

do.cond265:                                       ; preds = %do.body264
  %144 = load i32, i32* @tok, align 4
  %cmp266 = icmp eq i32 %144, 1
  br i1 %cmp266, label %land.lhs.true268, label %land.end275

land.lhs.true268:                                 ; preds = %do.cond265
  %145 = load void ()*, void ()** @condlex, align 4
  %cmp269 = icmp ne void ()* %145, @testlex
  br i1 %cmp269, label %land.rhs271, label %land.end275

land.rhs271:                                      ; preds = %land.lhs.true268
  %146 = load i8*, i8** @zshlextext, align 4
  %147 = load i8, i8* %146, align 1
  %conv272 = sext i8 %147 to i32
  %cmp273 = icmp ne i32 %conv272, 59
  br label %land.end275

land.end275:                                      ; preds = %land.rhs271, %land.lhs.true268, %do.cond265
  %148 = phi i1 [ false, %land.lhs.true268 ], [ false, %do.cond265 ], [ %cmp273, %land.rhs271 ]
  br i1 %148, label %do.body264, label %do.end277

do.end277:                                        ; preds = %land.end275
  %149 = load i32, i32* @incond, align 4
  %dec = add nsw i32 %149, -1
  store i32 %dec, i32* @incond, align 4
  %150 = load i32, i32* @tok, align 4
  %cmp278 = icmp eq i32 %150, 34
  br i1 %cmp278, label %land.lhs.true280, label %if.else330

land.lhs.true280:                                 ; preds = %do.end277
  %151 = load i32, i32* %dble, align 4
  %tobool281 = icmp ne i32 %151, 0
  br i1 %tobool281, label %if.else330, label %if.then282

if.then282:                                       ; preds = %land.lhs.true280
  %152 = load i8*, i8** @tokstr, align 4
  store i8* %152, i8** %s3, align 4
  br label %do.body283

do.body283:                                       ; preds = %land.end294, %if.then282
  %153 = load void ()*, void ()** @condlex, align 4
  call void %153()
  br label %do.cond284

do.cond284:                                       ; preds = %do.body283
  %154 = load i32, i32* @tok, align 4
  %cmp285 = icmp eq i32 %154, 1
  br i1 %cmp285, label %land.lhs.true287, label %land.end294

land.lhs.true287:                                 ; preds = %do.cond284
  %155 = load void ()*, void ()** @condlex, align 4
  %cmp288 = icmp ne void ()* %155, @testlex
  br i1 %cmp288, label %land.rhs290, label %land.end294

land.rhs290:                                      ; preds = %land.lhs.true287
  %156 = load i8*, i8** @zshlextext, align 4
  %157 = load i8, i8* %156, align 1
  %conv291 = sext i8 %157 to i32
  %cmp292 = icmp ne i32 %conv291, 59
  br label %land.end294

land.end294:                                      ; preds = %land.rhs290, %land.lhs.true287, %do.cond284
  %158 = phi i1 [ false, %land.lhs.true287 ], [ false, %do.cond284 ], [ %cmp292, %land.rhs290 ]
  br i1 %158, label %do.body283, label %do.end296

do.end296:                                        ; preds = %land.end294
  %159 = load i32, i32* @tok, align 4
  %cmp297 = icmp eq i32 %159, 34
  br i1 %cmp297, label %if.then299, label %if.else328

if.then299:                                       ; preds = %do.end296
  %call300 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call300, %union.linkroot** %l, align 4
  %160 = load %union.linkroot*, %union.linkroot** %l, align 4
  %161 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list = bitcast %union.linkroot* %161 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %162 = load %struct.linknode*, %struct.linknode** %last, align 4
  %163 = load i8*, i8** %s2, align 4
  %call301 = call %struct.linknode* @insertlinknode(%union.linkroot* %160, %struct.linknode* %162, i8* %163)
  %164 = load %union.linkroot*, %union.linkroot** %l, align 4
  %165 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list302 = bitcast %union.linkroot* %165 to %struct.linklist*
  %last303 = getelementptr inbounds %struct.linklist, %struct.linklist* %list302, i32 0, i32 1
  %166 = load %struct.linknode*, %struct.linknode** %last303, align 4
  %167 = load i8*, i8** %s3, align 4
  %call304 = call %struct.linknode* @insertlinknode(%union.linkroot* %164, %struct.linknode* %166, i8* %167)
  br label %while.cond305

while.cond305:                                    ; preds = %do.end325, %if.then299
  %168 = load i32, i32* @tok, align 4
  %cmp306 = icmp eq i32 %168, 34
  br i1 %cmp306, label %while.body308, label %while.end326

while.body308:                                    ; preds = %while.cond305
  %169 = load %union.linkroot*, %union.linkroot** %l, align 4
  %170 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list309 = bitcast %union.linkroot* %170 to %struct.linklist*
  %last310 = getelementptr inbounds %struct.linklist, %struct.linklist* %list309, i32 0, i32 1
  %171 = load %struct.linknode*, %struct.linknode** %last310, align 4
  %172 = load i8*, i8** @tokstr, align 4
  %call311 = call %struct.linknode* @insertlinknode(%union.linkroot* %169, %struct.linknode* %171, i8* %172)
  br label %do.body312

do.body312:                                       ; preds = %land.end323, %while.body308
  %173 = load void ()*, void ()** @condlex, align 4
  call void %173()
  br label %do.cond313

do.cond313:                                       ; preds = %do.body312
  %174 = load i32, i32* @tok, align 4
  %cmp314 = icmp eq i32 %174, 1
  br i1 %cmp314, label %land.lhs.true316, label %land.end323

land.lhs.true316:                                 ; preds = %do.cond313
  %175 = load void ()*, void ()** @condlex, align 4
  %cmp317 = icmp ne void ()* %175, @testlex
  br i1 %cmp317, label %land.rhs319, label %land.end323

land.rhs319:                                      ; preds = %land.lhs.true316
  %176 = load i8*, i8** @zshlextext, align 4
  %177 = load i8, i8* %176, align 1
  %conv320 = sext i8 %177 to i32
  %cmp321 = icmp ne i32 %conv320, 59
  br label %land.end323

land.end323:                                      ; preds = %land.rhs319, %land.lhs.true316, %do.cond313
  %178 = phi i1 [ false, %land.lhs.true316 ], [ false, %do.cond313 ], [ %cmp321, %land.rhs319 ]
  br i1 %178, label %do.body312, label %do.end325

do.end325:                                        ; preds = %land.end323
  br label %while.cond305

while.end326:                                     ; preds = %while.cond305
  %179 = load i8*, i8** %s1, align 4
  %180 = load %union.linkroot*, %union.linkroot** %l, align 4
  %call327 = call i32 @par_cond_multi(i8* %179, %union.linkroot* %180)
  store i32 %call327, i32* %retval, align 4
  br label %return

if.else328:                                       ; preds = %do.end296
  %181 = load i8*, i8** %s1, align 4
  %182 = load i8*, i8** %s2, align 4
  %183 = load i8*, i8** %s3, align 4
  %call329 = call i32 @par_cond_triple(i8* %181, i8* %182, i8* %183)
  store i32 %call329, i32* %retval, align 4
  br label %return

if.else330:                                       ; preds = %land.lhs.true280, %do.end277
  %184 = load i8*, i8** %s1, align 4
  %185 = load i8*, i8** %s2, align 4
  %call331 = call i32 @par_cond_double(i8* %184, i8* %185)
  store i32 %call331, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else330, %if.else328, %while.end326, %if.else244, %if.else241, %if.then238, %do.end219, %if.then204, %if.else146, %do.end, %if.end100, %if.then99, %if.then62, %if.then38, %if.end14, %if.then11, %if.then2
  %186 = load i32, i32* %retval, align 4
  ret i32 %186
}

declare i32 @arrlen(i8**) #1

; Function Attrs: noinline nounwind
define internal i32 @par_cond_double(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 4
  %b.addr = alloca i8*, align 4
  store i8* %a, i8** %a.addr, align 4
  store i8* %b, i8** %b.addr, align 4
  %0 = load i8*, i8** %a.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %lor.lhs.false6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %a.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i32 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, -101
  br i1 %cmp4, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %a.addr, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8, i8* %arrayidx7, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load i8*, i8** %a.addr, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %6)
  call void @herrflush()
  %7 = load i32, i32* @noerrs, align 4
  %cmp8 = icmp ne i32 %7, 2
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %do.body
  %8 = load i32, i32* @errflag, align 4
  %or = or i32 %8, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %do.body
  store i32 38, i32* @tok, align 4
  %9 = load i32, i32* @ecused, align 4
  store i32 %9, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false6
  %10 = load i8*, i8** %a.addr, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i32 2
  %11 = load i8, i8* %arrayidx11, align 1
  %tobool12 = icmp ne i8 %11, 0
  br i1 %tobool12, label %if.else22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** %a.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 1
  %call = call i32 @strspn(i8* %add.ptr, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0))
  %cmp13 = icmp eq i32 %call, 1
  br i1 %cmp13, label %if.then15, label %if.else22

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %a.addr, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i32 1
  %14 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %14 to i32
  %shl = shl i32 %conv17, 5
  %or18 = or i32 18, %shl
  %call19 = call i32 @ecadd(i32 %or18)
  %15 = load i8*, i8** %b.addr, align 4
  %call20 = call i32 @ecstrcode(i8* %15)
  %call21 = call i32 @ecadd(i32 %call20)
  br label %if.end28

if.else22:                                        ; preds = %land.lhs.true, %if.else
  %call23 = call i32 @ecadd(i32 4690)
  %16 = load i8*, i8** %a.addr, align 4
  %call24 = call i32 @ecstrcode(i8* %16)
  %call25 = call i32 @ecadd(i32 %call24)
  %17 = load i8*, i8** %b.addr, align 4
  %call26 = call i32 @ecstrcode(i8* %17)
  %call27 = call i32 @ecadd(i32 %call26)
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.then15
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %do.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.end
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @check_cond(i8* %input, i8* %cond) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i8*, align 4
  %cond.addr = alloca i8*, align 4
  store i8* %input, i8** %input.addr, align 4
  store i8* %cond, i8** %cond.addr, align 4
  %0 = load i8*, i8** %input.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %input.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i32 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, -101
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %input.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8*, i8** %cond.addr, align 4
  %call = call i32 @strcmp(i8* %add.ptr, i8* %5)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal i32 @get_cond_num(i8* %tst) #0 {
entry:
  %retval = alloca i32, align 4
  %tst.addr = alloca i8*, align 4
  %t0 = alloca i32, align 4
  store i8* %tst, i8** %tst.addr, align 4
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %t0, align 4
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @get_cond_num.condstrs, i32 0, i32 %0
  %1 = load i8*, i8** %arrayidx, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %t0, align 4
  %arrayidx1 = getelementptr inbounds [10 x i8*], [10 x i8*]* @get_cond_num.condstrs, i32 0, i32 %2
  %3 = load i8*, i8** %arrayidx1, align 4
  %4 = load i8*, i8** %tst.addr, align 4
  %call = call i32 @strcmp(i8* %3, i8* %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %t0, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal i32 @par_cond_triple(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 4
  %b.addr = alloca i8*, align 4
  %c.addr = alloca i8*, align 4
  %t0 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 4
  store i8* %b, i8** %b.addr, align 4
  store i8* %c, i8** %c.addr, align 4
  %0 = load i8*, i8** %b.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, -115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %b.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i32 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 61
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %b.addr, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8, i8* %arrayidx6, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @ecadd(i32 114)
  %6 = load i8*, i8** %a.addr, align 4
  %call7 = call i32 @ecstrcode(i8* %6)
  %call8 = call i32 @ecadd(i32 %call7)
  %7 = load i8*, i8** %c.addr, align 4
  %call9 = call i32 @ecstrcode(i8* %7)
  %call10 = call i32 @ecadd(i32 %call9)
  %8 = load i32, i32* @ecnpats, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @ecnpats, align 4
  %call11 = call i32 @ecadd(i32 %8)
  br label %if.end158

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load i8*, i8** %b.addr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i32 0
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, -115
  br i1 %cmp14, label %land.lhs.true21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.else
  %11 = load i8*, i8** %b.addr, align 4
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i32 0
  %12 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 61
  br i1 %cmp19, label %land.lhs.true21, label %if.else42

land.lhs.true21:                                  ; preds = %lor.lhs.false16, %if.else
  %13 = load i8*, i8** %b.addr, align 4
  %arrayidx22 = getelementptr inbounds i8, i8* %13, i32 1
  %14 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %14 to i32
  %cmp24 = icmp eq i32 %conv23, -115
  br i1 %cmp24, label %land.lhs.true31, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true21
  %15 = load i8*, i8** %b.addr, align 4
  %arrayidx27 = getelementptr inbounds i8, i8* %15, i32 1
  %16 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %16 to i32
  %cmp29 = icmp eq i32 %conv28, 61
  br i1 %cmp29, label %land.lhs.true31, label %if.else42

land.lhs.true31:                                  ; preds = %lor.lhs.false26, %land.lhs.true21
  %17 = load i8*, i8** %b.addr, align 4
  %arrayidx32 = getelementptr inbounds i8, i8* %17, i32 2
  %18 = load i8, i8* %arrayidx32, align 1
  %tobool33 = icmp ne i8 %18, 0
  br i1 %tobool33, label %if.else42, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31
  %call35 = call i32 @ecadd(i32 146)
  %19 = load i8*, i8** %a.addr, align 4
  %call36 = call i32 @ecstrcode(i8* %19)
  %call37 = call i32 @ecadd(i32 %call36)
  %20 = load i8*, i8** %c.addr, align 4
  %call38 = call i32 @ecstrcode(i8* %20)
  %call39 = call i32 @ecadd(i32 %call38)
  %21 = load i32, i32* @ecnpats, align 4
  %inc40 = add nsw i32 %21, 1
  store i32 %inc40, i32* @ecnpats, align 4
  %call41 = call i32 @ecadd(i32 %21)
  br label %if.end157

if.else42:                                        ; preds = %land.lhs.true31, %lor.lhs.false26, %lor.lhs.false16
  %22 = load i8*, i8** %b.addr, align 4
  %arrayidx43 = getelementptr inbounds i8, i8* %22, i32 0
  %23 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %23 to i32
  %cmp45 = icmp eq i32 %conv44, 33
  br i1 %cmp45, label %land.lhs.true47, label %if.else68

land.lhs.true47:                                  ; preds = %if.else42
  %24 = load i8*, i8** %b.addr, align 4
  %arrayidx48 = getelementptr inbounds i8, i8* %24, i32 1
  %25 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %25 to i32
  %cmp50 = icmp eq i32 %conv49, -115
  br i1 %cmp50, label %land.lhs.true57, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true47
  %26 = load i8*, i8** %b.addr, align 4
  %arrayidx53 = getelementptr inbounds i8, i8* %26, i32 1
  %27 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %27 to i32
  %cmp55 = icmp eq i32 %conv54, 61
  br i1 %cmp55, label %land.lhs.true57, label %if.else68

land.lhs.true57:                                  ; preds = %lor.lhs.false52, %land.lhs.true47
  %28 = load i8*, i8** %b.addr, align 4
  %arrayidx58 = getelementptr inbounds i8, i8* %28, i32 2
  %29 = load i8, i8* %arrayidx58, align 1
  %tobool59 = icmp ne i8 %29, 0
  br i1 %tobool59, label %if.else68, label %if.then60

if.then60:                                        ; preds = %land.lhs.true57
  %call61 = call i32 @ecadd(i32 178)
  %30 = load i8*, i8** %a.addr, align 4
  %call62 = call i32 @ecstrcode(i8* %30)
  %call63 = call i32 @ecadd(i32 %call62)
  %31 = load i8*, i8** %c.addr, align 4
  %call64 = call i32 @ecstrcode(i8* %31)
  %call65 = call i32 @ecadd(i32 %call64)
  %32 = load i32, i32* @ecnpats, align 4
  %inc66 = add nsw i32 %32, 1
  store i32 %inc66, i32* @ecnpats, align 4
  %call67 = call i32 @ecadd(i32 %32)
  br label %if.end156

if.else68:                                        ; preds = %land.lhs.true57, %lor.lhs.false52, %if.else42
  %33 = load i8*, i8** %b.addr, align 4
  %arrayidx69 = getelementptr inbounds i8, i8* %33, i32 0
  %34 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %34 to i32
  %cmp71 = icmp eq i32 %conv70, -115
  br i1 %cmp71, label %land.lhs.true78, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.else68
  %35 = load i8*, i8** %b.addr, align 4
  %arrayidx74 = getelementptr inbounds i8, i8* %35, i32 0
  %36 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %36 to i32
  %cmp76 = icmp eq i32 %conv75, 61
  br i1 %cmp76, label %land.lhs.true78, label %if.else97

land.lhs.true78:                                  ; preds = %lor.lhs.false73, %if.else68
  %37 = load i8*, i8** %b.addr, align 4
  %arrayidx79 = getelementptr inbounds i8, i8* %37, i32 1
  %38 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %38 to i32
  %cmp81 = icmp eq i32 %conv80, 126
  br i1 %cmp81, label %land.lhs.true88, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true78
  %39 = load i8*, i8** %b.addr, align 4
  %arrayidx84 = getelementptr inbounds i8, i8* %39, i32 1
  %40 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %40 to i32
  %cmp86 = icmp eq i32 %conv85, -104
  br i1 %cmp86, label %land.lhs.true88, label %if.else97

land.lhs.true88:                                  ; preds = %lor.lhs.false83, %land.lhs.true78
  %41 = load i8*, i8** %b.addr, align 4
  %arrayidx89 = getelementptr inbounds i8, i8* %41, i32 2
  %42 = load i8, i8* %arrayidx89, align 1
  %tobool90 = icmp ne i8 %42, 0
  br i1 %tobool90, label %if.else97, label %if.then91

if.then91:                                        ; preds = %land.lhs.true88
  %call92 = call i32 @ecadd(i32 562)
  %43 = load i8*, i8** %a.addr, align 4
  %call93 = call i32 @ecstrcode(i8* %43)
  %call94 = call i32 @ecadd(i32 %call93)
  %44 = load i8*, i8** %c.addr, align 4
  %call95 = call i32 @ecstrcode(i8* %44)
  %call96 = call i32 @ecadd(i32 %call95)
  br label %if.end155

if.else97:                                        ; preds = %land.lhs.true88, %lor.lhs.false83, %lor.lhs.false73
  %45 = load i8*, i8** %b.addr, align 4
  %arrayidx98 = getelementptr inbounds i8, i8* %45, i32 0
  %46 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %46 to i32
  %cmp100 = icmp eq i32 %conv99, 45
  br i1 %cmp100, label %if.then107, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %if.else97
  %47 = load i8*, i8** %b.addr, align 4
  %arrayidx103 = getelementptr inbounds i8, i8* %47, i32 0
  %48 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %48 to i32
  %cmp105 = icmp eq i32 %conv104, -101
  br i1 %cmp105, label %if.then107, label %if.else125

if.then107:                                       ; preds = %lor.lhs.false102, %if.else97
  %49 = load i8*, i8** %b.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %49, i32 1
  %call108 = call i32 @get_cond_num(i8* %add.ptr)
  store i32 %call108, i32* %t0, align 4
  %cmp109 = icmp sgt i32 %call108, -1
  br i1 %cmp109, label %if.then111, label %if.else117

if.then111:                                       ; preds = %if.then107
  %50 = load i32, i32* %t0, align 4
  %add = add nsw i32 %50, 8
  %shl = shl i32 %add, 5
  %or = or i32 18, %shl
  %call112 = call i32 @ecadd(i32 %or)
  %51 = load i8*, i8** %a.addr, align 4
  %call113 = call i32 @ecstrcode(i8* %51)
  %call114 = call i32 @ecadd(i32 %call113)
  %52 = load i8*, i8** %c.addr, align 4
  %call115 = call i32 @ecstrcode(i8* %52)
  %call116 = call i32 @ecadd(i32 %call115)
  br label %if.end

if.else117:                                       ; preds = %if.then107
  %call118 = call i32 @ecadd(i32 626)
  %53 = load i8*, i8** %b.addr, align 4
  %call119 = call i32 @ecstrcode(i8* %53)
  %call120 = call i32 @ecadd(i32 %call119)
  %54 = load i8*, i8** %a.addr, align 4
  %call121 = call i32 @ecstrcode(i8* %54)
  %call122 = call i32 @ecadd(i32 %call121)
  %55 = load i8*, i8** %c.addr, align 4
  %call123 = call i32 @ecstrcode(i8* %55)
  %call124 = call i32 @ecadd(i32 %call123)
  br label %if.end

if.end:                                           ; preds = %if.else117, %if.then111
  br label %if.end154

if.else125:                                       ; preds = %lor.lhs.false102
  %56 = load i8*, i8** %a.addr, align 4
  %arrayidx126 = getelementptr inbounds i8, i8* %56, i32 0
  %57 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %57 to i32
  %cmp128 = icmp eq i32 %conv127, 45
  br i1 %cmp128, label %land.lhs.true135, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.else125
  %58 = load i8*, i8** %a.addr, align 4
  %arrayidx131 = getelementptr inbounds i8, i8* %58, i32 0
  %59 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %59 to i32
  %cmp133 = icmp eq i32 %conv132, -101
  br i1 %cmp133, label %land.lhs.true135, label %if.else147

land.lhs.true135:                                 ; preds = %lor.lhs.false130, %if.else125
  %60 = load i8*, i8** %a.addr, align 4
  %arrayidx136 = getelementptr inbounds i8, i8* %60, i32 1
  %61 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %61 to i32
  %tobool138 = icmp ne i32 %conv137, 0
  br i1 %tobool138, label %if.then139, label %if.else147

if.then139:                                       ; preds = %land.lhs.true135
  %call140 = call i32 @ecadd(i32 8786)
  %62 = load i8*, i8** %a.addr, align 4
  %call141 = call i32 @ecstrcode(i8* %62)
  %call142 = call i32 @ecadd(i32 %call141)
  %63 = load i8*, i8** %b.addr, align 4
  %call143 = call i32 @ecstrcode(i8* %63)
  %call144 = call i32 @ecadd(i32 %call143)
  %64 = load i8*, i8** %c.addr, align 4
  %call145 = call i32 @ecstrcode(i8* %64)
  %call146 = call i32 @ecadd(i32 %call145)
  br label %if.end153

if.else147:                                       ; preds = %land.lhs.true135, %lor.lhs.false130
  br label %do.body

do.body:                                          ; preds = %if.else147
  %65 = load i8*, i8** %b.addr, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* %65)
  call void @herrflush()
  %66 = load i32, i32* @noerrs, align 4
  %cmp148 = icmp ne i32 %66, 2
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %do.body
  %67 = load i32, i32* @errflag, align 4
  %or151 = or i32 %67, 1
  store i32 %or151, i32* @errflag, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %do.body
  store i32 38, i32* @tok, align 4
  %68 = load i32, i32* @ecused, align 4
  store i32 %68, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end153

if.end153:                                        ; preds = %do.end, %if.then139
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then91
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then60
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then34
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end158, %if.end152
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

declare i32 @strspn(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @par_cond_multi(i8* %a, %union.linkroot* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 4
  %l.addr = alloca %union.linkroot*, align 4
  %n = alloca %struct.linknode*, align 4
  store i8* %a, i8** %a.addr, align 4
  store %union.linkroot* %l, %union.linkroot** %l.addr, align 4
  %0 = load i8*, i8** %a.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %lor.lhs.false6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %a.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i32 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, -101
  br i1 %cmp4, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %a.addr, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8, i8* %arrayidx7, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load i8*, i8** %a.addr, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i8* %6)
  call void @herrflush()
  %7 = load i32, i32* @noerrs, align 4
  %cmp8 = icmp ne i32 %7, 2
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %do.body
  %8 = load i32, i32* @errflag, align 4
  %or = or i32 %8, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %do.body
  store i32 38, i32* @tok, align 4
  %9 = load i32, i32* @ecused, align 4
  store i32 %9, i32* @ecused, align 4
  store i32 0, i32* %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false6
  %10 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %call = call i32 @countlinknodes(%union.linkroot* %10)
  %shl = shl i32 %call, 7
  %or11 = or i32 18, %shl
  %shl12 = shl i32 %or11, 5
  %or13 = or i32 18, %shl12
  %call14 = call i32 @ecadd(i32 %or13)
  %11 = load i8*, i8** %a.addr, align 4
  %call15 = call i32 @ecstrcode(i8* %11)
  %call16 = call i32 @ecadd(i32 %call15)
  %12 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %list = bitcast %union.linkroot* %12 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %13 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %13, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool17 = icmp ne %struct.linknode* %14, null
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %15, i32 0, i32 2
  %16 = load i8*, i8** %dat, align 4
  %call18 = call i32 @ecstrcode(i8* %16)
  %call19 = call i32 @ecadd(i32 %call18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %17, i32 0, i32 0
  %18 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %18, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.end20:                                         ; preds = %for.end, %do.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.end
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare i32 @countlinknodes(%union.linkroot*) #1

declare void @untokenize(i8*) #1

declare i32 @open(i8*, i32, ...) #1

declare i32 @read(i32, i8*, i32) #1

declare i32 @close(i32) #1

declare i32 @lseek(i32, i32, i32) #1

declare i32 @unlink(i8*) #1

declare i32 @fstat(i32, %struct.stat*) #1

declare i8* @metafy(i8*, i32, i32) #1

declare %struct.eprog* @parse_string(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @write_dump(i32 %dfd, %union.linkroot* %progs, i32 %map, i32 %hlen, i32 %tlen) #0 {
entry:
  %dfd.addr = alloca i32, align 4
  %progs.addr = alloca %union.linkroot*, align 4
  %map.addr = alloca i32, align 4
  %hlen.addr = alloca i32, align 4
  %tlen.addr = alloca i32, align 4
  %node = alloca %struct.linknode*, align 4
  %wcf = alloca %struct.wcfunc*, align 4
  %other = alloca i32, align 4
  %ohlen = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pre = alloca [12 x i32], align 4
  %tail = alloca i8*, align 4
  %n = alloca i8*, align 4
  %head = alloca %struct.fdhead, align 4
  %prog = alloca %struct.eprog*, align 4
  store i32 %dfd, i32* %dfd.addr, align 4
  store %union.linkroot* %progs, %union.linkroot** %progs.addr, align 4
  store i32 %map, i32* %map.addr, align 4
  store i32 %hlen, i32* %hlen.addr, align 4
  store i32 %tlen, i32* %tlen.addr, align 4
  store i32 0, i32* %other, align 4
  %0 = load i32, i32* %map.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %tlen.addr, align 4
  %cmp6 = icmp sge i32 %1, 4096
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %map.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %2 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 48, i32 4, i1 false)
  %3 = load i32, i32* %hlen.addr, align 4
  store i32 %3, i32* %ohlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc105, %if.end
  %4 = load i32, i32* %other, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 117835012, i32 67438087
  %arraydecay7 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %arrayidx = getelementptr inbounds i32, i32* %arraydecay7, i32 0
  store i32 %cond, i32* %arrayidx, align 4
  %5 = load i32, i32* %map.addr, align 4
  %tobool8 = icmp ne i32 %5, 0
  %cond9 = select i1 %tobool8, i32 1, i32 0
  %6 = load i32, i32* %other, align 4
  %or = or i32 %cond9, %6
  %conv10 = trunc i32 %or to i8
  %arraydecay11 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay11, i32 1
  %7 = bitcast i32* %add.ptr to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %7, i32 0
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %do.body

do.body:                                          ; preds = %for.cond
  %8 = load i32, i32* %tlen.addr, align 4
  %and = and i32 %8, 255
  %conv13 = trunc i32 %and to i8
  %arraydecay14 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i32, i32* %arraydecay14, i32 1
  %9 = bitcast i32* %add.ptr15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %9, i32 1
  store i8 %conv13, i8* %arrayidx16, align 1
  %10 = load i32, i32* %tlen.addr, align 4
  %shr = ashr i32 %10, 8
  %and17 = and i32 %shr, 255
  %conv18 = trunc i32 %and17 to i8
  %arraydecay19 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %add.ptr20 = getelementptr inbounds i32, i32* %arraydecay19, i32 1
  %11 = bitcast i32* %add.ptr20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %11, i32 2
  store i8 %conv18, i8* %arrayidx21, align 1
  %12 = load i32, i32* %tlen.addr, align 4
  %shr22 = ashr i32 %12, 16
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %arraydecay25 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %add.ptr26 = getelementptr inbounds i32, i32* %arraydecay25, i32 1
  %13 = bitcast i32* %add.ptr26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %13, i32 3
  store i8 %conv24, i8* %arrayidx27, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay28 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %add.ptr29 = getelementptr inbounds i32, i32* %arraydecay28, i32 2
  %14 = bitcast i32* %add.ptr29 to i8*
  %call = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %15 = load i32, i32* %dfd.addr, align 4
  %arraydecay30 = getelementptr inbounds [12 x i32], [12 x i32]* %pre, i32 0, i32 0
  %16 = bitcast i32* %arraydecay30 to i8*
  %call31 = call i32 @write_loop(i32 %15, i8* %16, i32 48)
  %17 = load %union.linkroot*, %union.linkroot** %progs.addr, align 4
  %list = bitcast %union.linkroot* %17 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %18 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %18, %struct.linknode** %node, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %do.end
  %19 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool33 = icmp ne %struct.linknode* %19, null
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond32
  %20 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %20, i32 0, i32 2
  %21 = load i8*, i8** %dat, align 4
  %22 = bitcast i8* %21 to %struct.wcfunc*
  store %struct.wcfunc* %22, %struct.wcfunc** %wcf, align 4
  %23 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %name = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %23, i32 0, i32 0
  %24 = load i8*, i8** %name, align 4
  store i8* %24, i8** %n, align 4
  %25 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %prog34 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %25, i32 0, i32 1
  %26 = load %struct.eprog*, %struct.eprog** %prog34, align 4
  store %struct.eprog* %26, %struct.eprog** %prog, align 4
  %27 = load i32, i32* %hlen.addr, align 4
  %start = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 0
  store i32 %27, i32* %start, align 4
  %28 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %28, i32 0, i32 1
  %29 = load i32, i32* %len, align 4
  %30 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %30, i32 0, i32 2
  %31 = load i32, i32* %npats, align 4
  %mul = mul i32 %31, 4
  %sub = sub i32 %29, %mul
  %add = add i32 %sub, 4
  %sub35 = sub i32 %add, 1
  %div = udiv i32 %sub35, 4
  %32 = load i32, i32* %hlen.addr, align 4
  %add36 = add i32 %32, %div
  store i32 %add36, i32* %hlen.addr, align 4
  %33 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len37 = getelementptr inbounds %struct.eprog, %struct.eprog* %33, i32 0, i32 1
  %34 = load i32, i32* %len37, align 4
  %35 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats38 = getelementptr inbounds %struct.eprog, %struct.eprog* %35, i32 0, i32 2
  %36 = load i32, i32* %npats38, align 4
  %mul39 = mul i32 %36, 4
  %sub40 = sub i32 %34, %mul39
  %len41 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 1
  store i32 %sub40, i32* %len41, align 4
  %37 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats42 = getelementptr inbounds %struct.eprog, %struct.eprog* %37, i32 0, i32 2
  %38 = load i32, i32* %npats42, align 4
  %npats43 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 2
  store i32 %38, i32* %npats43, align 4
  %39 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %strs = getelementptr inbounds %struct.eprog, %struct.eprog* %39, i32 0, i32 6
  %40 = load i8*, i8** %strs, align 4
  %41 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog44 = getelementptr inbounds %struct.eprog, %struct.eprog* %41, i32 0, i32 5
  %42 = load i32*, i32** %prog44, align 4
  %43 = bitcast i32* %42 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %strs45 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 3
  store i32 %sub.ptr.sub, i32* %strs45, align 4
  %44 = load i8*, i8** %n, align 4
  %call46 = call i32 @strlen(i8* %44)
  %add47 = add i32 %call46, 4
  %div48 = udiv i32 %add47, 4
  %add49 = add i32 6, %div48
  %hlen50 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 4
  store i32 %add49, i32* %hlen50, align 4
  %45 = load i8*, i8** %n, align 4
  %call51 = call i8* @strrchr(i8* %45, i32 47)
  store i8* %call51, i8** %tail, align 4
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %if.then53, label %if.else

if.then53:                                        ; preds = %for.body
  %46 = load i8*, i8** %tail, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %tail, align 4
  br label %if.end54

if.else:                                          ; preds = %for.body
  %47 = load i8*, i8** %n, align 4
  store i8* %47, i8** %tail, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then53
  %48 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %flags = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %48, i32 0, i32 2
  %49 = load i32, i32* %flags, align 4
  %50 = load i8*, i8** %tail, align 4
  %51 = load i8*, i8** %n, align 4
  %sub.ptr.lhs.cast55 = ptrtoint i8* %50 to i32
  %sub.ptr.rhs.cast56 = ptrtoint i8* %51 to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %shl = shl i32 %sub.ptr.sub57, 2
  %or58 = or i32 %49, %shl
  %flags59 = getelementptr inbounds %struct.fdhead, %struct.fdhead* %head, i32 0, i32 5
  store i32 %or58, i32* %flags59, align 4
  %52 = load i32, i32* %other, align 4
  %tobool60 = icmp ne i32 %52, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end54
  %53 = bitcast %struct.fdhead* %head to i32*
  call void @fdswap(i32* %53, i32 6)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end54
  %54 = load i32, i32* %dfd.addr, align 4
  %55 = bitcast %struct.fdhead* %head to i8*
  %call63 = call i32 @write_loop(i32 %54, i8* %55, i32 24)
  %56 = load i8*, i8** %n, align 4
  %call64 = call i32 @strlen(i8* %56)
  %add65 = add i32 %call64, 1
  store i32 %add65, i32* %tmp, align 4
  %57 = load i32, i32* %dfd.addr, align 4
  %58 = load i8*, i8** %n, align 4
  %59 = load i32, i32* %tmp, align 4
  %call66 = call i32 @write_loop(i32 %57, i8* %58, i32 %59)
  %60 = load i32, i32* %tmp, align 4
  %and67 = and i32 %60, 3
  store i32 %and67, i32* %tmp, align 4
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end62
  %61 = load i32, i32* %dfd.addr, align 4
  %62 = bitcast %struct.fdhead* %head to i8*
  %63 = load i32, i32* %tmp, align 4
  %sub70 = sub i32 4, %63
  %call71 = call i32 @write_loop(i32 %61, i8* %62, i32 %sub70)
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end62
  br label %for.inc

for.inc:                                          ; preds = %if.end72
  %64 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %64, i32 0, i32 0
  %65 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %65, %struct.linknode** %node, align 4
  br label %for.cond32

for.end:                                          ; preds = %for.cond32
  %66 = load %union.linkroot*, %union.linkroot** %progs.addr, align 4
  %list73 = bitcast %union.linkroot* %66 to %struct.linklist*
  %first74 = getelementptr inbounds %struct.linklist, %struct.linklist* %list73, i32 0, i32 0
  %67 = load %struct.linknode*, %struct.linknode** %first74, align 4
  store %struct.linknode* %67, %struct.linknode** %node, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc99, %for.end
  %68 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool76 = icmp ne %struct.linknode* %68, null
  br i1 %tobool76, label %for.body77, label %for.end101

for.body77:                                       ; preds = %for.cond75
  %69 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat78 = getelementptr inbounds %struct.linknode, %struct.linknode* %69, i32 0, i32 2
  %70 = load i8*, i8** %dat78, align 4
  %71 = bitcast i8* %70 to %struct.wcfunc*
  %prog79 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %71, i32 0, i32 1
  %72 = load %struct.eprog*, %struct.eprog** %prog79, align 4
  store %struct.eprog* %72, %struct.eprog** %prog, align 4
  %73 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len80 = getelementptr inbounds %struct.eprog, %struct.eprog* %73, i32 0, i32 1
  %74 = load i32, i32* %len80, align 4
  %75 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats81 = getelementptr inbounds %struct.eprog, %struct.eprog* %75, i32 0, i32 2
  %76 = load i32, i32* %npats81, align 4
  %mul82 = mul i32 %76, 4
  %sub83 = sub i32 %74, %mul82
  %add84 = add i32 %sub83, 4
  %sub85 = sub i32 %add84, 1
  %div86 = udiv i32 %sub85, 4
  store i32 %div86, i32* %tmp, align 4
  %77 = load i32, i32* %other, align 4
  %tobool87 = icmp ne i32 %77, 0
  br i1 %tobool87, label %if.then88, label %if.end95

if.then88:                                        ; preds = %for.body77
  %78 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog89 = getelementptr inbounds %struct.eprog, %struct.eprog* %78, i32 0, i32 5
  %79 = load i32*, i32** %prog89, align 4
  %80 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %strs90 = getelementptr inbounds %struct.eprog, %struct.eprog* %80, i32 0, i32 6
  %81 = load i8*, i8** %strs90, align 4
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog91 = getelementptr inbounds %struct.eprog, %struct.eprog* %83, i32 0, i32 5
  %84 = load i32*, i32** %prog91, align 4
  %sub.ptr.lhs.cast92 = ptrtoint i32* %82 to i32
  %sub.ptr.rhs.cast93 = ptrtoint i32* %84 to i32
  %sub.ptr.sub94 = sub i32 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub94, 4
  call void @fdswap(i32* %79, i32 %sub.ptr.div)
  br label %if.end95

if.end95:                                         ; preds = %if.then88, %for.body77
  %85 = load i32, i32* %dfd.addr, align 4
  %86 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %prog96 = getelementptr inbounds %struct.eprog, %struct.eprog* %86, i32 0, i32 5
  %87 = load i32*, i32** %prog96, align 4
  %88 = bitcast i32* %87 to i8*
  %89 = load i32, i32* %tmp, align 4
  %mul97 = mul i32 %89, 4
  %call98 = call i32 @write_loop(i32 %85, i8* %88, i32 %mul97)
  br label %for.inc99

for.inc99:                                        ; preds = %if.end95
  %90 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next100 = getelementptr inbounds %struct.linknode, %struct.linknode* %90, i32 0, i32 0
  %91 = load %struct.linknode*, %struct.linknode** %next100, align 4
  store %struct.linknode* %91, %struct.linknode** %node, align 4
  br label %for.cond75

for.end101:                                       ; preds = %for.cond75
  %92 = load i32, i32* %other, align 4
  %tobool102 = icmp ne i32 %92, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %for.end101
  br label %for.end106

if.end104:                                        ; preds = %for.end101
  store i32 2, i32* %other, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %if.end104
  %93 = load i32, i32* %ohlen, align 4
  store i32 %93, i32* %hlen.addr, align 4
  br label %for.cond

for.end106:                                       ; preds = %if.then103
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i8* @strcpy(i8*, i8*) #1

declare i32 @write_loop(i32, i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @fdswap(i32* %p, i32 %n) #0 {
entry:
  %p.addr = alloca i32*, align 4
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %p.addr, align 4
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %and = and i32 %3, 255
  %shl = shl i32 %and, 24
  %4 = load i32, i32* %c, align 4
  %and1 = and i32 %4, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %5 = load i32, i32* %c, align 4
  %and3 = and i32 %5, 16711680
  %shr = lshr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %6 = load i32, i32* %c, align 4
  %and5 = and i32 %6, -16777216
  %shr6 = lshr i32 %and5, 24
  %or7 = or i32 %or4, %shr6
  %7 = load i32*, i32** %p.addr, align 4
  store i32 %or7, i32* %7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32*, i32** %p.addr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %p.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @cur_add_func(i8* %nam, %struct.shfunc* %shf, %union.linkroot* %names, %union.linkroot* %progs, i32* %hlen, i32* %tlen, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %shf.addr = alloca %struct.shfunc*, align 4
  %names.addr = alloca %union.linkroot*, align 4
  %progs.addr = alloca %union.linkroot*, align 4
  %hlen.addr = alloca i32*, align 4
  %tlen.addr = alloca i32*, align 4
  %what.addr = alloca i32, align 4
  %prog = alloca %struct.eprog*, align 4
  %wcf = alloca %struct.wcfunc*, align 4
  %ona = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.shfunc* %shf, %struct.shfunc** %shf.addr, align 4
  store %union.linkroot* %names, %union.linkroot** %names.addr, align 4
  store %union.linkroot* %progs, %union.linkroot** %progs.addr, align 4
  store i32* %hlen, i32** %hlen.addr, align 4
  store i32* %tlen, i32** %tlen.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @noaliases, align 4
  store i32 %2, i32* %ona, align 4
  %3 = load i32, i32* %what.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %nam.addr, align 4
  %5 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node4 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %5, i32 0, i32 0
  %nam5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %6 = load i8*, i8** %nam5, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i8* %6)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node6 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %7, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %8 = load i32, i32* %flags7, align 4
  %and8 = and i32 %8, 8192
  store i32 %and8, i32* @noaliases, align 4
  %9 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node9 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %9, i32 0, i32 0
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %10 = load i8*, i8** %nam10, align 4
  %call = call %struct.eprog* @getfpfunc(i8* %10, i32* null, i8** null, i8** null, i32 0)
  store %struct.eprog* %call, %struct.eprog** %prog, align 4
  %tobool11 = icmp ne %struct.eprog* %call, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %cmp = icmp eq %struct.eprog* %11, @dummy_eprog
  br i1 %cmp, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* %ona, align 4
  store i32 %12, i32* @noaliases, align 4
  %13 = load i8*, i8** %nam.addr, align 4
  %14 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node13 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %nam14 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 1
  %15 = load i8*, i8** %nam14, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i8* %15)
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %16 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %dump = getelementptr inbounds %struct.eprog, %struct.eprog* %16, i32 0, i32 8
  %17 = load %struct.funcdump*, %struct.funcdump** %dump, align 4
  %tobool16 = icmp ne %struct.funcdump* %17, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %18 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %call18 = call %struct.eprog* @dupeprog(%struct.eprog* %18, i32 1)
  store %struct.eprog* %call18, %struct.eprog** %prog, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %19 = load i32, i32* %ona, align 4
  store i32 %19, i32* @noaliases, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %what.addr, align 4
  %and20 = and i32 %20, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.else
  %21 = load i8*, i8** %nam.addr, align 4
  %22 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node23 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %22, i32 0, i32 0
  %nam24 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node23, i32 0, i32 1
  %23 = load i8*, i8** %nam24, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i32 0, i32 0), i8* %23)
  store i32 1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.else
  %24 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %24, i32 0, i32 3
  %25 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %call26 = call %struct.eprog* @dupeprog(%struct.eprog* %25, i32 1)
  store %struct.eprog* %call26, %struct.eprog** %prog, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end19
  %call28 = call i8* @zhalloc(i32 12)
  %26 = bitcast i8* %call28 to %struct.wcfunc*
  store %struct.wcfunc* %26, %struct.wcfunc** %wcf, align 4
  %27 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node29 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %27, i32 0, i32 0
  %nam30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 1
  %28 = load i8*, i8** %nam30, align 4
  %29 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %name = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %29, i32 0, i32 0
  store i8* %28, i8** %name, align 4
  %30 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %31 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %prog31 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %31, i32 0, i32 1
  store %struct.eprog* %30, %struct.eprog** %prog31, align 4
  %32 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %flags32 = getelementptr inbounds %struct.eprog, %struct.eprog* %32, i32 0, i32 0
  %33 = load i32, i32* %flags32, align 4
  %and33 = and i32 %33, 8
  %tobool34 = icmp ne i32 %and33, 0
  %cond = select i1 %tobool34, i32 1, i32 2
  %34 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %flags35 = getelementptr inbounds %struct.wcfunc, %struct.wcfunc* %34, i32 0, i32 2
  store i32 %cond, i32* %flags35, align 4
  %35 = load %union.linkroot*, %union.linkroot** %progs.addr, align 4
  %36 = load %union.linkroot*, %union.linkroot** %progs.addr, align 4
  %list = bitcast %union.linkroot* %36 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %37 = load %struct.linknode*, %struct.linknode** %last, align 4
  %38 = load %struct.wcfunc*, %struct.wcfunc** %wcf, align 4
  %39 = bitcast %struct.wcfunc* %38 to i8*
  %call36 = call %struct.linknode* @insertlinknode(%union.linkroot* %35, %struct.linknode* %37, i8* %39)
  %40 = load %union.linkroot*, %union.linkroot** %names.addr, align 4
  %41 = load %union.linkroot*, %union.linkroot** %names.addr, align 4
  %list37 = bitcast %union.linkroot* %41 to %struct.linklist*
  %last38 = getelementptr inbounds %struct.linklist, %struct.linklist* %list37, i32 0, i32 1
  %42 = load %struct.linknode*, %struct.linknode** %last38, align 4
  %43 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node39 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %43, i32 0, i32 0
  %nam40 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node39, i32 0, i32 1
  %44 = load i8*, i8** %nam40, align 4
  %call41 = call %struct.linknode* @insertlinknode(%union.linkroot* %40, %struct.linknode* %42, i8* %44)
  %45 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node42 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %45, i32 0, i32 0
  %nam43 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node42, i32 0, i32 1
  %46 = load i8*, i8** %nam43, align 4
  %call44 = call i32 @strlen(i8* %46)
  %add = add i32 %call44, 4
  %div = udiv i32 %add, 4
  %add45 = add i32 6, %div
  %47 = load i32*, i32** %hlen.addr, align 4
  %48 = load i32, i32* %47, align 4
  %add46 = add i32 %48, %add45
  store i32 %add46, i32* %47, align 4
  %49 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %len = getelementptr inbounds %struct.eprog, %struct.eprog* %49, i32 0, i32 1
  %50 = load i32, i32* %len, align 4
  %51 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %npats = getelementptr inbounds %struct.eprog, %struct.eprog* %51, i32 0, i32 2
  %52 = load i32, i32* %npats, align 4
  %mul = mul i32 %52, 4
  %sub = sub i32 %50, %mul
  %add47 = add i32 %sub, 4
  %sub48 = sub i32 %add47, 1
  %div49 = udiv i32 %sub48, 4
  %53 = load i32*, i32** %tlen.addr, align 4
  %54 = load i32, i32* %53, align 4
  %add50 = add i32 %54, %div49
  store i32 %add50, i32* %53, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then22, %if.then12, %if.then3
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

declare void @tokenize(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare %struct.linknode* @linknodebydatum(%union.linkroot*, i8*) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

declare %struct.eprog* @getfpfunc(i8*, i32*, i8**, i8**, i32) #1

declare i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @load_dump_file(i8* %dump, %struct.stat* %sbuf, i32 %other, i32 %len) #0 {
entry:
  %dump.addr = alloca i8*, align 4
  %sbuf.addr = alloca %struct.stat*, align 4
  %other.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %d = alloca %struct.funcdump*, align 4
  %addr = alloca i32*, align 4
  %fd = alloca i32, align 4
  %off = alloca i32, align 4
  %mlen = alloca i32, align 4
  store i8* %dump, i8** %dump.addr, align 4
  store %struct.stat* %sbuf, %struct.stat** %sbuf.addr, align 4
  store i32 %other, i32* %other.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %other.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @load_dump_file.pgsz, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call i32 @sysconf(i32 30)
  store i32 %call, i32* @load_dump_file.pgsz, align 4
  %2 = load i32, i32* @load_dump_file.pgsz, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* @load_dump_file.pgsz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load i32, i32* %len.addr, align 4
  %4 = load i32, i32* @load_dump_file.pgsz, align 4
  %neg = xor i32 %4, -1
  %and = and i32 %3, %neg
  store i32 %and, i32* %off, align 4
  %5 = load i32, i32* %len.addr, align 4
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i32, i32* %off, align 4
  %sub = sub nsw i32 %6, %7
  %add = add nsw i32 %5, %sub
  store i32 %add, i32* %mlen, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  store i32 0, i32* %off, align 4
  %8 = load i32, i32* %len.addr, align 4
  store i32 %8, i32* %mlen, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %9 = load i8*, i8** %dump.addr, align 4
  %call4 = call i32 (i8*, i32, ...) @open(i8* %9, i32 0)
  store i32 %call4, i32* %fd, align 4
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %return

if.end6:                                          ; preds = %if.end3
  %10 = load i32, i32* %fd, align 4
  %call7 = call i32 @movefd(i32 %10)
  store i32 %call7, i32* %fd, align 4
  %11 = load i32, i32* %fd, align 4
  %cmp8 = icmp eq i32 %11, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %return

if.end10:                                         ; preds = %if.end6
  %12 = load i32, i32* %mlen, align 4
  %13 = load i32, i32* %fd, align 4
  %14 = load i32, i32* %off, align 4
  %call11 = call i8* @mmap(i8* null, i32 %12, i32 1, i32 1, i32 %13, i32 %14)
  %15 = bitcast i8* %call11 to i32*
  store i32* %15, i32** %addr, align 4
  %cmp12 = icmp eq i32* %15, inttoptr (i32 -1 to i32*)
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %16 = load i32, i32* %fd, align 4
  %call14 = call i32 @close(i32 %16)
  br label %return

if.end15:                                         ; preds = %if.end10
  %call16 = call i8* @zalloc(i32 36)
  %17 = bitcast i8* %call16 to %struct.funcdump*
  store %struct.funcdump* %17, %struct.funcdump** %d, align 4
  %18 = load %struct.funcdump*, %struct.funcdump** @dumps, align 4
  %19 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %next = getelementptr inbounds %struct.funcdump, %struct.funcdump* %19, i32 0, i32 0
  store %struct.funcdump* %18, %struct.funcdump** %next, align 4
  %20 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  store %struct.funcdump* %20, %struct.funcdump** @dumps, align 4
  %21 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %22 = load i32, i32* %st_dev, align 8
  %23 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %dev = getelementptr inbounds %struct.funcdump, %struct.funcdump* %23, i32 0, i32 1
  store i32 %22, i32* %dev, align 4
  %24 = load %struct.stat*, %struct.stat** %sbuf.addr, align 4
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 2
  %25 = load i32, i32* %st_ino, align 8
  %26 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %ino = getelementptr inbounds %struct.funcdump, %struct.funcdump* %26, i32 0, i32 2
  store i32 %25, i32* %ino, align 4
  %27 = load i32, i32* %fd, align 4
  %28 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %fd17 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %28, i32 0, i32 3
  store i32 %27, i32* %fd17, align 4
  %29 = load i32, i32* %fd, align 4
  %call18 = call i32 (i32, i32, ...) @fcntl(i32 %29, i32 2, i32 1)
  %30 = load i32*, i32** %addr, align 4
  %31 = load i32, i32* %other.addr, align 4
  %tobool19 = icmp ne i32 %31, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %32 = load i32, i32* %len.addr, align 4
  %33 = load i32, i32* %off, align 4
  %sub20 = sub nsw i32 %32, %33
  %div = udiv i32 %sub20, 4
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 0, %cond.false ]
  %add.ptr = getelementptr inbounds i32, i32* %30, i32 %cond
  %34 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %map = getelementptr inbounds %struct.funcdump, %struct.funcdump* %34, i32 0, i32 4
  store i32* %add.ptr, i32** %map, align 4
  %35 = load i32*, i32** %addr, align 4
  %36 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %addr21 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %36, i32 0, i32 5
  store i32* %35, i32** %addr21, align 4
  %37 = load i32, i32* %len.addr, align 4
  %38 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %len22 = getelementptr inbounds %struct.funcdump, %struct.funcdump* %38, i32 0, i32 6
  store i32 %37, i32* %len22, align 4
  %39 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %count = getelementptr inbounds %struct.funcdump, %struct.funcdump* %39, i32 0, i32 7
  store i32 0, i32* %count, align 4
  %40 = load i8*, i8** %dump.addr, align 4
  %call23 = call i8* @ztrdup(i8* %40)
  %41 = load %struct.funcdump*, %struct.funcdump** %d, align 4
  %filename = getelementptr inbounds %struct.funcdump, %struct.funcdump* %41, i32 0, i32 8
  store i8* %call23, i8** %filename, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then13, %if.then9, %if.then5
  ret void
}

declare i32 @sysconf(i32) #1

declare i32 @movefd(i32) #1

declare i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare i32 @fcntl(i32, i32, ...) #1

declare i32 @munmap(i8*, i32) #1

declare i32 @zclose(i32) #1

declare void @zsfree(i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
