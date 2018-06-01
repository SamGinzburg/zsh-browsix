; ModuleID = 'lex.c'
source_filename = "lex.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.lexbufstate = type { i8*, i32, i32 }
%struct.heredocs = type { %struct.heredocs*, i32, i32, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.lex_stack = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.lexbufstate, i32, i8*, %struct.lexbufstate, i32, i32 }
%struct.reswd = type { %struct.hashnode, i32 }
%struct.alias = type { %struct.hashnode, i8*, i32 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }

@ztokens = global [30 x i8] c"#$^*(())$=|{}[]`<>>?~`,-!'\22\5C\5C\00", align 1
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c">|\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c">>|\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"<<-\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"<&\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c">&\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"&>\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"&>|\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c">>&\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c">>&|\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"|&\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"&|\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c";&\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c";|\00", align 1
@tokstrings = global [63 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 4
@dbparens = internal global i32 0, align 4
@isfirstln = common global i32 0, align 4
@isfirstch = common global i32 0, align 4
@lexflags = common global i32 0, align 4
@tok = common global i32 0, align 4
@tokstr = common global i8* null, align 4
@zshlextext = common global i8* null, align 4
@lexbuf = internal global %struct.lexbufstate { i8* null, i32 256, i32 0 }, align 4
@lex_add_raw = common global i32 0, align 4
@tokstr_raw = internal global i8* null, align 4
@lexbuf_raw = internal global %struct.lexbufstate zeroinitializer, align 4
@lexstop = common global i32 0, align 4
@toklineno = common global i32 0, align 4
@inrepeat_ = external global i32, align 4
@opts = external global [181 x i8], align 1
@incmdpos = external global i32, align 4
@nocorrect = common global i32 0, align 4
@hdocs = external global %struct.heredocs*, align 4
@hwbegin = external global void (i32)*, align 4
@stophist = external global i32, align 4
@hwend = external global void ()*, align 4
@.str.31 = private unnamed_addr constant [24 x i8] c"here document too large\00", align 1
@isnewlin = external global i32, align 4
@inbufct = external global i32, align 4
@ctxtlex.oldpos = internal global i32 0, align 4
@infor = external global i32, align 4
@inredir = external global i32, align 4
@initlextabs.lx1 = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"\5Cq\0A;!&|(){}[]<>\00", align 1
@initlextabs.lx2 = internal global i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), align 4
@.str.33 = private unnamed_addr constant [21 x i8] c";)|$[]~({}><=\5C'\22`,-!\00", align 1
@lexact1 = internal global [256 x i8] zeroinitializer, align 1
@lexact2 = internal global [256 x i8] zeroinitializer, align 1
@lextok2 = internal global [256 x i8] zeroinitializer, align 1
@errflag = external global i32, align 4
@.str.34 = private unnamed_addr constant [22 x i8] c"parse error near `%c'\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@nulstring = external global [0 x i8], align 1
@hgetc = external global i32 ()*, align 4
@strin = external global i32, align 4
@incasepat = external global i32, align 4
@inbufflags = external global i32, align 4
@typtab = external global [256 x i16], align 2
@reswdtab = external global %struct.hashtable*, align 4
@incond = external global i32, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"]]\00", align 1
@inalmore = common global i32 0, align 4
@tokfd = common global i32 0, align 4
@zlemetacs = common global i32 0, align 4
@zlemetall = common global i32 0, align 4
@inwhat = common global i32 0, align 4
@addedx = common global i32 0, align 4
@wb = common global i32 0, align 4
@we = common global i32 0, align 4
@wordbeg = common global i32 0, align 4
@parbegin = common global i32 0, align 4
@parend = common global i32 0, align 4
@noaliases = common global i32 0, align 4
@nocomments = common global i32 0, align 4
@lineno = external global i32, align 4
@qbang = external global i32, align 4
@bangchar = external global i8, align 1
@hungetc = external global void (i32)*, align 4
@hashchar = external global i8, align 1
@expanding = external global i32, align 4
@hwabort = external global void ()*, align 4
@hwaddc = external global void (i32)*, align 4
@addtoline = external global void (i32)*, align 4
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@intypeset = external global i32, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"unmatched %c\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"closing brace expected\00", align 1
@aliastab = external global %struct.hashtable*, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@aliasspaceflag = external global i32, align 4
@sufaliastab = external global %struct.hashtable*, align 4

; Function Attrs: noinline nounwind
define void @lex_context_save(%struct.lex_stack* %ls, i32 %toplevel) #0 {
entry:
  %ls.addr = alloca %struct.lex_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.lex_stack* %ls, %struct.lex_stack** %ls.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %1 = load i32, i32* @dbparens, align 4
  %2 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %dbparens = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %2, i32 0, i32 0
  store i32 %1, i32* %dbparens, align 4
  %3 = load i32, i32* @isfirstln, align 4
  %4 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %isfirstln = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %4, i32 0, i32 1
  store i32 %3, i32* %isfirstln, align 4
  %5 = load i32, i32* @isfirstch, align 4
  %6 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %isfirstch = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %6, i32 0, i32 2
  store i32 %5, i32* %isfirstch, align 4
  %7 = load i32, i32* @lexflags, align 4
  %8 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexflags = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %8, i32 0, i32 3
  store i32 %7, i32* %lexflags, align 4
  %9 = load i32, i32* @tok, align 4
  %10 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tok = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %10, i32 0, i32 4
  store i32 %9, i32* %tok, align 4
  %11 = load i8*, i8** @tokstr, align 4
  %12 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tokstr = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %12, i32 0, i32 5
  store i8* %11, i8** %tokstr, align 4
  %13 = load i8*, i8** @zshlextext, align 4
  %14 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %zshlextext = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %14, i32 0, i32 6
  store i8* %13, i8** %zshlextext, align 4
  %15 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexbuf = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %15, i32 0, i32 7
  %16 = bitcast %struct.lexbufstate* %lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* bitcast (%struct.lexbufstate* @lexbuf to i8*), i32 12, i32 4, i1 false)
  %17 = load i32, i32* @lex_add_raw, align 4
  %18 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lex_add_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %18, i32 0, i32 8
  store i32 %17, i32* %lex_add_raw, align 4
  %19 = load i8*, i8** @tokstr_raw, align 4
  %20 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tokstr_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %20, i32 0, i32 9
  store i8* %19, i8** %tokstr_raw, align 4
  %21 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexbuf_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %21, i32 0, i32 10
  %22 = bitcast %struct.lexbufstate* %lexbuf_raw to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i32 12, i32 4, i1 false)
  %23 = load i32, i32* @lexstop, align 4
  %24 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexstop = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %24, i32 0, i32 11
  store i32 %23, i32* %lexstop, align 4
  %25 = load i32, i32* @toklineno, align 4
  %26 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %toklineno = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %26, i32 0, i32 12
  store i32 %25, i32* %toklineno, align 4
  store i8* null, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8* null, i8** @zshlextext, align 4
  store i8* null, i8** @tokstr, align 4
  store i32 256, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  store i8* null, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  store i8* null, i8** @tokstr_raw, align 4
  store i32 0, i32* @lex_add_raw, align 4
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: noinline nounwind
define void @lex_context_restore(%struct.lex_stack* %ls, i32 %toplevel) #0 {
entry:
  %ls.addr = alloca %struct.lex_stack*, align 4
  %toplevel.addr = alloca i32, align 4
  store %struct.lex_stack* %ls, %struct.lex_stack** %ls.addr, align 4
  store i32 %toplevel, i32* %toplevel.addr, align 4
  %0 = load i32, i32* %toplevel.addr, align 4
  %1 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %dbparens = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %1, i32 0, i32 0
  %2 = load i32, i32* %dbparens, align 4
  store i32 %2, i32* @dbparens, align 4
  %3 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %isfirstln = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %3, i32 0, i32 1
  %4 = load i32, i32* %isfirstln, align 4
  store i32 %4, i32* @isfirstln, align 4
  %5 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %isfirstch = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %5, i32 0, i32 2
  %6 = load i32, i32* %isfirstch, align 4
  store i32 %6, i32* @isfirstch, align 4
  %7 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexflags = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %7, i32 0, i32 3
  %8 = load i32, i32* %lexflags, align 4
  store i32 %8, i32* @lexflags, align 4
  %9 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tok = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %9, i32 0, i32 4
  %10 = load i32, i32* %tok, align 4
  store i32 %10, i32* @tok, align 4
  %11 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tokstr = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %11, i32 0, i32 5
  %12 = load i8*, i8** %tokstr, align 4
  store i8* %12, i8** @tokstr, align 4
  %13 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %zshlextext = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %13, i32 0, i32 6
  %14 = load i8*, i8** %zshlextext, align 4
  store i8* %14, i8** @zshlextext, align 4
  %15 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexbuf = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %15, i32 0, i32 7
  %16 = bitcast %struct.lexbufstate* %lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.lexbufstate* @lexbuf to i8*), i8* %16, i32 12, i32 4, i1 false)
  %17 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lex_add_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %17, i32 0, i32 8
  %18 = load i32, i32* %lex_add_raw, align 4
  store i32 %18, i32* @lex_add_raw, align 4
  %19 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %tokstr_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %19, i32 0, i32 9
  %20 = load i8*, i8** %tokstr_raw, align 4
  store i8* %20, i8** @tokstr_raw, align 4
  %21 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexbuf_raw = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %21, i32 0, i32 10
  %22 = bitcast %struct.lexbufstate* %lexbuf_raw to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i8* %22, i32 12, i32 4, i1 false)
  %23 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %lexstop = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %23, i32 0, i32 11
  %24 = load i32, i32* %lexstop, align 4
  store i32 %24, i32* @lexstop, align 4
  %25 = load %struct.lex_stack*, %struct.lex_stack** %ls.addr, align 4
  %toklineno = getelementptr inbounds %struct.lex_stack, %struct.lex_stack* %25, i32 0, i32 12
  %26 = load i32, i32* %toklineno, align 4
  store i32 %26, i32* @toklineno, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @zshlex() #0 {
entry:
  %next = alloca %struct.heredocs*, align 4
  %doc = alloca i8*, align 4
  %munged_term = alloca i8*, align 4
  %0 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %0, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end48

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %1 = load i32, i32* @inrepeat_, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %do.body
  %2 = load i32, i32* @inrepeat_, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @inrepeat_, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %do.body
  %3 = load i32, i32* @inrepeat_, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end2
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 164), align 1
  %conv = sext i8 %4 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, i32* @incmdpos, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end2
  %call = call i32 @gettok()
  store i32 %call, i32* @tok, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %5 = load i32, i32* @tok, align 4
  %cmp7 = icmp ne i32 %5, 37
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call9 = call i32 @exalias()
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %tobool10, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %7 = load i32, i32* @nocorrect, align 4
  %and = and i32 %7, 1
  store i32 %and, i32* @nocorrect, align 4
  %8 = load i32, i32* @tok, align 4
  %cmp11 = icmp eq i32 %8, 2
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %9 = load i32, i32* @tok, align 4
  %cmp13 = icmp eq i32 %9, 37
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %lor.lhs.false, %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %if.then15
  %10 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %tobool16 = icmp ne %struct.heredocs* %10, null
  br i1 %tobool16, label %while.body, label %while.end31

while.body:                                       ; preds = %while.cond
  %11 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %next17 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %11, i32 0, i32 0
  %12 = load %struct.heredocs*, %struct.heredocs** %next17, align 4
  store %struct.heredocs* %12, %struct.heredocs** %next, align 4
  %13 = load void (i32)*, void (i32)** @hwbegin, align 4
  call void %13(i32 0)
  %14 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %type = getelementptr inbounds %struct.heredocs, %struct.heredocs* %14, i32 0, i32 1
  %15 = load i32, i32* %type, align 4
  %cmp18 = icmp eq i32 %15, 10
  %cond = select i1 %cmp18, i32 27, i32 28
  call void @cmdpush(i32 %cond)
  %16 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %str = getelementptr inbounds %struct.heredocs, %struct.heredocs* %16, i32 0, i32 3
  %17 = load i8*, i8** %str, align 4
  %call20 = call i8* @dupstring(i8* %17)
  store i8* %call20, i8** %munged_term, align 4
  %18 = load i32, i32* @stophist, align 4
  %add = add nsw i32 %18, 4
  store i32 %add, i32* @stophist, align 4
  %19 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %type21 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %19, i32 0, i32 1
  %20 = load i32, i32* %type21, align 4
  %call22 = call i8* @gethere(i8** %munged_term, i32 %20)
  store i8* %call22, i8** %doc, align 4
  %21 = load i32, i32* @stophist, align 4
  %sub = sub nsw i32 %21, 4
  store i32 %sub, i32* @stophist, align 4
  call void @cmdpop()
  %22 = load void ()*, void ()** @hwend, align 4
  call void %22()
  %23 = load i8*, i8** %doc, align 4
  %tobool23 = icmp ne i8* %23, null
  br i1 %tobool23, label %if.end29, label %if.then24

if.then24:                                        ; preds = %while.body
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0))
  br label %while.cond25

while.cond25:                                     ; preds = %while.body27, %if.then24
  %24 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %tobool26 = icmp ne %struct.heredocs* %24, null
  br i1 %tobool26, label %while.body27, label %while.end

while.body27:                                     ; preds = %while.cond25
  %25 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %next28 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %25, i32 0, i32 0
  %26 = load %struct.heredocs*, %struct.heredocs** %next28, align 4
  store %struct.heredocs* %26, %struct.heredocs** %next, align 4
  %27 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %28 = bitcast %struct.heredocs* %27 to i8*
  call void @zfree(i8* %28, i32 16)
  %29 = load %struct.heredocs*, %struct.heredocs** %next, align 4
  store %struct.heredocs* %29, %struct.heredocs** @hdocs, align 4
  br label %while.cond25

while.end:                                        ; preds = %while.cond25
  store i32 38, i32* @tok, align 4
  br label %while.end31

if.end29:                                         ; preds = %while.body
  %30 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %pc = getelementptr inbounds %struct.heredocs, %struct.heredocs* %30, i32 0, i32 2
  %31 = load i32, i32* %pc, align 4
  %32 = load i8*, i8** %doc, align 4
  %33 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %str30 = getelementptr inbounds %struct.heredocs, %struct.heredocs* %33, i32 0, i32 3
  %34 = load i8*, i8** %str30, align 4
  %35 = load i8*, i8** %munged_term, align 4
  call void @setheredoc(i32 %31, i32 12, i8* %32, i8* %34, i8* %35)
  %36 = load %struct.heredocs*, %struct.heredocs** @hdocs, align 4
  %37 = bitcast %struct.heredocs* %36 to i8*
  call void @zfree(i8* %37, i32 16)
  %38 = load %struct.heredocs*, %struct.heredocs** %next, align 4
  store %struct.heredocs* %38, %struct.heredocs** @hdocs, align 4
  br label %while.cond

while.end31:                                      ; preds = %while.end, %while.cond
  br label %if.end32

if.end32:                                         ; preds = %while.end31, %lor.lhs.false
  %39 = load i32, i32* @tok, align 4
  %cmp33 = icmp ne i32 %39, 2
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  store i32 0, i32* @isnewlin, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end32
  %40 = load i32, i32* @inbufct, align 4
  %tobool36 = icmp ne i32 %40, 0
  %cond37 = select i1 %tobool36, i32 -1, i32 1
  store i32 %cond37, i32* @isnewlin, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  %41 = load i32, i32* @tok, align 4
  %cmp39 = icmp eq i32 %41, 3
  br i1 %cmp39, label %if.then47, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end38
  %42 = load i32, i32* @tok, align 4
  %cmp42 = icmp eq i32 %42, 2
  br i1 %cmp42, label %land.lhs.true44, label %if.end48

land.lhs.true44:                                  ; preds = %lor.lhs.false41
  %43 = load i32, i32* @lexflags, align 4
  %and45 = and i32 %43, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %land.lhs.true44, %if.end38
  store i32 1, i32* @tok, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then, %if.then47, %land.lhs.true44, %lor.lhs.false41
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @gettok() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %peekfd = alloca i32, align 4
  %peek = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 -1, i32* %peekfd, align 4
  br label %beginning

beginning:                                        ; preds = %if.then142, %entry
  store i8* null, i8** @tokstr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %beginning
  %0 = load i32 ()*, i32 ()** @hgetc, align 4
  %call = call i32 %0()
  store i32 %call, i32* %c, align 4
  %conv = trunc i32 %call to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv1 = sext i16 %1 to i32
  %and = and i32 %conv1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* @lexstop, align 4
  %tobool2 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %4 = load i32, i32* @lineno, align 4
  store i32 %4, i32* @toklineno, align 4
  %5 = load i32, i32* @lexstop, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %6 = load i32, i32* @errflag, align 4
  %tobool4 = icmp ne i32 %6, 0
  %cond = select i1 %tobool4, i32 38, i32 37
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, i32* @isfirstln, align 4
  %7 = load i32, i32* @lexflags, align 4
  %and5 = and i32 %7, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* @inbufflags, align 4
  %and7 = and i32 %8, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end15, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* @inbufct, align 4
  %10 = load i32, i32* @qbang, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %land.rhs11, label %land.end14

land.rhs11:                                       ; preds = %if.then9
  %11 = load i32, i32* %c, align 4
  %12 = load i8, i8* @bangchar, align 1
  %conv12 = zext i8 %12 to i32
  %cmp = icmp eq i32 %11, %conv12
  br label %land.end14

land.end14:                                       ; preds = %land.rhs11, %if.then9
  %13 = phi i1 [ false, %if.then9 ], [ %cmp, %land.rhs11 ]
  %land.ext = zext i1 %13 to i32
  %sub = sub nsw i32 %9, %land.ext
  store i32 %sub, i32* @wordbeg, align 4
  br label %if.end15

if.end15:                                         ; preds = %land.end14, %land.lhs.true, %if.end
  %14 = load void (i32)*, void (i32)** @hwbegin, align 4
  %15 = load i32, i32* @qbang, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %land.rhs17, label %land.end21

land.rhs17:                                       ; preds = %if.end15
  %16 = load i32, i32* %c, align 4
  %17 = load i8, i8* @bangchar, align 1
  %conv18 = zext i8 %17 to i32
  %cmp19 = icmp eq i32 %16, %conv18
  br label %land.end21

land.end21:                                       ; preds = %land.rhs17, %if.end15
  %18 = phi i1 [ false, %if.end15 ], [ %cmp19, %land.rhs17 ]
  %land.ext22 = zext i1 %18 to i32
  %sub23 = sub nsw i32 -1, %land.ext22
  call void %14(i32 %sub23)
  %19 = load i32, i32* @dbparens, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %land.end21
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %call26 = call i8* @hcalloc(i32 32)
  store i8* %call26, i8** @tokstr, align 4
  store i8* %call26, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %20 = load void (i32)*, void (i32)** @hungetc, align 4
  %21 = load i32, i32* %c, align 4
  call void %20(i32 %21)
  call void @cmdpush(i32 9)
  %22 = load i32, i32* @infor, align 4
  %tobool27 = icmp ne i32 %22, 0
  %cond28 = select i1 %tobool27, i32 59, i32 41
  %conv29 = trunc i32 %cond28 to i8
  %call30 = call i32 @dquote_parse(i8 signext %conv29, i32 0)
  store i32 %call30, i32* %c, align 4
  call void @cmdpop()
  %23 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %23, align 1
  %24 = load i32, i32* %c, align 4
  %tobool31 = icmp ne i32 %24, 0
  br i1 %tobool31, label %if.end35, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.then25
  %25 = load i32, i32* @infor, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true32
  %26 = load i32, i32* @infor, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* @infor, align 4
  store i32 28, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true32, %if.then25
  %27 = load i32, i32* %c, align 4
  %tobool36 = icmp ne i32 %27, 0
  br i1 %tobool36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35
  %28 = load i32 ()*, i32 ()** @hgetc, align 4
  %call37 = call i32 %28()
  store i32 %call37, i32* %c, align 4
  %cmp38 = icmp ne i32 %call37, 41
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false, %if.end35
  %29 = load void (i32)*, void (i32)** @hungetc, align 4
  %30 = load i32, i32* %c, align 4
  call void %29(i32 %30)
  store i32 38, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false
  store i32 0, i32* @dbparens, align 4
  store i32 29, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.end21
  %31 = load i32, i32* %c, align 4
  %conv42 = trunc i32 %31 to i8
  %idxprom43 = zext i8 %conv42 to i32
  %arrayidx44 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom43
  %32 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %32 to i32
  %and46 = and i32 %conv45, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end71

if.then48:                                        ; preds = %if.else
  %33 = load i32 ()*, i32 ()** @hgetc, align 4
  %call49 = call i32 %33()
  store i32 %call49, i32* %d, align 4
  %34 = load i32, i32* %d, align 4
  %cmp50 = icmp eq i32 %34, 38
  br i1 %cmp50, label %if.then52, label %if.else60

if.then52:                                        ; preds = %if.then48
  %35 = load i32 ()*, i32 ()** @hgetc, align 4
  %call53 = call i32 %35()
  store i32 %call53, i32* %d, align 4
  %36 = load i32, i32* %d, align 4
  %cmp54 = icmp eq i32 %36, 62
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.then52
  %37 = load i32, i32* %c, align 4
  %sub57 = sub nsw i32 %37, 48
  store i32 %sub57, i32* %peekfd, align 4
  %38 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %38(i32 62)
  store i32 38, i32* %c, align 4
  br label %if.end59

if.else58:                                        ; preds = %if.then52
  %39 = load void (i32)*, void (i32)** @hungetc, align 4
  %40 = load i32, i32* %d, align 4
  call void %39(i32 %40)
  store i32 0, i32* @lexstop, align 4
  %41 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %41(i32 38)
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then56
  br label %if.end70

if.else60:                                        ; preds = %if.then48
  %42 = load i32, i32* %d, align 4
  %cmp61 = icmp eq i32 %42, 62
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.else60
  %43 = load i32, i32* %d, align 4
  %cmp64 = icmp eq i32 %43, 60
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %lor.lhs.false63, %if.else60
  %44 = load i32, i32* %c, align 4
  %sub67 = sub nsw i32 %44, 48
  store i32 %sub67, i32* %peekfd, align 4
  %45 = load i32, i32* %d, align 4
  store i32 %45, i32* %c, align 4
  br label %if.end69

if.else68:                                        ; preds = %lor.lhs.false63
  %46 = load void (i32)*, void (i32)** @hungetc, align 4
  %47 = load i32, i32* %d, align 4
  call void %46(i32 %47)
  store i32 0, i32* @lexstop, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then66
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  %48 = load i32, i32* %c, align 4
  %49 = load i8, i8* @hashchar, align 1
  %conv73 = zext i8 %49 to i32
  %cmp74 = icmp eq i32 %48, %conv73
  br i1 %cmp74, label %land.lhs.true76, label %if.end134

land.lhs.true76:                                  ; preds = %if.end72
  %50 = load i32, i32* @nocomments, align 4
  %tobool77 = icmp ne i32 %50, 0
  br i1 %tobool77, label %if.end134, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true76
  %51 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 95), align 1
  %conv79 = sext i8 %51 to i32
  %tobool80 = icmp ne i32 %conv79, 0
  br i1 %tobool80, label %if.then94, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.lhs.true78
  %52 = load i32, i32* @lexflags, align 4
  %tobool82 = icmp ne i32 %52, 0
  br i1 %tobool82, label %lor.lhs.false83, label %land.lhs.true86

