; ModuleID = 'hashtable.c'
source_filename = "hashtable.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.scanstatus* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.scanstatus = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.hashnode**, i32 }
%struct.reswd = type { %struct.hashnode, i32 }
%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i32 }
%struct.dircache_entry = type { i8*, i32 }
%struct._IO_FILE = type opaque
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.cmdnam = type { %struct.hashnode, %union.anon.0 }
%union.anon.0 = type { i8** }
%struct.__dirstream = type opaque
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.alias = type { %struct.hashnode, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"cmdnamtab\00", align 1
@cmdnamtab = common global %struct.hashtable* null, align 4
@path = external global i8**, align 4
@pathchecked = common global i8** null, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@opts = external global [181 x i8], align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"shfunctab\00", align 1
@shfunctab = common global %struct.hashtable* null, align 4
@text_expand_tabs = external global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"reswdtab\00", align 1
@reswdtab = common global %struct.hashtable* null, align 4
@reswds = internal global [32 x %struct.reswd] [%struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i32 0 }, i32 39 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 0 }, i32 40 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i32 0 }, i32 41 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i32 0 }, i32 42 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0 }, i32 43 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 0 }, i32 44 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 0 }, i32 45 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0 }, i32 46 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0 }, i32 47 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0 }, i32 48 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 0 }, i32 49 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0 }, i32 50 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 0 }, i32 51 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 0 }, i32 52 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0 }, i32 53 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 0 }, i32 54 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 0 }, i32 55 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 0 }, i32 56 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0 }, i32 57 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 0 }, i32 58 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0 }, i32 59 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0 }, i32 60 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0 }, i32 63 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 0 }, i32 61 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0 }, i32 62 }, %struct.reswd zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"aliastab\00", align 1
@aliastab = common global %struct.hashtable* null, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"run-help\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"which-command\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"whence\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sufaliastab\00", align 1
@sufaliastab = common global %struct.hashtable* null, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"histtab\00", align 1
@histtab = external global %struct.hashtable*, align 4
@typtab = external global [256 x i16], align 2
@hist_ring = external global %struct.histent*, align 4
@hist_ignore_all_dups = external global i32, align 4
@curline = external global %struct.histent, align 4
@histlinect = external global i32, align 4
@dircache_size = internal global i32 0, align 4
@dircache = internal global %struct.dircache_entry* null, align 4
@dircache_lastentry = internal global %struct.dircache_entry* null, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"hashed\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c" is hashed to \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"hash \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@sigtrapped = external global [34 x i32], align 4
@.str.20 = private unnamed_addr constant [11 x i8] c": function\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c" is an autoload shell function\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c" is a shell function\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" from \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" () {\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"%c undefined\0A\00", align 1
@hashchar = external global i8, align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%c traced\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"UtTkzc\00", align 1
@printshfuncnode.flgs = private unnamed_addr constant [7 x i32] [i32 8192, i32 2048, i32 65536, i32 131072, i32 262144, i32 16384, i32 0], align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"builtin autoload -X\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" \22$@\22\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" () { }\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"[[\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"coproc\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"esac\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"nocorrect\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"typeset\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"%s: reserved\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"%s: shell reserved word\0A\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"%s is a reserved word\0A\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"%s: suffix alias\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"%s: global alias\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"%s: alias\0A\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"suffix \00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"globally \00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"aliased to \00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c" is a\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c" suffix\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c" global\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c" alias for \00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"invalid alias '%s' encountered while printing aliases\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"alias \00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"-s \00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"-g \00", align 1

; Function Attrs: noinline nounwind
define i32 @hasher(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 0, i32* %hashval, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %hashval, align 4
  %shl = shl i32 %2, 5
  %3 = load i32, i32* %c, align 4
  %add = add i32 %shl, %3
  %4 = load i32, i32* %hashval, align 4
  %add1 = add i32 %4, %add
  store i32 %add1, i32* %hashval, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %hashval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define %struct.hashtable* @newhashtable(i32 %size, i8* %name, void (%struct.hashtable*)* %printinfo) #0 {
entry:
  %size.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %printinfo.addr = alloca void (%struct.hashtable*)*, align 4
  %ht = alloca %struct.hashtable*, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store void (%struct.hashtable*)* %printinfo, void (%struct.hashtable*)** %printinfo.addr, align 4
  %call = call i8* @zshcalloc(i32 72)
  %0 = bitcast i8* %call to %struct.hashtable*
  store %struct.hashtable* %0, %struct.hashtable** %ht, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %1, 4
  %call1 = call i8* @zshcalloc(i32 %mul)
  %2 = bitcast i8* %call1 to %struct.hashnode**
  %3 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  store %struct.hashnode** %2, %struct.hashnode*** %nodes, align 4
  %4 = load i32, i32* %size.addr, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  store i32 %4, i32* %hsize, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 1
  store i32 0, i32* %ct, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %scan = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 17
  store %struct.scanstatus* null, %struct.scanstatus** %scan, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %scantab = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 16
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  ret %struct.hashtable* %9
}

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define void @deletehashtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 5
  %1 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void %1(%struct.hashtable* %2)
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  %4 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %5 = bitcast %struct.hashnode** %4 to i8*
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %7 = load i32, i32* %hsize, align 4
  %mul = mul i32 %7, 4
  call void @zfree(i8* %5, i32 %mul)
  %8 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %9 = bitcast %struct.hashtable* %8 to i8*
  call void @zfree(i8* %9, i32 72)
  ret void
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define void @addhashnode(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %nodeptr.addr = alloca i8*, align 4
  %oldnode = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %nodeptr, i8** %nodeptr.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %2 = load i8*, i8** %nodeptr.addr, align 4
  %call = call %struct.hashnode* @addhashnode2(%struct.hashtable* %0, i8* %1, i8* %2)
  store %struct.hashnode* %call, %struct.hashnode** %oldnode, align 4
  %3 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %tobool = icmp ne %struct.hashnode* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 14
  %5 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %6 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  call void %5(%struct.hashnode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashnode* @addhashnode2(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %nodeptr.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %hp = alloca %struct.hashnode*, align 4
  %hq = alloca %struct.hashnode*, align 4
  %hashtab = alloca %struct.hashnode**, align 4
  %i = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %nodeptr, i8** %nodeptr.addr, align 4
  %0 = load i8*, i8** %nodeptr.addr, align 4
  %1 = bitcast i8* %0 to %struct.hashnode*
  store %struct.hashnode* %1, %struct.hashnode** %hn, align 4
  %2 = load i8*, i8** %nam.addr, align 4
  %3 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %3, i32 0, i32 1
  store i8* %2, i8** %nam1, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 4
  %5 = load i32 (i8*)*, i32 (i8*)** %hash, align 4
  %6 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %6, i32 0, i32 1
  %7 = load i8*, i8** %nam2, align 4
  %call = call i32 %5(i8* %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 0
  %9 = load i32, i32* %hsize, align 4
  %rem = urem i32 %call, %9
  store i32 %rem, i32* %hashval, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 2
  %11 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %12 = load i32, i32* %hashval, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %11, i32 %12
  %13 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %13, %struct.hashnode** %hp, align 4
  %14 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool = icmp ne %struct.hashnode* %14, null
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 0
  store %struct.hashnode* null, %struct.hashnode** %next, align 4
  %16 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 2
  %18 = load %struct.hashnode**, %struct.hashnode*** %nodes3, align 4
  %19 = load i32, i32* %hashval, align 4
  %arrayidx4 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %18, i32 %19
  store %struct.hashnode* %16, %struct.hashnode** %arrayidx4, align 4
  %20 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 1
  %21 = load i32, i32* %ct, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %ct, align 4
  %22 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 0
  %23 = load i32, i32* %hsize5, align 4
  %mul = mul nsw i32 %23, 2
  %cmp = icmp sge i32 %inc, %mul
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %24 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 17
  %25 = load %struct.scanstatus*, %struct.scanstatus** %scan, align 4
  %tobool6 = icmp ne %struct.scanstatus* %25, null
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %26 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @expandhashtable(%struct.hashtable* %26)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %27 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 7
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes, align 4
  %29 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %29, i32 0, i32 1
  %30 = load i8*, i8** %nam9, align 4
  %31 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %31, i32 0, i32 1
  %32 = load i8*, i8** %nam10, align 4
  %call11 = call i32 %28(i8* %30, i8* %32)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end47

if.then13:                                        ; preds = %if.end8
  %33 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %34 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %34, i32 0, i32 2
  %35 = load %struct.hashnode**, %struct.hashnode*** %nodes14, align 4
  %36 = load i32, i32* %hashval, align 4
  %arrayidx15 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %35, i32 %36
  store %struct.hashnode* %33, %struct.hashnode** %arrayidx15, align 4
  br label %replacing

replacing:                                        ; preds = %if.then57, %if.then13
  %37 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %37, i32 0, i32 0
  %38 = load %struct.hashnode*, %struct.hashnode** %next16, align 4
  %39 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %39, i32 0, i32 0
  store %struct.hashnode* %38, %struct.hashnode** %next17, align 4
  %40 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %40, i32 0, i32 17
  %41 = load %struct.scanstatus*, %struct.scanstatus** %scan18, align 4
  %tobool19 = icmp ne %struct.scanstatus* %41, null
  br i1 %tobool19, label %if.then20, label %if.end46

if.then20:                                        ; preds = %replacing
  %42 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 17
  %43 = load %struct.scanstatus*, %struct.scanstatus** %scan21, align 4
  %sorted = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %43, i32 0, i32 0
  %44 = load i32, i32* %sorted, align 4
  %tobool22 = icmp ne i32 %44, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %45 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan24 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %45, i32 0, i32 17
  %46 = load %struct.scanstatus*, %struct.scanstatus** %scan24, align 4
  %u = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %46, i32 0, i32 1
  %s = bitcast %union.anon* %u to %struct.anon*
  %hashtab25 = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0
  %47 = load %struct.hashnode**, %struct.hashnode*** %hashtab25, align 4
  store %struct.hashnode** %47, %struct.hashnode*** %hashtab, align 4
  %48 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan26 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %48, i32 0, i32 17
  %49 = load %struct.scanstatus*, %struct.scanstatus** %scan26, align 4
  %u27 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %49, i32 0, i32 1
  %s28 = bitcast %union.anon* %u27 to %struct.anon*
  %ct29 = getelementptr inbounds %struct.anon, %struct.anon* %s28, i32 0, i32 1
  %50 = load i32, i32* %ct29, align 4
  store i32 %50, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.then23
  %51 = load i32, i32* %i, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %i, align 4
  %tobool30 = icmp ne i32 %51, 0
  br i1 %tobool30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct.hashnode**, %struct.hashnode*** %hashtab, align 4
  %53 = load i32, i32* %i, align 4
  %arrayidx31 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %52, i32 %53
  %54 = load %struct.hashnode*, %struct.hashnode** %arrayidx31, align 4
  %55 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %cmp32 = icmp eq %struct.hashnode* %54, %55
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body
  %56 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %57 = load %struct.hashnode**, %struct.hashnode*** %hashtab, align 4
  %58 = load i32, i32* %i, align 4
  %arrayidx34 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %57, i32 %58
  store %struct.hashnode* %56, %struct.hashnode** %arrayidx34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end45

if.else:                                          ; preds = %if.then20
  %59 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %59, i32 0, i32 17
  %60 = load %struct.scanstatus*, %struct.scanstatus** %scan36, align 4
  %u37 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %60, i32 0, i32 1
  %u38 = bitcast %union.anon* %u37 to %struct.hashnode**
  %61 = load %struct.hashnode*, %struct.hashnode** %u38, align 4
  %62 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %cmp39 = icmp eq %struct.hashnode* %61, %62
  br i1 %cmp39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.else
  %63 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %64 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan41 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %64, i32 0, i32 17
  %65 = load %struct.scanstatus*, %struct.scanstatus** %scan41, align 4
  %u42 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %65, i32 0, i32 1
  %u43 = bitcast %union.anon* %u42 to %struct.hashnode**
  store %struct.hashnode* %63, %struct.hashnode** %u43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %replacing
  %66 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %66, %struct.hashnode** %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end8
  %67 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %67, %struct.hashnode** %hq, align 4
  %68 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next48 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %68, i32 0, i32 0
  %69 = load %struct.hashnode*, %struct.hashnode** %next48, align 4
  store %struct.hashnode* %69, %struct.hashnode** %hp, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %if.end47
  %70 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool50 = icmp ne %struct.hashnode* %70, null
  br i1 %tobool50, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond49
  %71 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %71, i32 0, i32 7
  %72 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes52, align 4
  %73 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam53 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %73, i32 0, i32 1
  %74 = load i8*, i8** %nam53, align 4
  %75 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam54 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %75, i32 0, i32 1
  %76 = load i8*, i8** %nam54, align 4
  %call55 = call i32 %72(i8* %74, i8* %76)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.body51
  %77 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %78 = load %struct.hashnode*, %struct.hashnode** %hq, align 4
  %next58 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %78, i32 0, i32 0
  store %struct.hashnode* %77, %struct.hashnode** %next58, align 4
  br label %replacing

if.end59:                                         ; preds = %for.body51
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %79 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %79, %struct.hashnode** %hq, align 4
  %80 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next60 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %80, i32 0, i32 0
  %81 = load %struct.hashnode*, %struct.hashnode** %next60, align 4
  store %struct.hashnode* %81, %struct.hashnode** %hp, align 4
  br label %for.cond49

for.end61:                                        ; preds = %for.cond49
  %82 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes62 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %82, i32 0, i32 2
  %83 = load %struct.hashnode**, %struct.hashnode*** %nodes62, align 4
  %84 = load i32, i32* %hashval, align 4
  %arrayidx63 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %83, i32 %84
  %85 = load %struct.hashnode*, %struct.hashnode** %arrayidx63, align 4
  %86 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next64 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %86, i32 0, i32 0
  store %struct.hashnode* %85, %struct.hashnode** %next64, align 4
  %87 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %88 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes65 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %88, i32 0, i32 2
  %89 = load %struct.hashnode**, %struct.hashnode*** %nodes65, align 4
  %90 = load i32, i32* %hashval, align 4
  %arrayidx66 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %89, i32 %90
  store %struct.hashnode* %87, %struct.hashnode** %arrayidx66, align 4
  %91 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct67 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %91, i32 0, i32 1
  %92 = load i32, i32* %ct67, align 4
  %inc68 = add nsw i32 %92, 1
  store i32 %inc68, i32* %ct67, align 4
  %93 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize69 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %93, i32 0, i32 0
  %94 = load i32, i32* %hsize69, align 4
  %mul70 = mul nsw i32 %94, 2
  %cmp71 = icmp sge i32 %inc68, %mul70
  br i1 %cmp71, label %land.lhs.true72, label %if.end76

land.lhs.true72:                                  ; preds = %for.end61
  %95 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan73 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %95, i32 0, i32 17
  %96 = load %struct.scanstatus*, %struct.scanstatus** %scan73, align 4
  %tobool74 = icmp ne %struct.scanstatus* %96, null
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %land.lhs.true72
  %97 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @expandhashtable(%struct.hashtable* %97)
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %land.lhs.true72, %for.end61
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.end46, %if.end
  %98 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %98
}

; Function Attrs: noinline nounwind
define internal void @expandhashtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %onodes = alloca %struct.hashnode**, align 4
  %ha = alloca %struct.hashnode**, align 4
  %hn = alloca %struct.hashnode*, align 4
  %hp = alloca %struct.hashnode*, align 4
  %i = alloca i32, align 4
  %osize = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 0
  %1 = load i32, i32* %hsize, align 4
  store i32 %1, i32* %osize, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 2
  %3 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  store %struct.hashnode** %3, %struct.hashnode*** %onodes, align 4
  %4 = load i32, i32* %osize, align 4
  %mul = mul nsw i32 %4, 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  store i32 %mul, i32* %hsize1, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %7 = load i32, i32* %hsize2, align 4
  %mul3 = mul i32 %7, 4
  %call = call i8* @zshcalloc(i32 %mul3)
  %8 = bitcast i8* %call to %struct.hashnode**
  %9 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 2
  store %struct.hashnode** %8, %struct.hashnode*** %nodes4, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 1
  store i32 0, i32* %ct, align 4
  store i32 0, i32* %i, align 4
  %11 = load %struct.hashnode**, %struct.hashnode*** %onodes, align 4
  store %struct.hashnode** %11, %struct.hashnode*** %ha, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %osize, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hashnode**, %struct.hashnode*** %ha, align 4
  %15 = load %struct.hashnode*, %struct.hashnode** %14, align 4
  store %struct.hashnode* %15, %struct.hashnode** %hn, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.body6, %for.body
  %16 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %16, null
  br i1 %tobool, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond5
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %17, i32 0, i32 0
  %18 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %18, %struct.hashnode** %hp, align 4
  %19 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 8
  %20 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %21 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %22 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %22, i32 0, i32 1
  %23 = load i8*, i8** %nam, align 4
  %24 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %25 = bitcast %struct.hashnode* %24 to i8*
  call void %20(%struct.hashtable* %21, i8* %23, i8* %25)
  %26 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %26, %struct.hashnode** %hn, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  %28 = load %struct.hashnode**, %struct.hashnode*** %ha, align 4
  %incdec.ptr = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %28, i32 1
  store %struct.hashnode** %incdec.ptr, %struct.hashnode*** %ha, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  %29 = load %struct.hashnode**, %struct.hashnode*** %onodes, align 4
  %30 = bitcast %struct.hashnode** %29 to i8*
  %31 = load i32, i32* %osize, align 4
  %mul8 = mul i32 %31, 4
  call void @zfree(i8* %30, i32 %mul8)
  ret void
}

; Function Attrs: noinline nounwind
define %struct.hashnode* @gethashnode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  %hp = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 4
  %2 = load i8*, i8** %nam.addr, align 4
  %call = call i32 %1(i8* %2)
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %hashval, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %hashval, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %8, %struct.hashnode** %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool = icmp ne %struct.hashnode* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 7
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam1, align 4
  %14 = load i8*, i8** %nam.addr, align 4
  %call2 = call i32 %11(i8* %13, i8* %14)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %17 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %17, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %18, i32 0, i32 0
  %19 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %19, %struct.hashnode** %hp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then4
  %20 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %20
}

; Function Attrs: noinline nounwind
define %struct.hashnode* @gethashnode2(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  %hp = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 4
  %2 = load i8*, i8** %nam.addr, align 4
  %call = call i32 %1(i8* %2)
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %hashval, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %hashval, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %8, %struct.hashnode** %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool = icmp ne %struct.hashnode* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 7
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam1, align 4
  %14 = load i8*, i8** %nam.addr, align 4
  %call2 = call i32 %11(i8* %13, i8* %14)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %15, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %16, i32 0, i32 0
  %17 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %17, %struct.hashnode** %hp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %18
}

; Function Attrs: noinline nounwind
define %struct.hashnode* @removehashnode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  %hp = alloca %struct.hashnode*, align 4
  %hq = alloca %struct.hashnode*, align 4
  %hashtab = alloca %struct.hashnode**, align 4
  %i = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  %1 = load i32 (i8*)*, i32 (i8*)** %hash, align 4
  %2 = load i8*, i8** %nam.addr, align 4
  %call = call i32 %1(i8* %2)
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %rem = urem i32 %call, %4
  store i32 %rem, i32* %hashval, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %hashval, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %8, %struct.hashnode** %hp, align 4
  %9 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool = icmp ne %struct.hashnode* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 7
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam1, align 4
  %14 = load i8*, i8** %nam.addr, align 4
  %call2 = call i32 %11(i8* %13, i8* %14)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end36

if.then3:                                         ; preds = %if.end
  %15 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 0
  %16 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 2
  %18 = load %struct.hashnode**, %struct.hashnode*** %nodes4, align 4
  %19 = load i32, i32* %hashval, align 4
  %arrayidx5 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %18, i32 %19
  store %struct.hashnode* %16, %struct.hashnode** %arrayidx5, align 4
  br label %gotit

gotit:                                            ; preds = %if.then45, %if.then3
  %20 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 1
  %21 = load i32, i32* %ct, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %ct, align 4
  %22 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 17
  %23 = load %struct.scanstatus*, %struct.scanstatus** %scan, align 4
  %tobool6 = icmp ne %struct.scanstatus* %23, null
  br i1 %tobool6, label %if.then7, label %if.end35

if.then7:                                         ; preds = %gotit
  %24 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 17
  %25 = load %struct.scanstatus*, %struct.scanstatus** %scan8, align 4
  %sorted = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %25, i32 0, i32 0
  %26 = load i32, i32* %sorted, align 4
  %tobool9 = icmp ne i32 %26, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %27 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 17
  %28 = load %struct.scanstatus*, %struct.scanstatus** %scan11, align 4
  %u = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %28, i32 0, i32 1
  %s = bitcast %union.anon* %u to %struct.anon*
  %hashtab12 = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0
  %29 = load %struct.hashnode**, %struct.hashnode*** %hashtab12, align 4
  store %struct.hashnode** %29, %struct.hashnode*** %hashtab, align 4
  %30 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan13 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 17
  %31 = load %struct.scanstatus*, %struct.scanstatus** %scan13, align 4
  %u14 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %31, i32 0, i32 1
  %s15 = bitcast %union.anon* %u14 to %struct.anon*
  %ct16 = getelementptr inbounds %struct.anon, %struct.anon* %s15, i32 0, i32 1
  %32 = load i32, i32* %ct16, align 4
  store i32 %32, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end23, %if.then10
  %33 = load i32, i32* %i, align 4
  %dec17 = add nsw i32 %33, -1
  store i32 %dec17, i32* %i, align 4
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.hashnode**, %struct.hashnode*** %hashtab, align 4
  %35 = load i32, i32* %i, align 4
  %arrayidx19 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %34, i32 %35
  %36 = load %struct.hashnode*, %struct.hashnode** %arrayidx19, align 4
  %37 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %cmp20 = icmp eq %struct.hashnode* %36, %37
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body
  %38 = load %struct.hashnode**, %struct.hashnode*** %hashtab, align 4
  %39 = load i32, i32* %i, align 4
  %arrayidx22 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %38, i32 %39
  store %struct.hashnode* null, %struct.hashnode** %arrayidx22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end34

if.else:                                          ; preds = %if.then7
  %40 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan24 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %40, i32 0, i32 17
  %41 = load %struct.scanstatus*, %struct.scanstatus** %scan24, align 4
  %u25 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %41, i32 0, i32 1
  %u26 = bitcast %union.anon* %u25 to %struct.hashnode**
  %42 = load %struct.hashnode*, %struct.hashnode** %u26, align 4
  %43 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %cmp27 = icmp eq %struct.hashnode* %42, %43
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.else
  %44 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %44, i32 0, i32 0
  %45 = load %struct.hashnode*, %struct.hashnode** %next29, align 4
  %46 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan30 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %46, i32 0, i32 17
  %47 = load %struct.scanstatus*, %struct.scanstatus** %scan30, align 4
  %u31 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %47, i32 0, i32 1
  %u32 = bitcast %union.anon* %u31 to %struct.hashnode**
  store %struct.hashnode* %45, %struct.hashnode** %u32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %for.end
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %gotit
  %48 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %48, %struct.hashnode** %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end
  %49 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %49, %struct.hashnode** %hq, align 4
  %50 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next37 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %50, i32 0, i32 0
  %51 = load %struct.hashnode*, %struct.hashnode** %next37, align 4
  store %struct.hashnode* %51, %struct.hashnode** %hp, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.end36
  %52 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %tobool39 = icmp ne %struct.hashnode* %52, null
  br i1 %tobool39, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond38
  %53 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes41 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %53, i32 0, i32 7
  %54 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmpnodes41, align 4
  %55 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %nam42 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %55, i32 0, i32 1
  %56 = load i8*, i8** %nam42, align 4
  %57 = load i8*, i8** %nam.addr, align 4
  %call43 = call i32 %54(i8* %56, i8* %57)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body40
  %58 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next46 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %58, i32 0, i32 0
  %59 = load %struct.hashnode*, %struct.hashnode** %next46, align 4
  %60 = load %struct.hashnode*, %struct.hashnode** %hq, align 4
  %next47 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %60, i32 0, i32 0
  store %struct.hashnode* %59, %struct.hashnode** %next47, align 4
  br label %gotit

if.end48:                                         ; preds = %for.body40
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %61 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %61, %struct.hashnode** %hq, align 4
  %62 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  %next49 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %62, i32 0, i32 0
  %63 = load %struct.hashnode*, %struct.hashnode** %next49, align 4
  store %struct.hashnode* %63, %struct.hashnode** %hp, align 4
  br label %for.cond38

for.end50:                                        ; preds = %for.cond38
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end50, %if.end35, %if.then
  %64 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %64
}

; Function Attrs: noinline nounwind
define void @disablehashnode(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %0, i32 0, i32 2
  %1 = load i32, i32* %flags1, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @enablehashnode(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %0, i32 0, i32 2
  %1 = load i32, i32* %flags1, align 4
  %and = and i32 %1, -2
  store i32 %and, i32* %flags1, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @scanmatchtable(%struct.hashtable* %ht, %struct.patprog* %pprog, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %pprog.addr = alloca %struct.patprog*, align 4
  %sorted.addr = alloca i32, align 4
  %flags1.addr = alloca i32, align 4
  %flags2.addr = alloca i32, align 4
  %scanfunc.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %scanflags.addr = alloca i32, align 4
  %match = alloca i32, align 4
  %st = alloca %struct.scanstatus, align 4
  %i = alloca i32, align 4
  %ct5 = alloca i32, align 4
  %hnsorttab = alloca %struct.hashnode**, align 4
  %htp = alloca %struct.hashnode**, align 4
  %hn = alloca %struct.hashnode*, align 4
  %i38 = alloca i32, align 4
  %hsize39 = alloca i32, align 4
  %nodes41 = alloca %struct.hashnode**, align 4
  %hn56 = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store %struct.patprog* %pprog, %struct.patprog** %pprog.addr, align 4
  store i32 %sorted, i32* %sorted.addr, align 4
  store i32 %flags1, i32* %flags1.addr, align 4
  store i32 %flags2, i32* %flags2.addr, align 4
  store void (%struct.hashnode*, i32)* %scanfunc, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  store i32 %scanflags, i32* %scanflags.addr, align 4
  store i32 0, i32* %match, align 4
  %0 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %tobool = icmp ne %struct.patprog* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scantab = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 16
  %2 = load void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab, align 4
  %tobool1 = icmp ne void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scantab2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 16
  %4 = load void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab2, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %6 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %7 = load i32, i32* %scanflags.addr, align 4
  call void %4(%struct.hashtable* %5, void (%struct.hashnode*, i32)* %6, i32 %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  %9 = load i32, i32* %ct, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load i32, i32* %sorted.addr, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %11 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 1
  %12 = load i32, i32* %ct6, align 4
  store i32 %12, i32* %ct5, align 4
  %13 = load i32, i32* %ct5, align 4
  %mul = mul i32 4, %13
  %call = call i8* @zhalloc(i32 %mul)
  %14 = bitcast i8* %call to %struct.hashnode**
  store %struct.hashnode** %14, %struct.hashnode*** %hnsorttab, align 4
  %15 = load %struct.hashnode**, %struct.hashnode*** %hnsorttab, align 4
  store %struct.hashnode** %15, %struct.hashnode*** %htp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then4
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 0
  %18 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %19 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 2
  %20 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %21 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %20, i32 %21
  %22 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %22, %struct.hashnode** %hn, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %23 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool8 = icmp ne %struct.hashnode* %23, null
  br i1 %tobool8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %24 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %25 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %incdec.ptr = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %25, i32 1
  store %struct.hashnode** %incdec.ptr, %struct.hashnode*** %htp, align 4
  store %struct.hashnode* %24, %struct.hashnode** %25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %26 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %26, i32 0, i32 0
  %27 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %27, %struct.hashnode** %hn, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %29 = load %struct.hashnode**, %struct.hashnode*** %hnsorttab, align 4
  %30 = bitcast %struct.hashnode** %29 to i8*
  %31 = load i32, i32* %ct5, align 4
  call void @qsort(i8* %30, i32 %31, i32 4, i32 (i8*, i8*)* @hnamcmp)
  %sorted12 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 0
  store i32 1, i32* %sorted12, align 4
  %32 = load %struct.hashnode**, %struct.hashnode*** %hnsorttab, align 4
  %u = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %s = bitcast %union.anon* %u to %struct.anon*
  %hashtab = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 0
  store %struct.hashnode** %32, %struct.hashnode*** %hashtab, align 4
  %33 = load i32, i32* %ct5, align 4
  %u13 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %s14 = bitcast %union.anon* %u13 to %struct.anon*
  %ct15 = getelementptr inbounds %struct.anon, %struct.anon* %s14, i32 0, i32 1
  store i32 %33, i32* %ct15, align 4
  %34 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan = getelementptr inbounds %struct.hashtable, %struct.hashtable* %34, i32 0, i32 17
  store %struct.scanstatus* %st, %struct.scanstatus** %scan, align 4
  %35 = load %struct.hashnode**, %struct.hashnode*** %hnsorttab, align 4
  store %struct.hashnode** %35, %struct.hashnode*** %htp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end11
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %ct5, align 4
  %cmp17 = icmp slt i32 %36, %37
  br i1 %cmp17, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond16
  %38 = load i32, i32* %flags1.addr, align 4
  %tobool19 = icmp ne i32 %38, 0
  br i1 %tobool19, label %lor.lhs.false, label %land.lhs.true21

lor.lhs.false:                                    ; preds = %for.body18
  %39 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %40 = load %struct.hashnode*, %struct.hashnode** %39, align 4
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %40, i32 0, i32 2
  %41 = load i32, i32* %flags, align 4
  %42 = load i32, i32* %flags1.addr, align 4
  %and = and i32 %41, %42
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end32

land.lhs.true21:                                  ; preds = %lor.lhs.false, %for.body18
  %43 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %44 = load %struct.hashnode*, %struct.hashnode** %43, align 4
  %flags22 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %44, i32 0, i32 2
  %45 = load i32, i32* %flags22, align 4
  %46 = load i32, i32* %flags2.addr, align 4
  %and23 = and i32 %45, %46
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end32, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %47 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %tobool26 = icmp ne %struct.patprog* %47, null
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %land.lhs.true25
  %48 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %49 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %50 = load %struct.hashnode*, %struct.hashnode** %49, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %50, i32 0, i32 1
  %51 = load i8*, i8** %nam, align 4
  %call28 = call i32 @pattry(%struct.patprog* %48, i8* %51)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %lor.lhs.false27, %land.lhs.true25
  %52 = load i32, i32* %match, align 4
  %inc31 = add nsw i32 %52, 1
  store i32 %inc31, i32* %match, align 4
  %53 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %54 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %55 = load %struct.hashnode*, %struct.hashnode** %54, align 4
  %56 = load i32, i32* %scanflags.addr, align 4
  call void %53(%struct.hashnode* %55, i32 %56)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %lor.lhs.false27, %land.lhs.true21, %lor.lhs.false
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %57 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %57, 1
  store i32 %inc34, i32* %i, align 4
  %58 = load %struct.hashnode**, %struct.hashnode*** %htp, align 4
  %incdec.ptr35 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %58, i32 1
  store %struct.hashnode** %incdec.ptr35, %struct.hashnode*** %htp, align 4
  br label %for.cond16

for.end36:                                        ; preds = %for.cond16
  %59 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan37 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %59, i32 0, i32 17
  store %struct.scanstatus* null, %struct.scanstatus** %scan37, align 4
  br label %if.end87

if.else:                                          ; preds = %if.end
  %60 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize40 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %60, i32 0, i32 0
  %61 = load i32, i32* %hsize40, align 4
  store i32 %61, i32* %hsize39, align 4
  %62 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes42 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %62, i32 0, i32 2
  %63 = load %struct.hashnode**, %struct.hashnode*** %nodes42, align 4
  store %struct.hashnode** %63, %struct.hashnode*** %nodes41, align 4
  %sorted43 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 0
  store i32 0, i32* %sorted43, align 4
  %64 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan44 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %64, i32 0, i32 17
  store %struct.scanstatus* %st, %struct.scanstatus** %scan44, align 4
  store i32 0, i32* %i38, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc83, %if.else
  %65 = load i32, i32* %i38, align 4
  %66 = load i32, i32* %hsize39, align 4
  %cmp46 = icmp slt i32 %65, %66
  br i1 %cmp46, label %for.body47, label %for.end85

for.body47:                                       ; preds = %for.cond45
  %67 = load %struct.hashnode**, %struct.hashnode*** %nodes41, align 4
  %68 = load i32, i32* %i38, align 4
  %arrayidx48 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %67, i32 %68
  %69 = load %struct.hashnode*, %struct.hashnode** %arrayidx48, align 4
  %u49 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %u50 = bitcast %union.anon* %u49 to %struct.hashnode**
  store %struct.hashnode* %69, %struct.hashnode** %u50, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %if.end81, %for.body47
  %u52 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %u53 = bitcast %union.anon* %u52 to %struct.hashnode**
  %70 = load %struct.hashnode*, %struct.hashnode** %u53, align 4
  %tobool54 = icmp ne %struct.hashnode* %70, null
  br i1 %tobool54, label %for.body55, label %for.end82

for.body55:                                       ; preds = %for.cond51
  %u57 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %u58 = bitcast %union.anon* %u57 to %struct.hashnode**
  %71 = load %struct.hashnode*, %struct.hashnode** %u58, align 4
  store %struct.hashnode* %71, %struct.hashnode** %hn56, align 4
  %u59 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %u60 = bitcast %union.anon* %u59 to %struct.hashnode**
  %72 = load %struct.hashnode*, %struct.hashnode** %u60, align 4
  %next61 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %72, i32 0, i32 0
  %73 = load %struct.hashnode*, %struct.hashnode** %next61, align 4
  %u62 = getelementptr inbounds %struct.scanstatus, %struct.scanstatus* %st, i32 0, i32 1
  %u63 = bitcast %union.anon* %u62 to %struct.hashnode**
  store %struct.hashnode* %73, %struct.hashnode** %u63, align 4
  %74 = load i32, i32* %flags1.addr, align 4
  %tobool64 = icmp ne i32 %74, 0
  br i1 %tobool64, label %lor.lhs.false65, label %land.lhs.true69

lor.lhs.false65:                                  ; preds = %for.body55
  %75 = load %struct.hashnode*, %struct.hashnode** %hn56, align 4
  %flags66 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %75, i32 0, i32 2
  %76 = load i32, i32* %flags66, align 4
  %77 = load i32, i32* %flags1.addr, align 4
  %and67 = and i32 %76, %77
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %land.lhs.true69, label %if.end81

land.lhs.true69:                                  ; preds = %lor.lhs.false65, %for.body55
  %78 = load %struct.hashnode*, %struct.hashnode** %hn56, align 4
  %flags70 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %78, i32 0, i32 2
  %79 = load i32, i32* %flags70, align 4
  %80 = load i32, i32* %flags2.addr, align 4
  %and71 = and i32 %79, %80
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.end81, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true69
  %81 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %tobool74 = icmp ne %struct.patprog* %81, null
  br i1 %tobool74, label %lor.lhs.false75, label %if.then79

lor.lhs.false75:                                  ; preds = %land.lhs.true73
  %82 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %83 = load %struct.hashnode*, %struct.hashnode** %hn56, align 4
  %nam76 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %83, i32 0, i32 1
  %84 = load i8*, i8** %nam76, align 4
  %call77 = call i32 @pattry(%struct.patprog* %82, i8* %84)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %lor.lhs.false75, %land.lhs.true73
  %85 = load i32, i32* %match, align 4
  %inc80 = add nsw i32 %85, 1
  store i32 %inc80, i32* %match, align 4
  %86 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %87 = load %struct.hashnode*, %struct.hashnode** %hn56, align 4
  %88 = load i32, i32* %scanflags.addr, align 4
  call void %86(%struct.hashnode* %87, i32 %88)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %lor.lhs.false75, %land.lhs.true69, %lor.lhs.false65
  br label %for.cond51

for.end82:                                        ; preds = %for.cond51
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %89 = load i32, i32* %i38, align 4
  %inc84 = add nsw i32 %89, 1
  store i32 %inc84, i32* %i38, align 4
  br label %for.cond45

for.end85:                                        ; preds = %for.cond45
  %90 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %scan86 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %90, i32 0, i32 17
  store %struct.scanstatus* null, %struct.scanstatus** %scan86, align 4
  br label %if.end87

if.end87:                                         ; preds = %for.end85, %for.end36
  %91 = load i32, i32* %match, align 4
  store i32 %91, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then
  %92 = load i32, i32* %retval, align 4
  ret i32 %92
}

declare i8* @zhalloc(i32) #1

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind
define internal i32 @hnamcmp(i8* %ap, i8* %bp) #0 {
entry:
  %ap.addr = alloca i8*, align 4
  %bp.addr = alloca i8*, align 4
  %a = alloca %struct.hashnode*, align 4
  %b = alloca %struct.hashnode*, align 4
  store i8* %ap, i8** %ap.addr, align 4
  store i8* %bp, i8** %bp.addr, align 4
  %0 = load i8*, i8** %ap.addr, align 4
  %1 = bitcast i8* %0 to %struct.hashnode**
  %2 = load %struct.hashnode*, %struct.hashnode** %1, align 4
  store %struct.hashnode* %2, %struct.hashnode** %a, align 4
  %3 = load i8*, i8** %bp.addr, align 4
  %4 = bitcast i8* %3 to %struct.hashnode**
  %5 = load %struct.hashnode*, %struct.hashnode** %4, align 4
  store %struct.hashnode* %5, %struct.hashnode** %b, align 4
  %6 = load %struct.hashnode*, %struct.hashnode** %a, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %6, i32 0, i32 1
  %7 = load i8*, i8** %nam, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %b, align 4
  %nam1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %8, i32 0, i32 1
  %9 = load i8*, i8** %nam1, align 4
  %call = call i32 @ztrcmp(i8* %7, i8* %9)
  ret i32 %call
}

declare i32 @pattry(%struct.patprog*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @scanhashtable(%struct.hashtable* %ht, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %sorted.addr = alloca i32, align 4
  %flags1.addr = alloca i32, align 4
  %flags2.addr = alloca i32, align 4
  %scanfunc.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %scanflags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i32 %sorted, i32* %sorted.addr, align 4
  store i32 %flags1, i32* %flags1.addr, align 4
  store i32 %flags2, i32* %flags2.addr, align 4
  store void (%struct.hashnode*, i32)* %scanfunc, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  store i32 %scanflags, i32* %scanflags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i32, i32* %sorted.addr, align 4
  %2 = load i32, i32* %flags1.addr, align 4
  %3 = load i32, i32* %flags2.addr, align 4
  %4 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %5 = load i32, i32* %scanflags.addr, align 4
  %call = call i32 @scanmatchtable(%struct.hashtable* %0, %struct.patprog* null, i32 %1, i32 %2, i32 %3, void (%struct.hashnode*, i32)* %4, i32 %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define void @emptyhashtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 0
  %2 = load i32, i32* %hsize, align 4
  call void @resizehashtable(%struct.hashtable* %0, i32 %2)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @resizehashtable(%struct.hashtable* %ht, i32 %newsize) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %newsize.addr = alloca i32, align 4
  %ha = alloca %struct.hashnode**, align 4
  %hn = alloca %struct.hashnode*, align 4
  %hp = alloca %struct.hashnode*, align 4
  %i = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 2
  %1 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  store %struct.hashnode** %1, %struct.hashnode*** %ha, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end3

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hashnode**, %struct.hashnode*** %ha, align 4
  %6 = load %struct.hashnode*, %struct.hashnode** %5, align 4
  store %struct.hashnode* %6, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.body2, %for.body
  %7 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %7, null
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %8, i32 0, i32 0
  %9 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %9, %struct.hashnode** %hp, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  %11 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %11(%struct.hashnode* %12)
  %13 = load %struct.hashnode*, %struct.hashnode** %hp, align 4
  store %struct.hashnode* %13, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load %struct.hashnode**, %struct.hashnode*** %ha, align 4
  %incdec.ptr = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %15, i32 1
  store %struct.hashnode** %incdec.ptr, %struct.hashnode*** %ha, align 4
  br label %for.cond

for.end3:                                         ; preds = %for.cond
  %16 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %17 = load i32, i32* %hsize4, align 4
  %18 = load i32, i32* %newsize.addr, align 4
  %cmp5 = icmp ne i32 %17, %18
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end3
  %19 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 2
  %20 = load %struct.hashnode**, %struct.hashnode*** %nodes6, align 4
  %21 = bitcast %struct.hashnode** %20 to i8*
  %22 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 0
  %23 = load i32, i32* %hsize7, align 4
  %mul = mul i32 %23, 4
  call void @zfree(i8* %21, i32 %mul)
  %24 = load i32, i32* %newsize.addr, align 4
  %mul8 = mul i32 %24, 4
  %call = call i8* @zshcalloc(i32 %mul8)
  %25 = bitcast i8* %call to %struct.hashnode**
  %26 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 2
  store %struct.hashnode** %25, %struct.hashnode*** %nodes9, align 4
  %27 = load i32, i32* %newsize.addr, align 4
  %28 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 0
  store i32 %27, i32* %hsize10, align 4
  br label %if.end

if.else:                                          ; preds = %for.end3
  %29 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %29, i32 0, i32 2
  %30 = load %struct.hashnode**, %struct.hashnode*** %nodes11, align 4
  %31 = bitcast %struct.hashnode** %30 to i8*
  %32 = load i32, i32* %newsize.addr, align 4
  %mul12 = mul i32 %32, 4
  call void @llvm.memset.p0i8.i32(i8* %31, i8 0, i32 %mul12, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 1
  store i32 0, i32* %ct, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @createcmdnamtable() #0 {
entry:
  %call = call %struct.hashtable* @newhashtable(i32 201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @cmdnamtab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* @emptycmdnamtable, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* @fillcmdnamtable, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* @freecmdnamnode, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printcmdnamnode, void (%struct.hashnode*, i32)** %printnode, align 4
  %12 = load i8**, i8*** @path, align 4
  store i8** %12, i8*** @pathchecked, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @emptycmdnamtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @emptyhashtable(%struct.hashtable* %0)
  %1 = load i8**, i8*** @path, align 4
  store i8** %1, i8*** @pathchecked, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @fillcmdnamtable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %pq = alloca i8**, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load i8**, i8*** @pathchecked, align 4
  store i8** %0, i8*** %pq, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %pq, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %pq, align 4
  call void @hashdir(i8** %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8**, i8*** %pq, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr, i8*** %pq, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i8**, i8*** %pq, align 4
  store i8** %5, i8*** @pathchecked, align 4
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @freecmdnamnode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %cn = alloca %struct.cmdnam*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.cmdnam*
  store %struct.cmdnam* %1, %struct.cmdnam** %cn, align 4
  %2 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %3)
  %4 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node1 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %6, i32 0, i32 1
  %cmd = bitcast %union.anon.0* %u to i8**
  %7 = load i8*, i8** %cmd, align 4
  call void @zsfree(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %9 = bitcast %struct.cmdnam* %8 to i8*
  call void @zfree(i8* %9, i32 16)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printcmdnamnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %cn = alloca %struct.cmdnam*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.cmdnam*
  store %struct.cmdnam* %1, %struct.cmdnam** %cn, align 4
  %2 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %5 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node1 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and2 = and i32 %6, 2
  %tobool3 = icmp ne i32 %and2, 0
  %cond = select i1 %tobool3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %4, i8* %cond)
  br label %if.end93

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %printflags.addr, align 4
  %and4 = and i32 %7, 128
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %printflags.addr, align 4
  %and6 = and i32 %8, 512
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end24

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node9 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %9, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %10 = load i32, i32* %flags10, align 4
  %and11 = and i32 %10, 2
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then8
  %11 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %11, i32 0, i32 1
  %cmd = bitcast %union.anon.0* %u to i8**
  %12 = load i8*, i8** %cmd, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call14 = call i32 @zputs(i8* %12, %struct._IO_FILE* %13)
  %call15 = call i32 @putchar(i32 10)
  br label %if.end23

if.else:                                          ; preds = %if.then8
  %14 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u16 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %14, i32 0, i32 1
  %name = bitcast %union.anon.0* %u16 to i8***
  %15 = load i8**, i8*** %name, align 4
  %16 = load i8*, i8** %15, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call17 = call i32 @zputs(i8* %16, %struct._IO_FILE* %17)
  %call18 = call i32 @putchar(i32 47)
  %18 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node19 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %18, i32 0, i32 0
  %nam20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 1
  %19 = load i8*, i8** %nam20, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call21 = call i32 @zputs(i8* %19, %struct._IO_FILE* %20)
  %call22 = call i32 @putchar(i32 10)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then13
  br label %if.end93

if.end24:                                         ; preds = %lor.lhs.false
  %21 = load i32, i32* %printflags.addr, align 4
  %and25 = and i32 %21, 256
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end55

if.then27:                                        ; preds = %if.end24
  %22 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node28 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %22, i32 0, i32 0
  %flags29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 2
  %23 = load i32, i32* %flags29, align 4
  %and30 = and i32 %23, 2
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.else41

if.then32:                                        ; preds = %if.then27
  %24 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node33 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %24, i32 0, i32 0
  %nam34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 1
  %25 = load i8*, i8** %nam34, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call35 = call i32 @mb_niceformat(i8* %25, %struct._IO_FILE* %26, i8** null, i32 0)
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %27 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u37 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %27, i32 0, i32 1
  %cmd38 = bitcast %union.anon.0* %u37 to i8**
  %28 = load i8*, i8** %cmd38, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call39 = call i32 @mb_niceformat(i8* %28, %struct._IO_FILE* %29, i8** null, i32 0)
  %call40 = call i32 @putchar(i32 10)
  br label %if.end54

if.else41:                                        ; preds = %if.then27
  %30 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node42 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %30, i32 0, i32 0
  %nam43 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node42, i32 0, i32 1
  %31 = load i8*, i8** %nam43, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call44 = call i32 @mb_niceformat(i8* %31, %struct._IO_FILE* %32, i8** null, i32 0)
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %33 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u46 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %33, i32 0, i32 1
  %name47 = bitcast %union.anon.0* %u46 to i8***
  %34 = load i8**, i8*** %name47, align 4
  %35 = load i8*, i8** %34, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call48 = call i32 @mb_niceformat(i8* %35, %struct._IO_FILE* %36, i8** null, i32 0)
  %call49 = call i32 @putchar(i32 47)
  %37 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node50 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %37, i32 0, i32 0
  %nam51 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node50, i32 0, i32 1
  %38 = load i8*, i8** %nam51, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call52 = call i32 @mb_niceformat(i8* %38, %struct._IO_FILE* %39, i8** null, i32 0)
  %call53 = call i32 @putchar(i32 10)
  br label %if.end54

if.end54:                                         ; preds = %if.else41, %if.then32
  br label %if.end93

if.end55:                                         ; preds = %if.end24
  %40 = load i32, i32* %printflags.addr, align 4
  %and56 = and i32 %40, 4
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end66

if.then58:                                        ; preds = %if.end55
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  %41 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node60 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %41, i32 0, i32 0
  %nam61 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node60, i32 0, i32 1
  %42 = load i8*, i8** %nam61, align 4
  %arrayidx = getelementptr inbounds i8, i8* %42, i32 0
  %43 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %43 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then58
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then58
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end55
  %44 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node67 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %44, i32 0, i32 0
  %flags68 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node67, i32 0, i32 2
  %45 = load i32, i32* %flags68, align 4
  %and69 = and i32 %45, 2
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.else80

if.then71:                                        ; preds = %if.end66
  %46 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node72 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %46, i32 0, i32 0
  %nam73 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node72, i32 0, i32 1
  %47 = load i8*, i8** %nam73, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call74 = call i8* @quotedzputs(i8* %47, %struct._IO_FILE* %48)
  %call75 = call i32 @putchar(i32 61)
  %49 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u76 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %49, i32 0, i32 1
  %cmd77 = bitcast %union.anon.0* %u76 to i8**
  %50 = load i8*, i8** %cmd77, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call78 = call i8* @quotedzputs(i8* %50, %struct._IO_FILE* %51)
  %call79 = call i32 @putchar(i32 10)
  br label %if.end93

if.else80:                                        ; preds = %if.end66
  %52 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node81 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %52, i32 0, i32 0
  %nam82 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node81, i32 0, i32 1
  %53 = load i8*, i8** %nam82, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call83 = call i8* @quotedzputs(i8* %53, %struct._IO_FILE* %54)
  %call84 = call i32 @putchar(i32 61)
  %55 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u85 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %55, i32 0, i32 1
  %name86 = bitcast %union.anon.0* %u85 to i8***
  %56 = load i8**, i8*** %name86, align 4
  %57 = load i8*, i8** %56, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call87 = call i8* @quotedzputs(i8* %57, %struct._IO_FILE* %58)
  %call88 = call i32 @putchar(i32 47)
  %59 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node89 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %59, i32 0, i32 0
  %nam90 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node89, i32 0, i32 1
  %60 = load i8*, i8** %nam90, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call91 = call i8* @quotedzputs(i8* %60, %struct._IO_FILE* %61)
  %call92 = call i32 @putchar(i32 10)
  br label %if.end93

if.end93:                                         ; preds = %if.then, %if.end23, %if.end54, %if.else80, %if.then71
  ret void
}

; Function Attrs: noinline nounwind
define void @hashdir(i8** %dirp) #0 {
entry:
  %dirp.addr = alloca i8**, align 4
  %cn = alloca %struct.cmdnam*, align 4
  %dir = alloca %struct.__dirstream*, align 4
  %fn = alloca i8*, align 4
  %unmetadir = alloca i8*, align 4
  %pathbuf = alloca i8*, align 4
  %pathptr = alloca i8*, align 4
  %dirlen = alloca i32, align 4
  %fname = alloca i8*, align 4
  %statbuf = alloca %struct.stat, align 8
  %add17 = alloca i32, align 4
  %dummylen = alloca i32, align 4
  store i8** %dirp, i8*** %dirp.addr, align 4
  %0 = load i8**, i8*** %dirp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %call = call i32 @isrelative(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %dirp.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call1 = call i8* @unmeta(i8* %3)
  store i8* %call1, i8** %unmetadir, align 4
  %4 = load i8*, i8** %unmetadir, align 4
  %call2 = call %struct.__dirstream* @opendir(i8* %4)
  store %struct.__dirstream* %call2, %struct.__dirstream** %dir, align 4
  %tobool3 = icmp ne %struct.__dirstream* %call2, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load i8*, i8** %unmetadir, align 4
  %call6 = call i32 @strlen(i8* %5)
  store i32 %call6, i32* %dirlen, align 4
  %6 = load i32, i32* %dirlen, align 4
  %add = add nsw i32 %6, 4096
  %add7 = add nsw i32 %add, 2
  %call8 = call i8* @zalloc(i32 %add7)
  store i8* %call8, i8** %pathbuf, align 4
  %7 = load i8*, i8** %pathbuf, align 4
  %8 = load i8*, i8** %unmetadir, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %pathbuf, align 4
  %10 = load i32, i32* %dirlen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %10
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  store i8* %add.ptr10, i8** %pathptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %if.end5
  %11 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call11 = call i8* @zreaddir(%struct.__dirstream* %11, i32 1)
  store i8* %call11, i8** %fn, align 4
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 9
  %13 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %15 = load i8*, i8** %fn, align 4
  %call13 = call %struct.hashnode* %13(%struct.hashtable* %14, i8* %15)
  %tobool14 = icmp ne %struct.hashnode* %call13, null
  br i1 %tobool14, label %if.end41, label %if.then15

if.then15:                                        ; preds = %while.body
  %16 = load i8*, i8** %fn, align 4
  %call16 = call i8* @ztrdup(i8* %16)
  store i8* %call16, i8** %fname, align 4
  store i32 0, i32* %add17, align 4
  %17 = load i8*, i8** %fn, align 4
  %call18 = call i8* @unmetafy(i8* %17, i32* %dummylen)
  %18 = load i8*, i8** %fn, align 4
  %call19 = call i32 @strlen(i8* %18)
  %cmp = icmp ugt i32 %call19, 4096
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  store i32 1, i32* %add17, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then15
  %19 = load i8*, i8** %pathptr, align 4
  %20 = load i8*, i8** %fn, align 4
  %call21 = call i8* @strcpy(i8* %19, i8* %20)
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 70), align 1
  %tobool22 = icmp ne i8 %21, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i8*, i8** %pathbuf, align 4
  %call23 = call i32 @access(i8* %22, i32 1)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %23 = load i8*, i8** %pathbuf, align 4
  %call25 = call i32 @stat(i8* %23, %struct.stat* %statbuf)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.end34

land.lhs.true27:                                  ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 6
  %24 = load i32, i32* %st_mode, align 8
  %and = and i32 %24, 61440
  %cmp28 = icmp eq i32 %and, 32768
  br i1 %cmp28, label %land.lhs.true29, label %if.end34

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %st_mode30 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 6
  %25 = load i32, i32* %st_mode30, align 8
  %and31 = and i32 %25, 73
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true29, %if.else
  store i32 1, i32* %add17, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true29, %land.lhs.true27, %land.lhs.true, %lor.lhs.false
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then20
  %26 = load i32, i32* %add17, align 4
  %tobool36 = icmp ne i32 %26, 0
  br i1 %tobool36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end35
  %call38 = call i8* @zshcalloc(i32 16)
  %27 = bitcast i8* %call38 to %struct.cmdnam*
  store %struct.cmdnam* %27, %struct.cmdnam** %cn, align 4
  %28 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %28, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %29 = load i8**, i8*** %dirp.addr, align 4
  %30 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %30, i32 0, i32 1
  %name = bitcast %union.anon.0* %u to i8***
  store i8** %29, i8*** %name, align 4
  %31 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %31, i32 0, i32 8
  %32 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %33 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %34 = load i8*, i8** %fname, align 4
  %35 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %36 = bitcast %struct.cmdnam* %35 to i8*
  call void %32(%struct.hashtable* %33, i8* %34, i8* %36)
  br label %if.end40

if.else39:                                        ; preds = %if.end35
  %37 = load i8*, i8** %fname, align 4
  call void @zsfree(i8* %37)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 4
  %call42 = call i32 @closedir(%struct.__dirstream* %38)
  %39 = load i8*, i8** %pathbuf, align 4
  %40 = load i32, i32* %dirlen, align 4
  %add43 = add nsw i32 %40, 4096
  %add44 = add nsw i32 %add43, 2
  call void @zfree(i8* %39, i32 %add44)
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  ret void
}

declare i32 @isrelative(i8*) #1

declare i8* @unmeta(i8*) #1

declare %struct.__dirstream* @opendir(i8*) #1

declare i32 @strlen(i8*) #1

declare i8* @zalloc(i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @zreaddir(%struct.__dirstream*, i32) #1

declare i8* @ztrdup(i8*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @access(i8*, i32) #1

declare i32 @stat(i8*, %struct.stat*) #1

declare void @zsfree(i8*) #1

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: noinline nounwind
define void @createshfunctable() #0 {
entry:
  %call = call %struct.hashtable* @newhashtable(i32 7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @shfunctab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removeshfuncnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disableshfuncnode, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enableshfuncnode, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* @freeshfuncnode, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printshfuncnode, void (%struct.hashnode*, i32)** %printnode, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @removeshfuncnode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  %signum = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load i8*, i8** %nam.addr, align 4
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %nam.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 4
  %call1 = call i32 @getsignum(i8* %add.ptr)
  store i32 %call1, i32* %signum, align 4
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %signum, align 4
  %call2 = call %struct.hashnode* @removetrap(i32 %2)
  store %struct.hashnode* %call2, %struct.hashnode** %hn, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %4 = load i8*, i8** %nam.addr, align 4
  %call3 = call %struct.hashnode* @removehashnode(%struct.hashtable* %3, i8* %4)
  store %struct.hashnode* %call3, %struct.hashnode** %hn, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  ret %struct.hashnode* %5
}

; Function Attrs: noinline nounwind
define internal void @disableshfuncnode(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %signum = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %0, i32 0, i32 2
  %1 = load i32, i32* %flags1, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* %flags1, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %2, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  %call = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %nam2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %4, i32 0, i32 1
  %5 = load i8*, i8** %nam2, align 4
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 4
  %call3 = call i32 @getsignum(i8* %add.ptr)
  store i32 %call3, i32* %signum, align 4
  %6 = load i32, i32* %signum, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load i32, i32* %signum, align 4
  %arrayidx = getelementptr inbounds [34 x i32], [34 x i32]* @sigtrapped, i32 0, i32 %7
  %8 = load i32, i32* %arrayidx, align 4
  %and = and i32 %8, -5
  store i32 %and, i32* %arrayidx, align 4
  %9 = load i32, i32* %signum, align 4
  call void @unsettrap(i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @enableshfuncnode(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %shf = alloca %struct.shfunc*, align 4
  %signum = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.shfunc*
  store %struct.shfunc* %1, %struct.shfunc** %shf, align 4
  %2 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %2, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags1, align 4
  %and = and i32 %3, -2
  store i32 %and, i32* %flags1, align 4
  %4 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node2 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %call = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node3 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %6, i32 0, i32 0
  %nam4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 1
  %7 = load i8*, i8** %nam4, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 4
  %call5 = call i32 @getsignum(i8* %add.ptr)
  store i32 %call5, i32* %signum, align 4
  %8 = load i32, i32* %signum, align 4
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load i32, i32* %signum, align 4
  %call7 = call i32 @settrap(i32 %9, %struct.eprog* null, i32 4)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @freeshfuncnode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %shf = alloca %struct.shfunc*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.shfunc*
  store %struct.shfunc* %1, %struct.shfunc** %shf, align 4
  %2 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %3)
  %4 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %4, i32 0, i32 3
  %5 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %tobool = icmp ne %struct.eprog* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef1 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %6, i32 0, i32 3
  %7 = load %struct.eprog*, %struct.eprog** %funcdef1, align 4
  call void @freeeprog(%struct.eprog* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %redir = getelementptr inbounds %struct.shfunc, %struct.shfunc* %8, i32 0, i32 4
  %9 = load %struct.eprog*, %struct.eprog** %redir, align 4
  %tobool2 = icmp ne %struct.eprog* %9, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %10 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %redir4 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %10, i32 0, i32 4
  %11 = load %struct.eprog*, %struct.eprog** %redir4, align 4
  call void @freeeprog(%struct.eprog* %11)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %filename = getelementptr inbounds %struct.shfunc, %struct.shfunc* %12, i32 0, i32 1
  call void @dircache_set(i8** %filename, i8* null)
  %13 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky = getelementptr inbounds %struct.shfunc, %struct.shfunc* %13, i32 0, i32 5
  %14 = load %struct.emulation_options*, %struct.emulation_options** %sticky, align 4
  %tobool6 = icmp ne %struct.emulation_options* %14, null
  br i1 %tobool6, label %if.then7, label %if.end24

if.then7:                                         ; preds = %if.end5
  %15 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky8 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %15, i32 0, i32 5
  %16 = load %struct.emulation_options*, %struct.emulation_options** %sticky8, align 4
  %n_on_opts = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %16, i32 0, i32 1
  %17 = load i32, i32* %n_on_opts, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.then7
  %18 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky11 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %18, i32 0, i32 5
  %19 = load %struct.emulation_options*, %struct.emulation_options** %sticky11, align 4
  %on_opts = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %19, i32 0, i32 3
  %20 = load i8*, i8** %on_opts, align 4
  %21 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky12 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %21, i32 0, i32 5
  %22 = load %struct.emulation_options*, %struct.emulation_options** %sticky12, align 4
  %n_on_opts13 = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %22, i32 0, i32 1
  %23 = load i32, i32* %n_on_opts13, align 4
  %mul = mul i32 %23, 1
  call void @zfree(i8* %20, i32 %mul)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then7
  %24 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky15 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %24, i32 0, i32 5
  %25 = load %struct.emulation_options*, %struct.emulation_options** %sticky15, align 4
  %n_off_opts = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %25, i32 0, i32 2
  %26 = load i32, i32* %n_off_opts, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end14
  %27 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky18 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %27, i32 0, i32 5
  %28 = load %struct.emulation_options*, %struct.emulation_options** %sticky18, align 4
  %off_opts = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %28, i32 0, i32 4
  %29 = load i8*, i8** %off_opts, align 4
  %30 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky19 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %30, i32 0, i32 5
  %31 = load %struct.emulation_options*, %struct.emulation_options** %sticky19, align 4
  %n_off_opts20 = getelementptr inbounds %struct.emulation_options, %struct.emulation_options* %31, i32 0, i32 2
  %32 = load i32, i32* %n_off_opts20, align 4
  %mul21 = mul i32 %32, 1
  call void @zfree(i8* %29, i32 %mul21)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end14
  %33 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %sticky23 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %33, i32 0, i32 5
  %34 = load %struct.emulation_options*, %struct.emulation_options** %sticky23, align 4
  %35 = bitcast %struct.emulation_options* %34 to i8*
  call void @zfree(i8* %35, i32 20)
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end5
  %36 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %37 = bitcast %struct.shfunc* %36 to i8*
  call void @zfree(i8* %37, i32 32)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printshfuncnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %f = alloca %struct.shfunc*, align 4
  %t = alloca i8*, align 4
  %fopt = alloca i8*, align 4
  %flgs = alloca [7 x i32], align 4
  %fl = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.shfunc*
  store %struct.shfunc* %1, %struct.shfunc** %f, align 4
  store i8* null, i8** %t, align 4
  %2 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %printflags.addr, align 4
  %and1 = and i32 %3, 512
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %printflags.addr, align 4
  %and3 = and i32 %4, 1024
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @zputs(i8* %6, %struct._IO_FILE* %7)
  %call5 = call i32 @putchar(i32 10)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i32, i32* %printflags.addr, align 4
  %and6 = and i32 %8, 2304
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end42

land.lhs.true8:                                   ; preds = %if.end
  %9 = load i32, i32* %printflags.addr, align 4
  %and9 = and i32 %9, 1024
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end42, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %10 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node12 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %10, i32 0, i32 0
  %nam13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  %11 = load i8*, i8** %nam13, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call14 = call i32 @mb_niceformat(i8* %11, %struct._IO_FILE* %12, i8** null, i32 0)
  %13 = load i32, i32* %printflags.addr, align 4
  %and15 = and i32 %13, 2048
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  %14 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node17 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 2
  %15 = load i32, i32* %flags, align 4
  %and18 = and i32 %15, 512
  %tobool19 = icmp ne i32 %and18, 0
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %call21 = call i32 (i8*, ...) @printf(i8* %cond20)
  %16 = load i32, i32* %printflags.addr, align 4
  %and22 = and i32 %16, 256
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.end40

land.lhs.true24:                                  ; preds = %cond.end
  %17 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %filename = getelementptr inbounds %struct.shfunc, %struct.shfunc* %17, i32 0, i32 1
  %18 = load i8*, i8** %filename, align 4
  %tobool25 = icmp ne i8* %18, null
  br i1 %tobool25, label %if.then26, label %if.end40

if.then26:                                        ; preds = %land.lhs.true24
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  %19 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %filename28 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %19, i32 0, i32 1
  %20 = load i8*, i8** %filename28, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call29 = call i8* @quotedzputs(i8* %20, %struct._IO_FILE* %21)
  %22 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node30 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %22, i32 0, i32 0
  %flags31 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node30, i32 0, i32 2
  %23 = load i32, i32* %flags31, align 4
  %and32 = and i32 %23, 524288
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.then26
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %24 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node36 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %24, i32 0, i32 0
  %nam37 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node36, i32 0, i32 1
  %25 = load i8*, i8** %nam37, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call38 = call i8* @quotedzputs(i8* %25, %struct._IO_FILE* %26)
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.then26
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %land.lhs.true24, %cond.end
  %call41 = call i32 @putchar(i32 10)
  br label %return

if.end42:                                         ; preds = %land.lhs.true8, %if.end
  %27 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node43 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %27, i32 0, i32 0
  %nam44 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node43, i32 0, i32 1
  %28 = load i8*, i8** %nam44, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call45 = call i8* @quotedzputs(i8* %28, %struct._IO_FILE* %29)
  %30 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %30, i32 0, i32 3
  %31 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %tobool46 = icmp ne %struct.eprog* %31, null
  br i1 %tobool46, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end42
  %32 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node48 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %32, i32 0, i32 0
  %flags49 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node48, i32 0, i32 2
  %33 = load i32, i32* %flags49, align 4
  %and50 = and i32 %33, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.else112

if.then52:                                        ; preds = %lor.lhs.false47, %if.end42
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  call void @zoutputtab(%struct._IO_FILE* %34)
  %35 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node54 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %35, i32 0, i32 0
  %flags55 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node54, i32 0, i32 2
  %36 = load i32, i32* %flags55, align 4
  %and56 = and i32 %36, 512
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.then52
  %37 = load i8, i8* @hashchar, align 1
  %conv = zext i8 %37 to i32
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 %conv)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  call void @zoutputtab(%struct._IO_FILE* %38)
  br label %if.end62

if.else:                                          ; preds = %if.then52
  %39 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %funcdef60 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %39, i32 0, i32 3
  %40 = load %struct.eprog*, %struct.eprog** %funcdef60, align 4
  %call61 = call i8* @getpermtext(%struct.eprog* %40, i32* null, i32 1)
  store i8* %call61, i8** %t, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  %41 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node63 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %41, i32 0, i32 0
  %flags64 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node63, i32 0, i32 2
  %42 = load i32, i32* %flags64, align 4
  %and65 = and i32 %42, 67584
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end62
  %43 = load i8, i8* @hashchar, align 1
  %conv68 = zext i8 %43 to i32
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %conv68)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  call void @zoutputtab(%struct._IO_FILE* %44)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end62
  %45 = load i8*, i8** %t, align 4
  %tobool71 = icmp ne i8* %45, null
  br i1 %tobool71, label %if.else97, label %if.then72

if.then72:                                        ; preds = %if.end70
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8** %fopt, align 4
  %46 = bitcast [7 x i32]* %flgs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* bitcast ([7 x i32]* @printshfuncnode.flgs to i8*), i32 28, i32 4, i1 false)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call73 = call i32 @zputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %47)
  store i32 0, i32* %fl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then72
  %48 = load i8*, i8** %fopt, align 4
  %49 = load i32, i32* %fl, align 4
  %arrayidx = getelementptr inbounds i8, i8* %48, i32 %49
  %50 = load i8, i8* %arrayidx, align 1
  %tobool74 = icmp ne i8 %50, 0
  br i1 %tobool74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node75 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %51, i32 0, i32 0
  %flags76 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node75, i32 0, i32 2
  %52 = load i32, i32* %flags76, align 4
  %53 = load i32, i32* %fl, align 4
  %arrayidx77 = getelementptr inbounds [7 x i32], [7 x i32]* %flgs, i32 0, i32 %53
  %54 = load i32, i32* %arrayidx77, align 4
  %and78 = and i32 %52, %54
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %for.body
  %55 = load i8*, i8** %fopt, align 4
  %56 = load i32, i32* %fl, align 4
  %arrayidx81 = getelementptr inbounds i8, i8* %55, i32 %56
  %57 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %57 to i32
  %call83 = call i32 @putchar(i32 %conv82)
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %58 = load i32, i32* %fl, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %fl, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %filename85 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %59, i32 0, i32 1
  %60 = load i8*, i8** %filename85, align 4
  %tobool86 = icmp ne i8* %60, null
  br i1 %tobool86, label %land.lhs.true87, label %if.end96

land.lhs.true87:                                  ; preds = %for.end
  %61 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node88 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %61, i32 0, i32 0
  %flags89 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node88, i32 0, i32 2
  %62 = load i32, i32* %flags89, align 4
  %and90 = and i32 %62, 524288
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end96

if.then92:                                        ; preds = %land.lhs.true87
  %call93 = call i32 @putchar(i32 32)
  %63 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %filename94 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %63, i32 0, i32 1
  %64 = load i8*, i8** %filename94, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call95 = call i32 @zputs(i8* %64, %struct._IO_FILE* %65)
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %land.lhs.true87, %for.end
  br label %if.end110

if.else97:                                        ; preds = %if.end70
  %66 = load i8*, i8** %t, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call98 = call i32 @zputs(i8* %66, %struct._IO_FILE* %67)
  %68 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %68)
  %69 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %funcdef99 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %69, i32 0, i32 3
  %70 = load %struct.eprog*, %struct.eprog** %funcdef99, align 4
  %flags100 = getelementptr inbounds %struct.eprog, %struct.eprog* %70, i32 0, i32 0
  %71 = load i32, i32* %flags100, align 4
  %and101 = and i32 %71, 8
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.end109

if.then103:                                       ; preds = %if.else97
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  call void @zoutputtab(%struct._IO_FILE* %72)
  %73 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %node105 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %73, i32 0, i32 0
  %nam106 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node105, i32 0, i32 1
  %74 = load i8*, i8** %nam106, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call107 = call i8* @quotedzputs(i8* %74, %struct._IO_FILE* %75)
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %if.else97
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end96
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end114

if.else112:                                       ; preds = %lor.lhs.false47
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.end110
  %76 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %redir = getelementptr inbounds %struct.shfunc, %struct.shfunc* %76, i32 0, i32 4
  %77 = load %struct.eprog*, %struct.eprog** %redir, align 4
  %tobool115 = icmp ne %struct.eprog* %77, null
  br i1 %tobool115, label %if.then116, label %if.end123

if.then116:                                       ; preds = %if.end114
  %78 = load %struct.shfunc*, %struct.shfunc** %f, align 4
  %redir117 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %78, i32 0, i32 4
  %79 = load %struct.eprog*, %struct.eprog** %redir117, align 4
  %call118 = call i8* @getpermtext(%struct.eprog* %79, i32* null, i32 1)
  store i8* %call118, i8** %t, align 4
  %80 = load i8*, i8** %t, align 4
  %tobool119 = icmp ne i8* %80, null
  br i1 %tobool119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then116
  %81 = load i8*, i8** %t, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call121 = call i32 @zputs(i8* %81, %struct._IO_FILE* %82)
  %83 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %83)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.then116
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end114
  %call124 = call i32 @putchar(i32 10)
  br label %return

return:                                           ; preds = %if.end123, %if.end40, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define i32 @scanmatchshfunc(%struct.patprog* %pprog, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags, i32 %expand) #0 {
entry:
  %pprog.addr = alloca %struct.patprog*, align 4
  %sorted.addr = alloca i32, align 4
  %flags1.addr = alloca i32, align 4
  %flags2.addr = alloca i32, align 4
  %scanfunc.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %scanflags.addr = alloca i32, align 4
  %expand.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %save_expand = alloca i32, align 4
  store %struct.patprog* %pprog, %struct.patprog** %pprog.addr, align 4
  store i32 %sorted, i32* %sorted.addr, align 4
  store i32 %flags1, i32* %flags1.addr, align 4
  store i32 %flags2, i32* %flags2.addr, align 4
  store void (%struct.hashnode*, i32)* %scanfunc, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  store i32 %scanflags, i32* %scanflags.addr, align 4
  store i32 %expand, i32* %expand.addr, align 4
  %0 = load i32, i32* @text_expand_tabs, align 4
  store i32 %0, i32* %save_expand, align 4
  %1 = load i32, i32* %expand.addr, align 4
  store i32 %1, i32* @text_expand_tabs, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %3 = load %struct.patprog*, %struct.patprog** %pprog.addr, align 4
  %4 = load i32, i32* %sorted.addr, align 4
  %5 = load i32, i32* %flags1.addr, align 4
  %6 = load i32, i32* %flags2.addr, align 4
  %7 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %8 = load i32, i32* %scanflags.addr, align 4
  %call = call i32 @scanmatchtable(%struct.hashtable* %2, %struct.patprog* %3, i32 %4, i32 %5, i32 %6, void (%struct.hashnode*, i32)* %7, i32 %8)
  store i32 %call, i32* %ret, align 4
  %9 = load i32, i32* %save_expand, align 4
  store i32 %9, i32* @text_expand_tabs, align 4
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define i32 @scanshfunc(i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags, i32 %expand) #0 {
entry:
  %sorted.addr = alloca i32, align 4
  %flags1.addr = alloca i32, align 4
  %flags2.addr = alloca i32, align 4
  %scanfunc.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %scanflags.addr = alloca i32, align 4
  %expand.addr = alloca i32, align 4
  store i32 %sorted, i32* %sorted.addr, align 4
  store i32 %flags1, i32* %flags1.addr, align 4
  store i32 %flags2, i32* %flags2.addr, align 4
  store void (%struct.hashnode*, i32)* %scanfunc, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  store i32 %scanflags, i32* %scanflags.addr, align 4
  store i32 %expand, i32* %expand.addr, align 4
  %0 = load i32, i32* %sorted.addr, align 4
  %1 = load i32, i32* %flags1.addr, align 4
  %2 = load i32, i32* %flags2.addr, align 4
  %3 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %scanfunc.addr, align 4
  %4 = load i32, i32* %scanflags.addr, align 4
  %5 = load i32, i32* %expand.addr, align 4
  %call = call i32 @scanmatchshfunc(%struct.patprog* null, i32 %0, i32 %1, i32 %2, void (%struct.hashnode*, i32)* %3, i32 %4, i32 %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define void @printshfuncexpand(%struct.hashnode* %hn, i32 %printflags, i32 %expand) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %expand.addr = alloca i32, align 4
  %save_expand = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  store i32 %expand, i32* %expand.addr, align 4
  %0 = load i32, i32* @text_expand_tabs, align 4
  store i32 %0, i32* %save_expand, align 4
  %1 = load i32, i32* %expand.addr, align 4
  store i32 %1, i32* @text_expand_tabs, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 15
  %3 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %4 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %5 = load i32, i32* %printflags.addr, align 4
  call void %3(%struct.hashnode* %4, i32 %5)
  %6 = load i32, i32* %save_expand, align 4
  store i32 %6, i32* @text_expand_tabs, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i8* @getshfuncfile(%struct.shfunc* %shf) #0 {
entry:
  %retval = alloca i8*, align 4
  %shf.addr = alloca %struct.shfunc*, align 4
  store %struct.shfunc* %shf, %struct.shfunc** %shf.addr, align 4
  %0 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %filename = getelementptr inbounds %struct.shfunc, %struct.shfunc* %2, i32 0, i32 1
  %3 = load i8*, i8** %filename, align 4
  %4 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %node1 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %call = call i8* @zhtricat(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* %5)
  store i8* %call, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %filename2 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %6, i32 0, i32 1
  %7 = load i8*, i8** %filename2, align 4
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %8 = load %struct.shfunc*, %struct.shfunc** %shf.addr, align 4
  %filename5 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %8, i32 0, i32 1
  %9 = load i8*, i8** %filename5, align 4
  %call6 = call i8* @dupstring(i8* %9)
  store i8* %call6, i8** %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  store i8* null, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.else7, %if.then4, %if.then
  %10 = load i8*, i8** %retval, align 4
  ret i8* %10
}

declare i8* @zhtricat(i8*, i8*, i8*) #1

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define void @createreswdtable() #0 {
entry:
  %rw = alloca %struct.reswd*, align 4
  %call = call %struct.hashtable* @newhashtable(i32 23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @reswdtab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* null, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* null, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printreswdnode, void (%struct.hashnode*, i32)** %printnode, align 4
  store %struct.reswd* getelementptr inbounds ([32 x %struct.reswd], [32 x %struct.reswd]* @reswds, i32 0, i32 0), %struct.reswd** %rw, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node = getelementptr inbounds %struct.reswd, %struct.reswd* %12, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %13 = load i8*, i8** %nam, align 4
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %addnode1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 8
  %15 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode1, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %17 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node2 = getelementptr inbounds %struct.reswd, %struct.reswd* %17, i32 0, i32 0
  %nam3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 1
  %18 = load i8*, i8** %nam3, align 4
  %19 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %20 = bitcast %struct.reswd* %19 to i8*
  call void %15(%struct.hashtable* %16, i8* %18, i8* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %incdec.ptr = getelementptr inbounds %struct.reswd, %struct.reswd* %21, i32 1
  store %struct.reswd* %incdec.ptr, %struct.reswd** %rw, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printreswdnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %rw = alloca %struct.reswd*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.reswd*
  store %struct.reswd* %1, %struct.reswd** %rw, align 4
  %2 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node = getelementptr inbounds %struct.reswd, %struct.reswd* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %printflags.addr, align 4
  %and1 = and i32 %5, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %6 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node4 = getelementptr inbounds %struct.reswd, %struct.reswd* %6, i32 0, i32 0
  %nam5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %7 = load i8*, i8** %nam5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i8* %7)
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i32, i32* %printflags.addr, align 4
  %and8 = and i32 %8, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end7
  %9 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node11 = getelementptr inbounds %struct.reswd, %struct.reswd* %9, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  %10 = load i8*, i8** %nam12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* %10)
  br label %return

if.end14:                                         ; preds = %if.end7
  %11 = load %struct.reswd*, %struct.reswd** %rw, align 4
  %node15 = getelementptr inbounds %struct.reswd, %struct.reswd* %11, i32 0, i32 0
  %nam16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node15, i32 0, i32 1
  %12 = load i8*, i8** %nam16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* %12)
  br label %return

return:                                           ; preds = %if.end14, %if.then10, %if.then3, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @createaliastable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* @freealiasnode, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printaliasnode, void (%struct.hashnode*, i32)** %printnode, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @freealiasnode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %al = alloca %struct.alias*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.alias*
  store %struct.alias* %1, %struct.alias** %al, align 4
  %2 = load %struct.alias*, %struct.alias** %al, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %3)
  %4 = load %struct.alias*, %struct.alias** %al, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %4, i32 0, i32 1
  %5 = load i8*, i8** %text, align 4
  call void @zsfree(i8* %5)
  %6 = load %struct.alias*, %struct.alias** %al, align 4
  %7 = bitcast %struct.alias* %6 to i8*
  call void @zfree(i8* %7, i32 20)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printaliasnode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %a = alloca %struct.alias*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.alias*
  store %struct.alias* %1, %struct.alias** %a, align 4
  %2 = load i32, i32* %printflags.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.alias*, %struct.alias** %a, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @zputs(i8* %4, %struct._IO_FILE* %5)
  %call1 = call i32 @putchar(i32 10)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %printflags.addr, align 4
  %and2 = and i32 %6, 2048
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end26

if.then4:                                         ; preds = %if.end
  %7 = load %struct.alias*, %struct.alias** %a, align 4
  %node5 = getelementptr inbounds %struct.alias, %struct.alias* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and6 = and i32 %8, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %9 = load %struct.alias*, %struct.alias** %a, align 4
  %node9 = getelementptr inbounds %struct.alias, %struct.alias* %9, i32 0, i32 0
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %10 = load i8*, i8** %nam10, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* %10)
  br label %if.end25

if.else:                                          ; preds = %if.then4
  %11 = load %struct.alias*, %struct.alias** %a, align 4
  %node12 = getelementptr inbounds %struct.alias, %struct.alias* %11, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %12 = load i32, i32* %flags13, align 4
  %and14 = and i32 %12, 2
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.else
  %13 = load %struct.alias*, %struct.alias** %a, align 4
  %node17 = getelementptr inbounds %struct.alias, %struct.alias* %13, i32 0, i32 0
  %nam18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 1
  %14 = load i8*, i8** %nam18, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %14)
  br label %if.end24

if.else20:                                        ; preds = %if.else
  %15 = load %struct.alias*, %struct.alias** %a, align 4
  %node21 = getelementptr inbounds %struct.alias, %struct.alias* %15, i32 0, i32 0
  %nam22 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node21, i32 0, i32 1
  %16 = load i8*, i8** %nam22, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i8* %16)
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then8
  br label %return

if.end26:                                         ; preds = %if.end
  %17 = load i32, i32* %printflags.addr, align 4
  %and27 = and i32 %17, 512
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  %18 = load %struct.alias*, %struct.alias** %a, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %18, i32 0, i32 1
  %19 = load i8*, i8** %text, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call30 = call i32 @zputs(i8* %19, %struct._IO_FILE* %20)
  %call31 = call i32 @putchar(i32 10)
  br label %return

if.end32:                                         ; preds = %if.end26
  %21 = load i32, i32* %printflags.addr, align 4
  %and33 = and i32 %21, 128
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.end32
  %22 = load %struct.alias*, %struct.alias** %a, align 4
  %node36 = getelementptr inbounds %struct.alias, %struct.alias* %22, i32 0, i32 0
  %nam37 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node36, i32 0, i32 1
  %23 = load i8*, i8** %nam37, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call38 = call i32 @mb_niceformat(i8* %23, %struct._IO_FILE* %24, i8** null, i32 0)
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %25 = load %struct.alias*, %struct.alias** %a, align 4
  %node40 = getelementptr inbounds %struct.alias, %struct.alias* %25, i32 0, i32 0
  %flags41 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node40, i32 0, i32 2
  %26 = load i32, i32* %flags41, align 4
  %and42 = and i32 %26, 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.then35
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end54

if.else46:                                        ; preds = %if.then35
  %27 = load %struct.alias*, %struct.alias** %a, align 4
  %node47 = getelementptr inbounds %struct.alias, %struct.alias* %27, i32 0, i32 0
  %flags48 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node47, i32 0, i32 2
  %28 = load i32, i32* %flags48, align 4
  %and49 = and i32 %28, 2
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.else46
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.else46
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then44
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0))
  %29 = load %struct.alias*, %struct.alias** %a, align 4
  %text56 = getelementptr inbounds %struct.alias, %struct.alias* %29, i32 0, i32 1
  %30 = load i8*, i8** %text56, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call57 = call i32 @mb_niceformat(i8* %30, %struct._IO_FILE* %31, i8** null, i32 0)
  %call58 = call i32 @putchar(i32 10)
  br label %return