lor.lhs.false83:                                  ; preds = %lor.lhs.false81
  %53 = load i32, i32* @lexflags, align 4
  %and84 = and i32 %53, 12
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.end134

land.lhs.true86:                                  ; preds = %lor.lhs.false83, %lor.lhs.false81
  %54 = load i32, i32* @expanding, align 4
  %tobool87 = icmp ne i32 %54, 0
  br i1 %tobool87, label %if.end134, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %land.lhs.true86
  %55 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %tobool89 = icmp ne i8 %55, 0
  br i1 %tobool89, label %lor.lhs.false90, label %if.then94

lor.lhs.false90:                                  ; preds = %land.lhs.true88
  %56 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %tobool91 = icmp ne i8 %56, 0
  br i1 %tobool91, label %lor.lhs.false92, label %if.then94

lor.lhs.false92:                                  ; preds = %lor.lhs.false90
  %57 = load i32, i32* @strin, align 4
  %tobool93 = icmp ne i32 %57, 0
  br i1 %tobool93, label %if.then94, label %if.end134

if.then94:                                        ; preds = %lor.lhs.false92, %lor.lhs.false90, %land.lhs.true88, %land.lhs.true78
  %58 = load i32, i32* @lexflags, align 4
  %and95 = and i32 %58, 4
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then94
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %call98 = call i8* @hcalloc(i32 32)
  store i8* %call98, i8** @tokstr, align 4
  store i8* %call98, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %59 = load i32, i32* %c, align 4
  call void @add(i32 %59)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then94
  %60 = load void ()*, void ()** @hwabort, align 4
  call void %60()
  br label %while.cond100

while.cond100:                                    ; preds = %if.end113, %if.end99
  %call101 = call i32 @ingetc()
  store i32 %call101, i32* %c, align 4
  %cmp102 = icmp ne i32 %call101, 10
  br i1 %cmp102, label %land.rhs104, label %land.end107

land.rhs104:                                      ; preds = %while.cond100
  %61 = load i32, i32* @lexstop, align 4
  %tobool105 = icmp ne i32 %61, 0
  %lnot106 = xor i1 %tobool105, true
  br label %land.end107

land.end107:                                      ; preds = %land.rhs104, %while.cond100
  %62 = phi i1 [ false, %while.cond100 ], [ %lnot106, %land.rhs104 ]
  br i1 %62, label %while.body109, label %while.end114

while.body109:                                    ; preds = %land.end107
  %63 = load void (i32)*, void (i32)** @hwaddc, align 4
  %64 = load i32, i32* %c, align 4
  call void %63(i32 %64)
  %65 = load void (i32)*, void (i32)** @addtoline, align 4
  %66 = load i32, i32* %c, align 4
  call void %65(i32 %66)
  %67 = load i32, i32* @lexflags, align 4
  %and110 = and i32 %67, 4
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %while.body109
  %68 = load i32, i32* %c, align 4
  call void @add(i32 %68)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %while.body109
  br label %while.cond100

while.end114:                                     ; preds = %land.end107
  %69 = load i32, i32* @errflag, align 4
  %tobool115 = icmp ne i32 %69, 0
  br i1 %tobool115, label %if.then116, label %if.else117

if.then116:                                       ; preds = %while.end114
  store i32 38, i32* %peek, align 4
  br label %if.end133

if.else117:                                       ; preds = %while.end114
  %70 = load i32, i32* @lexflags, align 4
  %and118 = and i32 %70, 4
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then120, label %if.else124

if.then120:                                       ; preds = %if.else117
  %71 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* @lexstop, align 4
  %tobool121 = icmp ne i32 %72, 0
  br i1 %tobool121, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.then120
  %73 = load void (i32)*, void (i32)** @hungetc, align 4
  %74 = load i32, i32* %c, align 4
  call void %73(i32 %74)
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.then120
  store i32 34, i32* %peek, align 4
  br label %if.end132

if.else124:                                       ; preds = %if.else117
  %75 = load void ()*, void ()** @hwend, align 4
  call void %75()
  %76 = load void (i32)*, void (i32)** @hwbegin, align 4
  call void %76(i32 0)
  %77 = load void (i32)*, void (i32)** @hwaddc, align 4
  call void %77(i32 10)
  %78 = load void (i32)*, void (i32)** @addtoline, align 4
  call void %78(i32 10)
  %79 = load i32, i32* @lexflags, align 4
  %and125 = and i32 %79, 8
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %land.lhs.true127, label %if.else130

land.lhs.true127:                                 ; preds = %if.else124
  %80 = load i32, i32* @lexstop, align 4
  %tobool128 = icmp ne i32 %80, 0
  br i1 %tobool128, label %if.then129, label %if.else130

if.then129:                                       ; preds = %land.lhs.true127
  store i32 37, i32* %peek, align 4
  br label %if.end131

if.else130:                                       ; preds = %land.lhs.true127, %if.else124
  store i32 2, i32* %peek, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else130, %if.then129
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end123
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then116
  %81 = load i32, i32* %peek, align 4
  store i32 %81, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %lor.lhs.false92, %land.lhs.true86, %lor.lhs.false83, %land.lhs.true76, %if.end72
  %82 = load i32, i32* %c, align 4
  %conv135 = trunc i32 %82 to i8
  %idxprom136 = zext i8 %conv135 to i32
  %arrayidx137 = getelementptr inbounds [256 x i8], [256 x i8]* @lexact1, i32 0, i32 %idxprom136
  %83 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %83 to i32
  switch i32 %conv138, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb144
    i32 3, label %sw.bb145
    i32 5, label %sw.bb161
    i32 6, label %sw.bb201
    i32 7, label %sw.bb214
    i32 8, label %sw.bb257
    i32 13, label %sw.bb258
    i32 14, label %sw.bb303
  ]

sw.bb:                                            ; preds = %if.end134
  %84 = load i32 ()*, i32 ()** @hgetc, align 4
  %call139 = call i32 %84()
  store i32 %call139, i32* %d, align 4
  %85 = load i32, i32* %d, align 4
  %cmp140 = icmp eq i32 %85, 10
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %sw.bb
  br label %beginning

if.end143:                                        ; preds = %sw.bb
  %86 = load void (i32)*, void (i32)** @hungetc, align 4
  %87 = load i32, i32* %d, align 4
  call void %86(i32 %87)
  store i32 0, i32* @lexstop, align 4
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end134
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb145:                                         ; preds = %if.end134
  %88 = load i32 ()*, i32 ()** @hgetc, align 4
  %call146 = call i32 %88()
  store i32 %call146, i32* %d, align 4
  %89 = load i32, i32* %d, align 4
  %cmp147 = icmp eq i32 %89, 59
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %sw.bb145
  store i32 4, i32* %retval, align 4
  br label %return

if.else150:                                       ; preds = %sw.bb145
  %90 = load i32, i32* %d, align 4
  %cmp151 = icmp eq i32 %90, 38
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.else150
  store i32 31, i32* %retval, align 4
  br label %return

if.else154:                                       ; preds = %if.else150
  %91 = load i32, i32* %d, align 4
  %cmp155 = icmp eq i32 %91, 124
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.else154
  store i32 32, i32* %retval, align 4
  br label %return

if.end158:                                        ; preds = %if.else154
  br label %if.end159

if.end159:                                        ; preds = %if.end158
  br label %if.end160

if.end160:                                        ; preds = %if.end159
  %92 = load void (i32)*, void (i32)** @hungetc, align 4
  %93 = load i32, i32* %d, align 4
  call void %92(i32 %93)
  store i32 0, i32* @lexstop, align 4
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb161:                                         ; preds = %if.end134
  %94 = load i32 ()*, i32 ()** @hgetc, align 4
  %call162 = call i32 %94()
  store i32 %call162, i32* %d, align 4
  %95 = load i32, i32* %d, align 4
  %cmp163 = icmp eq i32 %95, 38
  br i1 %cmp163, label %if.then165, label %if.else166

if.then165:                                       ; preds = %sw.bb161
  store i32 9, i32* %retval, align 4
  br label %return

if.else166:                                       ; preds = %sw.bb161
  %96 = load i32, i32* %d, align 4
  %cmp167 = icmp eq i32 %96, 33
  br i1 %cmp167, label %if.then172, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.else166
  %97 = load i32, i32* %d, align 4
  %cmp170 = icmp eq i32 %97, 124
  br i1 %cmp170, label %if.then172, label %if.else173

if.then172:                                       ; preds = %lor.lhs.false169, %if.else166
  store i32 30, i32* %retval, align 4
  br label %return

if.else173:                                       ; preds = %lor.lhs.false169
  %98 = load i32, i32* %d, align 4
  %cmp174 = icmp eq i32 %98, 62
  br i1 %cmp174, label %if.then176, label %if.end198

if.then176:                                       ; preds = %if.else173
  %99 = load i32, i32* %peekfd, align 4
  store i32 %99, i32* @tokfd, align 4
  %100 = load i32 ()*, i32 ()** @hgetc, align 4
  %call177 = call i32 %100()
  store i32 %call177, i32* %d, align 4
  %101 = load i32, i32* %d, align 4
  %cmp178 = icmp eq i32 %101, 33
  br i1 %cmp178, label %if.then183, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.then176
  %102 = load i32, i32* %d, align 4
  %cmp181 = icmp eq i32 %102, 124
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %lor.lhs.false180, %if.then176
  store i32 21, i32* %retval, align 4
  br label %return

if.else184:                                       ; preds = %lor.lhs.false180
  %103 = load i32, i32* %d, align 4
  %cmp185 = icmp eq i32 %103, 62
  br i1 %cmp185, label %if.then187, label %if.end196

if.then187:                                       ; preds = %if.else184
  %104 = load i32 ()*, i32 ()** @hgetc, align 4
  %call188 = call i32 %104()
  store i32 %call188, i32* %d, align 4
  %105 = load i32, i32* %d, align 4
  %cmp189 = icmp eq i32 %105, 33
  br i1 %cmp189, label %if.then194, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %if.then187
  %106 = load i32, i32* %d, align 4
  %cmp192 = icmp eq i32 %106, 124
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %lor.lhs.false191, %if.then187
  store i32 23, i32* %retval, align 4
  br label %return

if.end195:                                        ; preds = %lor.lhs.false191
  %107 = load void (i32)*, void (i32)** @hungetc, align 4
  %108 = load i32, i32* %d, align 4
  call void %107(i32 %108)
  store i32 0, i32* @lexstop, align 4
  store i32 22, i32* %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.else184
  br label %if.end197

if.end197:                                        ; preds = %if.end196
  %109 = load void (i32)*, void (i32)** @hungetc, align 4
  %110 = load i32, i32* %d, align 4
  call void %109(i32 %110)
  store i32 0, i32* @lexstop, align 4
  store i32 20, i32* %retval, align 4
  br label %return

if.end198:                                        ; preds = %if.else173
  br label %if.end199

if.end199:                                        ; preds = %if.end198
  br label %if.end200

if.end200:                                        ; preds = %if.end199
  %111 = load void (i32)*, void (i32)** @hungetc, align 4
  %112 = load i32, i32* %d, align 4
  call void %111(i32 %112)
  store i32 0, i32* @lexstop, align 4
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb201:                                         ; preds = %if.end134
  %113 = load i32 ()*, i32 ()** @hgetc, align 4
  %call202 = call i32 %113()
  store i32 %call202, i32* %d, align 4
  %114 = load i32, i32* %d, align 4
  %cmp203 = icmp eq i32 %114, 124
  br i1 %cmp203, label %land.lhs.true205, label %if.else208

land.lhs.true205:                                 ; preds = %sw.bb201
  %115 = load i32, i32* @incasepat, align 4
  %tobool206 = icmp ne i32 %115, 0
  br i1 %tobool206, label %if.else208, label %if.then207

if.then207:                                       ; preds = %land.lhs.true205
  store i32 8, i32* %retval, align 4
  br label %return

if.else208:                                       ; preds = %land.lhs.true205, %sw.bb201
  %116 = load i32, i32* %d, align 4
  %cmp209 = icmp eq i32 %116, 38
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.else208
  store i32 26, i32* %retval, align 4
  br label %return

if.end212:                                        ; preds = %if.else208
  br label %if.end213

if.end213:                                        ; preds = %if.end212
  %117 = load void (i32)*, void (i32)** @hungetc, align 4
  %118 = load i32, i32* %d, align 4
  call void %117(i32 %118)
  store i32 0, i32* @lexstop, align 4
  store i32 25, i32* %retval, align 4
  br label %return

sw.bb214:                                         ; preds = %if.end134
  %119 = load i32 ()*, i32 ()** @hgetc, align 4
  %call215 = call i32 %119()
  store i32 %call215, i32* %d, align 4
  %120 = load i32, i32* %d, align 4
  %cmp216 = icmp eq i32 %120, 40
  br i1 %cmp216, label %if.then218, label %if.else242

if.then218:                                       ; preds = %sw.bb214
  %121 = load i32, i32* @infor, align 4
  %tobool219 = icmp ne i32 %121, 0
  br i1 %tobool219, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.then218
  store i32 1, i32* @dbparens, align 4
  store i32 28, i32* %retval, align 4
  br label %return

if.end221:                                        ; preds = %if.then218
  %122 = load i32, i32* @incmdpos, align 4
  %tobool222 = icmp ne i32 %122, 0
  br i1 %tobool222, label %if.then228, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %if.end221
  %123 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv224 = sext i8 %123 to i32
  %tobool225 = icmp ne i32 %conv224, 0
  br i1 %tobool225, label %land.lhs.true226, label %if.end241

land.lhs.true226:                                 ; preds = %lor.lhs.false223
  %124 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 98), align 1
  %tobool227 = icmp ne i8 %124, 0
  br i1 %tobool227, label %if.end241, label %if.then228

if.then228:                                       ; preds = %land.lhs.true226, %if.end221
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %call229 = call i8* @hcalloc(i32 32)
  store i8* %call229, i8** @tokstr, align 4
  store i8* %call229, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %call230 = call i32 @cmd_or_math(i32 9)
  switch i32 %call230, label %sw.default [
    i32 1, label %sw.bb231
    i32 0, label %sw.bb232
    i32 2, label %sw.bb233
  ]

sw.bb231:                                         ; preds = %if.then228
  store i32 28, i32* %retval, align 4
  br label %return

sw.bb232:                                         ; preds = %if.then228
  store i8* null, i8** @tokstr, align 4
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb233:                                         ; preds = %if.then228
  %125 = load i32, i32* @lexflags, align 4
  %and234 = and i32 %125, 1
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then236, label %if.end240

if.then236:                                       ; preds = %sw.bb233
  %126 = load i8*, i8** @tokstr, align 4
  %tobool237 = icmp ne i8* %126, null
  br i1 %tobool237, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then236
  %127 = load i8*, i8** @tokstr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then236
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond238 = phi i8* [ %127, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), %cond.false ]
  %call239 = call i8* @dyncat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* %cond238)
  store i8* %call239, i8** @tokstr, align 4
  br label %if.end240

if.end240:                                        ; preds = %cond.end, %sw.bb233
  br label %sw.default

sw.default:                                       ; preds = %if.then228, %if.end240
  store i32 38, i32* %retval, align 4
  br label %return

if.end241:                                        ; preds = %land.lhs.true226, %lor.lhs.false223
  br label %if.end247

if.else242:                                       ; preds = %sw.bb214
  %128 = load i32, i32* %d, align 4
  %cmp243 = icmp eq i32 %128, 41
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.else242
  store i32 27, i32* %retval, align 4
  br label %return

if.end246:                                        ; preds = %if.else242
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.end241
  %129 = load void (i32)*, void (i32)** @hungetc, align 4
  %130 = load i32, i32* %d, align 4
  call void %129(i32 %130)
  store i32 0, i32* @lexstop, align 4
  %131 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv248 = sext i8 %131 to i32
  %tobool249 = icmp ne i32 %conv248, 0
  br i1 %tobool249, label %if.end256, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %if.end247
  %132 = load i32, i32* @incond, align 4
  %cmp251 = icmp eq i32 %132, 1
  br i1 %cmp251, label %if.end256, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false250
  %133 = load i32, i32* @incmdpos, align 4
  %tobool254 = icmp ne i32 %133, 0
  br i1 %tobool254, label %if.end256, label %if.then255

if.then255:                                       ; preds = %lor.lhs.false253
  br label %sw.epilog

if.end256:                                        ; preds = %lor.lhs.false253, %lor.lhs.false250, %if.end247
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb257:                                         ; preds = %if.end134
  store i32 7, i32* %retval, align 4
  br label %return

sw.bb258:                                         ; preds = %if.end134
  %134 = load i32 ()*, i32 ()** @hgetc, align 4
  %call259 = call i32 %134()
  store i32 %call259, i32* %d, align 4
  %135 = load i32, i32* %d, align 4
  %cmp260 = icmp eq i32 %135, 40
  br i1 %cmp260, label %if.then262, label %if.end267

if.then262:                                       ; preds = %sw.bb258
  %136 = load void (i32)*, void (i32)** @hungetc, align 4
  %137 = load i32, i32* %d, align 4
  call void %136(i32 %137)
  store i32 0, i32* @lexstop, align 4
  br label %unpeekfd

unpeekfd:                                         ; preds = %if.then307, %if.then298, %if.then262
  %138 = load i32, i32* %peekfd, align 4
  %cmp263 = icmp ne i32 %138, -1
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %unpeekfd
  %139 = load void (i32)*, void (i32)** @hungetc, align 4
  %140 = load i32, i32* %c, align 4
  call void %139(i32 %140)
  %141 = load i32, i32* %peekfd, align 4
  %add = add nsw i32 48, %141
  store i32 %add, i32* %c, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %unpeekfd
  br label %sw.epilog

if.end267:                                        ; preds = %sw.bb258
  %142 = load i32, i32* %d, align 4
  %cmp268 = icmp eq i32 %142, 62
  br i1 %cmp268, label %if.then270, label %if.else271

if.then270:                                       ; preds = %if.end267
  store i32 15, i32* %peek, align 4
  br label %if.end302

if.else271:                                       ; preds = %if.end267
  %143 = load i32, i32* %d, align 4
  %cmp272 = icmp eq i32 %143, 60
  br i1 %cmp272, label %if.then274, label %if.else291

if.then274:                                       ; preds = %if.else271
  %144 = load i32 ()*, i32 ()** @hgetc, align 4
  %call275 = call i32 %144()
  store i32 %call275, i32* %e, align 4
  %145 = load i32, i32* %e, align 4
  %cmp276 = icmp eq i32 %145, 40
  br i1 %cmp276, label %if.then278, label %if.else279

if.then278:                                       ; preds = %if.then274
  %146 = load void (i32)*, void (i32)** @hungetc, align 4
  %147 = load i32, i32* %e, align 4
  call void %146(i32 %147)
  %148 = load void (i32)*, void (i32)** @hungetc, align 4
  %149 = load i32, i32* %d, align 4
  call void %148(i32 %149)
  store i32 14, i32* %peek, align 4
  br label %if.end290

if.else279:                                       ; preds = %if.then274
  %150 = load i32, i32* %e, align 4
  %cmp280 = icmp eq i32 %150, 60
  br i1 %cmp280, label %if.then282, label %if.else283

if.then282:                                       ; preds = %if.else279
  store i32 24, i32* %peek, align 4
  br label %if.end289

if.else283:                                       ; preds = %if.else279
  %151 = load i32, i32* %e, align 4
  %cmp284 = icmp eq i32 %151, 45
  br i1 %cmp284, label %if.then286, label %if.else287

if.then286:                                       ; preds = %if.else283
  store i32 17, i32* %peek, align 4
  br label %if.end288

if.else287:                                       ; preds = %if.else283
  %152 = load void (i32)*, void (i32)** @hungetc, align 4
  %153 = load i32, i32* %e, align 4
  call void %152(i32 %153)
  store i32 0, i32* @lexstop, align 4
  store i32 16, i32* %peek, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.else287, %if.then286
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %if.then282
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.then278
  br label %if.end301

if.else291:                                       ; preds = %if.else271
  %154 = load i32, i32* %d, align 4
  %cmp292 = icmp eq i32 %154, 38
  br i1 %cmp292, label %if.then294, label %if.else295

if.then294:                                       ; preds = %if.else291
  store i32 18, i32* %peek, align 4
  br label %if.end300

if.else295:                                       ; preds = %if.else291
  %155 = load void (i32)*, void (i32)** @hungetc, align 4
  %156 = load i32, i32* %d, align 4
  call void %155(i32 %156)
  %call296 = call i32 @isnumglob()
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.else295
  br label %unpeekfd

if.end299:                                        ; preds = %if.else295
  store i32 14, i32* %peek, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %if.then294
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %if.end290
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.then270
  %157 = load i32, i32* %peekfd, align 4
  store i32 %157, i32* @tokfd, align 4
  %158 = load i32, i32* %peek, align 4
  store i32 %158, i32* %retval, align 4
  br label %return

sw.bb303:                                         ; preds = %if.end134
  %159 = load i32 ()*, i32 ()** @hgetc, align 4
  %call304 = call i32 %159()
  store i32 %call304, i32* %d, align 4
  %160 = load i32, i32* %d, align 4
  %cmp305 = icmp eq i32 %160, 40
  br i1 %cmp305, label %if.then307, label %if.else308

if.then307:                                       ; preds = %sw.bb303
  %161 = load void (i32)*, void (i32)** @hungetc, align 4
  %162 = load i32, i32* %d, align 4
  call void %161(i32 %162)
  br label %unpeekfd

if.else308:                                       ; preds = %sw.bb303
  %163 = load i32, i32* %d, align 4
  %cmp309 = icmp eq i32 %163, 38
  br i1 %cmp309, label %if.then311, label %if.else321

if.then311:                                       ; preds = %if.else308
  %164 = load i32 ()*, i32 ()** @hgetc, align 4
  %call312 = call i32 %164()
  store i32 %call312, i32* %d, align 4
  %165 = load i32, i32* %d, align 4
  %cmp313 = icmp eq i32 %165, 33
  br i1 %cmp313, label %if.then318, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %if.then311
  %166 = load i32, i32* %d, align 4
  %cmp316 = icmp eq i32 %166, 124
  br i1 %cmp316, label %if.then318, label %if.else319

if.then318:                                       ; preds = %lor.lhs.false315, %if.then311
  store i32 21, i32* %peek, align 4
  br label %if.end320

if.else319:                                       ; preds = %lor.lhs.false315
  %167 = load void (i32)*, void (i32)** @hungetc, align 4
  %168 = load i32, i32* %d, align 4
  call void %167(i32 %168)
  store i32 0, i32* @lexstop, align 4
  store i32 19, i32* %peek, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.else319, %if.then318
  br label %if.end372

if.else321:                                       ; preds = %if.else308
  %169 = load i32, i32* %d, align 4
  %cmp322 = icmp eq i32 %169, 33
  br i1 %cmp322, label %if.then327, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %if.else321
  %170 = load i32, i32* %d, align 4
  %cmp325 = icmp eq i32 %170, 124
  br i1 %cmp325, label %if.then327, label %if.else328

if.then327:                                       ; preds = %lor.lhs.false324, %if.else321
  store i32 11, i32* %peek, align 4
  br label %if.end371

if.else328:                                       ; preds = %lor.lhs.false324
  %171 = load i32, i32* %d, align 4
  %cmp329 = icmp eq i32 %171, 62
  br i1 %cmp329, label %if.then331, label %if.else363

if.then331:                                       ; preds = %if.else328
  %172 = load i32 ()*, i32 ()** @hgetc, align 4
  %call332 = call i32 %172()
  store i32 %call332, i32* %d, align 4
  %173 = load i32, i32* %d, align 4
  %cmp333 = icmp eq i32 %173, 38
  br i1 %cmp333, label %if.then335, label %if.else345

if.then335:                                       ; preds = %if.then331
  %174 = load i32 ()*, i32 ()** @hgetc, align 4
  %call336 = call i32 %174()
  store i32 %call336, i32* %d, align 4
  %175 = load i32, i32* %d, align 4
  %cmp337 = icmp eq i32 %175, 33
  br i1 %cmp337, label %if.then342, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %if.then335
  %176 = load i32, i32* %d, align 4
  %cmp340 = icmp eq i32 %176, 124
  br i1 %cmp340, label %if.then342, label %if.else343

if.then342:                                       ; preds = %lor.lhs.false339, %if.then335
  store i32 23, i32* %peek, align 4
  br label %if.end344

if.else343:                                       ; preds = %lor.lhs.false339
  %177 = load void (i32)*, void (i32)** @hungetc, align 4
  %178 = load i32, i32* %d, align 4
  call void %177(i32 %178)
  store i32 0, i32* @lexstop, align 4
  store i32 22, i32* %peek, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.else343, %if.then342
  br label %if.end362

if.else345:                                       ; preds = %if.then331
  %179 = load i32, i32* %d, align 4
  %cmp346 = icmp eq i32 %179, 33
  br i1 %cmp346, label %if.then351, label %lor.lhs.false348

lor.lhs.false348:                                 ; preds = %if.else345
  %180 = load i32, i32* %d, align 4
  %cmp349 = icmp eq i32 %180, 124
  br i1 %cmp349, label %if.then351, label %if.else352

if.then351:                                       ; preds = %lor.lhs.false348, %if.else345
  store i32 13, i32* %peek, align 4
  br label %if.end361

if.else352:                                       ; preds = %lor.lhs.false348
  %181 = load i32, i32* %d, align 4
  %cmp353 = icmp eq i32 %181, 40
  br i1 %cmp353, label %if.then355, label %if.else356

if.then355:                                       ; preds = %if.else352
  %182 = load void (i32)*, void (i32)** @hungetc, align 4
  %183 = load i32, i32* %d, align 4
  call void %182(i32 %183)
  %184 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %184(i32 62)
  store i32 10, i32* %peek, align 4
  br label %if.end360

if.else356:                                       ; preds = %if.else352
  %185 = load void (i32)*, void (i32)** @hungetc, align 4
  %186 = load i32, i32* %d, align 4
  call void %185(i32 %186)
  store i32 0, i32* @lexstop, align 4
  store i32 12, i32* %peek, align 4
  %187 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 72), align 1
  %tobool357 = icmp ne i8 %187, 0
  br i1 %tobool357, label %if.then358, label %if.end359

if.then358:                                       ; preds = %if.else356
  %188 = load void (i32)*, void (i32)** @hwaddc, align 4
  call void %188(i32 124)
  br label %if.end359

if.end359:                                        ; preds = %if.then358, %if.else356
  br label %if.end360

if.end360:                                        ; preds = %if.end359, %if.then355
  br label %if.end361

if.end361:                                        ; preds = %if.end360, %if.then351
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.end344
  br label %if.end370

if.else363:                                       ; preds = %if.else328
  %189 = load void (i32)*, void (i32)** @hungetc, align 4
  %190 = load i32, i32* %d, align 4
  call void %189(i32 %190)
  store i32 0, i32* @lexstop, align 4
  store i32 10, i32* %peek, align 4
  %191 = load i32, i32* @incond, align 4
  %tobool364 = icmp ne i32 %191, 0
  br i1 %tobool364, label %if.end369, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %if.else363
  %192 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 72), align 1
  %conv366 = sext i8 %192 to i32
  %tobool367 = icmp ne i32 %conv366, 0
  br i1 %tobool367, label %if.then368, label %if.end369

if.then368:                                       ; preds = %land.lhs.true365
  %193 = load void (i32)*, void (i32)** @hwaddc, align 4
  call void %193(i32 124)
  br label %if.end369

if.end369:                                        ; preds = %if.then368, %land.lhs.true365, %if.else363
  br label %if.end370

if.end370:                                        ; preds = %if.end369, %if.end362
  br label %if.end371

if.end371:                                        ; preds = %if.end370, %if.then327
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %if.end320
  br label %if.end373

if.end373:                                        ; preds = %if.end372
  %194 = load i32, i32* %peekfd, align 4
  store i32 %194, i32* @tokfd, align 4
  %195 = load i32, i32* %peek, align 4
  store i32 %195, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end134, %if.end266, %if.then255, %if.end143
  %196 = load i32, i32* %c, align 4
  %call374 = call i32 @gettokstr(i32 %196, i32 0)
  store i32 %call374, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end373, %if.end302, %sw.bb257, %if.end256, %if.then245, %sw.default, %sw.bb232, %sw.bb231, %if.then220, %if.end213, %if.then211, %if.then207, %if.end200, %if.end197, %if.end195, %if.then194, %if.then183, %if.then172, %if.then165, %if.end160, %if.then157, %if.then153, %if.then149, %sw.bb144, %if.end133, %if.end41, %if.then40, %if.then34, %if.then
  %197 = load i32, i32* %retval, align 4
  ret i32 %197
}

; Function Attrs: noinline nounwind
define i32 @exalias() #0 {
entry:
  %retval = alloca i32, align 4
  %rw = alloca %struct.reswd*, align 4
  %copy = alloca i8*, align 4
  %p = alloca i8*, align 4
  %t = alloca i8*, align 4
  %zp = alloca i32, align 4
  %0 = load void ()*, void ()** @hwend, align 4
  call void %0()
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 161), align 1
  %conv1 = sext i8 %2 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* @strin, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load i32, i32* @incasepat, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %5 = load i32, i32* @tok, align 4
  %cmp8 = icmp eq i32 %5, 34
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %6 = load i32, i32* @nocorrect, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, i32* @inbufflags, align 4
  %and = and i32 %7, 2
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 40), align 1
  %conv15 = sext i8 %8 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true14
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 39), align 1
  %conv17 = sext i8 %9 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* @incmdpos, align 4
  %tobool20 = icmp ne i32 %10, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19, %land.lhs.true14
  %11 = load i32, i32* @incmdpos, align 4
  call void @spckword(i8** @tokstr, i32 1, i32 %11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true19, %lor.lhs.false, %land.lhs.true12, %land.lhs.true10, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  %12 = load i8*, i8** @tokstr, align 4
  %tobool21 = icmp ne i8* %12, null
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %13 = load i32, i32* @tok, align 4
  %arrayidx = getelementptr inbounds [63 x i8*], [63 x i8*]* @tokstrings, i32 0, i32 %13
  %14 = load i8*, i8** %arrayidx, align 4
  store i8* %14, i8** @zshlextext, align 4
  %15 = load i32, i32* @tok, align 4
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then22
  %call = call i32 @checkalias()
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %16 = load i8*, i8** @tokstr, align 4
  %call27 = call i32 @strlen(i8* %16)
  %add = add i32 %call27, 1
  %mul = mul i32 1, %add
  %call28 = call i8* @zhalloc(i32 %mul)
  store i8* %call28, i8** %copy, align 4
  %17 = load i8*, i8** @tokstr, align 4
  %call29 = call i32 @has_token(i8* %17)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else44

if.then31:                                        ; preds = %if.else
  %18 = load i8*, i8** %copy, align 4
  store i8* %18, i8** %p, align 4
  store i8* %18, i8** @zshlextext, align 4
  %19 = load i8*, i8** @tokstr, align 4
  store i8* %19, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then31
  %20 = load i8*, i8** %t, align 4
  %21 = load i8, i8* %20, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx32 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %22 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %22 to i32
  %and34 = and i32 %conv33, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %23 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  %24 = load i8, i8* %23, align 1
  %conv36 = sext i8 %24 to i32
  %sub = sub nsw i32 %conv36, -124
  %arrayidx37 = getelementptr inbounds [30 x i8], [30 x i8]* @ztokens, i32 0, i32 %sub
  %25 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %26 = load i8*, i8** %t, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr39, i8** %t, align 4
  %27 = load i8, i8* %26, align 1
  %conv40 = sext i8 %27 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv38, %cond.true ], [ %conv40, %cond.false ]
  %conv41 = trunc i32 %cond to i8
  %28 = load i8*, i8** %p, align 4
  %incdec.ptr42 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr42, i8** %p, align 4
  store i8 %conv41, i8* %28, align 1
  %tobool43 = icmp ne i8 %conv41, 0
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %if.end45

if.else44:                                        ; preds = %if.else
  %29 = load i8*, i8** @tokstr, align 4
  store i8* %29, i8** @zshlextext, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %for.end
  %30 = load i32, i32* @lexflags, align 4
  %and46 = and i32 %30, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %land.lhs.true48, label %if.end62

land.lhs.true48:                                  ; preds = %if.end45
  %31 = load i32, i32* @inbufflags, align 4
  %and49 = and i32 %31, 2
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.end62, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %32 = load i32, i32* @lexflags, align 4
  store i32 %32, i32* %zp, align 4
  call void @gotword()
  %33 = load i32, i32* %zp, align 4
  %and52 = and i32 %33, 2
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %land.lhs.true54, label %if.end61

land.lhs.true54:                                  ; preds = %if.then51
  %34 = load i32, i32* @lexflags, align 4
  %tobool55 = icmp ne i32 %34, 0
  br i1 %tobool55, label %if.end61, label %if.then56

if.then56:                                        ; preds = %land.lhs.true54
  %35 = load i8*, i8** @zshlextext, align 4
  %36 = load i8*, i8** %copy, align 4
  %cmp57 = icmp eq i8* %35, %36
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  %37 = load i8*, i8** @tokstr, align 4
  store i8* %37, i8** @zshlextext, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56
  store i32 0, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %land.lhs.true54, %if.then51
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true48, %if.end45
  %38 = load i32, i32* @tok, align 4
  %cmp63 = icmp eq i32 %38, 34
  br i1 %cmp63, label %if.then65, label %if.end123

if.then65:                                        ; preds = %if.end62
  %39 = load i8*, i8** @zshlextext, align 4
  %40 = load i8*, i8** %copy, align 4
  %cmp66 = icmp ne i8* %39, %40
  br i1 %cmp66, label %land.lhs.true70, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.then65
  %41 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 130), align 1
  %tobool69 = icmp ne i8 %41, 0
  br i1 %tobool69, label %if.end78, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %lor.lhs.false68, %if.then65
  %call71 = call i32 @checkalias()
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %land.lhs.true70
  %42 = load i8*, i8** @zshlextext, align 4
  %43 = load i8*, i8** %copy, align 4
  %cmp74 = icmp eq i8* %42, %43
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then73
  %44 = load i8*, i8** @tokstr, align 4
  store i8* %44, i8** @zshlextext, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73
  store i32 1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true70, %lor.lhs.false68
  %45 = load i32, i32* @incmdpos, align 4
  %tobool79 = icmp ne i32 %45, 0
  br i1 %tobool79, label %land.lhs.true92, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end78
  %46 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %tobool81 = icmp ne i8 %46, 0
  br i1 %tobool81, label %if.else102, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %lor.lhs.false80
  %47 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 90), align 1
  %tobool83 = icmp ne i8 %47, 0
  br i1 %tobool83, label %if.else102, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %land.lhs.true82
  %48 = load i8*, i8** @zshlextext, align 4
  %arrayidx85 = getelementptr inbounds i8, i8* %48, i32 0
  %49 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %49 to i32
  %cmp87 = icmp eq i32 %conv86, 125
  br i1 %cmp87, label %land.lhs.true89, label %if.else102

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %50 = load i8*, i8** @zshlextext, align 4
  %arrayidx90 = getelementptr inbounds i8, i8* %50, i32 1
  %51 = load i8, i8* %arrayidx90, align 1
  %tobool91 = icmp ne i8 %51, 0
  br i1 %tobool91, label %if.else102, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true89, %if.end78
  %52 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %52, i32 0, i32 9
  %53 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %54 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %55 = load i8*, i8** @zshlextext, align 4
  %call93 = call %struct.hashnode* %53(%struct.hashtable* %54, i8* %55)
  %56 = bitcast %struct.hashnode* %call93 to %struct.reswd*
  store %struct.reswd* %56, %struct.reswd** %rw, align 4
  %tobool94 = icmp ne %struct.reswd* %56, null
  br i1 %tobool94, label %if.then95, label %if.else102

if.then95:                                        ; preds = %land.lhs.true92
  %57 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %token = getelementptr inbounds %struct.reswd, %struct.reswd* %57, i32 0, i32 1
  %58 = load i32, i32* %token, align 4
  store i32 %58, i32* @tok, align 4
  %59 = load i32, i32* @tok, align 4
  %cmp96 = icmp eq i32 %59, 57
  %conv97 = zext i1 %cmp96 to i32
  store i32 %conv97, i32* @inrepeat_, align 4
  %60 = load i32, i32* @tok, align 4
  %cmp98 = icmp eq i32 %60, 40
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then95
  store i32 1, i32* @incond, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.then95
  br label %if.end122

if.else102:                                       ; preds = %land.lhs.true92, %land.lhs.true89, %land.lhs.true84, %land.lhs.true82, %lor.lhs.false80
  %61 = load i32, i32* @incond, align 4
  %tobool103 = icmp ne i32 %61, 0
  br i1 %tobool103, label %land.lhs.true104, label %if.else108

land.lhs.true104:                                 ; preds = %if.else102
  %62 = load i8*, i8** @zshlextext, align 4
  %call105 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else108, label %if.then107

if.then107:                                       ; preds = %land.lhs.true104
  store i32 33, i32* @tok, align 4
  store i32 0, i32* @incond, align 4
  br label %if.end121

if.else108:                                       ; preds = %land.lhs.true104, %if.else102
  %63 = load i32, i32* @incond, align 4
  %cmp109 = icmp eq i32 %63, 1
  br i1 %cmp109, label %land.lhs.true111, label %if.end120

land.lhs.true111:                                 ; preds = %if.else108
  %64 = load i8*, i8** @zshlextext, align 4
  %arrayidx112 = getelementptr inbounds i8, i8* %64, i32 0
  %65 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %65 to i32
  %cmp114 = icmp eq i32 %conv113, 33
  br i1 %cmp114, label %land.lhs.true116, label %if.end120

land.lhs.true116:                                 ; preds = %land.lhs.true111
  %66 = load i8*, i8** @zshlextext, align 4
  %arrayidx117 = getelementptr inbounds i8, i8* %66, i32 1
  %67 = load i8, i8* %arrayidx117, align 1
  %tobool118 = icmp ne i8 %67, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %land.lhs.true116
  store i32 39, i32* @tok, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %land.lhs.true116, %land.lhs.true111, %if.else108
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then107
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end101
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end62
  store i32 0, i32* @inalmore, align 4
  %68 = load i8*, i8** @zshlextext, align 4
  %69 = load i8*, i8** %copy, align 4
  %cmp124 = icmp eq i8* %68, %69
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end123
  %70 = load i8*, i8** @tokstr, align 4
  store i8* %70, i8** @zshlextext, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end123
  br label %if.end128

if.end128:                                        ; preds = %if.end127
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end128, %if.end77, %if.end60, %if.end26, %if.then25
  %71 = load i32, i32* %retval, align 4
  ret i32 %71
}

declare void @cmdpush(i32) #2

declare i8* @dupstring(i8*) #2

declare i8* @gethere(i8**, i32) #2

declare void @cmdpop() #2

declare void @zerr(i8*, ...) #2

declare void @zfree(i8*, i32) #2

declare void @setheredoc(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind
define void @ctxtlex() #0 {
entry:
  call void @zshlex()
  %0 = load i32, i32* @tok, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 31, label %sw.bb
    i32 32, label %sw.bb
    i32 5, label %sw.bb
    i32 30, label %sw.bb
    i32 6, label %sw.bb
    i32 41, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 45, label %sw.bb
    i32 59, label %sw.bb
    i32 47, label %sw.bb
    i32 48, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb1
    i32 63, label %sw.bb1
    i32 36, label %sw.bb1
    i32 7, label %sw.bb1
    i32 43, label %sw.bb1
    i32 40, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* @incmdpos, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* @incmdpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, i32* @tok, align 4
  %cmp = icmp ne i32 %1, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %2 = load i32, i32* @tok, align 4
  %cmp2 = icmp eq i32 %2, 52
  %cond = select i1 %cmp2, i32 2, i32 0
  store i32 %cond, i32* @infor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %3 = load i32, i32* @tok, align 4
  %cmp3 = icmp uge i32 %3, 10
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* @tok, align 4
  %cmp4 = icmp ule i32 %4, 24
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* @tok, align 4
  %cmp5 = icmp eq i32 %5, 52
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* @tok, align 4
  %cmp7 = icmp eq i32 %6, 53
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* @tok, align 4
  %cmp9 = icmp eq i32 %7, 58
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %land.lhs.true
  store i32 1, i32* @inredir, align 4
  %8 = load i32, i32* @incmdpos, align 4
  store i32 %8, i32* @ctxtlex.oldpos, align 4
  store i32 0, i32* @incmdpos, align 4
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false8
  %9 = load i32, i32* @inredir, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* @ctxtlex.oldpos, align 4
  store i32 %10, i32* @incmdpos, align 4
  store i32 0, i32* @inredir, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then10
  ret void
}

; Function Attrs: noinline nounwind
define void @initlextabs() #0 {
entry:
  %t0 = alloca i32, align 4
  store i32 0, i32* %t0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %t0, align 4
  %cmp = icmp ne i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %t0, align 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @lexact1, i32 0, i32 %1
  store i8 15, i8* %arrayidx, align 1
  %2 = load i32, i32* %t0, align 4
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @lexact2, i32 0, i32 %2
  store i8 20, i8* %arrayidx1, align 1
  %3 = load i32, i32* %t0, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %t0, align 4
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @lextok2, i32 0, i32 %4
  store i8 %conv, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %t0, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %t0, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %t0, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %6 = load i8*, i8** @initlextabs.lx1, align 4
  %7 = load i32, i32* %t0, align 4
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i32 %7
  %8 = load i8, i8* %arrayidx4, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, i32* %t0, align 4
  %conv6 = trunc i32 %9 to i8
  %10 = load i8*, i8** @initlextabs.lx1, align 4
  %11 = load i32, i32* %t0, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i32 %11
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* @lexact1, i32 0, i32 %conv8
  store i8 %conv6, i8* %arrayidx9, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %13 = load i32, i32* %t0, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %t0, align 4
  br label %for.cond3

for.end12:                                        ; preds = %for.cond3
  store i32 0, i32* %t0, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.end12
  %14 = load i8*, i8** @initlextabs.lx2, align 4
  %15 = load i32, i32* %t0, align 4
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i32 %15
  %16 = load i8, i8* %arrayidx14, align 1
  %tobool15 = icmp ne i8 %16, 0
  br i1 %tobool15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond13
  %17 = load i32, i32* %t0, align 4
  %conv17 = trunc i32 %17 to i8
  %18 = load i8*, i8** @initlextabs.lx2, align 4
  %19 = load i32, i32* %t0, align 4
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i32 %19
  %20 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %20 to i32
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @lexact2, i32 0, i32 %conv19
  store i8 %conv17, i8* %arrayidx20, align 1
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %21 = load i32, i32* %t0, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, i32* %t0, align 4
  br label %for.cond13

for.end23:                                        ; preds = %for.cond13
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lexact2, i32 0, i32 38), align 1
  store i8 21, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lexact2, i32 0, i32 131), align 1
  store i8 -121, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 42), align 1
  store i8 -105, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 63), align 1
  store i8 -113, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 123), align 1
  store i8 -111, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 91), align 1
  store i8 -123, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 36), align 1
  store i8 -104, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 126), align 1
  store i8 -124, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 35), align 1
  store i8 -122, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lextok2, i32 0, i32 94), align 1
  ret void
}