if.end59:                                         ; preds = %if.end32
  %32 = load i32, i32* %printflags.addr, align 4
  %and60 = and i32 %32, 256
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end88

if.then62:                                        ; preds = %if.end59
  %33 = load %struct.alias*, %struct.alias** %a, align 4
  %node63 = getelementptr inbounds %struct.alias, %struct.alias* %33, i32 0, i32 0
  %nam64 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node63, i32 0, i32 1
  %34 = load i8*, i8** %nam64, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call65 = call i32 @mb_niceformat(i8* %34, %struct._IO_FILE* %35, i8** null, i32 0)
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0))
  %36 = load %struct.alias*, %struct.alias** %a, align 4
  %node67 = getelementptr inbounds %struct.alias, %struct.alias* %36, i32 0, i32 0
  %flags68 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node67, i32 0, i32 2
  %37 = load i32, i32* %flags68, align 4
  %and69 = and i32 %37, 4
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.then62
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end83

if.else73:                                        ; preds = %if.then62
  %38 = load %struct.alias*, %struct.alias** %a, align 4
  %node74 = getelementptr inbounds %struct.alias, %struct.alias* %38, i32 0, i32 0
  %flags75 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node74, i32 0, i32 2
  %39 = load i32, i32* %flags75, align 4
  %and76 = and i32 %39, 2
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.else73
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end82