; Function Attrs: noinline nounwind
define void @lexinit() #0 {
entry:
  store i32 0, i32* @lexstop, align 4
  store i32 0, i32* @dbparens, align 4
  store i32 0, i32* @nocorrect, align 4
  store i32 37, i32* @tok, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @add(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %newbsiz = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 %conv, i8* %1, align 1
  %2 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %2, %inc
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* %newbsiz, align 4
  %5 = load i32, i32* %newbsiz, align 4
  %6 = load i32, i32* @inbufct, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* @inbufct, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %cmp4 = icmp sgt i32 %7, %8
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* @inbufct, align 4
  store i32 %9, i32* %newbsiz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %if.then
  %10 = load i8*, i8** @tokstr, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %12 = load i32, i32* %newbsiz, align 4
  %call = call i8* @hrealloc(i8* %10, i32 %11, i32 %12)
  store i8* %call, i8** @tokstr, align 4
  %13 = load i8*, i8** @tokstr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %add.ptr = getelementptr inbounds i8, i8* %13, i32 %14
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %15 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %16 = load i32, i32* %newbsiz, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %sub = sub nsw i32 %16, %17
  call void @llvm.memset.p0i8.i32(i8* %15, i8 0, i32 %sub, i32 1, i1 false)
  %18 = load i32, i32* %newbsiz, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare i8* @hrealloc(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: noinline nounwind
define i32 @parsestr(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %err = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %call = call i32 @parsestrnoerr(i8** %0)
  store i32 %call, i32* %err, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %s.addr, align 4
  %2 = load i8*, i8** %1, align 4
  call void @untokenize(i8* %2)
  %3 = load i32, i32* @errflag, align 4
  %and = and i32 %3, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %err, align 4
  %cmp = icmp sgt i32 %4, 32
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then2
  %5 = load i32, i32* %err, align 4
  %cmp3 = icmp slt i32 %5, 127
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %err, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32 %6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then2
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  %7 = load i32, i32* %err, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define i32 @parsestrnoerr(i8** %s) #0 {
entry:
  %s.addr = alloca i8**, align 4
  %l = alloca i32, align 4
  %err = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i32 @strlen(i8* %1)
  store i32 %call, i32* %l, align 4
  call void @zcontext_save()
  %2 = load i8**, i8*** %s.addr, align 4
  %3 = load i8*, i8** %2, align 4
  call void @untokenize(i8* %3)
  %4 = load i8**, i8*** %s.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %call1 = call i8* @dupstring(i8* %5)
  call void @inpush(i8* %call1, i32 0, %struct.alias* null)
  call void @strinbeg(i32 0)
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %6 = load i8**, i8*** %s.addr, align 4
  %7 = load i8*, i8** %6, align 4
  store i8* %7, i8** @tokstr, align 4
  store i8* %7, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %8 = load i32, i32* %l, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %call2 = call i32 @dquote_parse(i8 signext 0, i32 1)
  store i32 %call2, i32* %err, align 4
  %9 = load i8*, i8** @tokstr, align 4
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @tokstr, align 4
  %11 = load i8**, i8*** %s.addr, align 4
  store i8* %10, i8** %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %12, align 1
  call void @strinend()
  call void @inpop()
  call void @zcontext_restore()
  %13 = load i32, i32* %err, align 4
  ret i32 %13
}

declare void @untokenize(i8*) #2

declare i32 @strlen(i8*) #2

declare void @zcontext_save() #2

declare void @inpush(i8*, i32, %struct.alias*) #2

declare void @strinbeg(i32) #2

; Function Attrs: noinline nounwind
define internal i32 @dquote_parse(i8 signext %endchar, i32 %sub) #0 {
entry:
  %endchar.addr = alloca i8, align 1
  %sub.addr = alloca i32, align 4
  %pct = alloca i32, align 4
  %brct = alloca i32, align 4
  %bct = alloca i32, align 4
  %intick = alloca i32, align 4
  %err = alloca i32, align 4
  %c = alloca i32, align 4
  %math = alloca i32, align 4
  %zlemath = alloca i32, align 4
  store i8 %endchar, i8* %endchar.addr, align 1
  store i32 %sub, i32* %sub.addr, align 4
  store i32 0, i32* %pct, align 4
  store i32 0, i32* %brct, align 4
  store i32 0, i32* %bct, align 4
  store i32 0, i32* %intick, align 4
  store i32 0, i32* %err, align 4
  %0 = load i8, i8* %endchar.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 41
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %endchar.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 93
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* @infor, align 4
  %tobool = icmp ne i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %math, align 4
  %4 = load i32, i32* %math, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %5 = load i32, i32* @zlemetacs, align 4
  %6 = load i32, i32* @zlemetall, align 4
  %7 = load i32, i32* @addedx, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* @inbufct, align 4
  %sub6 = sub nsw i32 %add, %8
  %cmp7 = icmp sgt i32 %5, %sub6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %9 = phi i1 [ false, %lor.end ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %zlemath, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end245, %if.then85, %land.end
  %10 = load i32 ()*, i32 ()** @hgetc, align 4
  %call = call i32 %10()
  store i32 %call, i32* %c, align 4
  %11 = load i8, i8* %endchar.addr, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp ne i32 %call, %conv9
  br i1 %cmp10, label %land.rhs23, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %while.cond
  %12 = load i32, i32* %bct, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %land.rhs23, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %13 = load i32, i32* %math, align 4
  %tobool15 = icmp ne i32 %13, 0
  br i1 %tobool15, label %land.lhs.true, label %lor.lhs.false21

land.lhs.true:                                    ; preds = %lor.lhs.false14
  %14 = load i32, i32* %pct, align 4
  %cmp16 = icmp sgt i32 %14, 0
  br i1 %cmp16, label %land.rhs23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %brct, align 4
  %cmp19 = icmp sgt i32 %15, 0
  br i1 %cmp19, label %land.rhs23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18, %lor.lhs.false14
  %16 = load i32, i32* %intick, align 4
  %tobool22 = icmp ne i32 %16, 0
  br i1 %tobool22, label %land.rhs23, label %land.end25

land.rhs23:                                       ; preds = %lor.lhs.false21, %lor.lhs.false18, %land.lhs.true, %lor.lhs.false12, %while.cond
  %17 = load i32, i32* @lexstop, align 4
  %tobool24 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool24, true
  br label %land.end25

land.end25:                                       ; preds = %land.rhs23, %lor.lhs.false21
  %18 = phi i1 [ false, %lor.lhs.false21 ], [ %lnot, %land.rhs23 ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end25
  br label %cont

cont:                                             ; preds = %if.else, %while.body
  %19 = load i32, i32* %c, align 4
  switch i32 %19, label %sw.epilog240 [
    i32 92, label %sw.bb
    i32 10, label %sw.bb88
    i32 36, label %sw.bb99
    i32 125, label %sw.bb128
    i32 96, label %sw.bb134
    i32 39, label %sw.bb176
    i32 40, label %sw.bb187
    i32 41, label %sw.bb194
    i32 91, label %sw.bb206
    i32 93, label %sw.bb213
    i32 34, label %sw.bb225
  ]

sw.bb:                                            ; preds = %cont
  %20 = load i32 ()*, i32 ()** @hgetc, align 4
  %call27 = call i32 %20()
  store i32 %call27, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %21, 10
  br i1 %cmp28, label %if.then, label %if.else77

if.then:                                          ; preds = %sw.bb
  %22 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %22, 36
  br i1 %cmp30, label %if.then76, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.then
  %23 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %23, 92
  br i1 %cmp33, label %if.then76, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %24 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %24, 125
  br i1 %cmp36, label %land.lhs.true38, label %lor.lhs.false42

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %25 = load i32, i32* %intick, align 4
  %tobool39 = icmp ne i32 %25, 0
  br i1 %tobool39, label %lor.lhs.false42, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %26 = load i32, i32* %bct, align 4
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then76, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %land.lhs.true38, %lor.lhs.false35
  %27 = load i32, i32* %c, align 4
  %28 = load i8, i8* %endchar.addr, align 1
  %conv43 = sext i8 %28 to i32
  %cmp44 = icmp eq i32 %27, %conv43
  br i1 %cmp44, label %if.then76, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %29 = load i32, i32* %c, align 4
  %cmp47 = icmp eq i32 %29, 96
  br i1 %cmp47, label %if.then76, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %30 = load i8, i8* %endchar.addr, align 1
  %conv50 = sext i8 %30 to i32
  %cmp51 = icmp eq i32 %conv50, 93
  br i1 %cmp51, label %land.lhs.true53, label %if.else

land.lhs.true53:                                  ; preds = %lor.lhs.false49
  %31 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %31, 91
  br i1 %cmp54, label %if.then76, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %land.lhs.true53
  %32 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %32, 93
  br i1 %cmp57, label %if.then76, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %33 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %33, 40
  br i1 %cmp60, label %if.then76, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %34 = load i32, i32* %c, align 4
  %cmp63 = icmp eq i32 %34, 41
  br i1 %cmp63, label %if.then76, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %35 = load i32, i32* %c, align 4
  %cmp66 = icmp eq i32 %35, 123
  br i1 %cmp66, label %if.then76, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %36 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %36, 125
  br i1 %cmp69, label %if.then76, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %37 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %37, 34
  br i1 %cmp72, label %land.lhs.true74, label %if.else

land.lhs.true74:                                  ; preds = %lor.lhs.false71
  %38 = load i32, i32* %sub.addr, align 4
  %tobool75 = icmp ne i32 %38, 0
  br i1 %tobool75, label %if.then76, label %if.else

if.then76:                                        ; preds = %land.lhs.true74, %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %lor.lhs.false59, %lor.lhs.false56, %land.lhs.true53, %lor.lhs.false46, %lor.lhs.false42, %land.lhs.true40, %lor.lhs.false32, %if.then
  call void @add(i32 -97)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true74, %lor.lhs.false71, %lor.lhs.false49
  call void @add(i32 92)
  br label %cont

if.end:                                           ; preds = %if.then76
  br label %if.end87

if.else77:                                        ; preds = %sw.bb
  %39 = load i32, i32* %sub.addr, align 4
  %tobool78 = icmp ne i32 %39, 0
  br i1 %tobool78, label %if.then85, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.else77
  %40 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %tobool80 = icmp ne i8 %40, 0
  br i1 %tobool80, label %lor.lhs.false81, label %if.then85

lor.lhs.false81:                                  ; preds = %lor.lhs.false79
  %41 = load i8, i8* %endchar.addr, align 1
  %conv82 = sext i8 %41 to i32
  %cmp83 = icmp ne i32 %conv82, 34
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false81, %lor.lhs.false79, %if.else77
  br label %while.cond

if.end86:                                         ; preds = %lor.lhs.false81
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end
  br label %sw.epilog240

sw.bb88:                                          ; preds = %cont
  %42 = load i32, i32* %sub.addr, align 4
  %tobool89 = icmp ne i32 %42, 0
  br i1 %tobool89, label %land.end97, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %sw.bb88
  %43 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv91 = sext i8 %43 to i32
  %tobool92 = icmp ne i32 %conv91, 0
  br i1 %tobool92, label %land.rhs93, label %land.end97

land.rhs93:                                       ; preds = %land.lhs.true90
  %44 = load i8, i8* %endchar.addr, align 1
  %conv94 = sext i8 %44 to i32
  %cmp95 = icmp eq i32 %conv94, 34
  br label %land.end97

land.end97:                                       ; preds = %land.rhs93, %land.lhs.true90, %sw.bb88
  %45 = phi i1 [ false, %land.lhs.true90 ], [ false, %sw.bb88 ], [ %cmp95, %land.rhs93 ]
  %land.ext98 = zext i1 %45 to i32
  store i32 %land.ext98, i32* %err, align 4
  br label %sw.epilog240

sw.bb99:                                          ; preds = %cont
  %46 = load i32, i32* %intick, align 4
  %tobool100 = icmp ne i32 %46, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %sw.bb99
  br label %sw.epilog240

if.end102:                                        ; preds = %sw.bb99
  %47 = load i32 ()*, i32 ()** @hgetc, align 4
  %call103 = call i32 %47()
  store i32 %call103, i32* %c, align 4
  %48 = load i32, i32* %c, align 4
  %cmp104 = icmp eq i32 %48, 40
  br i1 %cmp104, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.end102
  call void @add(i32 -116)
  %call107 = call i32 @cmd_or_math_sub()
  switch i32 %call107, label %sw.default [
    i32 0, label %sw.bb108
    i32 1, label %sw.bb109
  ]

sw.bb108:                                         ; preds = %if.then106
  store i32 -118, i32* %c, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.then106
  store i32 -117, i32* %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then106
  store i32 1, i32* %err, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb109, %sw.bb108
  br label %if.end127

if.else110:                                       ; preds = %if.end102
  %49 = load i32, i32* %c, align 4
  %cmp111 = icmp eq i32 %49, 91
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else110
  call void @add(i32 -123)
  call void @add(i32 -111)
  call void @cmdpush(i32 25)
  %50 = load i32, i32* %sub.addr, align 4
  %call114 = call i32 @dquote_parse(i8 signext 93, i32 %50)
  store i32 %call114, i32* %err, align 4
  call void @cmdpop()
  store i32 -110, i32* %c, align 4
  br label %if.end126

if.else115:                                       ; preds = %if.else110
  %51 = load i32, i32* %c, align 4
  %cmp116 = icmp eq i32 %51, 123
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.else115
  call void @add(i32 -116)
  store i32 -113, i32* %c, align 4
  call void @cmdpush(i32 30)
  %52 = load i32, i32* %bct, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %bct, align 4
  br label %if.end125

if.else119:                                       ; preds = %if.else115
  %53 = load i32, i32* %c, align 4
  %cmp120 = icmp eq i32 %53, 36
  br i1 %cmp120, label %if.then122, label %if.else123

if.then122:                                       ; preds = %if.else119
  call void @add(i32 -116)
  br label %if.end124

if.else123:                                       ; preds = %if.else119
  %54 = load void (i32)*, void (i32)** @hungetc, align 4
  %55 = load i32, i32* %c, align 4
  call void %54(i32 %55)
  store i32 0, i32* @lexstop, align 4
  store i32 -116, i32* %c, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.then122
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then118
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then113
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %sw.epilog
  br label %sw.epilog240

sw.bb128:                                         ; preds = %cont
  %56 = load i32, i32* %intick, align 4
  %tobool129 = icmp ne i32 %56, 0
  br i1 %tobool129, label %if.then132, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %sw.bb128
  %57 = load i32, i32* %bct, align 4
  %tobool131 = icmp ne i32 %57, 0
  br i1 %tobool131, label %if.end133, label %if.then132

if.then132:                                       ; preds = %lor.lhs.false130, %sw.bb128
  br label %sw.epilog240

if.end133:                                        ; preds = %lor.lhs.false130
  store i32 -112, i32* %c, align 4
  %58 = load i32, i32* %bct, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %bct, align 4
  call void @cmdpop()
  br label %sw.epilog240

sw.bb134:                                         ; preds = %cont
  store i32 -103, i32* %c, align 4
  %59 = load i32, i32* %intick, align 4
  %cmp135 = icmp eq i32 %59, 2
  br i1 %cmp135, label %if.then137, label %if.end139

if.then137:                                       ; preds = %sw.bb134
  %60 = load i32, i32* @stophist, align 4
  %sub138 = sub nsw i32 %60, 4
  store i32 %sub138, i32* @stophist, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %sw.bb134
  %61 = load i32, i32* %intick, align 4
  %tobool140 = icmp ne i32 %61, 0
  %lnot141 = xor i1 %tobool140, true
  %lnot.ext = zext i1 %lnot141 to i32
  store i32 %lnot.ext, i32* %intick, align 4
  br i1 %lnot141, label %if.then142, label %if.else154

if.then142:                                       ; preds = %if.end139
  %62 = load i32, i32* @lexflags, align 4
  %and = and i32 %62, 2
  %tobool143 = icmp ne i32 %and, 0
  br i1 %tobool143, label %land.lhs.true144, label %if.end153

land.lhs.true144:                                 ; preds = %if.then142
  %63 = load i32, i32* @inbufflags, align 4
  %and145 = and i32 %63, 2
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.end153, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %land.lhs.true144
  %64 = load i32, i32* @zlemetacs, align 4
  %65 = load i32, i32* @zlemetall, align 4
  %add148 = add nsw i32 %65, 1
  %66 = load i32, i32* @inbufct, align 4
  %sub149 = sub nsw i32 %add148, %66
  %cmp150 = icmp sge i32 %64, %sub149
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %land.lhs.true147
  %67 = load i32, i32* @inbufct, align 4
  store i32 %67, i32* @parbegin, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %land.lhs.true147, %land.lhs.true144, %if.then142
  call void @cmdpush(i32 23)
  br label %if.end175

if.else154:                                       ; preds = %if.end139
  %68 = load i32, i32* @lexflags, align 4
  %and155 = and i32 %68, 2
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true157, label %if.end174

land.lhs.true157:                                 ; preds = %if.else154
  %69 = load i32, i32* @inbufflags, align 4
  %and158 = and i32 %69, 2
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.end174, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %70 = load i32, i32* @parbegin, align 4
  %cmp161 = icmp ne i32 %70, -1
  br i1 %cmp161, label %land.lhs.true163, label %if.end174

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %71 = load i32, i32* @parend, align 4
  %cmp164 = icmp eq i32 %71, -1
  br i1 %cmp164, label %if.then166, label %if.end174

if.then166:                                       ; preds = %land.lhs.true163
  %72 = load i32, i32* @zlemetacs, align 4
  %73 = load i32, i32* @zlemetall, align 4
  %add167 = add nsw i32 %73, 1
  %74 = load i32, i32* @inbufct, align 4
  %sub168 = sub nsw i32 %add167, %74
  %cmp169 = icmp sge i32 %72, %sub168
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %if.then166
  store i32 -1, i32* @parbegin, align 4
  br label %if.end173

if.else172:                                       ; preds = %if.then166
  %75 = load i32, i32* @inbufct, align 4
  store i32 %75, i32* @parend, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.else172, %if.then171
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %land.lhs.true163, %land.lhs.true160, %land.lhs.true157, %if.else154
  call void @cmdpop()
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end153
  br label %sw.epilog240

sw.bb176:                                         ; preds = %cont
  %76 = load i32, i32* %intick, align 4
  %tobool177 = icmp ne i32 %76, 0
  br i1 %tobool177, label %if.end179, label %if.then178

if.then178:                                       ; preds = %sw.bb176
  br label %sw.epilog240

if.end179:                                        ; preds = %sw.bb176
  %77 = load i32, i32* %intick, align 4
  %cmp180 = icmp eq i32 %77, 1
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %if.end179
  store i32 2, i32* %intick, align 4
  %78 = load i32, i32* @stophist, align 4
  %add183 = add nsw i32 %78, 4
  store i32 %add183, i32* @stophist, align 4
  br label %if.end186

if.else184:                                       ; preds = %if.end179
  store i32 1, i32* %intick, align 4
  %79 = load i32, i32* @stophist, align 4
  %sub185 = sub nsw i32 %79, 4
  store i32 %sub185, i32* @stophist, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  br label %sw.epilog240

sw.bb187:                                         ; preds = %cont
  %80 = load i32, i32* %math, align 4
  %tobool188 = icmp ne i32 %80, 0
  br i1 %tobool188, label %lor.lhs.false189, label %if.then191

lor.lhs.false189:                                 ; preds = %sw.bb187
  %81 = load i32, i32* %bct, align 4
  %tobool190 = icmp ne i32 %81, 0
  br i1 %tobool190, label %if.end193, label %if.then191

if.then191:                                       ; preds = %lor.lhs.false189, %sw.bb187
  %82 = load i32, i32* %pct, align 4
  %inc192 = add nsw i32 %82, 1
  store i32 %inc192, i32* %pct, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %lor.lhs.false189
  br label %sw.epilog240

sw.bb194:                                         ; preds = %cont
  %83 = load i32, i32* %math, align 4
  %tobool195 = icmp ne i32 %83, 0
  br i1 %tobool195, label %lor.lhs.false196, label %if.then198

lor.lhs.false196:                                 ; preds = %sw.bb194
  %84 = load i32, i32* %bct, align 4
  %tobool197 = icmp ne i32 %84, 0
  br i1 %tobool197, label %if.end205, label %if.then198

if.then198:                                       ; preds = %lor.lhs.false196, %sw.bb194
  %85 = load i32, i32* %pct, align 4
  %dec199 = add nsw i32 %85, -1
  store i32 %dec199, i32* %pct, align 4
  %tobool200 = icmp ne i32 %85, 0
  br i1 %tobool200, label %land.end203, label %land.rhs201

land.rhs201:                                      ; preds = %if.then198
  %86 = load i32, i32* %math, align 4
  %tobool202 = icmp ne i32 %86, 0
  br label %land.end203

land.end203:                                      ; preds = %land.rhs201, %if.then198
  %87 = phi i1 [ false, %if.then198 ], [ %tobool202, %land.rhs201 ]
  %land.ext204 = zext i1 %87 to i32
  store i32 %land.ext204, i32* %err, align 4
  br label %if.end205

if.end205:                                        ; preds = %land.end203, %lor.lhs.false196
  br label %sw.epilog240

sw.bb206:                                         ; preds = %cont
  %88 = load i32, i32* %math, align 4
  %tobool207 = icmp ne i32 %88, 0
  br i1 %tobool207, label %lor.lhs.false208, label %if.then210

lor.lhs.false208:                                 ; preds = %sw.bb206
  %89 = load i32, i32* %bct, align 4
  %tobool209 = icmp ne i32 %89, 0
  br i1 %tobool209, label %if.end212, label %if.then210

if.then210:                                       ; preds = %lor.lhs.false208, %sw.bb206
  %90 = load i32, i32* %brct, align 4
  %inc211 = add nsw i32 %90, 1
  store i32 %inc211, i32* %brct, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %lor.lhs.false208
  br label %sw.epilog240

sw.bb213:                                         ; preds = %cont
  %91 = load i32, i32* %math, align 4
  %tobool214 = icmp ne i32 %91, 0
  br i1 %tobool214, label %lor.lhs.false215, label %if.then217

lor.lhs.false215:                                 ; preds = %sw.bb213
  %92 = load i32, i32* %bct, align 4
  %tobool216 = icmp ne i32 %92, 0
  br i1 %tobool216, label %if.end224, label %if.then217

if.then217:                                       ; preds = %lor.lhs.false215, %sw.bb213
  %93 = load i32, i32* %brct, align 4
  %dec218 = add nsw i32 %93, -1
  store i32 %dec218, i32* %brct, align 4
  %tobool219 = icmp ne i32 %93, 0
  br i1 %tobool219, label %land.end222, label %land.rhs220

land.rhs220:                                      ; preds = %if.then217
  %94 = load i32, i32* %math, align 4
  %tobool221 = icmp ne i32 %94, 0
  br label %land.end222

land.end222:                                      ; preds = %land.rhs220, %if.then217
  %95 = phi i1 [ false, %if.then217 ], [ %tobool221, %land.rhs220 ]
  %land.ext223 = zext i1 %95 to i32
  store i32 %land.ext223, i32* %err, align 4
  br label %if.end224

if.end224:                                        ; preds = %land.end222, %lor.lhs.false215
  br label %sw.epilog240

sw.bb225:                                         ; preds = %cont
  %96 = load i32, i32* %intick, align 4
  %tobool226 = icmp ne i32 %96, 0
  br i1 %tobool226, label %if.then233, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %sw.bb225
  %97 = load i8, i8* %endchar.addr, align 1
  %conv228 = sext i8 %97 to i32
  %cmp229 = icmp ne i32 %conv228, 34
  br i1 %cmp229, label %land.lhs.true231, label %if.end234

land.lhs.true231:                                 ; preds = %lor.lhs.false227
  %98 = load i32, i32* %bct, align 4
  %tobool232 = icmp ne i32 %98, 0
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %land.lhs.true231, %sw.bb225
  br label %sw.epilog240

if.end234:                                        ; preds = %land.lhs.true231, %lor.lhs.false227
  %99 = load i32, i32* %bct, align 4
  %tobool235 = icmp ne i32 %99, 0
  br i1 %tobool235, label %if.then236, label %if.else238

if.then236:                                       ; preds = %if.end234
  call void @add(i32 -98)
  call void @cmdpush(i32 22)
  %100 = load i32, i32* %sub.addr, align 4
  %call237 = call i32 @dquote_parse(i8 signext 34, i32 %100)
  store i32 %call237, i32* %err, align 4
  call void @cmdpop()
  store i32 -98, i32* %c, align 4
  br label %if.end239

if.else238:                                       ; preds = %if.end234
  store i32 1, i32* %err, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.else238, %if.then236
  br label %sw.epilog240

sw.epilog240:                                     ; preds = %cont, %if.end239, %if.then233, %if.end224, %if.end212, %if.end205, %if.end193, %if.end186, %if.then178, %if.end175, %if.end133, %if.then132, %if.end127, %if.then101, %land.end97, %if.end87
  %101 = load i32, i32* %err, align 4
  %tobool241 = icmp ne i32 %101, 0
  br i1 %tobool241, label %if.then244, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %sw.epilog240
  %102 = load i32, i32* @lexstop, align 4
  %tobool243 = icmp ne i32 %102, 0
  br i1 %tobool243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %lor.lhs.false242, %sw.epilog240
  br label %while.end

if.end245:                                        ; preds = %lor.lhs.false242
  %103 = load i32, i32* %c, align 4
  call void @add(i32 %103)
  br label %while.cond

while.end:                                        ; preds = %if.then244, %land.end25
  %104 = load i32, i32* %intick, align 4
  %cmp246 = icmp eq i32 %104, 2
  br i1 %cmp246, label %if.then248, label %if.end250

if.then248:                                       ; preds = %while.end
  %105 = load i32, i32* @stophist, align 4
  %sub249 = sub nsw i32 %105, 4
  store i32 %sub249, i32* @stophist, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %while.end
  %106 = load i32, i32* %intick, align 4
  %tobool251 = icmp ne i32 %106, 0
  br i1 %tobool251, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.end250
  call void @cmdpop()
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %if.end250
  br label %while.cond254

while.cond254:                                    ; preds = %while.body257, %if.end253
  %107 = load i32, i32* %bct, align 4
  %dec255 = add nsw i32 %107, -1
  store i32 %dec255, i32* %bct, align 4
  %tobool256 = icmp ne i32 %107, 0
  br i1 %tobool256, label %while.body257, label %while.end258

while.body257:                                    ; preds = %while.cond254
  call void @cmdpop()
  br label %while.cond254

while.end258:                                     ; preds = %while.cond254
  %108 = load i32, i32* @lexstop, align 4
  %tobool259 = icmp ne i32 %108, 0
  br i1 %tobool259, label %if.then260, label %if.else269

if.then260:                                       ; preds = %while.end258
  %109 = load i32, i32* %intick, align 4
  %tobool261 = icmp ne i32 %109, 0
  br i1 %tobool261, label %lor.end267, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %if.then260
  %110 = load i8, i8* %endchar.addr, align 1
  %conv263 = sext i8 %110 to i32
  %tobool264 = icmp ne i32 %conv263, 0
  br i1 %tobool264, label %lor.end267, label %lor.rhs265

lor.rhs265:                                       ; preds = %lor.lhs.false262
  %111 = load i32, i32* %err, align 4
  %tobool266 = icmp ne i32 %111, 0
  br label %lor.end267

lor.end267:                                       ; preds = %lor.rhs265, %lor.lhs.false262, %if.then260
  %112 = phi i1 [ true, %lor.lhs.false262 ], [ true, %if.then260 ], [ %tobool266, %lor.rhs265 ]
  %lor.ext268 = zext i1 %112 to i32
  store i32 %lor.ext268, i32* %err, align 4
  br label %if.end274

if.else269:                                       ; preds = %while.end258
  %113 = load i32, i32* %err, align 4
  %cmp270 = icmp eq i32 %113, 1
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.else269
  %114 = load i32, i32* %c, align 4
  store i32 %114, i32* %err, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.else269
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %lor.end267
  %115 = load i32, i32* %zlemath, align 4
  %tobool275 = icmp ne i32 %115, 0
  br i1 %tobool275, label %land.lhs.true276, label %if.end282

land.lhs.true276:                                 ; preds = %if.end274
  %116 = load i32, i32* @zlemetacs, align 4
  %117 = load i32, i32* @zlemetall, align 4
  %add277 = add nsw i32 %117, 1
  %118 = load i32, i32* @inbufct, align 4
  %sub278 = sub nsw i32 %add277, %118
  %cmp279 = icmp sle i32 %116, %sub278
  br i1 %cmp279, label %if.then281, label %if.end282

if.then281:                                       ; preds = %land.lhs.true276
  store i32 2, i32* @inwhat, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %land.lhs.true276, %if.end274
  %119 = load i32, i32* %err, align 4
  ret i32 %119
}

declare void @strinend() #2

declare void @inpop() #2

declare void @zcontext_restore() #2

; Function Attrs: noinline nounwind
define i8* @parse_subscript(i8* %s, i32 %sub, i32 %endchar) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %sub.addr = alloca i32, align 4
  %endchar.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %err = alloca i32, align 4
  %toklen = alloca i32, align 4
  %t = alloca i8*, align 4
  %strend = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %sub, i32* %sub.addr, align 4
  store i32 %endchar, i32* %endchar.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load i32, i32* %endchar.addr, align 4
  %cmp = icmp eq i32 %conv, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @zcontext_save()
  %6 = load i8*, i8** %s.addr, align 4
  %call2 = call i8* @dupstring(i8* %6)
  store i8* %call2, i8** %t, align 4
  call void @untokenize(i8* %call2)
  %7 = load i8*, i8** %t, align 4
  call void @inpush(i8* %7, i32 0, %struct.alias* null)
  call void @strinbeg(i32 0)
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %8 = load i8*, i8** %s.addr, align 4
  %call3 = call i8* @dupstring(i8* %8)
  store i8* %call3, i8** @tokstr, align 4
  store i8* %call3, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %9 = load i32, i32* %l, align 4
  %add = add nsw i32 %9, 1
  store i32 %add, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %10 = load i32, i32* %endchar.addr, align 4
  %conv4 = trunc i32 %10 to i8
  %11 = load i32, i32* %sub.addr, align 4
  %call5 = call i32 @dquote_parse(i8 signext %conv4, i32 %11)
  store i32 %call5, i32* %err, align 4
  %12 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %13 = load i8*, i8** @tokstr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %toklen, align 4
  %14 = load i8*, i8** %s.addr, align 4
  %15 = load i8*, i8** @tokstr, align 4
  %16 = load i32, i32* %toklen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 %16, i32 1, i1 false)
  %17 = load i32, i32* %err, align 4
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load i32, i32* %toklen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 %19
  store i8* %add.ptr, i8** %strend, align 4
  %20 = load i8*, i8** %strend, align 4
  %21 = load i8, i8* %20, align 1
  %conv8 = sext i8 %21 to i32
  store i32 %conv8, i32* %err, align 4
  %22 = load i8*, i8** %strend, align 4
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %s.addr, align 4
  call void @untokenize(i8* %23)
  %24 = load i32, i32* %err, align 4
  %conv9 = trunc i32 %24 to i8
  %25 = load i8*, i8** %strend, align 4
  store i8 %conv9, i8* %25, align 1
  store i8* null, i8** %s.addr, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %26 = load i32, i32* %toklen, align 4
  %27 = load i8*, i8** %s.addr, align 4
  %add.ptr10 = getelementptr inbounds i8, i8* %27, i32 %26
  store i8* %add.ptr10, i8** %s.addr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  call void @strinend()
  call void @inpop()
  call void @zcontext_restore()
  %28 = load i8*, i8** %s.addr, align 4
  store i8* %28, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %29 = load i8*, i8** %retval, align 4
  ret i8* %29
}

; Function Attrs: noinline nounwind
define i32 @parse_subst_string(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %c = alloca i32, align 4
  %l = alloca i32, align 4
  %err = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %ctok = alloca i32, align 4
  %t = alloca i8*, align 4
  %len = alloca i32, align 4
  %tlen = alloca i32, align 4
  %diff = alloca i32, align 4
  %dptr = alloca i8*, align 4
  %sptr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l, align 4
  %1 = load i8*, i8** %s.addr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 4
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @nulstring, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @zcontext_save()
  %4 = load i8*, i8** %s.addr, align 4
  call void @untokenize(i8* %4)
  %5 = load i8*, i8** %s.addr, align 4
  %call3 = call i8* @dupstring(i8* %5)
  call void @inpush(i8* %call3, i32 0, %struct.alias* null)
  call void @strinbeg(i32 0)
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %6 = load i8*, i8** %s.addr, align 4
  store i8* %6, i8** @tokstr, align 4
  store i8* %6, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %7 = load i32, i32* %l, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %8 = load i32 ()*, i32 ()** @hgetc, align 4
  %call4 = call i32 %8()
  store i32 %call4, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %call5 = call i32 @gettokstr(i32 %9, i32 1)
  store i32 %call5, i32* %ctok, align 4
  %10 = load i32, i32* @errflag, align 4
  store i32 %10, i32* %err, align 4
  call void @strinend()
  call void @inpop()
  call void @zcontext_restore()
  %11 = load i32, i32* %err, align 4
  %12 = load i32, i32* @errflag, align 4
  %and = and i32 %12, 2
  %or = or i32 %11, %and
  store i32 %or, i32* @errflag, align 4
  %13 = load i32, i32* %ctok, align 4
  %cmp = icmp eq i32 %13, 38
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %14 = load i8*, i8** %s.addr, align 4
  call void @untokenize(i8* %14)
  store i32 1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %15 = load i8*, i8** %s.addr, align 4
  store i8* %15, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.end7
  %16 = load i8*, i8** %ptr, align 4
  %17 = load i8, i8* %16, align 1
  %tobool8 = icmp ne i8 %17, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %ptr, align 4
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp9 = icmp eq i32 %conv, -123
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %20 = load i8*, i8** %ptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %20, i32 1
  %21 = load i8, i8* %arrayidx, align 1
  %conv11 = sext i8 %21 to i32
  %cmp12 = icmp eq i32 %conv11, -99
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true
  %22 = load i8*, i8** %ptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %22, i32 2
  %call15 = call i8* @getkeystring(i8* %add.ptr, i32* %len, i32 19, i32* null)
  store i8* %call15, i8** %t, align 4
  %23 = load i32, i32* %len, align 4
  %add16 = add nsw i32 %23, 2
  store i32 %add16, i32* %len, align 4
  %24 = load i8*, i8** %t, align 4
  %call17 = call i32 @strlen(i8* %24)
  store i32 %call17, i32* %tlen, align 4
  %25 = load i32, i32* %len, align 4
  %26 = load i32, i32* %tlen, align 4
  %sub = sub nsw i32 %25, %26
  store i32 %sub, i32* %diff, align 4
  %27 = load i32, i32* %diff, align 4
  %cmp18 = icmp slt i32 %27, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  store i32 1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then14
  %28 = load i8*, i8** %ptr, align 4
  %29 = load i8*, i8** %t, align 4
  %30 = load i32, i32* %tlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 %30, i32 1, i1 false)
  %31 = load i32, i32* %tlen, align 4
  %32 = load i8*, i8** %ptr, align 4
  %add.ptr22 = getelementptr inbounds i8, i8* %32, i32 %31
  store i8* %add.ptr22, i8** %ptr, align 4
  %33 = load i32, i32* %diff, align 4
  %cmp23 = icmp sgt i32 %33, 0
  br i1 %cmp23, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end21
  %34 = load i8*, i8** %ptr, align 4
  store i8* %34, i8** %dptr, align 4
  %35 = load i8*, i8** %ptr, align 4
  %36 = load i32, i32* %diff, align 4
  %add.ptr26 = getelementptr inbounds i8, i8* %35, i32 %36
  store i8* %add.ptr26, i8** %sptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then25
  %37 = load i8*, i8** %sptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 4
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %dptr, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr27, i8** %dptr, align 4
  store i8 %38, i8* %39, align 1
  %tobool28 = icmp ne i8 %38, 0
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end29

if.end29:                                         ; preds = %while.end, %if.end21
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true, %for.body
  %40 = load i8*, i8** %ptr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr30, i8** %ptr, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then20, %if.then6, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind
define internal i32 @gettokstr(i32 %c, i32 %sub) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %sub.addr = alloca i32, align 4
  %bct = alloca i32, align 4
  %pct = alloca i32, align 4
  %brct = alloca i32, align 4
  %seen_brct = alloca i32, align 4
  %fdpar = alloca i32, align 4
  %intpos = alloca i32, align 4
  %in_brace_param = alloca i32, align 4
  %inquote = alloca i32, align 4
  %unmatched = alloca i32, align 4
  %peek = alloca i32, align 4
  %act = alloca i32, align 4
  %e = alloca i32, align 4
  %inbl = alloca i32, align 4
  %t = alloca i8*, align 4
  %sav = alloca i32, align 4
  %strquote = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %sub, i32* %sub.addr, align 4
  store i32 0, i32* %bct, align 4
  store i32 0, i32* %pct, align 4
  store i32 0, i32* %brct, align 4
  store i32 0, i32* %seen_brct, align 4
  store i32 0, i32* %fdpar, align 4
  store i32 1, i32* %intpos, align 4
  store i32 0, i32* %in_brace_param, align 4
  store i32 0, i32* %unmatched, align 4
  store i32 34, i32* %peek, align 4
  %0 = load i32, i32* %sub.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 1), align 4
  %call = call i8* @hcalloc(i32 32)
  store i8* %call, i8** @tokstr, align 4
  store i8* %call, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end554, %if.then345, %if.end
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %idxprom = zext i8 %conv to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = sext i16 %2 to i32
  %and = and i32 %conv1, 8
  store i32 %and, i32* %inbl, align 4
  %3 = load i32, i32* %fdpar, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %for.cond
  %4 = load i32, i32* %inbl, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end7, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %5, 41
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true4
  store i32 0, i32* %fdpar, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true4, %land.lhs.true, %for.cond
  %6 = load i32, i32* %inbl, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %if.end7
  %7 = load i32, i32* %in_brace_param, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.else, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %8 = load i32, i32* %pct, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  store i32 0, i32* %act, align 4
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true9, %if.end7
  %9 = load i32, i32* %c.addr, align 4
  %conv14 = trunc i32 %9 to i8
  %idxprom15 = zext i8 %conv14 to i32
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @lexact2, i32 0, i32 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %10 to i32
  store i32 %conv17, i32* %act, align 4
  %11 = load i32, i32* %c.addr, align 4
  %conv18 = trunc i32 %11 to i8
  %idxprom19 = zext i8 %conv18 to i32
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @lextok2, i32 0, i32 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  store i32 %conv21, i32* %c.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %13 = load i32, i32* %act, align 4
  switch i32 %13, label %sw.epilog546 [
    i32 0, label %sw.bb
    i32 21, label %sw.bb28
    i32 1, label %sw.bb30
    i32 2, label %sw.bb49
    i32 3, label %sw.bb65
    i32 4, label %sw.bb95
    i32 5, label %sw.bb100
    i32 7, label %sw.bb109
    i32 8, label %sw.bb171
    i32 9, label %sw.bb188
    i32 17, label %sw.bb208
    i32 10, label %sw.bb217
    i32 11, label %sw.bb232
    i32 12, label %sw.bb264
    i32 13, label %sw.bb338
    i32 14, label %sw.bb357
    i32 15, label %sw.bb431
    i32 16, label %sw.bb440
    i32 18, label %sw.bb540
    i32 19, label %sw.bb541
  ]

sw.bb:                                            ; preds = %if.end22
  %14 = load i32, i32* %in_brace_param, align 4
  %tobool23 = icmp ne i32 %14, 0
  br i1 %tobool23, label %if.end27, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %sw.bb
  %15 = load i32, i32* %sub.addr, align 4
  %tobool25 = icmp ne i32 %15, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true24
  br label %brk

if.end27:                                         ; preds = %land.lhs.true24, %sw.bb
  br label %sw.epilog546

sw.bb28:                                          ; preds = %if.end22
  %16 = load i32 ()*, i32 ()** @hgetc, align 4
  %call29 = call i32 %16()
  store i32 %call29, i32* %c.addr, align 4
  call void @add(i32 -125)
  br label %sw.epilog546

sw.bb30:                                          ; preds = %if.end22
  %17 = load i32, i32* %fdpar, align 4
  %tobool31 = icmp ne i32 %17, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb30
  %18 = load i32, i32* %c.addr, align 4
  call void @add(i32 %18)
  %19 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %19, align 1
  store i32 27, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %sw.bb30
  %20 = load i32, i32* %sub.addr, align 4
  %tobool34 = icmp ne i32 %20, 0
  br i1 %tobool34, label %land.lhs.true36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %21 = load i32, i32* %in_brace_param, align 4
  %tobool35 = icmp ne i32 %21, 0
  br i1 %tobool35, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %lor.lhs.false, %if.end33
  %22 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv37 = sext i8 %22 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true36
  br label %sw.epilog546

if.end40:                                         ; preds = %land.lhs.true36, %lor.lhs.false
  %23 = load i32, i32* %in_brace_param, align 4
  %tobool41 = icmp ne i32 %23, 0
  br i1 %tobool41, label %if.end48, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.end40
  %24 = load i32, i32* %pct, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %pct, align 4
  %tobool43 = icmp ne i32 %24, 0
  br i1 %tobool43, label %if.end48, label %if.then44

if.then44:                                        ; preds = %land.lhs.true42
  %25 = load i32, i32* %sub.addr, align 4
  %tobool45 = icmp ne i32 %25, 0
  br i1 %tobool45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then44
  store i32 0, i32* %pct, align 4
  br label %sw.epilog546

if.else47:                                        ; preds = %if.then44
  br label %brk

if.end48:                                         ; preds = %land.lhs.true42, %if.end40
  store i32 -118, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb49:                                          ; preds = %if.end22
  %26 = load i32, i32* %pct, align 4
  %tobool50 = icmp ne i32 %26, 0
  br i1 %tobool50, label %if.end57, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %sw.bb49
  %27 = load i32, i32* %in_brace_param, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %if.end57, label %if.then53

if.then53:                                        ; preds = %land.lhs.true51
  %28 = load i32, i32* %sub.addr, align 4
  %tobool54 = icmp ne i32 %28, 0
  br i1 %tobool54, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.then53
  br label %sw.epilog546

if.else56:                                        ; preds = %if.then53
  br label %brk

if.end57:                                         ; preds = %land.lhs.true51, %sw.bb49
  %29 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %tobool58 = icmp ne i8 %29, 0
  br i1 %tobool58, label %lor.lhs.false59, label %if.then63

lor.lhs.false59:                                  ; preds = %if.end57
  %30 = load i32, i32* %sub.addr, align 4
  %tobool60 = icmp ne i32 %30, 0
  br i1 %tobool60, label %if.end64, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %lor.lhs.false59
  %31 = load i32, i32* %in_brace_param, align 4
  %tobool62 = icmp ne i32 %31, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %land.lhs.true61, %if.end57
  store i32 -114, i32* %c.addr, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true61, %lor.lhs.false59
  br label %sw.epilog546

sw.bb65:                                          ; preds = %if.end22
  %32 = load i32 ()*, i32 ()** @hgetc, align 4
  %call66 = call i32 %32()
  store i32 %call66, i32* %e, align 4
  %33 = load i32, i32* %e, align 4
  %cmp67 = icmp eq i32 %33, 91
  br i1 %cmp67, label %if.then69, label %if.else74

if.then69:                                        ; preds = %sw.bb65
  call void @cmdpush(i32 25)
  call void @add(i32 -123)
  call void @add(i32 -111)
  %34 = load i32, i32* %sub.addr, align 4
  %call70 = call i32 @dquote_parse(i8 signext 93, i32 %34)
  store i32 %call70, i32* %c.addr, align 4
  call void @cmdpop()
  %35 = load i32, i32* %c.addr, align 4
  %tobool71 = icmp ne i32 %35, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then69
  store i32 38, i32* %peek, align 4
  br label %brk

if.end73:                                         ; preds = %if.then69
  store i32 -110, i32* %c.addr, align 4
  br label %if.end94

if.else74:                                        ; preds = %sw.bb65
  %36 = load i32, i32* %e, align 4
  %cmp75 = icmp eq i32 %36, 40
  br i1 %cmp75, label %if.then77, label %if.else81

if.then77:                                        ; preds = %if.else74
  call void @add(i32 -123)
  %call78 = call i32 @cmd_or_math_sub()
  switch i32 %call78, label %sw.default [
    i32 0, label %sw.bb79
    i32 1, label %sw.bb80
  ]

sw.bb79:                                          ; preds = %if.then77
  store i32 -118, i32* %c.addr, align 4
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.then77
  store i32 -117, i32* %c.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then77
  store i32 38, i32* %peek, align 4
  br label %brk

sw.epilog:                                        ; preds = %sw.bb80, %sw.bb79
  br label %if.end93

if.else81:                                        ; preds = %if.else74
  %37 = load i32, i32* %e, align 4
  %cmp82 = icmp eq i32 %37, 123
  br i1 %cmp82, label %if.then84, label %if.else91

if.then84:                                        ; preds = %if.else81
  %38 = load i32, i32* %c.addr, align 4
  call void @add(i32 %38)
  store i32 -113, i32* %c.addr, align 4
  %39 = load i32, i32* %bct, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %bct, align 4
  call void @cmdpush(i32 30)
  %40 = load i32, i32* %in_brace_param, align 4
  %tobool85 = icmp ne i32 %40, 0
  br i1 %tobool85, label %if.end90, label %if.then86

if.then86:                                        ; preds = %if.then84
  %41 = load i32, i32* %bct, align 4
  store i32 %41, i32* %in_brace_param, align 4
  %tobool87 = icmp ne i32 %41, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then86
  store i32 0, i32* %seen_brct, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.then86
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then84
  br label %if.end92

if.else91:                                        ; preds = %if.else81
  %42 = load void (i32)*, void (i32)** @hungetc, align 4
  %43 = load i32, i32* %e, align 4
  call void %42(i32 %43)
  store i32 0, i32* @lexstop, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.end90
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %sw.epilog
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end73
  br label %sw.epilog546

sw.bb95:                                          ; preds = %if.end22
  %44 = load i32, i32* %in_brace_param, align 4
  %tobool96 = icmp ne i32 %44, 0
  br i1 %tobool96, label %if.end99, label %if.then97

if.then97:                                        ; preds = %sw.bb95
  %45 = load i32, i32* %brct, align 4
  %inc98 = add nsw i32 %45, 1
  store i32 %inc98, i32* %brct, align 4
  store i32 1, i32* %seen_brct, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %sw.bb95
  store i32 -111, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb100:                                         ; preds = %if.end22
  %46 = load i32, i32* %in_brace_param, align 4
  %tobool101 = icmp ne i32 %46, 0
  br i1 %tobool101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %sw.bb100
  %47 = load i32, i32* %brct, align 4
  %dec103 = add nsw i32 %47, -1
  store i32 %dec103, i32* %brct, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %sw.bb100
  %48 = load i32, i32* %brct, align 4
  %cmp105 = icmp slt i32 %48, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  store i32 0, i32* %brct, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end104
  store i32 -110, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb109:                                         ; preds = %if.end22
  %49 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %tobool110 = icmp ne i8 %49, 0
  br i1 %tobool110, label %if.then111, label %if.end128

if.then111:                                       ; preds = %sw.bb109
  %50 = load i32, i32* %sub.addr, align 4
  %tobool112 = icmp ne i32 %50, 0
  br i1 %tobool112, label %if.then115, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.then111
  %51 = load i32, i32* %in_brace_param, align 4
  %tobool114 = icmp ne i32 %51, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %lor.lhs.false113, %if.then111
  br label %sw.epilog546

if.end116:                                        ; preds = %lor.lhs.false113
  %52 = load i32, i32* @incasepat, align 4
  %cmp117 = icmp sgt i32 %52, 0
  br i1 %cmp117, label %land.lhs.true119, label %if.end122

land.lhs.true119:                                 ; preds = %if.end116
  %53 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %tobool120 = icmp ne i32 %53, 0
  br i1 %tobool120, label %if.end122, label %if.then121

if.then121:                                       ; preds = %land.lhs.true119
  store i32 6, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %land.lhs.true119, %if.end116
  %54 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 98), align 1
  %tobool123 = icmp ne i8 %54, 0
  br i1 %tobool123, label %if.end127, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %if.end122
  %55 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %tobool125 = icmp ne i32 %55, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %land.lhs.true124
  br label %brk

if.end127:                                        ; preds = %land.lhs.true124, %if.end122
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %sw.bb109
  %56 = load i32, i32* %in_brace_param, align 4
  %tobool129 = icmp ne i32 %56, 0
  br i1 %tobool129, label %if.end170, label %if.then130

if.then130:                                       ; preds = %if.end128
  %57 = load i32, i32* %sub.addr, align 4
  %tobool131 = icmp ne i32 %57, 0
  br i1 %tobool131, label %if.end156, label %if.then132

if.then132:                                       ; preds = %if.then130
  %58 = load i32 ()*, i32 ()** @hgetc, align 4
  %call133 = call i32 %58()
  store i32 %call133, i32* %e, align 4
  %59 = load void (i32)*, void (i32)** @hungetc, align 4
  %60 = load i32, i32* %e, align 4
  call void %59(i32 %60)
  store i32 0, i32* @lexstop, align 4
  %61 = load i32, i32* %e, align 4
  %cmp134 = icmp eq i32 %61, 41
  br i1 %cmp134, label %if.then154, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.then132
  %62 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv137 = sext i8 %62 to i32
  %tobool138 = icmp ne i32 %conv137, 0
  br i1 %tobool138, label %land.lhs.true139, label %if.end155