if.else80:                                        ; preds = %if.else73
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then71
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0))
  %40 = load %struct.alias*, %struct.alias** %a, align 4
  %text85 = getelementptr inbounds %struct.alias, %struct.alias* %40, i32 0, i32 1
  %41 = load i8*, i8** %text85, align 4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call86 = call i32 @mb_niceformat(i8* %41, %struct._IO_FILE* %42, i8** null, i32 0)
  %call87 = call i32 @putchar(i32 10)
  br label %return

if.end88:                                         ; preds = %if.end59
  %43 = load i32, i32* %printflags.addr, align 4
  %and89 = and i32 %43, 4
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.end128

if.then91:                                        ; preds = %if.end88
  %44 = load %struct.alias*, %struct.alias** %a, align 4
  %node92 = getelementptr inbounds %struct.alias, %struct.alias* %44, i32 0, i32 0
  %nam93 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node92, i32 0, i32 1
  %45 = load i8*, i8** %nam93, align 4
  %call94 = call i8* @strchr(i8* %45, i32 61)
  %tobool95 = icmp ne i8* %call94, null
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.then91
  %46 = load %struct.alias*, %struct.alias** %a, align 4
  %node97 = getelementptr inbounds %struct.alias, %struct.alias* %46, i32 0, i32 0
  %nam98 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node97, i32 0, i32 1
  %47 = load i8*, i8** %nam98, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.80, i32 0, i32 0), i8* %47)
  br label %return

if.end99:                                         ; preds = %if.then91
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0))
  %48 = load %struct.alias*, %struct.alias** %a, align 4
  %node101 = getelementptr inbounds %struct.alias, %struct.alias* %48, i32 0, i32 0
  %flags102 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node101, i32 0, i32 2
  %49 = load i32, i32* %flags102, align 4
  %and103 = and i32 %49, 4
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.end99
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end115

if.else107:                                       ; preds = %if.end99
  %50 = load %struct.alias*, %struct.alias** %a, align 4
  %node108 = getelementptr inbounds %struct.alias, %struct.alias* %50, i32 0, i32 0
  %flags109 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node108, i32 0, i32 2
  %51 = load i32, i32* %flags109, align 4
  %and110 = and i32 %51, 2
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.else107
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.else107
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then105
  %52 = load %struct.alias*, %struct.alias** %a, align 4
  %node116 = getelementptr inbounds %struct.alias, %struct.alias* %52, i32 0, i32 0
  %nam117 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node116, i32 0, i32 1
  %53 = load i8*, i8** %nam117, align 4
  %arrayidx = getelementptr inbounds i8, i8* %53, i32 0
  %54 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %54 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then125, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end115
  %55 = load %struct.alias*, %struct.alias** %a, align 4
  %node119 = getelementptr inbounds %struct.alias, %struct.alias* %55, i32 0, i32 0
  %nam120 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node119, i32 0, i32 1
  %56 = load i8*, i8** %nam120, align 4
  %arrayidx121 = getelementptr inbounds i8, i8* %56, i32 0
  %57 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %57 to i32
  %cmp123 = icmp eq i32 %conv122, 43
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %lor.lhs.false, %if.end115
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %lor.lhs.false
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end88
  %58 = load %struct.alias*, %struct.alias** %a, align 4
  %node129 = getelementptr inbounds %struct.alias, %struct.alias* %58, i32 0, i32 0
  %nam130 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node129, i32 0, i32 1
  %59 = load i8*, i8** %nam130, align 4
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call131 = call i8* @quotedzputs(i8* %59, %struct._IO_FILE* %60)
  %call132 = call i32 @putchar(i32 61)
  %61 = load %struct.alias*, %struct.alias** %a, align 4
  %text133 = getelementptr inbounds %struct.alias, %struct.alias* %61, i32 0, i32 1
  %62 = load i8*, i8** %text133, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call134 = call i8* @quotedzputs(i8* %62, %struct._IO_FILE* %63)
  %call135 = call i32 @putchar(i32 10)
  br label %return