land.lhs.true139:                                 ; preds = %lor.lhs.false136
  %63 = load i32, i32* %e, align 4
  %conv140 = trunc i32 %63 to i8
  %idxprom141 = zext i8 %conv140 to i32
  %arrayidx142 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom141
  %64 = load i16, i16* %arrayidx142, align 2
  %conv143 = sext i16 %64 to i32
  %and144 = and i32 %conv143, 8
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %land.lhs.true146, label %if.end155

land.lhs.true146:                                 ; preds = %land.lhs.true139
  %65 = load i32, i32* %bct, align 4
  %tobool147 = icmp ne i32 %65, 0
  br i1 %tobool147, label %if.end155, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true146
  %66 = load i32, i32* %brct, align 4
  %tobool149 = icmp ne i32 %66, 0
  br i1 %tobool149, label %if.end155, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %land.lhs.true148
  %67 = load i32, i32* %intpos, align 4
  %tobool151 = icmp ne i32 %67, 0
  br i1 %tobool151, label %if.end155, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %land.lhs.true150
  %68 = load i32, i32* @incmdpos, align 4
  %tobool153 = icmp ne i32 %68, 0
  br i1 %tobool153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %land.lhs.true152, %if.then132
  %69 = load i32, i32* @nocorrect, align 4
  %or = or i32 %69, 2
  store i32 %or, i32* @nocorrect, align 4
  br label %brk

if.end155:                                        ; preds = %land.lhs.true152, %land.lhs.true150, %land.lhs.true148, %land.lhs.true146, %land.lhs.true139, %lor.lhs.false136
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then130
  %70 = load i32, i32* %pct, align 4
  %inc157 = add nsw i32 %70, 1
  store i32 %inc157, i32* %pct, align 4
  %tobool158 = icmp ne i32 %70, 0
  br i1 %tobool158, label %if.end169, label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.end156
  %71 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv160 = sext i8 %71 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br i1 %tobool161, label %land.lhs.true162, label %if.end169

land.lhs.true162:                                 ; preds = %land.lhs.true159
  %72 = load i32, i32* %intpos, align 4
  %tobool163 = icmp ne i32 %72, 0
  br i1 %tobool163, label %land.lhs.true164, label %if.end169

land.lhs.true164:                                 ; preds = %land.lhs.true162
  %73 = load i32, i32* %bct, align 4
  %tobool165 = icmp ne i32 %73, 0
  br i1 %tobool165, label %if.end169, label %land.lhs.true166

land.lhs.true166:                                 ; preds = %land.lhs.true164
  %74 = load i32, i32* %brct, align 4
  %tobool167 = icmp ne i32 %74, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %land.lhs.true166
  store i32 1, i32* %fdpar, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %land.lhs.true166, %land.lhs.true164, %land.lhs.true162, %land.lhs.true159, %if.end156
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end128
  store i32 -120, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb171:                                         ; preds = %if.end22
  %75 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %conv172 = sext i8 %75 to i32
  %tobool173 = icmp ne i32 %conv172, 0
  br i1 %tobool173, label %if.then176, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %sw.bb171
  %76 = load i32, i32* %sub.addr, align 4
  %tobool175 = icmp ne i32 %76, 0
  br i1 %tobool175, label %if.then176, label %if.else177

if.then176:                                       ; preds = %lor.lhs.false174, %sw.bb171
  store i32 123, i32* %c.addr, align 4
  br label %if.end187

if.else177:                                       ; preds = %lor.lhs.false174
  %77 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %tobool178 = icmp ne i32 %77, 0
  br i1 %tobool178, label %if.end182, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.else177
  %78 = load i32, i32* @incmdpos, align 4
  %tobool180 = icmp ne i32 %78, 0
  br i1 %tobool180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %land.lhs.true179
  call void @add(i32 123)
  %79 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %79, align 1
  store i32 34, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %land.lhs.true179, %if.else177
  %80 = load i32, i32* %in_brace_param, align 4
  %tobool183 = icmp ne i32 %80, 0
  br i1 %tobool183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end182
  call void @cmdpush(i32 29)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end182
  %81 = load i32, i32* %bct, align 4
  %inc186 = add nsw i32 %81, 1
  store i32 %inc186, i32* %bct, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end185, %if.then176
  br label %sw.epilog546

sw.bb188:                                         ; preds = %if.end22
  %82 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %conv189 = sext i8 %82 to i32
  %tobool190 = icmp ne i32 %conv189, 0
  br i1 %tobool190, label %land.lhs.true193, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %sw.bb188
  %83 = load i32, i32* %sub.addr, align 4
  %tobool192 = icmp ne i32 %83, 0
  br i1 %tobool192, label %land.lhs.true193, label %if.end196

land.lhs.true193:                                 ; preds = %lor.lhs.false191, %sw.bb188
  %84 = load i32, i32* %in_brace_param, align 4
  %tobool194 = icmp ne i32 %84, 0
  br i1 %tobool194, label %if.end196, label %if.then195

if.then195:                                       ; preds = %land.lhs.true193
  br label %sw.epilog546

if.end196:                                        ; preds = %land.lhs.true193, %lor.lhs.false191
  %85 = load i32, i32* %bct, align 4
  %tobool197 = icmp ne i32 %85, 0
  br i1 %tobool197, label %if.end199, label %if.then198

if.then198:                                       ; preds = %if.end196
  br label %sw.epilog546

if.end199:                                        ; preds = %if.end196
  %86 = load i32, i32* %in_brace_param, align 4
  %tobool200 = icmp ne i32 %86, 0
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end199
  call void @cmdpop()
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end199
  %87 = load i32, i32* %bct, align 4
  %dec203 = add nsw i32 %87, -1
  store i32 %dec203, i32* %bct, align 4
  %88 = load i32, i32* %in_brace_param, align 4
  %cmp204 = icmp eq i32 %87, %88
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.end202
  store i32 0, i32* %in_brace_param, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.end202
  store i32 -112, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb208:                                         ; preds = %if.end22
  %89 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %tobool209 = icmp ne i8 %89, 0
  br i1 %tobool209, label %if.end216, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %sw.bb208
  %90 = load i32, i32* %sub.addr, align 4
  %tobool211 = icmp ne i32 %90, 0
  br i1 %tobool211, label %if.end216, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %land.lhs.true210
  %91 = load i32, i32* %bct, align 4
  %92 = load i32, i32* %in_brace_param, align 4
  %cmp213 = icmp sgt i32 %91, %92
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %land.lhs.true212
  store i32 -102, i32* %c.addr, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %land.lhs.true212, %land.lhs.true210, %sw.bb208
  br label %sw.epilog546

sw.bb217:                                         ; preds = %if.end22
  %93 = load i32, i32* %in_brace_param, align 4
  %tobool218 = icmp ne i32 %93, 0
  br i1 %tobool218, label %if.then221, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %sw.bb217
  %94 = load i32, i32* %sub.addr, align 4
  %tobool220 = icmp ne i32 %94, 0
  br i1 %tobool220, label %if.then221, label %if.end222

if.then221:                                       ; preds = %lor.lhs.false219, %sw.bb217
  br label %sw.epilog546

if.end222:                                        ; preds = %lor.lhs.false219
  %95 = load i32 ()*, i32 ()** @hgetc, align 4
  %call223 = call i32 %95()
  store i32 %call223, i32* %e, align 4
  %96 = load i32, i32* %e, align 4
  %cmp224 = icmp ne i32 %96, 40
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.end222
  %97 = load void (i32)*, void (i32)** @hungetc, align 4
  %98 = load i32, i32* %e, align 4
  call void %97(i32 %98)
  store i32 0, i32* @lexstop, align 4
  br label %brk

if.end227:                                        ; preds = %if.end222
  call void @add(i32 -106)
  %call228 = call i32 @skipcomm()
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %if.end227
  store i32 38, i32* %peek, align 4
  br label %brk

if.end231:                                        ; preds = %if.end227
  store i32 -118, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb232:                                         ; preds = %if.end22
  %99 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %conv233 = sext i8 %99 to i32
  %tobool234 = icmp ne i32 %conv233, 0
  br i1 %tobool234, label %land.lhs.true235, label %if.end238

land.lhs.true235:                                 ; preds = %sw.bb232
  %100 = load i32, i32* %sub.addr, align 4
  %tobool236 = icmp ne i32 %100, 0
  br i1 %tobool236, label %if.then237, label %if.end238

if.then237:                                       ; preds = %land.lhs.true235
  br label %sw.epilog546

if.end238:                                        ; preds = %land.lhs.true235, %sw.bb232
  %101 = load i32 ()*, i32 ()** @hgetc, align 4
  %call239 = call i32 %101()
  store i32 %call239, i32* %e, align 4
  %102 = load i32, i32* %in_brace_param, align 4
  %tobool240 = icmp ne i32 %102, 0
  br i1 %tobool240, label %if.end251, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %if.end238
  %103 = load i32, i32* %sub.addr, align 4
  %tobool242 = icmp ne i32 %103, 0
  br i1 %tobool242, label %if.end251, label %land.lhs.true243

land.lhs.true243:                                 ; preds = %lor.lhs.false241
  %104 = load i32, i32* %e, align 4
  %cmp244 = icmp eq i32 %104, 40
  br i1 %cmp244, label %if.then246, label %if.end251

if.then246:                                       ; preds = %land.lhs.true243
  call void @add(i32 -108)
  %call247 = call i32 @skipcomm()
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.then246
  store i32 38, i32* %peek, align 4
  br label %brk

if.end250:                                        ; preds = %if.then246
  store i32 -118, i32* %c.addr, align 4
  br label %sw.epilog546

if.end251:                                        ; preds = %land.lhs.true243, %lor.lhs.false241, %if.end238
  %105 = load void (i32)*, void (i32)** @hungetc, align 4
  %106 = load i32, i32* %e, align 4
  call void %105(i32 %106)
  %call252 = call i32 @isnumglob()
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then254, label %if.end258

if.then254:                                       ; preds = %if.end251
  call void @add(i32 -108)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then254
  %107 = load i32 ()*, i32 ()** @hgetc, align 4
  %call255 = call i32 %107()
  store i32 %call255, i32* %c.addr, align 4
  %cmp256 = icmp ne i32 %call255, 62
  br i1 %cmp256, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %108 = load i32, i32* %c.addr, align 4
  call void @add(i32 %108)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -107, i32* %c.addr, align 4
  br label %sw.epilog546

if.end258:                                        ; preds = %if.end251
  store i32 0, i32* @lexstop, align 4
  %109 = load i32, i32* %in_brace_param, align 4
  %tobool259 = icmp ne i32 %109, 0
  br i1 %tobool259, label %if.then262, label %lor.lhs.false260

lor.lhs.false260:                                 ; preds = %if.end258
  %110 = load i32, i32* %sub.addr, align 4
  %tobool261 = icmp ne i32 %110, 0
  br i1 %tobool261, label %if.then262, label %if.end263

if.then262:                                       ; preds = %lor.lhs.false260, %if.end258
  br label %sw.epilog546

if.end263:                                        ; preds = %lor.lhs.false260
  br label %brk

sw.bb264:                                         ; preds = %if.end22
  %111 = load i32, i32* %sub.addr, align 4
  %tobool265 = icmp ne i32 %111, 0
  br i1 %tobool265, label %if.end337, label %if.then266

if.then266:                                       ; preds = %sw.bb264
  %112 = load i32, i32* %intpos, align 4
  %tobool267 = icmp ne i32 %112, 0
  br i1 %tobool267, label %if.then268, label %if.else279

if.then268:                                       ; preds = %if.then266
  %113 = load i32 ()*, i32 ()** @hgetc, align 4
  %call269 = call i32 %113()
  store i32 %call269, i32* %e, align 4
  %114 = load i32, i32* %e, align 4
  %cmp270 = icmp ne i32 %114, 40
  br i1 %cmp270, label %if.then272, label %if.else273

if.then272:                                       ; preds = %if.then268
  %115 = load void (i32)*, void (i32)** @hungetc, align 4
  %116 = load i32, i32* %e, align 4
  call void %115(i32 %116)
  store i32 0, i32* @lexstop, align 4
  store i32 -115, i32* %c.addr, align 4
  br label %if.end278

if.else273:                                       ; preds = %if.then268
  call void @add(i32 -115)
  %call274 = call i32 @skipcomm()
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %if.then276, label %if.end277

if.then276:                                       ; preds = %if.else273
  store i32 38, i32* %peek, align 4
  br label %brk

if.end277:                                        ; preds = %if.else273
  store i32 -118, i32* %c.addr, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.then272
  br label %if.end336

if.else279:                                       ; preds = %if.then266
  %117 = load i32, i32* %peek, align 4
  %cmp280 = icmp ne i32 %117, 35
  br i1 %cmp280, label %land.lhs.true282, label %if.else334

land.lhs.true282:                                 ; preds = %if.else279
  %118 = load i32, i32* @incmdpos, align 4
  %tobool283 = icmp ne i32 %118, 0
  br i1 %tobool283, label %land.lhs.true286, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %land.lhs.true282
  %119 = load i32, i32* @intypeset, align 4
  %tobool285 = icmp ne i32 %119, 0
  br i1 %tobool285, label %land.lhs.true286, label %if.else334

land.lhs.true286:                                 ; preds = %lor.lhs.false284, %land.lhs.true282
  %120 = load i32, i32* %bct, align 4
  %tobool287 = icmp ne i32 %120, 0
  br i1 %tobool287, label %if.else334, label %land.lhs.true288

land.lhs.true288:                                 ; preds = %land.lhs.true286
  %121 = load i32, i32* %brct, align 4
  %tobool289 = icmp ne i32 %121, 0
  br i1 %tobool289, label %if.else334, label %if.then290

if.then290:                                       ; preds = %land.lhs.true288
  %122 = load i8*, i8** @tokstr, align 4
  store i8* %122, i8** %t, align 4
  %123 = load i8*, i8** %t, align 4
  %124 = load i8, i8* %123, align 1
  %idxprom291 = zext i8 %124 to i32
  %arrayidx292 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom291
  %125 = load i16, i16* %arrayidx292, align 2
  %conv293 = sext i16 %125 to i32
  %and294 = and i32 %conv293, 1
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %if.then296, label %if.else307

if.then296:                                       ; preds = %if.then290
  br label %while.cond297

while.cond297:                                    ; preds = %while.body305, %if.then296
  %126 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  %127 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %cmp298 = icmp ult i8* %incdec.ptr, %127
  br i1 %cmp298, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond297
  %128 = load i8*, i8** %t, align 4
  %129 = load i8, i8* %128, align 1
  %idxprom300 = zext i8 %129 to i32
  %arrayidx301 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom300
  %130 = load i16, i16* %arrayidx301, align 2
  %conv302 = sext i16 %130 to i32
  %and303 = and i32 %conv302, 1
  %tobool304 = icmp ne i32 %and303, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond297
  %131 = phi i1 [ false, %while.cond297 ], [ %tobool304, %land.rhs ]
  br i1 %131, label %while.body305, label %while.end306

while.body305:                                    ; preds = %land.end
  br label %while.cond297

while.end306:                                     ; preds = %land.end
  br label %if.end317

if.else307:                                       ; preds = %if.then290
  %132 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %133 = load i8, i8* %132, align 1
  %conv308 = sext i8 %133 to i32
  store i32 %conv308, i32* %sav, align 4
  %134 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %t, align 4
  %call309 = call i8* @itype_end(i8* %135, i32 128, i32 0)
  store i8* %call309, i8** %t, align 4
  %136 = load i8*, i8** %t, align 4
  %137 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %cmp310 = icmp ult i8* %136, %137
  br i1 %cmp310, label %if.then312, label %if.else314

if.then312:                                       ; preds = %if.else307
  %call313 = call i32 @skipparens(i8 signext -111, i8 signext -110, i8** %t)
  br label %if.end316

if.else314:                                       ; preds = %if.else307
  %138 = load i32, i32* %sav, align 4
  %conv315 = trunc i32 %138 to i8
  %139 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 %conv315, i8* %139, align 1
  br label %if.end316

if.end316:                                        ; preds = %if.else314, %if.then312
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %while.end306
  %140 = load i8*, i8** %t, align 4
  %141 = load i8, i8* %140, align 1
  %conv318 = sext i8 %141 to i32
  %cmp319 = icmp eq i32 %conv318, 43
  br i1 %cmp319, label %if.then321, label %if.end323

if.then321:                                       ; preds = %if.end317
  %142 = load i8*, i8** %t, align 4
  %incdec.ptr322 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr322, i8** %t, align 4
  br label %if.end323

if.end323:                                        ; preds = %if.then321, %if.end317
  %143 = load i8*, i8** %t, align 4
  %144 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %cmp324 = icmp eq i8* %143, %144
  br i1 %cmp324, label %if.then326, label %if.else332

if.then326:                                       ; preds = %if.end323
  %145 = load i32 ()*, i32 ()** @hgetc, align 4
  %call327 = call i32 %145()
  store i32 %call327, i32* %e, align 4
  %146 = load i32, i32* %e, align 4
  %cmp328 = icmp eq i32 %146, 40
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %if.then326
  %147 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %147, align 1
  store i32 36, i32* %retval, align 4
  br label %return

if.end331:                                        ; preds = %if.then326
  %148 = load void (i32)*, void (i32)** @hungetc, align 4
  %149 = load i32, i32* %e, align 4
  call void %148(i32 %149)
  store i32 0, i32* @lexstop, align 4
  store i32 35, i32* %peek, align 4
  store i32 2, i32* %intpos, align 4
  br label %if.end333

if.else332:                                       ; preds = %if.end323
  store i32 -115, i32* %c.addr, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.else332, %if.end331
  br label %if.end335

if.else334:                                       ; preds = %land.lhs.true288, %land.lhs.true286, %lor.lhs.false284, %if.else279
  store i32 -115, i32* %c.addr, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.else334, %if.end333
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %if.end278
  br label %if.end337

if.end337:                                        ; preds = %if.end336, %sw.bb264
  br label %sw.epilog546

sw.bb338:                                         ; preds = %if.end22
  %150 = load i32 ()*, i32 ()** @hgetc, align 4
  %call339 = call i32 %150()
  store i32 %call339, i32* %c.addr, align 4
  %151 = load i32, i32* %c.addr, align 4
  %cmp340 = icmp eq i32 %151, 10
  br i1 %cmp340, label %if.then342, label %if.else347

if.then342:                                       ; preds = %sw.bb338
  %152 = load i32 ()*, i32 ()** @hgetc, align 4
  %call343 = call i32 %152()
  store i32 %call343, i32* %c.addr, align 4
  %153 = load i32, i32* @lexstop, align 4
  %tobool344 = icmp ne i32 %153, 0
  br i1 %tobool344, label %if.end346, label %if.then345

if.then345:                                       ; preds = %if.then342
  br label %for.cond

if.end346:                                        ; preds = %if.then342
  br label %if.end353

if.else347:                                       ; preds = %sw.bb338
  call void @add(i32 -97)
  %154 = load i32, i32* %c.addr, align 4
  %cmp348 = icmp eq i32 %154, 131
  br i1 %cmp348, label %if.then350, label %if.end352

if.then350:                                       ; preds = %if.else347
  %155 = load i32 ()*, i32 ()** @hgetc, align 4
  %call351 = call i32 %155()
  store i32 %call351, i32* %c.addr, align 4
  call void @add(i32 -125)
  br label %if.end352

if.end352:                                        ; preds = %if.then350, %if.else347
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.end346
  %156 = load i32, i32* @lexstop, align 4
  %tobool354 = icmp ne i32 %156, 0
  br i1 %tobool354, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.end353
  br label %brk

if.end356:                                        ; preds = %if.end353
  br label %sw.epilog546

sw.bb357:                                         ; preds = %if.end22
  %157 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %tobool358 = icmp ne i32 %157, 0
  br i1 %tobool358, label %land.rhs359, label %land.end364

land.rhs359:                                      ; preds = %sw.bb357
  %158 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %arrayidx360 = getelementptr inbounds i8, i8* %158, i32 -1
  %159 = load i8, i8* %arrayidx360, align 1
  %conv361 = sext i8 %159 to i32
  %cmp362 = icmp eq i32 %conv361, -123
  br label %land.end364

land.end364:                                      ; preds = %land.rhs359, %sw.bb357
  %160 = phi i1 [ false, %sw.bb357 ], [ %cmp362, %land.rhs359 ]
  %land.ext = zext i1 %160 to i32
  store i32 %land.ext, i32* %strquote, align 4
  call void @add(i32 -99)
  call void @cmdpush(i32 21)
  br label %for.cond365

for.cond365:                                      ; preds = %if.end430, %land.end364
  %161 = load i32, i32* @stophist, align 4
  %add = add nsw i32 %161, 4
  store i32 %add, i32* @stophist, align 4
  br label %while.cond366

while.cond366:                                    ; preds = %if.end411, %for.cond365
  %162 = load i32 ()*, i32 ()** @hgetc, align 4
  %call367 = call i32 %162()
  store i32 %call367, i32* %c.addr, align 4
  %cmp368 = icmp ne i32 %call367, 39
  br i1 %cmp368, label %land.rhs370, label %land.end372

land.rhs370:                                      ; preds = %while.cond366
  %163 = load i32, i32* @lexstop, align 4
  %tobool371 = icmp ne i32 %163, 0
  %lnot = xor i1 %tobool371, true
  br label %land.end372

land.end372:                                      ; preds = %land.rhs370, %while.cond366
  %164 = phi i1 [ false, %while.cond366 ], [ %lnot, %land.rhs370 ]
  br i1 %164, label %while.body374, label %while.end412

while.body374:                                    ; preds = %land.end372
  %165 = load i32, i32* %strquote, align 4
  %tobool375 = icmp ne i32 %165, 0
  br i1 %tobool375, label %land.lhs.true376, label %if.else392

land.lhs.true376:                                 ; preds = %while.body374
  %166 = load i32, i32* %c.addr, align 4
  %cmp377 = icmp eq i32 %166, 92
  br i1 %cmp377, label %if.then379, label %if.else392

if.then379:                                       ; preds = %land.lhs.true376
  %167 = load i32 ()*, i32 ()** @hgetc, align 4
  %call380 = call i32 %167()
  store i32 %call380, i32* %c.addr, align 4
  %168 = load i32, i32* @lexstop, align 4
  %tobool381 = icmp ne i32 %168, 0
  br i1 %tobool381, label %if.then382, label %if.end383

if.then382:                                       ; preds = %if.then379
  br label %while.end412

if.end383:                                        ; preds = %if.then379
  %169 = load i32, i32* %c.addr, align 4
  %cmp384 = icmp eq i32 %169, 92
  br i1 %cmp384, label %if.then389, label %lor.lhs.false386

lor.lhs.false386:                                 ; preds = %if.end383
  %170 = load i32, i32* %c.addr, align 4
  %cmp387 = icmp eq i32 %170, 39
  br i1 %cmp387, label %if.then389, label %if.else390

if.then389:                                       ; preds = %lor.lhs.false386, %if.end383
  call void @add(i32 -97)
  br label %if.end391

if.else390:                                       ; preds = %lor.lhs.false386
  call void @add(i32 92)
  br label %if.end391

if.end391:                                        ; preds = %if.else390, %if.then389
  br label %if.end411