return:                                           ; preds = %if.end128, %if.then96, %if.end83, %if.end54, %if.then29, %if.end25, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define void @createaliastables() #0 {
entry:
  %call = call %struct.hashtable* @newhashtable(i32 23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @aliastab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  call void @createaliastable(%struct.hashtable* %0)
  %1 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 8
  %2 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %call1 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %call2 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %call3 = call %struct.alias* @createaliasnode(i8* %call2, i32 0)
  %4 = bitcast %struct.alias* %call3 to i8*
  call void %2(%struct.hashtable* %3, i8* %call1, i8* %4)
  %5 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %addnode4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 8
  %6 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode4, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %call5 = call i8* @ztrdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %call6 = call i8* @ztrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %call7 = call %struct.alias* @createaliasnode(i8* %call6, i32 0)
  %8 = bitcast %struct.alias* %call7 to i8*
  call void %6(%struct.hashtable* %7, i8* %call5, i8* %8)
  %call8 = call %struct.hashtable* @newhashtable(i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call8, %struct.hashtable** @sufaliastab, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  call void @createaliastable(%struct.hashtable* %9)
  ret void
}

; Function Attrs: noinline nounwind
define %struct.alias* @createaliasnode(i8* %txt, i32 %flags) #0 {
entry:
  %txt.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %al = alloca %struct.alias*, align 4
  store i8* %txt, i8** %txt.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i8* @zshcalloc(i32 20)
  %0 = bitcast i8* %call to %struct.alias*
  store %struct.alias* %0, %struct.alias** %al, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %2 = load %struct.alias*, %struct.alias** %al, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %2, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 %1, i32* %flags1, align 4
  %3 = load i8*, i8** %txt.addr, align 4
  %4 = load %struct.alias*, %struct.alias** %al, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %4, i32 0, i32 1
  store i8* %3, i8** %text, align 4
  %5 = load %struct.alias*, %struct.alias** %al, align 4
  %inuse = getelementptr inbounds %struct.alias, %struct.alias* %5, i32 0, i32 2
  store i32 0, i32* %inuse, align 4
  %6 = load %struct.alias*, %struct.alias** %al, align 4
  ret %struct.alias* %6
}