if.else392:                                       ; preds = %land.lhs.true376, %while.body374
  %171 = load i32, i32* %sub.addr, align 4
  %tobool393 = icmp ne i32 %171, 0
  br i1 %tobool393, label %if.end410, label %land.lhs.true394

land.lhs.true394:                                 ; preds = %if.else392
  %172 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv395 = sext i8 %172 to i32
  %tobool396 = icmp ne i32 %conv395, 0
  br i1 %tobool396, label %land.lhs.true397, label %if.end410

land.lhs.true397:                                 ; preds = %land.lhs.true394
  %173 = load i32, i32* %c.addr, align 4
  %cmp398 = icmp eq i32 %173, 10
  br i1 %cmp398, label %if.then400, label %if.end410

if.then400:                                       ; preds = %land.lhs.true397
  %174 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %arrayidx401 = getelementptr inbounds i8, i8* %174, i32 -1
  %175 = load i8, i8* %arrayidx401, align 1
  %conv402 = sext i8 %175 to i32
  %cmp403 = icmp eq i32 %conv402, 92
  br i1 %cmp403, label %if.then405, label %if.else408

if.then405:                                       ; preds = %if.then400
  %176 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %incdec.ptr406 = getelementptr inbounds i8, i8* %176, i32 -1
  store i8* %incdec.ptr406, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %dec407 = add nsw i32 %177, -1
  store i32 %dec407, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  br label %if.end409

if.else408:                                       ; preds = %if.then400
  br label %while.end412

if.end409:                                        ; preds = %if.then405
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %land.lhs.true397, %land.lhs.true394, %if.else392
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %if.end391
  %178 = load i32, i32* %c.addr, align 4
  call void @add(i32 %178)
  br label %while.cond366

while.end412:                                     ; preds = %if.else408, %if.then382, %land.end372
  %179 = load i32, i32* @stophist, align 4
  %sub413 = sub nsw i32 %179, 4
  store i32 %sub413, i32* @stophist, align 4
  %180 = load i32, i32* %c.addr, align 4
  %cmp414 = icmp ne i32 %180, 39
  br i1 %cmp414, label %if.then416, label %if.end421

if.then416:                                       ; preds = %while.end412
  store i32 39, i32* %unmatched, align 4
  %181 = load i32, i32* @lexflags, align 4
  %and417 = and i32 %181, 1
  %tobool418 = icmp ne i32 %and417, 0
  br i1 %tobool418, label %if.end420, label %if.then419

if.then419:                                       ; preds = %if.then416
  store i32 38, i32* %peek, align 4
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %if.then416
  call void @cmdpop()
  br label %brk

if.end421:                                        ; preds = %while.end412
  %182 = load i32 ()*, i32 ()** @hgetc, align 4
  %call422 = call i32 %182()
  store i32 %call422, i32* %e, align 4
  %183 = load i32, i32* %e, align 4
  %cmp423 = icmp ne i32 %183, 39
  br i1 %cmp423, label %if.then429, label %lor.lhs.false425

lor.lhs.false425:                                 ; preds = %if.end421
  %184 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 151), align 1
  %tobool426 = icmp ne i8 %184, 0
  br i1 %tobool426, label %lor.lhs.false427, label %if.then429

lor.lhs.false427:                                 ; preds = %lor.lhs.false425
  %185 = load i32, i32* %strquote, align 4
  %tobool428 = icmp ne i32 %185, 0
  br i1 %tobool428, label %if.then429, label %if.end430

if.then429:                                       ; preds = %lor.lhs.false427, %lor.lhs.false425, %if.end421
  br label %for.end

if.end430:                                        ; preds = %lor.lhs.false427
  %186 = load i32, i32* %c.addr, align 4
  call void @add(i32 %186)
  br label %for.cond365

for.end:                                          ; preds = %if.then429
  call void @cmdpop()
  %187 = load void (i32)*, void (i32)** @hungetc, align 4
  %188 = load i32, i32* %e, align 4
  call void %187(i32 %188)
  store i32 0, i32* @lexstop, align 4
  store i32 -99, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb431:                                         ; preds = %if.end22
  call void @add(i32 -98)
  call void @cmdpush(i32 22)
  %189 = load i32, i32* %sub.addr, align 4
  %call432 = call i32 @dquote_parse(i8 signext 34, i32 %189)
  store i32 %call432, i32* %c.addr, align 4
  call void @cmdpop()
  %190 = load i32, i32* %c.addr, align 4
  %tobool433 = icmp ne i32 %190, 0
  br i1 %tobool433, label %if.then434, label %if.end439

if.then434:                                       ; preds = %sw.bb431
  store i32 34, i32* %unmatched, align 4
  %191 = load i32, i32* @lexflags, align 4
  %and435 = and i32 %191, 1
  %tobool436 = icmp ne i32 %and435, 0
  br i1 %tobool436, label %if.end438, label %if.then437

if.then437:                                       ; preds = %if.then434
  store i32 38, i32* %peek, align 4
  br label %if.end438

if.end438:                                        ; preds = %if.then437, %if.then434
  br label %brk

if.end439:                                        ; preds = %sw.bb431
  store i32 -98, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb440:                                         ; preds = %if.end22
  call void @add(i32 -109)
  call void @cmdpush(i32 23)
  %192 = load i32, i32* @lexflags, align 4
  %and441 = and i32 %192, 2
  %tobool442 = icmp ne i32 %and441, 0
  br i1 %tobool442, label %land.lhs.true443, label %if.end452

land.lhs.true443:                                 ; preds = %sw.bb440
  %193 = load i32, i32* @inbufflags, align 4
  %and444 = and i32 %193, 2
  %tobool445 = icmp ne i32 %and444, 0
  br i1 %tobool445, label %if.end452, label %land.lhs.true446

land.lhs.true446:                                 ; preds = %land.lhs.true443
  %194 = load i32, i32* @zlemetacs, align 4
  %195 = load i32, i32* @zlemetall, align 4
  %add447 = add nsw i32 %195, 1
  %196 = load i32, i32* @inbufct, align 4
  %sub448 = sub nsw i32 %add447, %196
  %cmp449 = icmp sge i32 %194, %sub448
  br i1 %cmp449, label %if.then451, label %if.end452

if.then451:                                       ; preds = %land.lhs.true446
  %197 = load i32, i32* @inbufct, align 4
  store i32 %197, i32* @parbegin, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.then451, %land.lhs.true446, %land.lhs.true443, %sw.bb440
  store i32 0, i32* %inquote, align 4
  br label %while.cond453

while.cond453:                                    ; preds = %if.end506, %if.end452
  %198 = load i32 ()*, i32 ()** @hgetc, align 4
  %call454 = call i32 %198()
  store i32 %call454, i32* %c.addr, align 4
  %cmp455 = icmp ne i32 %call454, 96
  br i1 %cmp455, label %land.rhs457, label %land.end460

land.rhs457:                                      ; preds = %while.cond453
  %199 = load i32, i32* @lexstop, align 4
  %tobool458 = icmp ne i32 %199, 0
  %lnot459 = xor i1 %tobool458, true
  br label %land.end460

land.end460:                                      ; preds = %land.rhs457, %while.cond453
  %200 = phi i1 [ false, %while.cond453 ], [ %lnot459, %land.rhs457 ]
  br i1 %200, label %while.body462, label %while.end507

while.body462:                                    ; preds = %land.end460
  %201 = load i32, i32* %c.addr, align 4
  %cmp463 = icmp eq i32 %201, 92
  br i1 %cmp463, label %if.then465, label %if.else485

if.then465:                                       ; preds = %while.body462
  %202 = load i32 ()*, i32 ()** @hgetc, align 4
  %call466 = call i32 %202()
  store i32 %call466, i32* %c.addr, align 4
  %203 = load i32, i32* %c.addr, align 4
  %cmp467 = icmp ne i32 %203, 10
  br i1 %cmp467, label %if.then469, label %if.else477

if.then469:                                       ; preds = %if.then465
  %204 = load i32, i32* %c.addr, align 4
  %cmp470 = icmp eq i32 %204, 96
  br i1 %cmp470, label %lor.end, label %lor.lhs.false472

lor.lhs.false472:                                 ; preds = %if.then469
  %205 = load i32, i32* %c.addr, align 4
  %cmp473 = icmp eq i32 %205, 92
  br i1 %cmp473, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false472
  %206 = load i32, i32* %c.addr, align 4
  %cmp475 = icmp eq i32 %206, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false472, %if.then469
  %207 = phi i1 [ true, %lor.lhs.false472 ], [ true, %if.then469 ], [ %cmp475, %lor.rhs ]
  %cond = select i1 %207, i32 -97, i32 92
  call void @add(i32 %cond)
  %208 = load i32, i32* %c.addr, align 4
  call void @add(i32 %208)
  br label %if.end484

if.else477:                                       ; preds = %if.then465
  %209 = load i32, i32* %sub.addr, align 4
  %tobool478 = icmp ne i32 %209, 0
  br i1 %tobool478, label %if.end483, label %land.lhs.true479

land.lhs.true479:                                 ; preds = %if.else477
  %210 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv480 = sext i8 %210 to i32
  %tobool481 = icmp ne i32 %conv480, 0
  br i1 %tobool481, label %if.then482, label %if.end483

if.then482:                                       ; preds = %land.lhs.true479
  %211 = load i32, i32* %c.addr, align 4
  call void @add(i32 %211)
  br label %if.end483

if.end483:                                        ; preds = %if.then482, %land.lhs.true479, %if.else477
  br label %if.end484

if.end484:                                        ; preds = %if.end483, %lor.end
  br label %if.end506

if.else485:                                       ; preds = %while.body462
  %212 = load i32, i32* %sub.addr, align 4
  %tobool486 = icmp ne i32 %212, 0
  br i1 %tobool486, label %if.end494, label %land.lhs.true487

land.lhs.true487:                                 ; preds = %if.else485
  %213 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 45), align 1
  %conv488 = sext i8 %213 to i32
  %tobool489 = icmp ne i32 %conv488, 0
  br i1 %tobool489, label %land.lhs.true490, label %if.end494

land.lhs.true490:                                 ; preds = %land.lhs.true487
  %214 = load i32, i32* %c.addr, align 4
  %cmp491 = icmp eq i32 %214, 10
  br i1 %cmp491, label %if.then493, label %if.end494

if.then493:                                       ; preds = %land.lhs.true490
  br label %while.end507

if.end494:                                        ; preds = %land.lhs.true490, %land.lhs.true487, %if.else485
  %215 = load i32, i32* %c.addr, align 4
  call void @add(i32 %215)
  %216 = load i32, i32* %c.addr, align 4
  %cmp495 = icmp eq i32 %216, 39
  br i1 %cmp495, label %if.then497, label %if.end505

if.then497:                                       ; preds = %if.end494
  %217 = load i32, i32* %inquote, align 4
  %tobool498 = icmp ne i32 %217, 0
  %lnot499 = xor i1 %tobool498, true
  %lnot.ext = zext i1 %lnot499 to i32
  store i32 %lnot.ext, i32* %inquote, align 4
  br i1 %lnot499, label %if.then500, label %if.else502

if.then500:                                       ; preds = %if.then497
  %218 = load i32, i32* @stophist, align 4
  %add501 = add nsw i32 %218, 4
  store i32 %add501, i32* @stophist, align 4
  br label %if.end504

if.else502:                                       ; preds = %if.then497
  %219 = load i32, i32* @stophist, align 4
  %sub503 = sub nsw i32 %219, 4
  store i32 %sub503, i32* @stophist, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.else502, %if.then500
  br label %if.end505

if.end505:                                        ; preds = %if.end504, %if.end494
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %if.end484
  br label %while.cond453

while.end507:                                     ; preds = %if.then493, %land.end460
  %220 = load i32, i32* %inquote, align 4
  %tobool508 = icmp ne i32 %220, 0
  br i1 %tobool508, label %if.then509, label %if.end511

if.then509:                                       ; preds = %while.end507
  %221 = load i32, i32* @stophist, align 4
  %sub510 = sub nsw i32 %221, 4
  store i32 %sub510, i32* @stophist, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then509, %while.end507
  call void @cmdpop()
  %222 = load i32, i32* %c.addr, align 4
  %cmp512 = icmp ne i32 %222, 96
  br i1 %cmp512, label %if.then514, label %if.end519

if.then514:                                       ; preds = %if.end511
  store i32 96, i32* %unmatched, align 4
  %223 = load i32, i32* @lexflags, align 4
  %and515 = and i32 %223, 1
  %tobool516 = icmp ne i32 %and515, 0
  br i1 %tobool516, label %if.end518, label %if.then517

if.then517:                                       ; preds = %if.then514
  store i32 38, i32* %peek, align 4
  br label %if.end518

if.end518:                                        ; preds = %if.then517, %if.then514
  br label %brk

if.end519:                                        ; preds = %if.end511
  store i32 -109, i32* %c.addr, align 4
  %224 = load i32, i32* @lexflags, align 4
  %and520 = and i32 %224, 2
  %tobool521 = icmp ne i32 %and520, 0
  br i1 %tobool521, label %land.lhs.true522, label %if.end539

land.lhs.true522:                                 ; preds = %if.end519
  %225 = load i32, i32* @inbufflags, align 4
  %and523 = and i32 %225, 2
  %tobool524 = icmp ne i32 %and523, 0
  br i1 %tobool524, label %if.end539, label %land.lhs.true525

land.lhs.true525:                                 ; preds = %land.lhs.true522
  %226 = load i32, i32* @parbegin, align 4
  %cmp526 = icmp ne i32 %226, -1
  br i1 %cmp526, label %land.lhs.true528, label %if.end539

land.lhs.true528:                                 ; preds = %land.lhs.true525
  %227 = load i32, i32* @parend, align 4
  %cmp529 = icmp eq i32 %227, -1
  br i1 %cmp529, label %if.then531, label %if.end539

if.then531:                                       ; preds = %land.lhs.true528
  %228 = load i32, i32* @zlemetacs, align 4
  %229 = load i32, i32* @zlemetall, align 4
  %add532 = add nsw i32 %229, 1
  %230 = load i32, i32* @inbufct, align 4
  %sub533 = sub nsw i32 %add532, %230
  %cmp534 = icmp sge i32 %228, %sub533
  br i1 %cmp534, label %if.then536, label %if.else537

if.then536:                                       ; preds = %if.then531
  store i32 -1, i32* @parbegin, align 4
  br label %if.end538

if.else537:                                       ; preds = %if.then531
  %231 = load i32, i32* @inbufct, align 4
  store i32 %231, i32* @parend, align 4
  br label %if.end538

if.end538:                                        ; preds = %if.else537, %if.then536
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %land.lhs.true528, %land.lhs.true525, %land.lhs.true522, %if.end519
  br label %sw.epilog546

sw.bb540:                                         ; preds = %if.end22
  store i32 -101, i32* %c.addr, align 4
  br label %sw.epilog546

sw.bb541:                                         ; preds = %if.end22
  %232 = load i32, i32* %seen_brct, align 4
  %tobool542 = icmp ne i32 %232, 0
  br i1 %tobool542, label %if.then543, label %if.else544

if.then543:                                       ; preds = %sw.bb541
  store i32 -100, i32* %c.addr, align 4
  br label %if.end545

if.else544:                                       ; preds = %sw.bb541
  store i32 33, i32* %c.addr, align 4
  br label %if.end545

if.end545:                                        ; preds = %if.else544, %if.then543
  br label %sw.epilog546

sw.epilog546:                                     ; preds = %if.end545, %if.end22, %sw.bb540, %if.end539, %if.end439, %for.end, %if.end356, %if.end337, %if.then262, %while.end, %if.end250, %if.then237, %if.end231, %if.then221, %if.end216, %if.end207, %if.then198, %if.then195, %if.end187, %if.end170, %if.then115, %if.end108, %if.end99, %if.end94, %if.end64, %if.then55, %if.end48, %if.then46, %if.then39, %sw.bb28, %if.end27
  %233 = load i32, i32* %c.addr, align 4
  call void @add(i32 %233)
  %234 = load i32 ()*, i32 ()** @hgetc, align 4
  %call547 = call i32 %234()
  store i32 %call547, i32* %c.addr, align 4
  %235 = load i32, i32* %intpos, align 4
  %tobool548 = icmp ne i32 %235, 0
  br i1 %tobool548, label %if.then549, label %if.end551

if.then549:                                       ; preds = %sw.epilog546
  %236 = load i32, i32* %intpos, align 4
  %dec550 = add nsw i32 %236, -1
  store i32 %dec550, i32* %intpos, align 4
  br label %if.end551

if.end551:                                        ; preds = %if.then549, %sw.epilog546
  %237 = load i32, i32* @lexstop, align 4
  %tobool552 = icmp ne i32 %237, 0
  br i1 %tobool552, label %if.then553, label %if.end554

if.then553:                                       ; preds = %if.end551
  br label %for.end555

if.end554:                                        ; preds = %if.end551
  br label %for.cond

for.end555:                                       ; preds = %if.then553
  br label %brk

brk:                                              ; preds = %for.end555, %if.end518, %if.end438, %if.end420, %if.then355, %if.then276, %if.end263, %if.then249, %if.then230, %if.then226, %if.then154, %if.then126, %sw.default, %if.then72, %if.else56, %if.else47, %if.then26
  %238 = load i32, i32* @errflag, align 4
  %tobool556 = icmp ne i32 %238, 0
  br i1 %tobool556, label %if.then557, label %if.end567

if.then557:                                       ; preds = %brk
  %239 = load i32, i32* %in_brace_param, align 4
  %tobool558 = icmp ne i32 %239, 0
  br i1 %tobool558, label %if.then559, label %if.end566

if.then559:                                       ; preds = %if.then557
  br label %while.cond560

while.cond560:                                    ; preds = %while.body564, %if.then559
  %240 = load i32, i32* %bct, align 4
  %dec561 = add nsw i32 %240, -1
  store i32 %dec561, i32* %bct, align 4
  %241 = load i32, i32* %in_brace_param, align 4
  %cmp562 = icmp sge i32 %240, %241
  br i1 %cmp562, label %while.body564, label %while.end565

while.body564:                                    ; preds = %while.cond560
  call void @cmdpop()
  br label %while.cond560

while.end565:                                     ; preds = %while.cond560
  br label %if.end566

if.end566:                                        ; preds = %while.end565, %if.then557
  store i32 38, i32* %retval, align 4
  br label %return

if.end567:                                        ; preds = %brk
  %242 = load void (i32)*, void (i32)** @hungetc, align 4
  %243 = load i32, i32* %c.addr, align 4
  call void %242(i32 %243)
  %244 = load i32, i32* %unmatched, align 4
  %tobool568 = icmp ne i32 %244, 0
  br i1 %tobool568, label %land.lhs.true569, label %if.end573

land.lhs.true569:                                 ; preds = %if.end567
  %245 = load i32, i32* @lexflags, align 4
  %and570 = and i32 %245, 1
  %tobool571 = icmp ne i32 %and570, 0
  br i1 %tobool571, label %if.end573, label %if.then572

if.then572:                                       ; preds = %land.lhs.true569
  %246 = load i32, i32* %unmatched, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 %246)
  br label %if.end573

if.end573:                                        ; preds = %if.then572, %land.lhs.true569, %if.end567
  %247 = load i32, i32* %in_brace_param, align 4
  %tobool574 = icmp ne i32 %247, 0
  br i1 %tobool574, label %if.then575, label %if.else582

if.then575:                                       ; preds = %if.end573
  br label %while.cond576

while.cond576:                                    ; preds = %while.body580, %if.then575
  %248 = load i32, i32* %bct, align 4
  %dec577 = add nsw i32 %248, -1
  store i32 %dec577, i32* %bct, align 4
  %249 = load i32, i32* %in_brace_param, align 4
  %cmp578 = icmp sge i32 %248, %249
  br i1 %cmp578, label %while.body580, label %while.end581

while.body580:                                    ; preds = %while.cond576
  call void @cmdpop()
  br label %while.cond576

while.end581:                                     ; preds = %while.cond576
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end606

if.else582:                                       ; preds = %if.end573
  %250 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 89), align 1
  %tobool583 = icmp ne i8 %250, 0
  br i1 %tobool583, label %if.end605, label %land.lhs.true584

land.lhs.true584:                                 ; preds = %if.else582
  %251 = load i32, i32* %sub.addr, align 4
  %tobool585 = icmp ne i32 %251, 0
  br i1 %tobool585, label %if.end605, label %land.lhs.true586

land.lhs.true586:                                 ; preds = %land.lhs.true584
  %252 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %cmp587 = icmp sgt i32 %252, 1
  br i1 %cmp587, label %land.lhs.true589, label %if.end605

land.lhs.true589:                                 ; preds = %land.lhs.true586
  %253 = load i32, i32* %peek, align 4
  %cmp590 = icmp eq i32 %253, 34
  br i1 %cmp590, label %land.lhs.true592, label %if.end605

land.lhs.true592:                                 ; preds = %land.lhs.true589
  %254 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %arrayidx593 = getelementptr inbounds i8, i8* %254, i32 -1
  %255 = load i8, i8* %arrayidx593, align 1
  %conv594 = sext i8 %255 to i32
  %cmp595 = icmp eq i32 %conv594, 125
  br i1 %cmp595, label %land.lhs.true597, label %if.end605

land.lhs.true597:                                 ; preds = %land.lhs.true592
  %256 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %arrayidx598 = getelementptr inbounds i8, i8* %256, i32 -2
  %257 = load i8, i8* %arrayidx598, align 1
  %conv599 = sext i8 %257 to i32
  %cmp600 = icmp ne i32 %conv599, -97
  br i1 %cmp600, label %if.then602, label %if.end605

if.then602:                                       ; preds = %land.lhs.true597
  %258 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %incdec.ptr603 = getelementptr inbounds i8, i8* %258, i32 -1
  store i8* %incdec.ptr603, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %259 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %dec604 = add nsw i32 %259, -1
  store i32 %dec604, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 0, i32* @lexstop, align 4
  %260 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %260(i32 125)
  br label %if.end605

if.end605:                                        ; preds = %if.then602, %land.lhs.true597, %land.lhs.true592, %land.lhs.true589, %land.lhs.true586, %land.lhs.true584, %if.else582
  br label %if.end606

if.end606:                                        ; preds = %if.end605, %while.end581
  %261 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %261, align 1
  %262 = load i32, i32* %peek, align 4
  store i32 %262, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end606, %if.end566, %if.then330, %if.then181, %if.then121, %if.then32
  %263 = load i32, i32* %retval, align 4
  ret i32 %263
}

declare i8* @getkeystring(i8*, i32*, i32, i32*) #2

declare void @spckword(i8**, i32, i32, i32) #2

; Function Attrs: noinline nounwind
define internal i32 @checkalias() #0 {
entry:
  %retval = alloca i32, align 4
  %an = alloca %struct.alias*, align 4
  %suf = alloca i8*, align 4
  %c = alloca i32, align 4
  %0 = load i8*, i8** @zshlextext, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @noaliases, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end74, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 1), align 1
  %conv = sext i8 %2 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end74

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 130), align 1
  %tobool4 = icmp ne i8 %3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %4 = load i32, i32* @tok, align 4
  %cmp = icmp eq i32 %4, 34
  br i1 %cmp, label %land.lhs.true6, label %if.end74

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %5 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %8 = load i8*, i8** @zshlextext, align 4
  %call = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %tobool7 = icmp ne %struct.hashnode* %call, null
  br i1 %tobool7, label %if.end74, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6, %land.lhs.true3
  %9 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %getnode9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 9
  %10 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode9, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %12 = load i8*, i8** @zshlextext, align 4
  %call10 = call %struct.hashnode* %10(%struct.hashtable* %11, i8* %12)
  %13 = bitcast %struct.hashnode* %call10 to %struct.alias*
  store %struct.alias* %13, %struct.alias** %an, align 4
  %14 = load %struct.alias*, %struct.alias** %an, align 4
  %tobool11 = icmp ne %struct.alias* %14, null
  br i1 %tobool11, label %land.lhs.true12, label %if.end46