; Function Attrs: noinline nounwind
define void @createhisttable() #0 {
entry:
  %call = call %struct.hashtable* @newhashtable(i32 599, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** @histtab, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 4
  store i32 (i8*)* @histhasher, i32 (i8*)** %hash, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhisttable, void (%struct.hashtable*)** %emptytable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 7
  store i32 (i8*, i8*)* @histstrcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhistnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  store void (%struct.hashnode*)* @freehistnode, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %printnode, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i32 @histhasher(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %hashval = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 0, i32* %hashval, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end23, %while.end
  %4 = load i8*, i8** %str.addr, align 4
  %5 = load i8, i8* %4, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %while.body3, label %while.end24

while.body3:                                      ; preds = %while.cond1
  %6 = load i8*, i8** %str.addr, align 4
  %7 = load i8, i8* %6, align 1
  %idxprom4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %and7 = and i32 %conv6, 8
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body3
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %9 = load i8*, i8** %str.addr, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %str.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i8*, i8** %str.addr, align 4
  %11 = load i8, i8* %10, align 1
  %idxprom10 = zext i8 %11 to i32
  %arrayidx11 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom10
  %12 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %12 to i32
  %and13 = and i32 %conv12, 8
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i8*, i8** %str.addr, align 4
  %14 = load i8, i8* %13, align 1
  %tobool15 = icmp ne i8 %14, 0
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %do.end
  %15 = load i32, i32* %hashval, align 4
  %shl = shl i32 %15, 5
  %add = add i32 %shl, 32
  %16 = load i32, i32* %hashval, align 4
  %add17 = add i32 %16, %add
  store i32 %add17, i32* %hashval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %do.end
  br label %if.end23

if.else:                                          ; preds = %while.body3
  %17 = load i32, i32* %hashval, align 4
  %shl18 = shl i32 %17, 5
  %18 = load i8*, i8** %str.addr, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %str.addr, align 4
  %19 = load i8, i8* %18, align 1
  %conv20 = zext i8 %19 to i32
  %add21 = add i32 %shl18, %conv20
  %20 = load i32, i32* %hashval, align 4
  %add22 = add i32 %20, %add21
  store i32 %add22, i32* %hashval, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end
  br label %while.cond1

while.end24:                                      ; preds = %while.cond1
  %21 = load i32, i32* %hashval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind
define void @emptyhisttable(%struct.hashtable* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @emptyhashtable(%struct.hashtable* %0)
  %1 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %tobool = icmp ne %struct.histent* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @histremovedups()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define i32 @histstrcmp(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 4
  %str2.addr = alloca i8*, align 4
  store i8* %str1, i8** %str1.addr, align 4
  store i8* %str2, i8** %str2.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str1.addr, align 4
  %1 = load i8, i8* %0, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %str1.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str1.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body7, %while.end
  %4 = load i8*, i8** %str2.addr, align 4
  %5 = load i8, i8* %4, align 1
  %idxprom2 = zext i8 %5 to i32
  %arrayidx3 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom2
  %6 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %6 to i32
  %and5 = and i32 %conv4, 8
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %while.body7, label %while.end9

while.body7:                                      ; preds = %while.cond1
  %7 = load i8*, i8** %str2.addr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr8, i8** %str2.addr, align 4
  br label %while.cond1

while.end9:                                       ; preds = %while.cond1
  br label %while.cond10

while.cond10:                                     ; preds = %if.end49, %while.end9
  %8 = load i8*, i8** %str1.addr, align 4
  %9 = load i8, i8* %8, align 1
  %conv11 = sext i8 %9 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond10
  %10 = load i8*, i8** %str2.addr, align 4
  %11 = load i8, i8* %10, align 1
  %conv13 = sext i8 %11 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond10
  %12 = phi i1 [ false, %while.cond10 ], [ %tobool14, %land.rhs ]
  br i1 %12, label %while.body15, label %while.end50

while.body15:                                     ; preds = %land.end
  %13 = load i8*, i8** %str1.addr, align 4
  %14 = load i8, i8* %13, align 1
  %idxprom16 = zext i8 %14 to i32
  %arrayidx17 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom16
  %15 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %15 to i32
  %and19 = and i32 %conv18, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %while.body15
  %16 = load i8*, i8** %str2.addr, align 4
  %17 = load i8, i8* %16, align 1
  %idxprom21 = zext i8 %17 to i32
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom21
  %18 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %18 to i32
  %and24 = and i32 %conv23, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end, label %if.then26

if.then26:                                        ; preds = %if.then
  br label %while.end50

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %19 = load i8*, i8** %str1.addr, align 4
  %incdec.ptr27 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr27, i8** %str1.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i8*, i8** %str1.addr, align 4
  %21 = load i8, i8* %20, align 1
  %idxprom28 = zext i8 %21 to i32
  %arrayidx29 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom28
  %22 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %22 to i32
  %and31 = and i32 %conv30, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body33

do.body33:                                        ; preds = %do.cond35, %do.end
  %23 = load i8*, i8** %str2.addr, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr34, i8** %str2.addr, align 4
  br label %do.cond35

do.cond35:                                        ; preds = %do.body33
  %24 = load i8*, i8** %str2.addr, align 4
  %25 = load i8, i8* %24, align 1
  %idxprom36 = zext i8 %25 to i32
  %arrayidx37 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom36
  %26 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %26 to i32
  %and39 = and i32 %conv38, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %do.body33, label %do.end41

do.end41:                                         ; preds = %do.cond35
  br label %if.end49

if.else:                                          ; preds = %while.body15
  %27 = load i8*, i8** %str1.addr, align 4
  %28 = load i8, i8* %27, align 1
  %conv42 = sext i8 %28 to i32
  %29 = load i8*, i8** %str2.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv43 = sext i8 %30 to i32
  %cmp = icmp ne i32 %conv42, %conv43
  br i1 %cmp, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else
  br label %while.end50

if.end46:                                         ; preds = %if.else
  %31 = load i8*, i8** %str1.addr, align 4
  %incdec.ptr47 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr47, i8** %str1.addr, align 4
  %32 = load i8*, i8** %str2.addr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr48, i8** %str2.addr, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %do.end41
  br label %while.cond10

while.end50:                                      ; preds = %if.then45, %if.then26, %land.end
  %33 = load i8*, i8** %str1.addr, align 4
  %34 = load i8, i8* %33, align 1
  %conv51 = sext i8 %34 to i32
  %35 = load i8*, i8** %str2.addr, align 4
  %36 = load i8, i8* %35, align 1
  %conv52 = sext i8 %36 to i32
  %sub = sub nsw i32 %conv51, %conv52
  ret i32 %sub
}

; Function Attrs: noinline nounwind
define void @addhistnode(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %nodeptr.addr = alloca i8*, align 4
  %oldnode = alloca %struct.hashnode*, align 4
  %he = alloca %struct.histent*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8* %nodeptr, i8** %nodeptr.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %2 = load i8*, i8** %nodeptr.addr, align 4
  %call = call %struct.hashnode* @addhashnode2(%struct.hashtable* %0, i8* %1, i8* %2)
  store %struct.hashnode* %call, %struct.hashnode** %oldnode, align 4
  %3 = load i8*, i8** %nodeptr.addr, align 4
  %4 = bitcast i8* %3 to %struct.histent*
  store %struct.histent* %4, %struct.histent** %he, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %7 = load i8*, i8** %nodeptr.addr, align 4
  %8 = bitcast i8* %7 to %struct.hashnode*
  %cmp = icmp ne %struct.hashnode* %6, %8
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.histent*, %struct.histent** %he, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %9, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load %struct.histent*, %struct.histent** %he, align 4
  %node2 = getelementptr inbounds %struct.histent, %struct.histent* %11, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  %12 = load i32, i32* %flags3, align 4
  %and4 = and i32 %12, 16
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %13 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %14 = bitcast %struct.hashnode* %13 to %struct.histent*
  %15 = load %struct.histent*, %struct.histent** %he, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %15, i32 0, i32 1
  %16 = load %struct.histent*, %struct.histent** %up, align 4
  %cmp7 = icmp eq %struct.histent* %14, %16
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true6, %if.then
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %18 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %nam9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %18, i32 0, i32 1
  %19 = load i8*, i8** %nam9, align 4
  %20 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %21 = bitcast %struct.hashnode* %20 to i8*
  %call10 = call %struct.hashnode* @addhashnode2(%struct.hashtable* %17, i8* %19, i8* %21)
  %22 = load %struct.histent*, %struct.histent** %he, align 4
  %node11 = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  %23 = load i32, i32* %flags12, align 4
  %or = or i32 %23, 8
  store i32 %or, i32* %flags12, align 4
  %24 = load %struct.histent*, %struct.histent** %he, align 4
  %node13 = getelementptr inbounds %struct.histent, %struct.histent* %24, i32 0, i32 0
  %flags14 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 2
  %25 = load i32, i32* %flags14, align 4
  %and15 = and i32 %25, -2
  store i32 %and15, i32* %flags14, align 4
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true6, %lor.lhs.false
  %26 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  %flags16 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %26, i32 0, i32 2
  %27 = load i32, i32* %flags16, align 4
  %or17 = or i32 %27, 8
  store i32 %or17, i32* %flags16, align 4
  %28 = load i32, i32* @hist_ignore_all_dups, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  %29 = load %struct.hashnode*, %struct.hashnode** %oldnode, align 4
  call void @freehistnode(%struct.hashnode* %29)
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then8
  br label %if.end25

if.else21:                                        ; preds = %land.lhs.true, %entry
  %30 = load %struct.histent*, %struct.histent** %he, align 4
  %node22 = getelementptr inbounds %struct.histent, %struct.histent* %30, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %31 = load i32, i32* %flags23, align 4
  %and24 = and i32 %31, -2
  store i32 %and24, i32* %flags23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.end20
  ret void
}

; Function Attrs: noinline nounwind
define void @freehistnode(%struct.hashnode* %nodeptr) #0 {
entry:
  %nodeptr.addr = alloca %struct.hashnode*, align 4
  store %struct.hashnode* %nodeptr, %struct.hashnode** %nodeptr.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %nodeptr.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.histent*
  call void @freehistdata(%struct.histent* %1, i32 1)
  %2 = load %struct.hashnode*, %struct.hashnode** %nodeptr.addr, align 4
  %3 = bitcast %struct.hashnode* %2 to i8*
  call void @zfree(i8* %3, i32 44)
  ret void
}

declare void @histremovedups() #1

; Function Attrs: noinline nounwind
define void @freehistdata(%struct.histent* %he, i32 %unlink) #0 {
entry:
  %he.addr = alloca %struct.histent*, align 4
  %unlink.addr = alloca i32, align 4
  store %struct.histent* %he, %struct.histent** %he.addr, align 4
  store i32 %unlink, i32* %unlink.addr, align 4
  %0 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %tobool = icmp ne %struct.histent* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end27

if.end:                                           ; preds = %entry
  %1 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %cmp = icmp eq %struct.histent* %1, @curline
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %if.end27

if.end2:                                          ; preds = %if.end
  %2 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %node = getelementptr inbounds %struct.histent, %struct.histent* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 40
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end2
  %4 = load %struct.hashtable*, %struct.hashtable** @histtab, align 4
  %5 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %node5 = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* @removehashnode(%struct.hashtable* %4, i8* %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2
  %7 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %node7 = getelementptr inbounds %struct.histent, %struct.histent* %7, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  %8 = load i8*, i8** %nam8, align 4
  call void @zsfree(i8* %8)
  %9 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %nwords = getelementptr inbounds %struct.histent, %struct.histent* %9, i32 0, i32 7
  %10 = load i32, i32* %nwords, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %11 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %words = getelementptr inbounds %struct.histent, %struct.histent* %11, i32 0, i32 6
  %12 = load i16*, i16** %words, align 4
  %13 = bitcast i16* %12 to i8*
  %14 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %nwords11 = getelementptr inbounds %struct.histent, %struct.histent* %14, i32 0, i32 7
  %15 = load i32, i32* %nwords11, align 4
  %mul = mul nsw i32 %15, 2
  %mul12 = mul i32 %mul, 2
  call void @zfree(i8* %13, i32 %mul12)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6
  %16 = load i32, i32* %unlink.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then15, label %if.end27

if.then15:                                        ; preds = %if.end13
  %17 = load i32, i32* @histlinect, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* @histlinect, align 4
  %tobool16 = icmp ne i32 %dec, 0
  br i1 %tobool16, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  store %struct.histent* null, %struct.histent** @hist_ring, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then15
  %18 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %19 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %cmp18 = icmp eq %struct.histent* %18, %19
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  %20 = load %struct.histent*, %struct.histent** @hist_ring, align 4
  %up = getelementptr inbounds %struct.histent, %struct.histent* %20, i32 0, i32 1
  %21 = load %struct.histent*, %struct.histent** %up, align 4
  store %struct.histent* %21, %struct.histent** @hist_ring, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else
  %22 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %down = getelementptr inbounds %struct.histent, %struct.histent* %22, i32 0, i32 2
  %23 = load %struct.histent*, %struct.histent** %down, align 4
  %24 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %up21 = getelementptr inbounds %struct.histent, %struct.histent* %24, i32 0, i32 1
  %25 = load %struct.histent*, %struct.histent** %up21, align 4
  %down22 = getelementptr inbounds %struct.histent, %struct.histent* %25, i32 0, i32 2
  store %struct.histent* %23, %struct.histent** %down22, align 4
  %26 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %up23 = getelementptr inbounds %struct.histent, %struct.histent* %26, i32 0, i32 1
  %27 = load %struct.histent*, %struct.histent** %up23, align 4
  %28 = load %struct.histent*, %struct.histent** %he.addr, align 4
  %down24 = getelementptr inbounds %struct.histent, %struct.histent* %28, i32 0, i32 2
  %29 = load %struct.histent*, %struct.histent** %down24, align 4
  %up25 = getelementptr inbounds %struct.histent, %struct.histent* %29, i32 0, i32 1
  store %struct.histent* %27, %struct.histent** %up25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.then, %if.then1, %if.end26, %if.end13
  ret void
}

; Function Attrs: noinline nounwind
define void @dircache_set(i8** %name, i8* %value) #0 {
entry:
  %name.addr = alloca i8**, align 4
  %value.addr = alloca i8*, align 4
  %dcptr = alloca %struct.dircache_entry*, align 4
  %dcnew = alloca %struct.dircache_entry*, align 4
  %ind = alloca i32, align 4
  store i8** %name, i8*** %name.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load i8*, i8** %value.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %name.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %if.end77

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* @dircache_size, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load i8**, i8*** %name.addr, align 4
  %5 = load i8*, i8** %4, align 4
  call void @zsfree(i8* %5)
  %6 = load i8**, i8*** %name.addr, align 4
  store i8* null, i8** %6, align 4
  br label %if.end77

if.end5:                                          ; preds = %if.end
  %7 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  store %struct.dircache_entry* %7, %struct.dircache_entry** %dcptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %8 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %9 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %10 = load i32, i32* @dircache_size, align 4
  %add.ptr = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %9, i32 %10
  %cmp = icmp ult %struct.dircache_entry* %8, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8**, i8*** %name.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %13 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name6 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %13, i32 0, i32 0
  %14 = load i8*, i8** %name6, align 4
  %cmp7 = icmp eq i8* %12, %14
  br i1 %cmp7, label %if.then8, label %if.end29

if.then8:                                         ; preds = %for.body
  %15 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %refs = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %15, i32 0, i32 1
  %16 = load i32, i32* %refs, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %refs, align 4
  %17 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %refs9 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %17, i32 0, i32 1
  %18 = load i32, i32* %refs9, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.end28, label %if.then11

if.then11:                                        ; preds = %if.then8
  %19 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %20 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %sub.ptr.lhs.cast = ptrtoint %struct.dircache_entry* %19 to i32
  %sub.ptr.rhs.cast = ptrtoint %struct.dircache_entry* %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 8
  store i32 %sub.ptr.div, i32* %ind, align 4
  %21 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name12 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %21, i32 0, i32 0
  %22 = load i8*, i8** %name12, align 4
  call void @zsfree(i8* %22)
  %23 = load i32, i32* @dircache_size, align 4
  %dec13 = add nsw i32 %23, -1
  store i32 %dec13, i32* @dircache_size, align 4
  %24 = load i32, i32* @dircache_size, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then11
  %25 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %26 = bitcast %struct.dircache_entry* %25 to i8*
  call void @zfree(i8* %26, i32 8)
  store %struct.dircache_entry* null, %struct.dircache_entry** @dircache, align 4
  store %struct.dircache_entry* null, %struct.dircache_entry** @dircache_lastentry, align 4
  %27 = load i8**, i8*** %name.addr, align 4
  store i8* null, i8** %27, align 4
  br label %if.end77

if.end16:                                         ; preds = %if.then11
  %28 = load i32, i32* @dircache_size, align 4
  %mul = mul i32 %28, 8
  %call = call i8* @zalloc(i32 %mul)
  %29 = bitcast i8* %call to %struct.dircache_entry*
  store %struct.dircache_entry* %29, %struct.dircache_entry** %dcnew, align 4
  %30 = load i32, i32* %ind, align 4
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %31 = load %struct.dircache_entry*, %struct.dircache_entry** %dcnew, align 4
  %32 = bitcast %struct.dircache_entry* %31 to i8*
  %33 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %34 = bitcast %struct.dircache_entry* %33 to i8*
  %35 = load i32, i32* %ind, align 4
  %mul19 = mul i32 %35, 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %34, i32 %mul19, i32 4, i1 false)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %36 = load i32, i32* %ind, align 4
  %37 = load i32, i32* @dircache_size, align 4
  %cmp21 = icmp slt i32 %36, %37
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end20
  %38 = load %struct.dircache_entry*, %struct.dircache_entry** %dcnew, align 4
  %39 = load i32, i32* %ind, align 4
  %add.ptr23 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %38, i32 %39
  %40 = bitcast %struct.dircache_entry* %add.ptr23 to i8*
  %41 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %add.ptr24 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %41, i32 1
  %42 = bitcast %struct.dircache_entry* %add.ptr24 to i8*
  %43 = load i32, i32* @dircache_size, align 4
  %44 = load i32, i32* %ind, align 4
  %sub = sub nsw i32 %43, %44
  %mul25 = mul i32 %sub, 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %42, i32 %mul25, i32 4, i1 false)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20
  %45 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %46 = bitcast %struct.dircache_entry* %45 to i8*
  %47 = load i32, i32* @dircache_size, align 4
  %add = add nsw i32 %47, 1
  %mul27 = mul i32 %add, 8
  call void @zfree(i8* %46, i32 %mul27)
  %48 = load %struct.dircache_entry*, %struct.dircache_entry** %dcnew, align 4
  store %struct.dircache_entry* %48, %struct.dircache_entry** @dircache, align 4
  store %struct.dircache_entry* null, %struct.dircache_entry** @dircache_lastentry, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.then8
  %49 = load i8**, i8*** %name.addr, align 4
  store i8* null, i8** %49, align 4
  br label %if.end77

if.end29:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %50 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %50, i32 1
  store %struct.dircache_entry* %incdec.ptr, %struct.dircache_entry** %dcptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i8**, i8*** %name.addr, align 4
  %52 = load i8*, i8** %51, align 4
  call void @zsfree(i8* %52)
  %53 = load i8**, i8*** %name.addr, align 4
  store i8* null, i8** %53, align 4
  br label %if.end77

if.else:                                          ; preds = %entry
  %54 = load i8*, i8** %value.addr, align 4
  %55 = load i8, i8* %54, align 1
  %conv = sext i8 %55 to i32
  %cmp30 = icmp ne i32 %conv, 47
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.else
  %call33 = call i8* @zgetcwd()
  %call34 = call i8* @metafy(i8* %call33, i32 -1, i32 6)
  %56 = load i8*, i8** %value.addr, align 4
  %call35 = call i8* @zhtricat(i8* %call34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* %56)
  store i8* %call35, i8** %value.addr, align 4
  %57 = load i8*, i8** %value.addr, align 4
  %call36 = call i8* @xsymlink(i8* %57, i32 1)
  store i8* %call36, i8** %value.addr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.else
  %58 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache_lastentry, align 4
  %tobool38 = icmp ne %struct.dircache_entry* %58, null
  br i1 %tobool38, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.end37
  %59 = load i8*, i8** %value.addr, align 4
  %60 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache_lastentry, align 4
  %name39 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %60, i32 0, i32 0
  %61 = load i8*, i8** %name39, align 4
  %call40 = call i32 @strcmp(i8* %59, i8* %61)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else45, label %if.then42