land.lhs.true12:                                  ; preds = %if.then8
  %15 = load %struct.alias*, %struct.alias** %an, align 4
  %inuse = getelementptr inbounds %struct.alias, %struct.alias* %15, i32 0, i32 2
  %16 = load i32, i32* %inuse, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.end46, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %17 = load %struct.alias*, %struct.alias** %an, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %17, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 2
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then23, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %land.lhs.true14
  %19 = load i32, i32* @incmdpos, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %land.lhs.true18, label %lor.lhs.false21

land.lhs.true18:                                  ; preds = %lor.lhs.false16
  %20 = load i32, i32* @tok, align 4
  %cmp19 = icmp eq i32 %20, 34
  br i1 %cmp19, label %if.then23, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %land.lhs.true18, %lor.lhs.false16
  %21 = load i32, i32* @inalmore, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then23, label %if.end46

if.then23:                                        ; preds = %lor.lhs.false21, %land.lhs.true18, %land.lhs.true14
  %22 = load i32, i32* @lexstop, align 4
  %tobool24 = icmp ne i32 %22, 0
  br i1 %tobool24, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.then23
  %23 = load i32 ()*, i32 ()** @hgetc, align 4
  %call26 = call i32 %23()
  store i32 %call26, i32* %c, align 4
  %24 = load void (i32)*, void (i32)** @hungetc, align 4
  %25 = load i32, i32* %c, align 4
  call void %24(i32 %25)
  %26 = load i32, i32* %c, align 4
  %conv27 = trunc i32 %26 to i8
  %idxprom = zext i8 %conv27 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv28 = sext i16 %27 to i32
  %and29 = and i32 %conv28, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then25
  call void @inpush(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.alias* null)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then23
  %28 = load %struct.alias*, %struct.alias** %an, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %28, i32 0, i32 1
  %29 = load i8*, i8** %text, align 4
  %30 = load %struct.alias*, %struct.alias** %an, align 4
  call void @inpush(i8* %29, i32 2, %struct.alias* %30)
  %31 = load %struct.alias*, %struct.alias** %an, align 4
  %text34 = getelementptr inbounds %struct.alias, %struct.alias* %31, i32 0, i32 1
  %32 = load i8*, i8** %text34, align 4
  %arrayidx35 = getelementptr inbounds i8, i8* %32, i32 0
  %33 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %33 to i32
  %cmp37 = icmp eq i32 %conv36, 32
  br i1 %cmp37, label %land.lhs.true39, label %if.end45

land.lhs.true39:                                  ; preds = %if.end33
  %34 = load %struct.alias*, %struct.alias** %an, align 4
  %node40 = getelementptr inbounds %struct.alias, %struct.alias* %34, i32 0, i32 0
  %flags41 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node40, i32 0, i32 2
  %35 = load i32, i32* %flags41, align 4
  %and42 = and i32 %35, 2
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %land.lhs.true39
  store i32 1, i32* @aliasspaceflag, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true39, %if.end33
  store i32 0, i32* @lexstop, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %lor.lhs.false21, %land.lhs.true12, %if.then8
  %36 = load i8*, i8** @zshlextext, align 4
  %call47 = call i8* @strrchr(i8* %36, i32 46)
  store i8* %call47, i8** %suf, align 4
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %land.lhs.true49, label %if.end73

land.lhs.true49:                                  ; preds = %if.end46
  %37 = load i8*, i8** %suf, align 4
  %arrayidx50 = getelementptr inbounds i8, i8* %37, i32 1
  %38 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %38 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.lhs.true53, label %if.end73

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %39 = load i8*, i8** %suf, align 4
  %40 = load i8*, i8** @zshlextext, align 4
  %cmp54 = icmp ugt i8* %39, %40
  br i1 %cmp54, label %land.lhs.true56, label %if.end73

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %41 = load i8*, i8** %suf, align 4
  %arrayidx57 = getelementptr inbounds i8, i8* %41, i32 -1
  %42 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %42 to i32
  %cmp59 = icmp ne i32 %conv58, -125
  br i1 %cmp59, label %land.lhs.true61, label %if.end73

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %43 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %getnode62 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 9
  %44 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode62, align 4
  %45 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %46 = load i8*, i8** %suf, align 4
  %add.ptr = getelementptr inbounds i8, i8* %46, i32 1
  %call63 = call %struct.hashnode* %44(%struct.hashtable* %45, i8* %add.ptr)
  %47 = bitcast %struct.hashnode* %call63 to %struct.alias*
  store %struct.alias* %47, %struct.alias** %an, align 4
  %tobool64 = icmp ne %struct.alias* %47, null
  br i1 %tobool64, label %land.lhs.true65, label %if.end73

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %48 = load %struct.alias*, %struct.alias** %an, align 4
  %inuse66 = getelementptr inbounds %struct.alias, %struct.alias* %48, i32 0, i32 2
  %49 = load i32, i32* %inuse66, align 4
  %tobool67 = icmp ne i32 %49, 0
  br i1 %tobool67, label %if.end73, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %50 = load i32, i32* @incmdpos, align 4
  %tobool69 = icmp ne i32 %50, 0
  br i1 %tobool69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %land.lhs.true68
  %51 = load i8*, i8** @zshlextext, align 4
  %call71 = call i8* @dupstring(i8* %51)
  %52 = load %struct.alias*, %struct.alias** %an, align 4
  call void @inpush(i8* %call71, i32 2, %struct.alias* %52)
  call void @inpush(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.alias* null)
  %53 = load %struct.alias*, %struct.alias** %an, align 4
  %text72 = getelementptr inbounds %struct.alias, %struct.alias* %53, i32 0, i32 1
  %54 = load i8*, i8** %text72, align 4
  call void @inpush(i8* %54, i32 2, %struct.alias* null)
  store i32 0, i32* @lexstop, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %land.lhs.true68, %land.lhs.true65, %land.lhs.true61, %land.lhs.true56, %land.lhs.true53, %land.lhs.true49, %if.end46
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %land.lhs.true6, %lor.lhs.false, %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then70, %if.end45, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

declare i8* @zhalloc(i32) #2

declare i32 @has_token(i8*) #2

; Function Attrs: noinline nounwind
define internal void @gotword() #0 {
entry:
  %nwe = alloca i32, align 4
  %nwb = alloca i32, align 4
  %0 = load i32, i32* @zlemetall, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, i32* @inbufct, align 4
  %sub = sub nsw i32 %add, %1
  %2 = load i32, i32* @addedx, align 4
  %cmp = icmp eq i32 %2, 2
  %cond = select i1 %cmp, i32 1, i32 0
  %add1 = add nsw i32 %sub, %cond
  store i32 %add1, i32* %nwe, align 4
  %3 = load i32, i32* @zlemetacs, align 4
  %4 = load i32, i32* %nwe, align 4
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @zlemetall, align 4
  %6 = load i32, i32* @wordbeg, align 4
  %sub3 = sub nsw i32 %5, %6
  %7 = load i32, i32* @addedx, align 4
  %add4 = add nsw i32 %sub3, %7
  store i32 %add4, i32* %nwb, align 4
  %8 = load i32, i32* @zlemetacs, align 4
  %9 = load i32, i32* %nwb, align 4
  %cmp5 = icmp sge i32 %8, %9
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %10 = load i32, i32* %nwb, align 4
  store i32 %10, i32* @wb, align 4
  %11 = load i32, i32* %nwe, align 4
  store i32 %11, i32* @we, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* @zlemetacs, align 4
  %13 = load i32, i32* @addedx, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* @wb, align 4
  %14 = load i32, i32* @we, align 4
  %15 = load i32, i32* @wb, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %16 = load i32, i32* @wb, align 4
  store i32 %16, i32* @we, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then6
  store i32 0, i32* @lexflags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  ret void
}

; Function Attrs: noinline nounwind
define void @zshlex_raw_add(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %newbsiz = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @lex_add_raw, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end3

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  store i8 %conv, i8* %2, align 1
  %3 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %3, %inc
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %newbsiz, align 4
  %6 = load i8*, i8** @tokstr_raw, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  %8 = load i32, i32* %newbsiz, align 4
  %call = call i8* @hrealloc(i8* %6, i32 %7, i32 %8)
  store i8* %call, i8** @tokstr_raw, align 4
  %9 = load i8*, i8** @tokstr_raw, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %10
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %11 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %12 = load i32, i32* %newbsiz, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  %sub = sub nsw i32 %12, %13
  call void @llvm.memset.p0i8.i32(i8* %11, i8 0, i32 %sub, i32 1, i1 false)
  %14 = load i32, i32* %newbsiz, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 1), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define void @zshlex_raw_back() #0 {
entry:
  %0 = load i32, i32* @lex_add_raw, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 -1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @zshlex_raw_mark(i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* @lex_add_raw, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  %2 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind
define void @zshlex_raw_back_to_mark(i32 %mark) #0 {
entry:
  %mark.addr = alloca i32, align 4
  store i32 %mark, i32* %mark.addr, align 4
  %0 = load i32, i32* @lex_add_raw, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @tokstr_raw, align 4
  %2 = load i32, i32* %mark.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %2
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 0), align 4
  %3 = load i32, i32* %mark.addr, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf_raw, i32 0, i32 2), align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @hcalloc(i32) #2

declare i32 @ingetc() #2

; Function Attrs: noinline nounwind
define internal i32 @cmd_or_math(i32 %cs_type) #0 {
entry:
  %retval = alloca i32, align 4
  %cs_type.addr = alloca i32, align 4
  %oldlen = alloca i32, align 4
  %c = alloca i32, align 4
  %oinflags = alloca i32, align 4
  store i32 %cs_type, i32* %cs_type.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  store i32 %0, i32* %oldlen, align 4
  %1 = load i32, i32* @inbufflags, align 4
  store i32 %1, i32* %oinflags, align 4
  %2 = load i32, i32* %cs_type.addr, align 4
  call void @cmdpush(i32 %2)
  %3 = load i32, i32* @inbufflags, align 4
  %or = or i32 %3, 128
  store i32 %or, i32* @inbufflags, align 4
  %call = call i32 @dquote_parse(i8 signext 41, i32 0)
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %oinflags, align 4
  %and = and i32 %4, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @inbufflags, align 4
  %and1 = and i32 %5, -129
  store i32 %and1, i32* @inbufflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @cmdpop()
  %6 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  store i8 0, i8* %6, align 1
  %7 = load i32, i32* %c, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load i32 ()*, i32 ()** @hgetc, align 4
  %call4 = call i32 %8()
  store i32 %call4, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %9, 41
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then3
  %10 = load void (i32)*, void (i32)** @hungetc, align 4
  %11 = load i32, i32* %c, align 4
  call void %10(i32 %11)
  store i32 0, i32* @lexstop, align 4
  store i32 41, i32* %c, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* @lexstop, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end6
  %13 = load void (i32)*, void (i32)** @hungetc, align 4
  %14 = load i32, i32* %c, align 4
  call void %13(i32 %14)
  store i32 0, i32* @lexstop, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end10
  %15 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %16 = load i32, i32* %oldlen, align 4
  %cmp11 = icmp sgt i32 %15, %16
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* @errflag, align 4
  %and12 = and i32 %17, 1
  %tobool13 = icmp ne i32 %and12, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %20 = load void (i32)*, void (i32)** @hungetc, align 4
  %21 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %22 = load i8, i8* %incdec.ptr, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %23 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %23 to i32
  %and14 = and i32 %conv, 16
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %25 = load i8, i8* %24, align 1
  %conv16 = sext i8 %25 to i32
  %sub = sub nsw i32 %conv16, -124
  %arrayidx17 = getelementptr inbounds [30 x i8], [30 x i8]* @ztokens, i32 0, i32 %sub
  %26 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %26 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %28 = load i8, i8* %27, align 1
  %conv19 = sext i8 %28 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv19, %cond.false ]
  call void %20(i32 %cond)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %29 = load i32, i32* @errflag, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end
  %30 = load void (i32)*, void (i32)** @hungetc, align 4
  call void %30(i32 40)
  %31 = load i32, i32* @errflag, align 4
  %tobool23 = icmp ne i32 %31, 0
  %cond24 = select i1 %tobool23, i32 2, i32 0
  store i32 %cond24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then21, %if.then8, %if.then5
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare i8* @dyncat(i8*, i8*) #2

; Function Attrs: noinline nounwind
define internal i32 @isnumglob() #0 {
entry:
  %c = alloca i32, align 4
  %ec = alloca i32, align 4
  %ret = alloca i32, align 4
  %tbs = alloca i32, align 4
  %n = alloca i32, align 4
  %tbuf = alloca i8*, align 4
  store i32 45, i32* %ec, align 4
  store i32 0, i32* %ret, align 4
  store i32 256, i32* %tbs, align 4
  store i32 0, i32* %n, align 4
  %0 = load i32, i32* %tbs, align 4
  %call = call i8* @zalloc(i32 %0)
  store i8* %call, i8** %tbuf, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end19
  %1 = load i32 ()*, i32 ()** @hgetc, align 4
  %call1 = call i32 %1()
  store i32 %call1, i32* %c, align 4
  %2 = load i32, i32* @lexstop, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* @lexstop, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %c, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i8*, i8** %tbuf, align 4
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5
  store i8 %conv, i8* %arrayidx, align 1
  %6 = load i32, i32* %c, align 4
  %conv2 = trunc i32 %6 to i8
  %idxprom = zext i8 %conv2 to i32
  %arrayidx3 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %7 to i32
  %and = and i32 %conv4, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %c, align 4
  %9 = load i32, i32* %ec, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  br label %while.end

if.end9:                                          ; preds = %if.then6
  %10 = load i32, i32* %ec, align 4
  %cmp10 = icmp eq i32 %10, 62
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end13:                                         ; preds = %if.end9
  store i32 62, i32* %ec, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %11 = load i32, i32* %n, align 4
  %12 = load i32, i32* %tbs, align 4
  %cmp15 = icmp eq i32 %11, %12
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %tbuf, align 4
  %14 = load i32, i32* %tbs, align 4
  %mul = mul nsw i32 %14, 2
  store i32 %mul, i32* %tbs, align 4
  %call18 = call i8* @realloc(i8* %13, i32 %mul)
  store i8* %call18, i8** %tbuf, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  br label %while.body

while.end:                                        ; preds = %if.then12, %if.then8, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body21, %while.end
  %15 = load i32, i32* %n, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %n, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %while.body21, label %while.end24

while.body21:                                     ; preds = %while.cond
  %16 = load void (i32)*, void (i32)** @hungetc, align 4
  %17 = load i8*, i8** %tbuf, align 4
  %18 = load i32, i32* %n, align 4
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i32 %18
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %19 to i32
  call void %16(i32 %conv23)
  br label %while.cond

while.end24:                                      ; preds = %while.cond
  %20 = load i8*, i8** %tbuf, align 4
  %21 = load i32, i32* %tbs, align 4
  call void @zfree(i8* %20, i32 %21)
  %22 = load i32, i32* %ret, align 4
  ret i32 %22
}

declare i8* @zalloc(i32) #2

declare i8* @realloc(i8*, i32) #2

; Function Attrs: noinline nounwind
define internal i32 @cmd_or_math_sub() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %ret = alloca i32, align 4
  %lexpos = alloca i32, align 4
  %0 = load i32 ()*, i32 ()** @hgetc, align 4
  %call = call i32 %0()
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %3 = load i8*, i8** @tokstr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %lexpos, align 4
  call void @add(i32 -120)
  call void @add(i32 40)
  %call1 = call i32 @cmd_or_math(i32 25)
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** @tokstr, align 4
  %5 = load i32, i32* %lexpos, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5
  store i8 -119, i8* %arrayidx, align 1
  call void @add(i32 41)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i8*, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 -2
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  %sub = sub nsw i32 %8, 2
  store i32 %sub, i32* getelementptr inbounds (%struct.lexbufstate, %struct.lexbufstate* @lexbuf, i32 0, i32 2), align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %9 = load void (i32)*, void (i32)** @hungetc, align 4
  %10 = load i32, i32* %c, align 4
  call void %9(i32 %10)
  store i32 0, i32* @lexstop, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %call8 = call i32 @skipcomm()
  %tobool = icmp ne i32 %call8, 0
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then3
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @skipcomm() #0 {
entry:
  %new_tokstr = alloca i8*, align 4
  %new_lexstop = alloca i32, align 4
  %new_lex_add_raw = alloca i32, align 4
  %save_infor = alloca i32, align 4
  %new_lexbuf = alloca %struct.lexbufstate, align 4
  %0 = load i32, i32* @infor, align 4
  store i32 %0, i32* %save_infor, align 4
  store i32 0, i32* @infor, align 4
  call void @cmdpush(i32 24)
  %1 = load i32, i32* @lexflags, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @inbufflags, align 4
  %and1 = and i32 %2, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* @zlemetacs, align 4
  %4 = load i32, i32* @zlemetall, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* @inbufct, align 4
  %sub = sub nsw i32 %add, %5
  %cmp = icmp sge i32 %3, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %6 = load i32, i32* @inbufct, align 4
  store i32 %6, i32* @parbegin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  call void @add(i32 -120)
  %7 = load i32, i32* @lex_add_raw, align 4
  %add4 = add nsw i32 %7, 1
  store i32 %add4, i32* %new_lex_add_raw, align 4
  %8 = load i32, i32* @lex_add_raw, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %9 = load i8*, i8** @tokstr, align 4
  store i8* %9, i8** %new_tokstr, align 4
  %10 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* bitcast (%struct.lexbufstate* @lexbuf to i8*), i32 12, i32 4, i1 false)
  %11 = load i32, i32* @inbufflags, align 4
  %and7 = and i32 %11, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %12 = load i32, i32* @inbufflags, align 4
  %or = or i32 %12, 256
  store i32 %or, i32* @inbufflags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6
  call void @zcontext_save_partial(i32 6)
  call void @hist_in_word(i32 1)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** @tokstr_raw, align 4
  store i8* %13, i8** %new_tokstr, align 4
  %14 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i32 12, i32 4, i1 false)
  call void @zcontext_save_partial(i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %15 = load i8*, i8** %new_tokstr, align 4
  store i8* %15, i8** @tokstr_raw, align 4
  %16 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i8* %16, i32 12, i32 4, i1 false)
  %17 = load i32, i32* %new_lex_add_raw, align 4
  store i32 %17, i32* @lex_add_raw, align 4
  %18 = load i32, i32* @lexflags, align 4
  %and12 = and i32 %18, -19
  store i32 %and12, i32* @lexflags, align 4
  store i32 0, i32* @dbparens, align 4
  %call = call %struct.eprog* @parse_event(i32 7)
  %tobool13 = icmp ne %struct.eprog* %call, null
  br i1 %tobool13, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %19 = load i32, i32* @tok, align 4
  %cmp14 = icmp ne i32 %19, 7
  br i1 %cmp14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  %20 = load i32, i32* @strin, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %21 = load i32, i32* @lexstop, align 4
  %tobool18 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool18, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call19 = call i32 @ingetc()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end21

if.else20:                                        ; preds = %if.then15
  store i32 1, i32* @lexstop, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %while.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %lor.lhs.false
  %22 = load i8*, i8** @tokstr_raw, align 4
  store i8* %22, i8** %new_tokstr, align 4
  %23 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i32 12, i32 4, i1 false)
  %24 = load i32, i32* @lexstop, align 4
  store i32 %24, i32* %new_lexstop, align 4
  call void @zcontext_restore_partial(i32 6)
  %25 = load i32, i32* @lex_add_raw, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.end22
  %26 = load i8*, i8** %new_tokstr, align 4
  store i8* %26, i8** @tokstr_raw, align 4
  %27 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.lexbufstate* @lexbuf_raw to i8*), i8* %27, i32 12, i32 4, i1 false)
  br label %if.end29

if.else25:                                        ; preds = %if.end22
  %28 = load i32, i32* %new_lexstop, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.else25
  %len = getelementptr inbounds %struct.lexbufstate, %struct.lexbufstate* %new_lexbuf, i32 0, i32 2
  %29 = load i32, i32* %len, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %len, align 4
  %ptr = getelementptr inbounds %struct.lexbufstate, %struct.lexbufstate* %new_lexbuf, i32 0, i32 0
  %30 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr, i8** %ptr, align 4
  store i8 0, i8* %incdec.ptr, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else25
  %31 = load i8*, i8** %new_tokstr, align 4
  store i8* %31, i8** @tokstr, align 4
  %32 = bitcast %struct.lexbufstate* %new_lexbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.lexbufstate* @lexbuf to i8*), i8* %32, i32 12, i32 4, i1 false)
  %33 = load i32, i32* %new_lexstop, align 4
  store i32 %33, i32* @lexstop, align 4
  call void @hist_in_word(i32 0)
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then24
  %34 = load i32, i32* @lexstop, align 4
  %tobool30 = icmp ne i32 %34, 0
  br i1 %tobool30, label %if.end49, label %if.then31

if.then31:                                        ; preds = %if.end29
  %35 = load i32, i32* @lexflags, align 4
  %and32 = and i32 %35, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end48

land.lhs.true34:                                  ; preds = %if.then31
  %36 = load i32, i32* @inbufflags, align 4
  %and35 = and i32 %36, 2
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end48, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %37 = load i32, i32* @parbegin, align 4
  %cmp38 = icmp ne i32 %37, -1
  br i1 %cmp38, label %land.lhs.true39, label %if.end48

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %38 = load i32, i32* @parend, align 4
  %cmp40 = icmp eq i32 %38, -1
  br i1 %cmp40, label %if.then41, label %if.end48

if.then41:                                        ; preds = %land.lhs.true39
  %39 = load i32, i32* @zlemetacs, align 4
  %40 = load i32, i32* @zlemetall, align 4
  %add42 = add nsw i32 %40, 1
  %41 = load i32, i32* @inbufct, align 4
  %sub43 = sub nsw i32 %add42, %41
  %cmp44 = icmp sge i32 %39, %sub43
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then41
  store i32 -1, i32* @parbegin, align 4
  br label %if.end47

if.else46:                                        ; preds = %if.then41
  %42 = load i32, i32* @inbufct, align 4
  store i32 %42, i32* @parend, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true39, %land.lhs.true37, %land.lhs.true34, %if.then31
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end29
  call void @cmdpop()
  %43 = load i32, i32* %save_infor, align 4
  store i32 %43, i32* @infor, align 4
  %44 = load i32, i32* @lexstop, align 4
  ret i32 %44
}

declare void @zcontext_save_partial(i32) #2

declare void @hist_in_word(i32) #2

declare %struct.eprog* @parse_event(i32) #2

declare void @zcontext_restore_partial(i32) #2

declare i8* @itype_end(i8*, i32, i32) #2

declare i32 @skipparens(i8 signext, i8 signext, i8**) #2

declare i8* @strrchr(i8*, i32) #2

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