if.then42:                                        ; preds = %land.lhs.true
  %62 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache_lastentry, align 4
  %name43 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %62, i32 0, i32 0
  %63 = load i8*, i8** %name43, align 4
  %64 = load i8**, i8*** %name.addr, align 4
  store i8* %63, i8** %64, align 4
  %65 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache_lastentry, align 4
  %refs44 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %65, i32 0, i32 1
  %66 = load i32, i32* %refs44, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %refs44, align 4
  br label %if.end77

if.else45:                                        ; preds = %land.lhs.true, %if.end37
  %67 = load i32, i32* @dircache_size, align 4
  %tobool46 = icmp ne i32 %67, 0
  br i1 %tobool46, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.else45
  store i32 1, i32* @dircache_size, align 4
  %call48 = call i8* @zalloc(i32 8)
  %68 = bitcast i8* %call48 to %struct.dircache_entry*
  store %struct.dircache_entry* %68, %struct.dircache_entry** @dircache, align 4
  store %struct.dircache_entry* %68, %struct.dircache_entry** %dcptr, align 4
  br label %if.end71

if.else49:                                        ; preds = %if.else45
  %69 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  store %struct.dircache_entry* %69, %struct.dircache_entry** %dcptr, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc63, %if.else49
  %70 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %71 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %72 = load i32, i32* @dircache_size, align 4
  %add.ptr51 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %71, i32 %72
  %cmp52 = icmp ult %struct.dircache_entry* %70, %add.ptr51
  br i1 %cmp52, label %for.body54, label %for.end65

for.body54:                                       ; preds = %for.cond50
  %73 = load i8*, i8** %value.addr, align 4
  %74 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name55 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %74, i32 0, i32 0
  %75 = load i8*, i8** %name55, align 4
  %call56 = call i32 @strcmp(i8* %73, i8* %75)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end62, label %if.then58

if.then58:                                        ; preds = %for.body54
  %76 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name59 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %76, i32 0, i32 0
  %77 = load i8*, i8** %name59, align 4
  %78 = load i8**, i8*** %name.addr, align 4
  store i8* %77, i8** %78, align 4
  %79 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %refs60 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %79, i32 0, i32 1
  %80 = load i32, i32* %refs60, align 4
  %inc61 = add nsw i32 %80, 1
  store i32 %inc61, i32* %refs60, align 4
  br label %if.end77

if.end62:                                         ; preds = %for.body54
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %81 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %incdec.ptr64 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %81, i32 1
  store %struct.dircache_entry* %incdec.ptr64, %struct.dircache_entry** %dcptr, align 4
  br label %for.cond50

for.end65:                                        ; preds = %for.cond50
  %82 = load i32, i32* @dircache_size, align 4
  %inc66 = add nsw i32 %82, 1
  store i32 %inc66, i32* @dircache_size, align 4
  %83 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %84 = bitcast %struct.dircache_entry* %83 to i8*
  %85 = load i32, i32* @dircache_size, align 4
  %mul67 = mul i32 8, %85
  %call68 = call i8* @zrealloc(i8* %84, i32 %mul67)
  %86 = bitcast i8* %call68 to %struct.dircache_entry*
  store %struct.dircache_entry* %86, %struct.dircache_entry** @dircache, align 4
  %87 = load %struct.dircache_entry*, %struct.dircache_entry** @dircache, align 4
  %88 = load i32, i32* @dircache_size, align 4
  %add.ptr69 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %87, i32 %88
  %add.ptr70 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %add.ptr69, i32 -1
  store %struct.dircache_entry* %add.ptr70, %struct.dircache_entry** %dcptr, align 4
  br label %if.end71

if.end71:                                         ; preds = %for.end65, %if.then47
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  %89 = load i8*, i8** %value.addr, align 4
  %call73 = call i8* @ztrdup(i8* %89)
  %90 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name74 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %90, i32 0, i32 0
  store i8* %call73, i8** %name74, align 4
  %91 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %name75 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %91, i32 0, i32 0
  %92 = load i8*, i8** %name75, align 4
  %93 = load i8**, i8*** %name.addr, align 4
  store i8* %92, i8** %93, align 4
  %94 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  %refs76 = getelementptr inbounds %struct.dircache_entry, %struct.dircache_entry* %94, i32 0, i32 1
  store i32 1, i32* %refs76, align 4
  %95 = load %struct.dircache_entry*, %struct.dircache_entry** %dcptr, align 4
  store %struct.dircache_entry* %95, %struct.dircache_entry** @dircache_lastentry, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then2, %if.then4, %if.then15, %if.end28, %if.then42, %if.then58, %if.end72, %for.end
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare i8* @metafy(i8*, i32, i32) #1

declare i8* @zgetcwd() #1

declare i8* @xsymlink(i8*, i32) #1

declare i8* @zrealloc(i8*, i32) #1

declare i32 @ztrcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i32 @printf(i8*, ...) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare i32 @putchar(i32) #1

declare i32 @mb_niceformat(i8*, %struct._IO_FILE*, i8**, i32) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @getsignum(i8*) #1

declare %struct.hashnode* @removetrap(i32) #1

declare void @unsettrap(i32) #1

declare i32 @settrap(i32, %struct.eprog*, i32) #1

declare void @freeeprog(%struct.eprog*) #1

declare void @zoutputtab(%struct._IO_FILE*) #1

declare i8* @getpermtext(%struct.eprog*, i32*, i32) #1

declare i8* @strchr(i8*, i32) #1

declare void @zwarn(i8*, ...) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
