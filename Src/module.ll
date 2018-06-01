; ModuleID = 'module.c'
source_filename = "module.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.hookdef = type { %struct.hookdef*, i8*, i32 (%struct.hookdef*, i8*)*, i32, %union.linkroot* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.0 = type { double }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_integer = type { i32 (%struct.param*)*, void (%struct.param*, i32)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%struct.mnumber = type { %union.anon.2, i32 }
%union.anon.2 = type { double }
%struct.__sigset_t = type { [32 x i32] }
%struct._IO_FILE = type opaque
%struct.linkedmod = type { i8*, {}*, i32 (%struct.module*, i8***)*, i32 (%struct.module*, i32**)*, {}*, {}*, {}* }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.feature_enables = type { i8*, %struct.patprog* }
%struct.paramdef = type { i8*, i32, i8*, i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.param* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.features = type { %struct.builtin*, i32, %struct.conddef*, i32, %struct.mathfunc*, i32, %struct.paramdef*, i32, i32 }

@linkedmodules = common global %union.linkroot* null, align 4
@builtintab = external global %struct.hashtable*, align 4
@.str = private unnamed_addr constant [36 x i8] c"name clash when adding builtin `%s'\00", align 1
@wrappers = common global %struct.funcwrap* null, align 4
@condtab = common global %struct.conddef* null, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"C:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"c:\00", align 1
@hooktab = common global %struct.hookdef* null, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"name clash when adding hook `%s'\00", align 1
@paramtab = external global %struct.hashtable*, align 4
@varscalar_gsu = external constant %struct.gsu_scalar, align 4
@varinteger_gsu = external constant %struct.gsu_integer, align 4
@vararray_gsu = external constant %struct.gsu_array, align 4
@mathfuncs = common global %struct.mathfunc* null, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"f:\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"autoloading module %s failed to define math function: %s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid module name `%s'\00", align 1
@queueing_enabled = external global i32, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@modulestab = common global %struct.hashtable* null, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"circular dependencies for module ;%s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"lP\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"-b, -c, -f, and -p must be combined with -a or -u\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"-b, -c, -f, -p and -u cannot be combined with -F\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"illegal flags combined with -A or -R\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"-d cannot be combined with -a\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"what do you want to unload?\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"-e cannot be combined with other options\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"-%c is only allowed with -F\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"use only one of -b, -c, or -p\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"module %s is in use by another module and cannot be unloaded\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"no such module %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"b:\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"p:\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%c:%s\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"bad format for autoloadable feature: `%s'\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"math function\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"bad autoloadable feature type: `%c'\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"%s: `/' is illegal in a %s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"%s: no such %s\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"module `%s' has no such feature: `%s'\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"failed to add %s `%s'\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"%s: %s is already defined\00", align 1
@module_path = common global i8** null, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"zmodload -d \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"zmodload -A \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"zmodload \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"-Fa \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"-F \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Can't add module parameter `%s': %s\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"local parameter exists\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"parameter already exists\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"failed to load module `%s': %s\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"empty module path\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"setup_\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"no setup function\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"boot_\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"no boot function\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"cleanup_\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"no cleanup function\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"finish_\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"no finish function\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"error getting enabled features for module `%s'\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"module `%s' has no such feature: `%s': autoload cancelled\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"module `%s' has no feature matching: `%s'\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"module `%s' does not support features\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"no module alias to remove\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"bad syntax for removing module alias: %s\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"module is not an alias: %s\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"no such module alias: %s\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"module alias would refer to itself: %s\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"zmodload -ac\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c" %s %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"infix \00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"post \00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"zmodload -af\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"zmodload -ap %s %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"zmodload -ab \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"-P is only allowed with a module name\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"-F requires a module name\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"zmodload -aF %s%c\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"module `%s' is not yet loaded\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"zmodload -F %s \00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"%s%s%c\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"-P can only be used with -l or -L\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"-m cannot be used with -a\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"builtin `%s' already deleted\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"name clash when adding condition `%s'\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"condition `%s' already deleted\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"name clash when adding math function `%s'\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"math function `%s' already deleted\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"error when adding parameter `%s'\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"parameter `%s' already deleted\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"features_\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"enables_\00", align 1

; Function Attrs: noinline nounwind
define %struct.hashtable* @newmoduletable(i32 %size, i8* %name) #0 {
entry:
  %size.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %ht = alloca %struct.hashtable*, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashtable* @newhashtable(i32 %0, i8* %1, void (%struct.hashtable*)* null)
  store %struct.hashtable* %call, %struct.hashtable** %ht, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %hash = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %emptytable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %cmpnodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %disablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %enablenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 14
  store void (%struct.hashnode*)* @freemodulenode, void (%struct.hashnode*)** %freenode, align 4
  %13 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %13, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printmodulenode, void (%struct.hashnode*, i32)** %printnode, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** %ht, align 4
  ret %struct.hashtable* %14
}

declare %struct.hashtable* @newhashtable(i32, i8*, void (%struct.hashtable*)*) #1

declare i32 @hasher(i8*) #1

declare void @emptyhashtable(%struct.hashtable*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @addhashnode(%struct.hashtable*, i8*, i8*) #1

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #1

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @freemodulenode(%struct.hashnode* %hn) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %m = alloca %struct.module*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.module*
  store %struct.module* %1, %struct.module** %m, align 4
  %2 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %4, i32 0, i32 1
  %alias = bitcast %union.anon* %u to i8**
  %5 = load i8*, i8** %alias, align 4
  call void @zsfree(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.module*, %struct.module** %m, align 4
  %node1 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %7 = load i8*, i8** %nam, align 4
  call void @zsfree(i8* %7)
  %8 = load %struct.module*, %struct.module** %m, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 2
  %9 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool2 = icmp ne %union.linkroot* %9, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %10 = load %struct.module*, %struct.module** %m, align 4
  %autoloads4 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 2
  %11 = load %union.linkroot*, %union.linkroot** %autoloads4, align 4
  call void @freelinklist(%union.linkroot* %11, void (i8*)* @freestr)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.module*, %struct.module** %m, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %12, i32 0, i32 3
  %13 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool6 = icmp ne %union.linkroot* %13, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.module*, %struct.module** %m, align 4
  %deps8 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 3
  %15 = load %union.linkroot*, %union.linkroot** %deps8, align 4
  call void @freelinklist(%union.linkroot* %15, void (i8*)* @freestr)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %16 = load %struct.module*, %struct.module** %m, align 4
  %17 = bitcast %struct.module* %16 to i8*
  call void @zfree(i8* %17, i32 28)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @printmodulenode(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %m = alloca %struct.module*, align 4
  %modname = alloca i8*, align 4
  %n = alloca %struct.linknode*, align 4
  %features = alloca i8**, align 4
  %enables = alloca i32*, align 4
  %an = alloca %struct.linknode*, align 4
  %f = alloca i8*, align 4
  %on = alloca i32, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.module*
  store %struct.module* %1, %struct.module** %m, align 4
  %2 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  store i8* %3, i8** %modname, align 4
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %5 = load %struct.module*, %struct.module** %m, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 3
  %6 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool1 = icmp ne %union.linkroot* %6, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %7, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0))
  %8 = load i8*, i8** %modname, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  %11 = load i8*, i8** %modname, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call10 = call i8* @quotedzputs(i8* %11, %struct._IO_FILE* %12)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %modname, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call11 = call i32 @mb_niceformat(i8* %13, %struct._IO_FILE* %14, i8** null, i32 0)
  %call12 = call i32 @putchar(i32 58)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end9
  %15 = load %struct.module*, %struct.module** %m, align 4
  %deps14 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 3
  %16 = load %union.linkroot*, %union.linkroot** %deps14, align 4
  %list = bitcast %union.linkroot* %16 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %17 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %17, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %18 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool15 = icmp ne %struct.linknode* %18, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call16 = call i32 @putchar(i32 32)
  %19 = load i32, i32* %flags.addr, align 4
  %and17 = and i32 %19, 1
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %for.body
  %20 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %20, i32 0, i32 2
  %21 = load i8*, i8** %dat, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call20 = call i8* @quotedzputs(i8* %21, %struct._IO_FILE* %22)
  br label %if.end24

if.else21:                                        ; preds = %for.body
  %23 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat22 = getelementptr inbounds %struct.linknode, %struct.linknode* %23, i32 0, i32 2
  %24 = load i8*, i8** %dat22, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call23 = call i32 @mb_niceformat(i8* %24, %struct._IO_FILE* %25, i8** null, i32 0)
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %26 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %26, i32 0, i32 0
  %27 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %27, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end178

if.else25:                                        ; preds = %entry
  %28 = load i32, i32* %flags.addr, align 4
  %and26 = and i32 %28, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.else51

if.then28:                                        ; preds = %if.else25
  %29 = load %struct.module*, %struct.module** %m, align 4
  %node29 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 0
  %flags30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 2
  %30 = load i32, i32* %flags30, align 4
  %and31 = and i32 %30, 64
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.then28
  %31 = load i32, i32* %flags.addr, align 4
  %and34 = and i32 %31, 4
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %lor.lhs.false, label %if.then38

lor.lhs.false:                                    ; preds = %if.then33
  %32 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 1
  %alias = bitcast %union.anon* %u to i8**
  %33 = load i8*, i8** %alias, align 4
  %call36 = call %struct.module* @find_module(i8* %33, i32 1, i8** null)
  store %struct.module* %call36, %struct.module** %m, align 4
  %tobool37 = icmp ne %struct.module* %call36, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false, %if.then33
  br label %return

if.end39:                                         ; preds = %lor.lhs.false
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then28
  %34 = load %struct.module*, %struct.module** %m, align 4
  %u41 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 1
  %handle = bitcast %union.anon* %u41 to i8**
  %35 = load i8*, i8** %handle, align 4
  %tobool42 = icmp ne i8* %35, null
  br i1 %tobool42, label %lor.lhs.false43, label %if.then48

lor.lhs.false43:                                  ; preds = %if.end40
  %36 = load %struct.module*, %struct.module** %m, align 4
  %node44 = getelementptr inbounds %struct.module, %struct.module* %36, i32 0, i32 0
  %flags45 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node44, i32 0, i32 2
  %37 = load i32, i32* %flags45, align 4
  %and46 = and i32 %37, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false43, %if.end40
  br label %return

if.end49:                                         ; preds = %lor.lhs.false43
  %38 = load i8*, i8** %modname, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call50 = call i32 @mb_niceformat(i8* %38, %struct._IO_FILE* %39, i8** null, i32 0)
  br label %if.end177

if.else51:                                        ; preds = %if.else25
  %40 = load %struct.module*, %struct.module** %m, align 4
  %node52 = getelementptr inbounds %struct.module, %struct.module* %40, i32 0, i32 0
  %flags53 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node52, i32 0, i32 2
  %41 = load i32, i32* %flags53, align 4
  %and54 = and i32 %41, 64
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.else80

if.then56:                                        ; preds = %if.else51
  %42 = load i32, i32* %flags.addr, align 4
  %and57 = and i32 %42, 1
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.else73

if.then59:                                        ; preds = %if.then56
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0))
  %43 = load i8*, i8** %modname, align 4
  %arrayidx61 = getelementptr inbounds i8, i8* %43, i32 0
  %44 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %44 to i32
  %cmp63 = icmp eq i32 %conv62, 45
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then59
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %45)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then59
  %46 = load i8*, i8** %modname, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call68 = call i8* @quotedzputs(i8* %46, %struct._IO_FILE* %47)
  %call69 = call i32 @putchar(i32 61)
  %48 = load %struct.module*, %struct.module** %m, align 4
  %u70 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 1
  %alias71 = bitcast %union.anon* %u70 to i8**
  %49 = load i8*, i8** %alias71, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call72 = call i8* @quotedzputs(i8* %49, %struct._IO_FILE* %50)
  br label %if.end79

if.else73:                                        ; preds = %if.then56
  %51 = load i8*, i8** %modname, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call74 = call i32 @mb_niceformat(i8* %51, %struct._IO_FILE* %52, i8** null, i32 0)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %53)
  %54 = load %struct.module*, %struct.module** %m, align 4
  %u76 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 1
  %alias77 = bitcast %union.anon* %u76 to i8**
  %55 = load i8*, i8** %alias77, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call78 = call i32 @mb_niceformat(i8* %55, %struct._IO_FILE* %56, i8** null, i32 0)
  br label %if.end79

if.end79:                                         ; preds = %if.else73, %if.end67
  br label %if.end176

if.else80:                                        ; preds = %if.else51
  %57 = load %struct.module*, %struct.module** %m, align 4
  %u81 = getelementptr inbounds %struct.module, %struct.module* %57, i32 0, i32 1
  %handle82 = bitcast %union.anon* %u81 to i8**
  %58 = load i8*, i8** %handle82, align 4
  %tobool83 = icmp ne i8* %58, null
  br i1 %tobool83, label %if.then87, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.else80
  %59 = load i32, i32* %flags.addr, align 4
  %and85 = and i32 %59, 64
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.else174

if.then87:                                        ; preds = %lor.lhs.false84, %if.else80
  %60 = load i32, i32* %flags.addr, align 4
  %and88 = and i32 %60, 1
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.else171

if.then90:                                        ; preds = %if.then87
  store i8** null, i8*** %features, align 4
  store i32* null, i32** %enables, align 4
  %61 = load i32, i32* %flags.addr, align 4
  %and91 = and i32 %61, 64
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else102

if.then93:                                        ; preds = %if.then90
  %62 = load %struct.module*, %struct.module** %m, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %62, i32 0, i32 2
  %63 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool94 = icmp ne %union.linkroot* %63, null
  br i1 %tobool94, label %lor.lhs.false95, label %if.then100

lor.lhs.false95:                                  ; preds = %if.then93
  %64 = load %struct.module*, %struct.module** %m, align 4
  %autoloads96 = getelementptr inbounds %struct.module, %struct.module* %64, i32 0, i32 2
  %65 = load %union.linkroot*, %union.linkroot** %autoloads96, align 4
  %list97 = bitcast %union.linkroot* %65 to %struct.linklist*
  %first98 = getelementptr inbounds %struct.linklist, %struct.linklist* %list97, i32 0, i32 0
  %66 = load %struct.linknode*, %struct.linknode** %first98, align 4
  %tobool99 = icmp ne %struct.linknode* %66, null
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %lor.lhs.false95, %if.then93
  br label %return

if.end101:                                        ; preds = %lor.lhs.false95
  br label %if.end116

if.else102:                                       ; preds = %if.then90
  %67 = load i32, i32* %flags.addr, align 4
  %and103 = and i32 %67, 16
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then105, label %if.end115

if.then105:                                       ; preds = %if.else102
  %68 = load %struct.module*, %struct.module** %m, align 4
  %call106 = call i32 @features_module(%struct.module* %68, i8*** %features)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then113, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.then105
  %69 = load %struct.module*, %struct.module** %m, align 4
  %call109 = call i32 @enables_module(%struct.module* %69, i32** %enables)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then113, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false108
  %70 = load i8**, i8*** %features, align 4
  %71 = load i8*, i8** %70, align 4
  %tobool112 = icmp ne i8* %71, null
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %lor.lhs.false111, %lor.lhs.false108, %if.then105
  br label %return

if.end114:                                        ; preds = %lor.lhs.false111
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.else102
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end101
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0))
  %72 = load i32, i32* %flags.addr, align 4
  %and118 = and i32 %72, 64
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.end116
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call121 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %73)
  br label %if.end127

if.else122:                                       ; preds = %if.end116
  %74 = load i8**, i8*** %features, align 4
  %tobool123 = icmp ne i8** %74, null
  br i1 %tobool123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.else122
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call125 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %75)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.else122
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then120
  %76 = load i8*, i8** %modname, align 4
  %arrayidx128 = getelementptr inbounds i8, i8* %76, i32 0
  %77 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %77 to i32
  %cmp130 = icmp eq i32 %conv129, 45
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end127
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call133 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %78)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end127
  %79 = load i8*, i8** %modname, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call135 = call i8* @quotedzputs(i8* %79, %struct._IO_FILE* %80)
  %81 = load i32, i32* %flags.addr, align 4
  %and136 = and i32 %81, 64
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then138, label %if.else151

if.then138:                                       ; preds = %if.end134
  %82 = load %struct.module*, %struct.module** %m, align 4
  %autoloads139 = getelementptr inbounds %struct.module, %struct.module* %82, i32 0, i32 2
  %83 = load %union.linkroot*, %union.linkroot** %autoloads139, align 4
  %list140 = bitcast %union.linkroot* %83 to %struct.linklist*
  %first141 = getelementptr inbounds %struct.linklist, %struct.linklist* %list140, i32 0, i32 0
  %84 = load %struct.linknode*, %struct.linknode** %first141, align 4
  store %struct.linknode* %84, %struct.linknode** %an, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc148, %if.then138
  %85 = load %struct.linknode*, %struct.linknode** %an, align 4
  %tobool143 = icmp ne %struct.linknode* %85, null
  br i1 %tobool143, label %for.body144, label %for.end150

for.body144:                                      ; preds = %for.cond142
  %call145 = call i32 @putchar(i32 32)
  %86 = load %struct.linknode*, %struct.linknode** %an, align 4
  %dat146 = getelementptr inbounds %struct.linknode, %struct.linknode* %86, i32 0, i32 2
  %87 = load i8*, i8** %dat146, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call147 = call i8* @quotedzputs(i8* %87, %struct._IO_FILE* %88)
  br label %for.inc148

for.inc148:                                       ; preds = %for.body144
  %89 = load %struct.linknode*, %struct.linknode** %an, align 4
  %next149 = getelementptr inbounds %struct.linknode, %struct.linknode* %89, i32 0, i32 0
  %90 = load %struct.linknode*, %struct.linknode** %next149, align 4
  store %struct.linknode* %90, %struct.linknode** %an, align 4
  br label %for.cond142

for.end150:                                       ; preds = %for.cond142
  br label %if.end170

if.else151:                                       ; preds = %if.end134
  %91 = load i8**, i8*** %features, align 4
  %tobool152 = icmp ne i8** %91, null
  br i1 %tobool152, label %if.then153, label %if.end169

if.then153:                                       ; preds = %if.else151
  br label %while.cond

while.cond:                                       ; preds = %if.end167, %if.then163, %if.then153
  %92 = load i8**, i8*** %features, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %incdec.ptr, i8*** %features, align 4
  %93 = load i8*, i8** %92, align 4
  store i8* %93, i8** %f, align 4
  %tobool154 = icmp ne i8* %93, null
  br i1 %tobool154, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i32*, i32** %enables, align 4
  %incdec.ptr155 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr155, i32** %enables, align 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %on, align 4
  %96 = load i32, i32* %flags.addr, align 4
  %and156 = and i32 %96, 32
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then158, label %if.else161

if.then158:                                       ; preds = %while.body
  %97 = load i32, i32* %on, align 4
  %tobool159 = icmp ne i32 %97, 0
  %cond = select i1 %tobool159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %cond)
  br label %if.end167

if.else161:                                       ; preds = %while.body
  %98 = load i32, i32* %on, align 4
  %tobool162 = icmp ne i32 %98, 0
  br i1 %tobool162, label %if.else164, label %if.then163

if.then163:                                       ; preds = %if.else161
  br label %while.cond

if.else164:                                       ; preds = %if.else161
  %call165 = call i32 @putchar(i32 32)
  br label %if.end166

if.end166:                                        ; preds = %if.else164
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.then158
  %99 = load i8*, i8** %f, align 4
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call168 = call i8* @quotedzputs(i8* %99, %struct._IO_FILE* %100)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end169

if.end169:                                        ; preds = %while.end, %if.else151
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %for.end150
  br label %if.end173

if.else171:                                       ; preds = %if.then87
  %101 = load i8*, i8** %modname, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call172 = call i32 @mb_niceformat(i8* %101, %struct._IO_FILE* %102, i8** null, i32 0)
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.end170
  br label %if.end175

if.else174:                                       ; preds = %lor.lhs.false84
  br label %return

if.end175:                                        ; preds = %if.end173
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end79
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end49
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %for.end
  %call179 = call i32 @putchar(i32 10)
  br label %return

return:                                           ; preds = %if.end178, %if.else174, %if.then113, %if.then100, %if.then48, %if.then38, %if.then2
  ret void
}

; Function Attrs: noinline nounwind
define i32 @setup_zshQsmain(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @features_zshQsmain(%struct.module* %m, i8*** %features) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %features.addr = alloca i8***, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i8*** %features, i8**** %features.addr, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind
define i32 @enables_zshQsmain(%struct.module* %m, i32** %enables) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %enables.addr = alloca i32**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind
define i32 @boot_zshQsmain(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @cleanup_zshQsmain(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @finish_zshQsmain(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define void @register_module(i8* %n, i32 (%struct.module*)* %setup, i32 (%struct.module*, i8***)* %features, i32 (%struct.module*, i32**)* %enables, i32 (%struct.module*)* %boot, i32 (%struct.module*)* %cleanup, i32 (%struct.module*)* %finish) #0 {
entry:
  %n.addr = alloca i8*, align 4
  %setup.addr = alloca i32 (%struct.module*)*, align 4
  %features.addr = alloca i32 (%struct.module*, i8***)*, align 4
  %enables.addr = alloca i32 (%struct.module*, i32**)*, align 4
  %boot.addr = alloca i32 (%struct.module*)*, align 4
  %cleanup.addr = alloca i32 (%struct.module*)*, align 4
  %finish.addr = alloca i32 (%struct.module*)*, align 4
  %m = alloca %struct.linkedmod*, align 4
  store i8* %n, i8** %n.addr, align 4
  store i32 (%struct.module*)* %setup, i32 (%struct.module*)** %setup.addr, align 4
  store i32 (%struct.module*, i8***)* %features, i32 (%struct.module*, i8***)** %features.addr, align 4
  store i32 (%struct.module*, i32**)* %enables, i32 (%struct.module*, i32**)** %enables.addr, align 4
  store i32 (%struct.module*)* %boot, i32 (%struct.module*)** %boot.addr, align 4
  store i32 (%struct.module*)* %cleanup, i32 (%struct.module*)** %cleanup.addr, align 4
  store i32 (%struct.module*)* %finish, i32 (%struct.module*)** %finish.addr, align 4
  %call = call i8* @zalloc(i32 28)
  %0 = bitcast i8* %call to %struct.linkedmod*
  store %struct.linkedmod* %0, %struct.linkedmod** %m, align 4
  %1 = load i8*, i8** %n.addr, align 4
  %call1 = call i8* @ztrdup(i8* %1)
  %2 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %name = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %2, i32 0, i32 0
  store i8* %call1, i8** %name, align 4
  %3 = load i32 (%struct.module*)*, i32 (%struct.module*)** %setup.addr, align 4
  %4 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %setup2 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %4, i32 0, i32 1
  %setup3 = bitcast {}** %setup2 to i32 (%struct.module*)**
  store i32 (%struct.module*)* %3, i32 (%struct.module*)** %setup3, align 4
  %5 = load i32 (%struct.module*, i8***)*, i32 (%struct.module*, i8***)** %features.addr, align 4
  %6 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %features4 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %6, i32 0, i32 2
  store i32 (%struct.module*, i8***)* %5, i32 (%struct.module*, i8***)** %features4, align 4
  %7 = load i32 (%struct.module*, i32**)*, i32 (%struct.module*, i32**)** %enables.addr, align 4
  %8 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %enables5 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %8, i32 0, i32 3
  store i32 (%struct.module*, i32**)* %7, i32 (%struct.module*, i32**)** %enables5, align 4
  %9 = load i32 (%struct.module*)*, i32 (%struct.module*)** %boot.addr, align 4
  %10 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %boot6 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %10, i32 0, i32 4
  %boot7 = bitcast {}** %boot6 to i32 (%struct.module*)**
  store i32 (%struct.module*)* %9, i32 (%struct.module*)** %boot7, align 4
  %11 = load i32 (%struct.module*)*, i32 (%struct.module*)** %cleanup.addr, align 4
  %12 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %cleanup8 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %12, i32 0, i32 5
  %cleanup9 = bitcast {}** %cleanup8 to i32 (%struct.module*)**
  store i32 (%struct.module*)* %11, i32 (%struct.module*)** %cleanup9, align 4
  %13 = load i32 (%struct.module*)*, i32 (%struct.module*)** %finish.addr, align 4
  %14 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %finish10 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %14, i32 0, i32 6
  %finish11 = bitcast {}** %finish10 to i32 (%struct.module*)**
  store i32 (%struct.module*)* %13, i32 (%struct.module*)** %finish11, align 4
  %15 = load %union.linkroot*, %union.linkroot** @linkedmodules, align 4
  %16 = load %union.linkroot*, %union.linkroot** @linkedmodules, align 4
  %list = bitcast %union.linkroot* %16 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %17 = load %struct.linknode*, %struct.linknode** %last, align 4
  %18 = load %struct.linkedmod*, %struct.linkedmod** %m, align 4
  %19 = bitcast %struct.linkedmod* %18 to i8*
  %call12 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %15, %struct.linknode* %17, i8* %19)
  ret void
}

declare i8* @zalloc(i32) #1

declare i8* @ztrdup(i8*) #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

; Function Attrs: noinline nounwind
define %struct.linkedmod* @module_linked(i8* %name) #0 {
entry:
  %retval = alloca %struct.linkedmod*, align 4
  %name.addr = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @linkedmodules, align 4
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
  %5 = bitcast i8* %4 to %struct.linkedmod*
  %name1 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call i32 @strcmp(i8* %6, i8* %7)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat3 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  %9 = load i8*, i8** %dat3, align 4
  %10 = bitcast i8* %9 to %struct.linkedmod*
  store %struct.linkedmod* %10, %struct.linkedmod** %retval, align 4
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
  store %struct.linkedmod* null, %struct.linkedmod** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct.linkedmod*, %struct.linkedmod** %retval, align 4
  ret %struct.linkedmod* %13
}

; Function Attrs: noinline nounwind
define i32 @deletebuiltin(i8* %nam) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %bn = alloca %struct.builtin*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %3 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.builtin*
  store %struct.builtin* %4, %struct.builtin** %bn, align 4
  %5 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %tobool = icmp ne %struct.builtin* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %8, i32 0, i32 0
  call void %7(%struct.hashnode* %node)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define i32 @addbuiltins(i8* %nam, %struct.builtin* %binl, i32 %size) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %binl.addr = alloca %struct.builtin*, align 4
  %size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca %struct.builtin*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.builtin* %binl, %struct.builtin** %binl.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.builtin*, %struct.builtin** %binl.addr, align 4
  %3 = load i32, i32* %n, align 4
  %arrayidx = getelementptr inbounds %struct.builtin, %struct.builtin* %2, i32 %3
  store %struct.builtin* %arrayidx, %struct.builtin** %b, align 4
  %4 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load %struct.builtin*, %struct.builtin** %b, align 4
  %call = call i32 @addbuiltin(%struct.builtin* %6)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load i8*, i8** %nam.addr, align 4
  %8 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node3 = getelementptr inbounds %struct.builtin, %struct.builtin* %8, i32 0, i32 0
  %nam4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 1
  %9 = load i8*, i8** %nam4, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* %9)
  store i32 1, i32* %ret, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %10 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node5 = getelementptr inbounds %struct.builtin, %struct.builtin* %10, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %11 = load i32, i32* %flags6, align 4
  %or = or i32 %11, 8
  store i32 %or, i32* %flags6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then
  %12 = load i32, i32* %n, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %ret, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal i32 @addbuiltin(%struct.builtin* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca %struct.builtin*, align 4
  %bn = alloca %struct.builtin*, align 4
  store %struct.builtin* %b, %struct.builtin** %b.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 10
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %3 = load %struct.builtin*, %struct.builtin** %b.addr, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  %5 = bitcast %struct.hashnode* %call to %struct.builtin*
  store %struct.builtin* %5, %struct.builtin** %bn, align 4
  %6 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %tobool = icmp ne %struct.builtin* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node1 = getelementptr inbounds %struct.builtin, %struct.builtin* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 8
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %tobool3 = icmp ne %struct.builtin* %9, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %10 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 14
  %11 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 11
  %13 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %15 = load %struct.builtin*, %struct.builtin** %b.addr, align 4
  %node5 = getelementptr inbounds %struct.builtin, %struct.builtin* %15, i32 0, i32 0
  %nam6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  %16 = load i8*, i8** %nam6, align 4
  %call7 = call %struct.hashnode* %13(%struct.hashtable* %14, i8* %16)
  call void %11(%struct.hashnode* %call7)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %17 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 8
  %18 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %19 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %20 = load %struct.builtin*, %struct.builtin** %b.addr, align 4
  %node9 = getelementptr inbounds %struct.builtin, %struct.builtin* %20, i32 0, i32 0
  %nam10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %21 = load i8*, i8** %nam10, align 4
  %22 = load %struct.builtin*, %struct.builtin** %b.addr, align 4
  %23 = bitcast %struct.builtin* %22 to i8*
  call void %18(%struct.hashtable* %19, i8* %21, i8* %23)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare void @zwarnnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define i32 @addwrapper(%struct.module* %m, %struct.funcwrap* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %w.addr = alloca %struct.funcwrap*, align 4
  %p = alloca %struct.funcwrap*, align 4
  %q = alloca %struct.funcwrap*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.funcwrap* %w, %struct.funcwrap** %w.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %flags1 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %2, i32 0, i32 1
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load %struct.funcwrap*, %struct.funcwrap** @wrappers, align 4
  store %struct.funcwrap* %4, %struct.funcwrap** %p, align 4
  store %struct.funcwrap* null, %struct.funcwrap** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %tobool6 = icmp ne %struct.funcwrap* %5, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  store %struct.funcwrap* %6, %struct.funcwrap** %q, align 4
  %7 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %next = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %7, i32 0, i32 0
  %8 = load %struct.funcwrap*, %struct.funcwrap** %next, align 4
  store %struct.funcwrap* %8, %struct.funcwrap** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.funcwrap*, %struct.funcwrap** %q, align 4
  %tobool7 = icmp ne %struct.funcwrap* %9, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  %10 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %11 = load %struct.funcwrap*, %struct.funcwrap** %q, align 4
  %next9 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %11, i32 0, i32 0
  store %struct.funcwrap* %10, %struct.funcwrap** %next9, align 4
  br label %if.end10

if.else:                                          ; preds = %for.end
  %12 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  store %struct.funcwrap* %12, %struct.funcwrap** @wrappers, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %13 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %next11 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %13, i32 0, i32 0
  store %struct.funcwrap* null, %struct.funcwrap** %next11, align 4
  %14 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %flags12 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %14, i32 0, i32 1
  %15 = load i32, i32* %flags12, align 4
  %or = or i32 %15, 1
  store i32 %or, i32* %flags12, align 4
  %16 = load %struct.module*, %struct.module** %m.addr, align 4
  %17 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %module = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %17, i32 0, i32 3
  store %struct.module* %16, %struct.module** %module, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define i32 @deletewrapper(%struct.module* %m, %struct.funcwrap* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %w.addr = alloca %struct.funcwrap*, align 4
  %p = alloca %struct.funcwrap*, align 4
  %q = alloca %struct.funcwrap*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.funcwrap* %w, %struct.funcwrap** %w.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %flags1 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %2, i32 0, i32 1
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end17

if.then4:                                         ; preds = %if.end
  %4 = load %struct.funcwrap*, %struct.funcwrap** @wrappers, align 4
  store %struct.funcwrap* %4, %struct.funcwrap** %p, align 4
  store %struct.funcwrap* null, %struct.funcwrap** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %tobool5 = icmp ne %struct.funcwrap* %5, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %7 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %cmp = icmp ne %struct.funcwrap* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  store %struct.funcwrap* %9, %struct.funcwrap** %q, align 4
  %10 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %next = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %10, i32 0, i32 0
  %11 = load %struct.funcwrap*, %struct.funcwrap** %next, align 4
  store %struct.funcwrap* %11, %struct.funcwrap** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %tobool6 = icmp ne %struct.funcwrap* %12, null
  br i1 %tobool6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %for.end
  %13 = load %struct.funcwrap*, %struct.funcwrap** %q, align 4
  %tobool8 = icmp ne %struct.funcwrap* %13, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %14 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %next10 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %14, i32 0, i32 0
  %15 = load %struct.funcwrap*, %struct.funcwrap** %next10, align 4
  %16 = load %struct.funcwrap*, %struct.funcwrap** %q, align 4
  %next11 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %16, i32 0, i32 0
  store %struct.funcwrap* %15, %struct.funcwrap** %next11, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then7
  %17 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %next12 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %17, i32 0, i32 0
  %18 = load %struct.funcwrap*, %struct.funcwrap** %next12, align 4
  store %struct.funcwrap* %18, %struct.funcwrap** @wrappers, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %19 = load %struct.funcwrap*, %struct.funcwrap** %p, align 4
  %flags14 = getelementptr inbounds %struct.funcwrap, %struct.funcwrap* %19, i32 0, i32 1
  %20 = load i32, i32* %flags14, align 4
  %and15 = and i32 %20, -2
  store i32 %and15, i32* %flags14, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.end13, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind
define %struct.conddef* @getconddef(i32 %inf, i8* %name, i32 %autol) #0 {
entry:
  %retval = alloca %struct.conddef*, align 4
  %inf.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %autol.addr = alloca i32, align 4
  %p = alloca %struct.conddef*, align 4
  %f = alloca i32, align 4
  %lookup = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i32 %inf, i32* %inf.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %autol, i32* %autol.addr, align 4
  store i32 1, i32* %f, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %lookup, align 4
  %1 = load i8*, i8** %lookup, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.conddef* null, %struct.conddef** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %lookup, align 4
  store i8* %2, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %s, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %s, align 4
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, -101
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %7 = load i8*, i8** %s, align 4
  store i8 45, i8* %7, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %9 = load %struct.conddef*, %struct.conddef** @condtab, align 4
  store %struct.conddef* %9, %struct.conddef** %p, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %do.body
  %10 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool8 = icmp ne %struct.conddef* %10, null
  br i1 %tobool8, label %for.body9, label %for.end25

for.body9:                                        ; preds = %for.cond7
  %11 = load i32, i32* %inf.addr, align 4
  %tobool10 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot11 to i32
  %12 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags = getelementptr inbounds %struct.conddef, %struct.conddef* %12, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 1
  %tobool12 = icmp ne i32 %and, 0
  %lnot13 = xor i1 %tobool12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %cmp17 = icmp eq i32 %lnot.ext, %lnot.ext16
  br i1 %cmp17, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %for.body9
  %14 = load i8*, i8** %lookup, align 4
  %15 = load %struct.conddef*, %struct.conddef** %p, align 4
  %name19 = getelementptr inbounds %struct.conddef, %struct.conddef* %15, i32 0, i32 1
  %16 = load i8*, i8** %name19, align 4
  %call20 = call i32 @strcmp(i8* %14, i8* %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  br label %for.end25

if.end23:                                         ; preds = %land.lhs.true, %for.body9
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %17 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next = getelementptr inbounds %struct.conddef, %struct.conddef* %17, i32 0, i32 0
  %18 = load %struct.conddef*, %struct.conddef** %next, align 4
  store %struct.conddef* %18, %struct.conddef** %p, align 4
  br label %for.cond7

for.end25:                                        ; preds = %if.then22, %for.cond7
  %19 = load i32, i32* %autol.addr, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.else45

land.lhs.true27:                                  ; preds = %for.end25
  %20 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool28 = icmp ne %struct.conddef* %20, null
  br i1 %tobool28, label %land.lhs.true29, label %if.else45

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %21 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module = getelementptr inbounds %struct.conddef, %struct.conddef* %21, i32 0, i32 7
  %22 = load i8*, i8** %module, align 4
  %tobool30 = icmp ne i8* %22, null
  br i1 %tobool30, label %if.then31, label %if.else45

if.then31:                                        ; preds = %land.lhs.true29
  %23 = load i32, i32* %f, align 4
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then31
  %24 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module34 = getelementptr inbounds %struct.conddef, %struct.conddef* %24, i32 0, i32 7
  %25 = load i8*, i8** %module34, align 4
  %26 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags35 = getelementptr inbounds %struct.conddef, %struct.conddef* %26, i32 0, i32 2
  %27 = load i32, i32* %flags35, align 4
  %and36 = and i32 %27, 1
  %tobool37 = icmp ne i32 %and36, 0
  %cond = select i1 %tobool37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)
  %28 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags38 = getelementptr inbounds %struct.conddef, %struct.conddef* %28, i32 0, i32 2
  %29 = load i32, i32* %flags38, align 4
  %and39 = and i32 %29, 4
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then33
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  %30 = load i8*, i8** %lookup, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i8* [ null, %cond.true ], [ %30, %cond.false ]
  %call42 = call i32 @ensurefeature(i8* %25, i8* %cond, i8* %cond41)
  store i32 0, i32* %f, align 4
  store %struct.conddef* null, %struct.conddef** %p, align 4
  br label %if.end44

if.else:                                          ; preds = %if.then31
  %31 = load %struct.conddef*, %struct.conddef** %p, align 4
  %call43 = call i32 @deleteconddef(%struct.conddef* %31)
  store %struct.conddef* null, %struct.conddef** %retval, align 4
  br label %return

if.end44:                                         ; preds = %cond.end
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true29, %land.lhs.true27, %for.end25
  br label %do.end

if.end46:                                         ; preds = %if.end44
  br label %do.cond

do.cond:                                          ; preds = %if.end46
  %32 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool47 = icmp ne %struct.conddef* %32, null
  %lnot48 = xor i1 %tobool47, true
  br i1 %lnot48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else45
  %33 = load %struct.conddef*, %struct.conddef** %p, align 4
  store %struct.conddef* %33, %struct.conddef** %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else, %if.then
  %34 = load %struct.conddef*, %struct.conddef** %retval, align 4
  ret %struct.conddef* %34
}

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define i32 @ensurefeature(i8* %modname, i8* %prefix, i8* %feature) #0 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca i8*, align 4
  %prefix.addr = alloca i8*, align 4
  %feature.addr = alloca i8*, align 4
  %f = alloca i8*, align 4
  %features = alloca [2 x %struct.feature_enables], align 4
  store i8* %modname, i8** %modname.addr, align 4
  store i8* %prefix, i8** %prefix.addr, align 4
  store i8* %feature, i8** %feature.addr, align 4
  %0 = load i8*, i8** %feature.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %modname.addr, align 4
  %call = call i32 @require_module(i8* %1, %struct.feature_enables* null, i32 0)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %prefix.addr, align 4
  %3 = load i8*, i8** %feature.addr, align 4
  %call1 = call i8* @dyncat(i8* %2, i8* %3)
  store i8* %call1, i8** %f, align 4
  %4 = load i8*, i8** %f, align 4
  %arrayidx = getelementptr inbounds [2 x %struct.feature_enables], [2 x %struct.feature_enables]* %features, i32 0, i32 0
  %str = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx, i32 0, i32 0
  store i8* %4, i8** %str, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.feature_enables], [2 x %struct.feature_enables]* %features, i32 0, i32 0
  %pat = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx2, i32 0, i32 1
  store %struct.patprog* null, %struct.patprog** %pat, align 4
  %arrayidx3 = getelementptr inbounds [2 x %struct.feature_enables], [2 x %struct.feature_enables]* %features, i32 0, i32 1
  %str4 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx3, i32 0, i32 0
  store i8* null, i8** %str4, align 4
  %arrayidx5 = getelementptr inbounds [2 x %struct.feature_enables], [2 x %struct.feature_enables]* %features, i32 0, i32 1
  %pat6 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx5, i32 0, i32 1
  store %struct.patprog* null, %struct.patprog** %pat6, align 4
  %5 = load i8*, i8** %modname.addr, align 4
  %arraydecay = getelementptr inbounds [2 x %struct.feature_enables], [2 x %struct.feature_enables]* %features, i32 0, i32 0
  %call7 = call i32 @require_module(i8* %5, %struct.feature_enables* %arraydecay, i32 0)
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define i32 @deleteconddef(%struct.conddef* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.conddef*, align 4
  %p = alloca %struct.conddef*, align 4
  %q = alloca %struct.conddef*, align 4
  store %struct.conddef* %c, %struct.conddef** %c.addr, align 4
  %0 = load %struct.conddef*, %struct.conddef** @condtab, align 4
  store %struct.conddef* %0, %struct.conddef** %p, align 4
  store %struct.conddef* null, %struct.conddef** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool = icmp ne %struct.conddef* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.conddef*, %struct.conddef** %p, align 4
  %3 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %cmp = icmp ne %struct.conddef* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.conddef*, %struct.conddef** %p, align 4
  store %struct.conddef* %5, %struct.conddef** %q, align 4
  %6 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next = getelementptr inbounds %struct.conddef, %struct.conddef* %6, i32 0, i32 0
  %7 = load %struct.conddef*, %struct.conddef** %next, align 4
  store %struct.conddef* %7, %struct.conddef** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool1 = icmp ne %struct.conddef* %8, null
  br i1 %tobool1, label %if.then, label %if.end11

if.then:                                          ; preds = %for.end
  %9 = load %struct.conddef*, %struct.conddef** %q, align 4
  %tobool2 = icmp ne %struct.conddef* %9, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %10 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next4 = getelementptr inbounds %struct.conddef, %struct.conddef* %10, i32 0, i32 0
  %11 = load %struct.conddef*, %struct.conddef** %next4, align 4
  %12 = load %struct.conddef*, %struct.conddef** %q, align 4
  %next5 = getelementptr inbounds %struct.conddef, %struct.conddef* %12, i32 0, i32 0
  store %struct.conddef* %11, %struct.conddef** %next5, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next6 = getelementptr inbounds %struct.conddef, %struct.conddef* %13, i32 0, i32 0
  %14 = load %struct.conddef*, %struct.conddef** %next6, align 4
  store %struct.conddef* %14, %struct.conddef** @condtab, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %15 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module = getelementptr inbounds %struct.conddef, %struct.conddef* %15, i32 0, i32 7
  %16 = load i8*, i8** %module, align 4
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %17 = load %struct.conddef*, %struct.conddef** %p, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 4
  call void @zsfree(i8* %18)
  %19 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module9 = getelementptr inbounds %struct.conddef, %struct.conddef* %19, i32 0, i32 7
  %20 = load i8*, i8** %module9, align 4
  call void @zsfree(i8* %20)
  %21 = load %struct.conddef*, %struct.conddef** %p, align 4
  %22 = bitcast %struct.conddef* %21 to i8*
  call void @zfree(i8* %22, i32 32)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.end10
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare void @zsfree(i8*) #1

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define %struct.hookdef* @gethookdef(i8* %n) #0 {
entry:
  %retval = alloca %struct.hookdef*, align 4
  %n.addr = alloca i8*, align 4
  %p = alloca %struct.hookdef*, align 4
  store i8* %n, i8** %n.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** @hooktab, align 4
  store %struct.hookdef* %0, %struct.hookdef** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %tobool = icmp ne %struct.hookdef* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %n.addr, align 4
  %3 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %name = getelementptr inbounds %struct.hookdef, %struct.hookdef* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 4
  %call = call i32 @strcmp(i8* %2, i8* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  store %struct.hookdef* %5, %struct.hookdef** %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %next = getelementptr inbounds %struct.hookdef, %struct.hookdef* %6, i32 0, i32 0
  %7 = load %struct.hookdef*, %struct.hookdef** %next, align 4
  store %struct.hookdef* %7, %struct.hookdef** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hookdef* null, %struct.hookdef** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.hookdef*, %struct.hookdef** %retval, align 4
  ret %struct.hookdef* %8
}

; Function Attrs: noinline nounwind
define i32 @addhookdef(%struct.hookdef* %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %name = getelementptr inbounds %struct.hookdef, %struct.hookdef* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 4
  %call = call %struct.hookdef* @gethookdef(i8* %1)
  %tobool = icmp ne %struct.hookdef* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hookdef*, %struct.hookdef** @hooktab, align 4
  %3 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %next = getelementptr inbounds %struct.hookdef, %struct.hookdef* %3, i32 0, i32 0
  store %struct.hookdef* %2, %struct.hookdef** %next, align 4
  %4 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  store %struct.hookdef* %4, %struct.hookdef** @hooktab, align 4
  %call1 = call %union.linkroot* @znewlinklist()
  %5 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs = getelementptr inbounds %struct.hookdef, %struct.hookdef* %5, i32 0, i32 4
  store %union.linkroot* %call1, %union.linkroot** %funcs, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare %union.linkroot* @znewlinklist() #1

; Function Attrs: noinline nounwind
define i32 @addhookdefs(%struct.module* %m, %struct.hookdef* %h, i32 %size) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  %size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %call = call i32 @addhookdef(%struct.hookdef* %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %tobool2 = icmp ne %struct.module* %2, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ null, %cond.false ]
  %5 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %name = getelementptr inbounds %struct.hookdef, %struct.hookdef* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %cond, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %6)
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %while.body
  %7 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %incdec.ptr = getelementptr inbounds %struct.hookdef, %struct.hookdef* %7, i32 1
  store %struct.hookdef* %incdec.ptr, %struct.hookdef** %h.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind
define i32 @deletehookdef(%struct.hookdef* %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  %p = alloca %struct.hookdef*, align 4
  %q = alloca %struct.hookdef*, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** @hooktab, align 4
  store %struct.hookdef* %0, %struct.hookdef** %p, align 4
  store %struct.hookdef* null, %struct.hookdef** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %tobool = icmp ne %struct.hookdef* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %3 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %cmp = icmp ne %struct.hookdef* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  store %struct.hookdef* %5, %struct.hookdef** %q, align 4
  %6 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %next = getelementptr inbounds %struct.hookdef, %struct.hookdef* %6, i32 0, i32 0
  %7 = load %struct.hookdef*, %struct.hookdef** %next, align 4
  store %struct.hookdef* %7, %struct.hookdef** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %tobool1 = icmp ne %struct.hookdef* %8, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %9 = load %struct.hookdef*, %struct.hookdef** %q, align 4
  %tobool2 = icmp ne %struct.hookdef* %9, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %next4 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %10, i32 0, i32 0
  %11 = load %struct.hookdef*, %struct.hookdef** %next4, align 4
  %12 = load %struct.hookdef*, %struct.hookdef** %q, align 4
  %next5 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %12, i32 0, i32 0
  store %struct.hookdef* %11, %struct.hookdef** %next5, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %13 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %next6 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %13, i32 0, i32 0
  %14 = load %struct.hookdef*, %struct.hookdef** %next6, align 4
  store %struct.hookdef* %14, %struct.hookdef** @hooktab, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %15 = load %struct.hookdef*, %struct.hookdef** %p, align 4
  %funcs = getelementptr inbounds %struct.hookdef, %struct.hookdef* %15, i32 0, i32 4
  %16 = load %union.linkroot*, %union.linkroot** %funcs, align 4
  call void @freelinklist(%union.linkroot* %16, void (i8*)* null)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare void @freelinklist(%union.linkroot*, void (i8*)*) #1

; Function Attrs: noinline nounwind
define i32 @deletehookdefs(%struct.module* %m, %struct.hookdef* %h, i32 %size) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  %size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %call = call i32 @deletehookdef(%struct.hookdef* %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %2 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %incdec.ptr = getelementptr inbounds %struct.hookdef, %struct.hookdef* %2, i32 1
  store %struct.hookdef* %incdec.ptr, %struct.hookdef** %h.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind
define i32 @addhookdeffunc(%struct.hookdef* %h, i32 (%struct.hookdef*, i8*)* %f) #0 {
entry:
  %h.addr = alloca %struct.hookdef*, align 4
  %f.addr = alloca i32 (%struct.hookdef*, i8*)*, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  store i32 (%struct.hookdef*, i8*)* %f, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs = getelementptr inbounds %struct.hookdef, %struct.hookdef* %0, i32 0, i32 4
  %1 = load %union.linkroot*, %union.linkroot** %funcs, align 4
  %2 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs1 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %2, i32 0, i32 4
  %3 = load %union.linkroot*, %union.linkroot** %funcs1, align 4
  %list = bitcast %union.linkroot* %3 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %4 = load %struct.linknode*, %struct.linknode** %last, align 4
  %5 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %6 = bitcast i32 (%struct.hookdef*, i8*)* %5 to i8*
  %call = call %struct.linknode* @zinsertlinknode(%union.linkroot* %1, %struct.linknode* %4, i8* %6)
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @addhookfunc(i8* %n, i32 (%struct.hookdef*, i8*)* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i8*, align 4
  %f.addr = alloca i32 (%struct.hookdef*, i8*)*, align 4
  %h = alloca %struct.hookdef*, align 4
  store i8* %n, i8** %n.addr, align 4
  store i32 (%struct.hookdef*, i8*)* %f, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %0 = load i8*, i8** %n.addr, align 4
  %call = call %struct.hookdef* @gethookdef(i8* %0)
  store %struct.hookdef* %call, %struct.hookdef** %h, align 4
  %1 = load %struct.hookdef*, %struct.hookdef** %h, align 4
  %tobool = icmp ne %struct.hookdef* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hookdef*, %struct.hookdef** %h, align 4
  %3 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %call1 = call i32 @addhookdeffunc(%struct.hookdef* %2, i32 (%struct.hookdef*, i8*)* %3)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind
define i32 @deletehookdeffunc(%struct.hookdef* %h, i32 (%struct.hookdef*, i8*)* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  %f.addr = alloca i32 (%struct.hookdef*, i8*)*, align 4
  %p = alloca %struct.linknode*, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  store i32 (%struct.hookdef*, i8*)* %f, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs = getelementptr inbounds %struct.hookdef, %struct.hookdef* %0, i32 0, i32 4
  %1 = load %union.linkroot*, %union.linkroot** %funcs, align 4
  %list = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %2, %struct.linknode** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.linknode*, %struct.linknode** %p, align 4
  %tobool = icmp ne %struct.linknode* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %5 = load %struct.linknode*, %struct.linknode** %p, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %5, i32 0, i32 2
  %6 = load i8*, i8** %dat, align 4
  %7 = bitcast i8* %6 to i32 (%struct.hookdef*, i8*)*
  %cmp = icmp eq i32 (%struct.hookdef*, i8*)* %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs1 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %8, i32 0, i32 4
  %9 = load %union.linkroot*, %union.linkroot** %funcs1, align 4
  %10 = load %struct.linknode*, %struct.linknode** %p, align 4
  %call = call i8* @remnode(%union.linkroot* %9, %struct.linknode* %10)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.linknode*, %struct.linknode** %p, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %11, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %12, %struct.linknode** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare i8* @remnode(%union.linkroot*, %struct.linknode*) #1

; Function Attrs: noinline nounwind
define i32 @deletehookfunc(i8* %n, i32 (%struct.hookdef*, i8*)* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i8*, align 4
  %f.addr = alloca i32 (%struct.hookdef*, i8*)*, align 4
  %h = alloca %struct.hookdef*, align 4
  store i8* %n, i8** %n.addr, align 4
  store i32 (%struct.hookdef*, i8*)* %f, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %0 = load i8*, i8** %n.addr, align 4
  %call = call %struct.hookdef* @gethookdef(i8* %0)
  store %struct.hookdef* %call, %struct.hookdef** %h, align 4
  %1 = load %struct.hookdef*, %struct.hookdef** %h, align 4
  %tobool = icmp ne %struct.hookdef* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hookdef*, %struct.hookdef** %h, align 4
  %3 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %f.addr, align 4
  %call1 = call i32 @deletehookdeffunc(%struct.hookdef* %2, i32 (%struct.hookdef*, i8*)* %3)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind
define i32 @runhookdef(%struct.hookdef* %h, i8* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.hookdef*, align 4
  %d.addr = alloca i8*, align 4
  %p = alloca %struct.linknode*, align 4
  %r = alloca i32, align 4
  store %struct.hookdef* %h, %struct.hookdef** %h.addr, align 4
  store i8* %d, i8** %d.addr, align 4
  %0 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs = getelementptr inbounds %struct.hookdef, %struct.hookdef* %0, i32 0, i32 4
  %1 = load %union.linkroot*, %union.linkroot** %funcs, align 4
  %list = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp = icmp eq %struct.linknode* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %def = getelementptr inbounds %struct.hookdef, %struct.hookdef* %3, i32 0, i32 2
  %4 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %def, align 4
  %tobool = icmp ne i32 (%struct.hookdef*, i8*)* %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %def2 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %5, i32 0, i32 2
  %6 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %def2, align 4
  %7 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %8 = load i8*, i8** %d.addr, align 4
  %call = call i32 %6(%struct.hookdef* %7, i8* %8)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %flags = getelementptr inbounds %struct.hookdef, %struct.hookdef* %9, i32 0, i32 3
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else19

if.then4:                                         ; preds = %if.else
  %11 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs5 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %11, i32 0, i32 4
  %12 = load %union.linkroot*, %union.linkroot** %funcs5, align 4
  %list6 = bitcast %union.linkroot* %12 to %struct.linklist*
  %first7 = getelementptr inbounds %struct.linklist, %struct.linklist* %list6, i32 0, i32 0
  %13 = load %struct.linknode*, %struct.linknode** %first7, align 4
  store %struct.linknode* %13, %struct.linknode** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load %struct.linknode*, %struct.linknode** %p, align 4
  %tobool8 = icmp ne %struct.linknode* %14, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.linknode*, %struct.linknode** %p, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %15, i32 0, i32 2
  %16 = load i8*, i8** %dat, align 4
  %17 = bitcast i8* %16 to i32 (%struct.hookdef*, i8*)*
  %18 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %19 = load i8*, i8** %d.addr, align 4
  %call9 = call i32 %17(%struct.hookdef* %18, i8* %19)
  store i32 %call9, i32* %r, align 4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  %20 = load i32, i32* %r, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %21 = load %struct.linknode*, %struct.linknode** %p, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %21, i32 0, i32 0
  %22 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %22, %struct.linknode** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %def13 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %23, i32 0, i32 2
  %24 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %def13, align 4
  %tobool14 = icmp ne i32 (%struct.hookdef*, i8*)* %24, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.end
  %25 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %def16 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %25, i32 0, i32 2
  %26 = load i32 (%struct.hookdef*, i8*)*, i32 (%struct.hookdef*, i8*)** %def16, align 4
  %27 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %28 = load i8*, i8** %d.addr, align 4
  %call17 = call i32 %26(%struct.hookdef* %27, i8* %28)
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else19:                                        ; preds = %if.else
  %29 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %funcs20 = getelementptr inbounds %struct.hookdef, %struct.hookdef* %29, i32 0, i32 4
  %30 = load %union.linkroot*, %union.linkroot** %funcs20, align 4
  %list21 = bitcast %union.linkroot* %30 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list21, i32 0, i32 1
  %31 = load %struct.linknode*, %struct.linknode** %last, align 4
  %dat22 = getelementptr inbounds %struct.linknode, %struct.linknode* %31, i32 0, i32 2
  %32 = load i8*, i8** %dat22, align 4
  %33 = bitcast i8* %32 to i32 (%struct.hookdef*, i8*)*
  %34 = load %struct.hookdef*, %struct.hookdef** %h.addr, align 4
  %35 = load i8*, i8** %d.addr, align 4
  %call23 = call i32 %33(%struct.hookdef* %34, i8* %35)
  store i32 %call23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else19, %if.end18, %if.then15, %if.then11, %if.end, %if.then1
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind
define i32 @addparamdef(%struct.paramdef* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.paramdef*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.paramdef* %d, %struct.paramdef** %d.addr, align 4
  %0 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name = getelementptr inbounds %struct.paramdef, %struct.paramdef* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 4
  %call = call i32 @checkaddparam(i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %getnfn = getelementptr inbounds %struct.paramdef, %struct.paramdef* %2, i32 0, i32 4
  %3 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnfn, align 4
  %tobool1 = icmp ne %struct.hashnode* (%struct.hashtable*, i8*)* %3, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name3 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %4, i32 0, i32 0
  %5 = load i8*, i8** %name3, align 4
  %6 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %getnfn4 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %6, i32 0, i32 4
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnfn4, align 4
  %8 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %scantfn = getelementptr inbounds %struct.paramdef, %struct.paramdef* %8, i32 0, i32 5
  %9 = load void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantfn, align 4
  %10 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %flags = getelementptr inbounds %struct.paramdef, %struct.paramdef* %10, i32 0, i32 1
  %11 = load i32, i32* %flags, align 4
  %call5 = call %struct.param* @createspecialhash(i8* %5, %struct.hashnode* (%struct.hashtable*, i8*)* %7, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %9, i32 %11)
  store %struct.param* %call5, %struct.param** %pm, align 4
  %tobool6 = icmp ne %struct.param* %call5, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then2
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then2
  br label %if.end18

if.else:                                          ; preds = %if.end
  %12 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name9 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %12, i32 0, i32 0
  %13 = load i8*, i8** %name9, align 4
  %14 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %flags10 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %14, i32 0, i32 1
  %15 = load i32, i32* %flags10, align 4
  %call11 = call %struct.param* @createparam(i8* %13, i32 %15)
  store %struct.param* %call11, %struct.param** %pm, align 4
  %tobool12 = icmp ne %struct.param* %call11, null
  br i1 %tobool12, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %16 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 9
  %17 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %19 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name13 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %19, i32 0, i32 0
  %20 = load i8*, i8** %name13, align 4
  %call14 = call %struct.hashnode* %17(%struct.hashtable* %18, i8* %20)
  %21 = bitcast %struct.hashnode* %call14 to %struct.param*
  store %struct.param* %21, %struct.param** %pm, align 4
  %tobool15 = icmp ne %struct.param* %21, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end8
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %23 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm19 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %23, i32 0, i32 6
  store %struct.param* %22, %struct.param** %pm19, align 4
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 8
  store i32 0, i32* %level, align 8
  %25 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %var = getelementptr inbounds %struct.paramdef, %struct.paramdef* %25, i32 0, i32 2
  %26 = load i8*, i8** %var, align 4
  %tobool20 = icmp ne i8* %26, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %27 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %var22 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %27, i32 0, i32 2
  %28 = load i8*, i8** %var22, align 4
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 1
  %data = bitcast %union.anon.0* %u to i8**
  store i8* %28, i8** %data, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18
  %30 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %var24 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %30, i32 0, i32 2
  %31 = load i8*, i8** %var24, align 4
  %tobool25 = icmp ne i8* %31, null
  br i1 %tobool25, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %32 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu = getelementptr inbounds %struct.paramdef, %struct.paramdef* %32, i32 0, i32 3
  %33 = load i8*, i8** %gsu, align 4
  %tobool26 = icmp ne i8* %33, null
  br i1 %tobool26, label %if.then27, label %if.end62

if.then27:                                        ; preds = %lor.lhs.false, %if.end23
  %34 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 0
  %flags28 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %35 = load i32, i32* %flags28, align 8
  %and = and i32 %35, 31
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb33
    i32 8, label %sw.bb42
    i32 4, label %sw.bb42
    i32 1, label %sw.bb45
    i32 16, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.then27
  %36 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu29 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %36, i32 0, i32 3
  %37 = load i8*, i8** %gsu29, align 4
  %tobool30 = icmp ne i8* %37, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %38 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu31 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %38, i32 0, i32 3
  %39 = load i8*, i8** %gsu31, align 4
  %40 = bitcast i8* %39 to %struct.gsu_scalar*
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gsu_scalar* [ %40, %cond.true ], [ @varscalar_gsu, %cond.false ]
  %41 = load %struct.param*, %struct.param** %pm, align 4
  %gsu32 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 2
  %s = bitcast %union.anon.1* %gsu32 to %struct.gsu_scalar**
  store %struct.gsu_scalar* %cond, %struct.gsu_scalar** %s, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then27
  %42 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu34 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %42, i32 0, i32 3
  %43 = load i8*, i8** %gsu34, align 4
  %tobool35 = icmp ne i8* %43, null
  br i1 %tobool35, label %cond.true36, label %cond.false38

cond.true36:                                      ; preds = %sw.bb33
  %44 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu37 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %44, i32 0, i32 3
  %45 = load i8*, i8** %gsu37, align 4
  %46 = bitcast i8* %45 to %struct.gsu_integer*
  br label %cond.end39

cond.false38:                                     ; preds = %sw.bb33
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true36
  %cond40 = phi %struct.gsu_integer* [ %46, %cond.true36 ], [ @varinteger_gsu, %cond.false38 ]
  %47 = load %struct.param*, %struct.param** %pm, align 4
  %gsu41 = getelementptr inbounds %struct.param, %struct.param* %47, i32 0, i32 2
  %i = bitcast %union.anon.1* %gsu41 to %struct.gsu_integer**
  store %struct.gsu_integer* %cond40, %struct.gsu_integer** %i, align 8
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then27, %if.then27
  %48 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu43 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %48, i32 0, i32 3
  %49 = load i8*, i8** %gsu43, align 4
  %50 = bitcast i8* %49 to %struct.gsu_float*
  %51 = load %struct.param*, %struct.param** %pm, align 4
  %gsu44 = getelementptr inbounds %struct.param, %struct.param* %51, i32 0, i32 2
  %f = bitcast %union.anon.1* %gsu44 to %struct.gsu_float**
  store %struct.gsu_float* %50, %struct.gsu_float** %f, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then27
  %52 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu46 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %52, i32 0, i32 3
  %53 = load i8*, i8** %gsu46, align 4
  %tobool47 = icmp ne i8* %53, null
  br i1 %tobool47, label %cond.true48, label %cond.false50

cond.true48:                                      ; preds = %sw.bb45
  %54 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu49 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %54, i32 0, i32 3
  %55 = load i8*, i8** %gsu49, align 4
  %56 = bitcast i8* %55 to %struct.gsu_array*
  br label %cond.end51

cond.false50:                                     ; preds = %sw.bb45
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi %struct.gsu_array* [ %56, %cond.true48 ], [ @vararray_gsu, %cond.false50 ]
  %57 = load %struct.param*, %struct.param** %pm, align 4
  %gsu53 = getelementptr inbounds %struct.param, %struct.param* %57, i32 0, i32 2
  %a = bitcast %union.anon.1* %gsu53 to %struct.gsu_array**
  store %struct.gsu_array* %cond52, %struct.gsu_array** %a, align 8
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.then27
  %58 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu55 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %58, i32 0, i32 3
  %59 = load i8*, i8** %gsu55, align 4
  %tobool56 = icmp ne i8* %59, null
  br i1 %tobool56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %sw.bb54
  %60 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %gsu58 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %60, i32 0, i32 3
  %61 = load i8*, i8** %gsu58, align 4
  %62 = bitcast i8* %61 to %struct.gsu_hash*
  %63 = load %struct.param*, %struct.param** %pm, align 4
  %gsu59 = getelementptr inbounds %struct.param, %struct.param* %63, i32 0, i32 2
  %h = bitcast %union.anon.1* %gsu59 to %struct.gsu_hash**
  store %struct.gsu_hash* %62, %struct.gsu_hash** %h, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %sw.bb54
  br label %sw.epilog

sw.default:                                       ; preds = %if.then27
  %64 = load %struct.param*, %struct.param** %pm, align 4
  %call61 = call i32 @unsetparam_pm(%struct.param* %64, i32 0, i32 1)
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end60, %cond.end51, %sw.bb42, %cond.end39, %cond.end
  br label %if.end62

if.end62:                                         ; preds = %sw.epilog, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %sw.default, %if.then16, %if.then7, %if.then
  %65 = load i32, i32* %retval, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind
define internal i32 @checkaddparam(i8* %nam, i32 %opt_i) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %opt_i.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %opt_i, i32* %opt_i.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %0, i8* %1)
  %2 = bitcast %struct.hashnode* %call to %struct.param*
  store %struct.param* %2, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 8
  %4 = load i32, i32* %level, align 8
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 134217728
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end12, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i32, i32* %opt_i.addr, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %lor.lhs.false5, label %if.then8

lor.lhs.false5:                                   ; preds = %if.then3
  %8 = load %struct.param*, %struct.param** %pm, align 4
  %level6 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 8
  %9 = load i32, i32* %level6, align 8
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5, %if.then3
  %10 = load i8*, i8** %nam.addr, align 4
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %level9 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 8
  %12 = load i32, i32* %level9, align 8
  %tobool10 = icmp ne i32 %12, 0
  %cond = select i1 %tobool10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0)
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0), i8* %10, i8* %cond)
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false5
  store i32 2, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %call13 = call i32 @unsetparam_pm(%struct.param* %13, i32 0, i32 1)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.end11, %if.then8, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare %struct.param* @createspecialhash(i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, i32) #1

declare %struct.param* @createparam(i8*, i32) #1

declare i32 @unsetparam_pm(%struct.param*, i32, i32) #1

; Function Attrs: noinline nounwind
define i32 @deleteparamdef(%struct.paramdef* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.paramdef*, align 4
  %pm = alloca %struct.param*, align 4
  %prevpm = alloca %struct.param*, align 4
  %searchpm = alloca %struct.param*, align 4
  store %struct.paramdef* %d, %struct.paramdef** %d.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %3 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name = getelementptr inbounds %struct.paramdef, %struct.paramdef* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  %5 = bitcast %struct.hashnode* %call to %struct.param*
  store %struct.param* %5, %struct.param** %pm, align 4
  %6 = load %struct.param*, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %8 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm1 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %8, i32 0, i32 6
  %9 = load %struct.param*, %struct.param** %pm1, align 4
  %cmp = icmp ne %struct.param* %7, %9
  br i1 %cmp, label %if.then2, label %if.end18

if.then2:                                         ; preds = %if.end
  %10 = load %struct.param*, %struct.param** %pm, align 4
  store %struct.param* %10, %struct.param** %prevpm, align 4
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 7
  %12 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %12, %struct.param** %searchpm, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %13 = load %struct.param*, %struct.param** %searchpm, align 4
  %tobool3 = icmp ne %struct.param* %13, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.param*, %struct.param** %searchpm, align 4
  %15 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm4 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %15, i32 0, i32 6
  %16 = load %struct.param*, %struct.param** %pm4, align 4
  %cmp5 = icmp eq %struct.param* %14, %16
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %17 = load %struct.param*, %struct.param** %searchpm, align 4
  store %struct.param* %17, %struct.param** %prevpm, align 4
  %18 = load %struct.param*, %struct.param** %searchpm, align 4
  %old8 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 7
  %19 = load %struct.param*, %struct.param** %old8, align 4
  store %struct.param* %19, %struct.param** %searchpm, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %20 = load %struct.param*, %struct.param** %searchpm, align 4
  %tobool9 = icmp ne %struct.param* %20, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.end
  %21 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 11
  %22 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %23 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %25 = load i8*, i8** %nam, align 4
  %call12 = call %struct.hashnode* %22(%struct.hashtable* %23, i8* %25)
  %26 = load %struct.param*, %struct.param** %searchpm, align 4
  %old13 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 7
  %27 = load %struct.param*, %struct.param** %old13, align 4
  %28 = load %struct.param*, %struct.param** %prevpm, align 4
  %old14 = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 7
  store %struct.param* %27, %struct.param** %old14, align 4
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %30 = load %struct.param*, %struct.param** %searchpm, align 4
  %old15 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 7
  store %struct.param* %29, %struct.param** %old15, align 4
  %31 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %31, i32 0, i32 8
  %32 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %33 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %34 = load %struct.param*, %struct.param** %searchpm, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %34, i32 0, i32 0
  %nam17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 1
  %35 = load i8*, i8** %nam17, align 4
  %36 = load %struct.param*, %struct.param** %searchpm, align 4
  %37 = bitcast %struct.param* %36 to i8*
  call void %32(%struct.hashtable* %33, i8* %35, i8* %37)
  %38 = load %struct.param*, %struct.param** %searchpm, align 4
  store %struct.param* %38, %struct.param** %pm, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end11, %if.end
  %39 = load %struct.param*, %struct.param** %pm, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %39, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %40 = load i32, i32* %flags, align 8
  %and = and i32 %40, -1025
  %or = or i32 %and, 67108864
  %41 = load %struct.param*, %struct.param** %pm, align 4
  %node20 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 0
  %flags21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 2
  store i32 %or, i32* %flags21, align 8
  %42 = load %struct.param*, %struct.param** %pm, align 4
  %call22 = call i32 @unsetparam_pm(%struct.param* %42, i32 0, i32 1)
  %43 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm23 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %43, i32 0, i32 6
  store %struct.param* null, %struct.param** %pm23, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then10, %if.then
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind
define void @removemathfunc(%struct.mathfunc* %previous, %struct.mathfunc* %current) #0 {
entry:
  %previous.addr = alloca %struct.mathfunc*, align 4
  %current.addr = alloca %struct.mathfunc*, align 4
  store %struct.mathfunc* %previous, %struct.mathfunc** %previous.addr, align 4
  store %struct.mathfunc* %current, %struct.mathfunc** %current.addr, align 4
  %0 = load %struct.mathfunc*, %struct.mathfunc** %previous.addr, align 4
  %tobool = icmp ne %struct.mathfunc* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mathfunc*, %struct.mathfunc** %current.addr, align 4
  %next = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %1, i32 0, i32 0
  %2 = load %struct.mathfunc*, %struct.mathfunc** %next, align 4
  %3 = load %struct.mathfunc*, %struct.mathfunc** %previous.addr, align 4
  %next1 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %3, i32 0, i32 0
  store %struct.mathfunc* %2, %struct.mathfunc** %next1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.mathfunc*, %struct.mathfunc** %current.addr, align 4
  %next2 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %4, i32 0, i32 0
  %5 = load %struct.mathfunc*, %struct.mathfunc** %next2, align 4
  store %struct.mathfunc* %5, %struct.mathfunc** @mathfuncs, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.mathfunc*, %struct.mathfunc** %current.addr, align 4
  %name = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 4
  call void @zsfree(i8* %7)
  %8 = load %struct.mathfunc*, %struct.mathfunc** %current.addr, align 4
  %module = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %8, i32 0, i32 5
  %9 = load i8*, i8** %module, align 4
  call void @zsfree(i8* %9)
  %10 = load %struct.mathfunc*, %struct.mathfunc** %current.addr, align 4
  %11 = bitcast %struct.mathfunc* %10 to i8*
  call void @zfree(i8* %11, i32 36)
  ret void
}

; Function Attrs: noinline nounwind
define %struct.mathfunc* @getmathfunc(i8* %name, i32 %autol) #0 {
entry:
  %retval = alloca %struct.mathfunc*, align 4
  %name.addr = alloca i8*, align 4
  %autol.addr = alloca i32, align 4
  %p = alloca %struct.mathfunc*, align 4
  %q = alloca %struct.mathfunc*, align 4
  %n = alloca i8*, align 4
  %flags10 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %autol, i32* %autol.addr, align 4
  store %struct.mathfunc* null, %struct.mathfunc** %q, align 4
  %0 = load %struct.mathfunc*, %struct.mathfunc** @mathfuncs, align 4
  store %struct.mathfunc* %0, %struct.mathfunc** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %tobool = icmp ne %struct.mathfunc* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %name1 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %3, i32 0, i32 1
  %4 = load i8*, i8** %name1, align 4
  %call = call i32 @strcmp(i8* %2, i8* %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end19, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %autol.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %module = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %6, i32 0, i32 5
  %7 = load i8*, i8** %module, align 4
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true5, label %if.end18

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %flags = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %8, i32 0, i32 2
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 4
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end18, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %10 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %module8 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %10, i32 0, i32 5
  %11 = load i8*, i8** %module8, align 4
  %call9 = call i8* @dupstring(i8* %11)
  store i8* %call9, i8** %n, align 4
  %12 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %flags11 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %12, i32 0, i32 2
  %13 = load i32, i32* %flags11, align 4
  store i32 %13, i32* %flags10, align 4
  %14 = load %struct.mathfunc*, %struct.mathfunc** %q, align 4
  %15 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  call void @removemathfunc(%struct.mathfunc* %14, %struct.mathfunc* %15)
  %16 = load i8*, i8** %n, align 4
  %17 = load i32, i32* %flags10, align 4
  %and12 = and i32 %17, 8
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  %18 = load i8*, i8** %name.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %18, %cond.false ]
  %call14 = call i32 @ensurefeature(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %cond)
  %19 = load i8*, i8** %name.addr, align 4
  %call15 = call %struct.mathfunc* @getmathfunc(i8* %19, i32 0)
  store %struct.mathfunc* %call15, %struct.mathfunc** %p, align 4
  %20 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %tobool16 = icmp ne %struct.mathfunc* %20, null
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %cond.end
  %21 = load i8*, i8** %n, align 4
  %22 = load i8*, i8** %name.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0), i8* %21, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then17, %cond.end
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true5, %land.lhs.true, %if.then
  %23 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  store %struct.mathfunc* %23, %struct.mathfunc** %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %24 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  store %struct.mathfunc* %24, %struct.mathfunc** %q, align 4
  %25 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %next = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %25, i32 0, i32 0
  %26 = load %struct.mathfunc*, %struct.mathfunc** %next, align 4
  store %struct.mathfunc* %26, %struct.mathfunc** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.mathfunc* null, %struct.mathfunc** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end18
  %27 = load %struct.mathfunc*, %struct.mathfunc** %retval, align 4
  ret %struct.mathfunc* %27
}

declare void @zerr(i8*, ...) #1

; Function Attrs: noinline nounwind
define i32 @deletemathfunc(%struct.mathfunc* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.mathfunc*, align 4
  %p = alloca %struct.mathfunc*, align 4
  %q = alloca %struct.mathfunc*, align 4
  store %struct.mathfunc* %f, %struct.mathfunc** %f.addr, align 4
  %0 = load %struct.mathfunc*, %struct.mathfunc** @mathfuncs, align 4
  store %struct.mathfunc* %0, %struct.mathfunc** %p, align 4
  store %struct.mathfunc* null, %struct.mathfunc** %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %tobool = icmp ne %struct.mathfunc* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %3 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %cmp = icmp ne %struct.mathfunc* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  store %struct.mathfunc* %5, %struct.mathfunc** %q, align 4
  %6 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %next = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %6, i32 0, i32 0
  %7 = load %struct.mathfunc*, %struct.mathfunc** %next, align 4
  store %struct.mathfunc* %7, %struct.mathfunc** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %tobool1 = icmp ne %struct.mathfunc* %8, null
  br i1 %tobool1, label %if.then, label %if.end12

if.then:                                          ; preds = %for.end
  %9 = load %struct.mathfunc*, %struct.mathfunc** %q, align 4
  %tobool2 = icmp ne %struct.mathfunc* %9, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %10 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %next4 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %10, i32 0, i32 0
  %11 = load %struct.mathfunc*, %struct.mathfunc** %next4, align 4
  %12 = load %struct.mathfunc*, %struct.mathfunc** %q, align 4
  %next5 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %12, i32 0, i32 0
  store %struct.mathfunc* %11, %struct.mathfunc** %next5, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %next6 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %13, i32 0, i32 0
  %14 = load %struct.mathfunc*, %struct.mathfunc** %next6, align 4
  store %struct.mathfunc* %14, %struct.mathfunc** @mathfuncs, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %15 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %module = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %15, i32 0, i32 5
  %16 = load i8*, i8** %module, align 4
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end
  %17 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %name = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 4
  call void @zsfree(i8* %18)
  %19 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %module9 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %19, i32 0, i32 5
  %20 = load i8*, i8** %module9, align 4
  call void @zsfree(i8* %20)
  %21 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %22 = bitcast %struct.mathfunc* %21 to i8*
  call void @zfree(i8* %22, i32 36)
  br label %if.end11

if.else10:                                        ; preds = %if.end
  %23 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %23, i32 0, i32 2
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, -3
  store i32 %and, i32* %flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.end11
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind
define i32 @module_loaded(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %m = alloca %struct.module*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call %struct.module* @find_module(i8* %0, i32 1, i8** null)
  store %struct.module* %call, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %call, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %1, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %2 = load i8*, i8** %handle, align 4
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 2
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind
define internal %struct.module* @find_module(i8* %name, i32 %flags, i8** %namep) #0 {
entry:
  %retval = alloca %struct.module*, align 4
  %name.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %namep.addr = alloca i8**, align 4
  %m = alloca %struct.module*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i8** %namep, i8*** %namep.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 10
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.module*
  store %struct.module* %4, %struct.module** %m, align 4
  %5 = load %struct.module*, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %5, null
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 64
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %9 = load i8**, i8*** %namep.addr, align 4
  %tobool6 = icmp ne i8** %9, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %10 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 1
  %alias = bitcast %union.anon* %u to i8**
  %11 = load i8*, i8** %alias, align 4
  %12 = load i8**, i8*** %namep.addr, align 4
  store i8* %11, i8** %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %13 = load %struct.module*, %struct.module** %m, align 4
  %u8 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 1
  %alias9 = bitcast %union.anon* %u8 to i8**
  %14 = load i8*, i8** %alias9, align 4
  %15 = load i32, i32* %flags.addr, align 4
  %16 = load i8**, i8*** %namep.addr, align 4
  %call10 = call %struct.module* @find_module(i8* %14, i32 %15, i8** %16)
  store %struct.module* %call10, %struct.module** %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.then
  %17 = load i8**, i8*** %namep.addr, align 4
  %tobool12 = icmp ne i8** %17, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %18 = load %struct.module*, %struct.module** %m, align 4
  %node14 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 1
  %19 = load i8*, i8** %nam, align 4
  %20 = load i8**, i8*** %namep.addr, align 4
  store i8* %19, i8** %20, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %21 = load %struct.module*, %struct.module** %m, align 4
  store %struct.module* %21, %struct.module** %retval, align 4
  br label %return

if.end16:                                         ; preds = %entry
  %22 = load i32, i32* %flags.addr, align 4
  %and17 = and i32 %22, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  store %struct.module* null, %struct.module** %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i8* @zshcalloc(i32 28)
  %23 = bitcast i8* %call21 to %struct.module*
  store %struct.module* %23, %struct.module** %m, align 4
  %24 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 8
  %25 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %26 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %27 = load i8*, i8** %name.addr, align 4
  %call22 = call i8* @ztrdup(i8* %27)
  %28 = load %struct.module*, %struct.module** %m, align 4
  %29 = bitcast %struct.module* %28 to i8*
  call void %25(%struct.hashtable* %26, i8* %call22, i8* %29)
  %30 = load %struct.module*, %struct.module** %m, align 4
  store %struct.module* %30, %struct.module** %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.end15, %if.end
  %31 = load %struct.module*, %struct.module** %retval, align 4
  ret %struct.module* %31
}

; Function Attrs: noinline nounwind
define i32 @load_module(i8* %name, %struct.feature_enables* %enablesarr, i32 %silent) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %enablesarr.addr = alloca %struct.feature_enables*, align 4
  %silent.addr = alloca i32, align 4
  %m = alloca %struct.module*, align 4
  %handle = alloca i8*, align 4
  %linked = alloca %struct.linkedmod*, align 4
  %set = alloca i32, align 4
  %bootret = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp16 = alloca %struct.__sigset_t, align 4
  %oset50 = alloca %struct.__sigset_t, align 4
  %tmp54 = alloca %struct.__sigset_t, align 4
  %tmp56 = alloca %struct.__sigset_t, align 4
  %oset76 = alloca %struct.__sigset_t, align 4
  %tmp80 = alloca %struct.__sigset_t, align 4
  %tmp82 = alloca %struct.__sigset_t, align 4
  %oset102 = alloca %struct.__sigset_t, align 4
  %tmp106 = alloca %struct.__sigset_t, align 4
  %tmp108 = alloca %struct.__sigset_t, align 4
  %oset143 = alloca %struct.__sigset_t, align 4
  %tmp147 = alloca %struct.__sigset_t, align 4
  %tmp149 = alloca %struct.__sigset_t, align 4
  %oset170 = alloca %struct.__sigset_t, align 4
  %tmp174 = alloca %struct.__sigset_t, align 4
  %tmp176 = alloca %struct.__sigset_t, align 4
  %n = alloca %struct.linknode*, align 4
  %oset205 = alloca %struct.__sigset_t, align 4
  %tmp209 = alloca %struct.__sigset_t, align 4
  %tmp211 = alloca %struct.__sigset_t, align 4
  %oset240 = alloca %struct.__sigset_t, align 4
  %tmp244 = alloca %struct.__sigset_t, align 4
  %tmp246 = alloca %struct.__sigset_t, align 4
  %oset290 = alloca %struct.__sigset_t, align 4
  %tmp294 = alloca %struct.__sigset_t, align 4
  %tmp296 = alloca %struct.__sigset_t, align 4
  %oset337 = alloca %struct.__sigset_t, align 4
  %tmp341 = alloca %struct.__sigset_t, align 4
  %tmp343 = alloca %struct.__sigset_t, align 4
  %oset364 = alloca %struct.__sigset_t, align 4
  %tmp368 = alloca %struct.__sigset_t, align 4
  %tmp370 = alloca %struct.__sigset_t, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.feature_enables* %enablesarr, %struct.feature_enables** %enablesarr.addr, align 4
  store i32 %silent, i32* %silent.addr, align 4
  store i8* null, i8** %handle, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i32 @modname_ok(i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %silent.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %name.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %3 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %4 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.module* @find_module(i8* %4, i32 1, i8** %name.addr)
  store %struct.module* %call4, %struct.module** %m, align 4
  %tobool5 = icmp ne %struct.module* %call4, null
  br i1 %tobool5, label %if.end87, label %if.then6

if.then6:                                         ; preds = %if.end3
  %5 = load i8*, i8** %name.addr, align 4
  %call7 = call %struct.linkedmod* @module_linked(i8* %5)
  store %struct.linkedmod* %call7, %struct.linkedmod** %linked, align 4
  %tobool8 = icmp ne %struct.linkedmod* %call7, null
  br i1 %tobool8, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load i32, i32* %silent.addr, align 4
  %call9 = call i8* @do_load_module(i8* %6, i32 %7)
  store i8* %call9, i8** %handle, align 4
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.end19, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then11
  %8 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool12 = icmp ne i32 %dec, 0
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %do.body
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body14
  %9 = load i32, i32* @queue_front, align 4
  %10 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %11, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %12 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %12
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %13 = bitcast %struct.__sigset_t* %oset to i8*
  %14 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 128, i32 4, i1 false)
  %15 = load i32, i32* @queue_front, align 4
  %arrayidx15 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %15
  %16 = load i32, i32* %arrayidx15, align 4
  call void @zhandler(i32 %16)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp16, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end17

if.end17:                                         ; preds = %do.end, %do.body
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  store i32 1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %land.lhs.true, %if.then6
  %call20 = call i8* @zshcalloc(i32 28)
  %17 = bitcast i8* %call20 to %struct.module*
  store %struct.module* %17, %struct.module** %m, align 4
  %18 = load i8*, i8** %handle, align 4
  %tobool21 = icmp ne i8* %18, null
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  %19 = load i8*, i8** %handle, align 4
  %20 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 1
  %handle23 = bitcast %union.anon* %u to i8**
  store i8* %19, i8** %handle23, align 4
  %21 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %22 = load i32, i32* %flags, align 4
  %or = or i32 %22, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end19
  %23 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %24 = load %struct.module*, %struct.module** %m, align 4
  %u24 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 1
  %linked25 = bitcast %union.anon* %u24 to %struct.linkedmod**
  store %struct.linkedmod* %23, %struct.linkedmod** %linked25, align 4
  %25 = load %struct.module*, %struct.module** %m, align 4
  %node26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 0
  %flags27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node26, i32 0, i32 2
  %26 = load i32, i32* %flags27, align 4
  %or28 = or i32 %26, 12
  store i32 %or28, i32* %flags27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %27 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 8
  %28 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %29 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %call30 = call i8* @ztrdup(i8* %30)
  %31 = load %struct.module*, %struct.module** %m, align 4
  %32 = bitcast %struct.module* %31 to i8*
  call void %28(%struct.hashtable* %29, i8* %call30, i8* %32)
  %33 = load %struct.module*, %struct.module** %m, align 4
  %call31 = call i32 @setup_module(%struct.module* %33)
  store i32 %call31, i32* %set, align 4
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %34 = load %struct.module*, %struct.module** %m, align 4
  %35 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %36 = load i32, i32* %silent.addr, align 4
  %call33 = call i32 @do_boot_module(%struct.module* %34, %struct.feature_enables* %35, i32 %36)
  store i32 %call33, i32* %bootret, align 4
  %cmp34 = icmp eq i32 %call33, 1
  br i1 %cmp34, label %if.then35, label %if.end61

if.then35:                                        ; preds = %lor.lhs.false, %if.end29
  %37 = load i32, i32* %set, align 4
  %tobool36 = icmp ne i32 %37, 0
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then35
  %38 = load %struct.module*, %struct.module** %m, align 4
  %call38 = call i32 @do_cleanup_module(%struct.module* %38)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then35
  %39 = load %struct.module*, %struct.module** %m, align 4
  %call40 = call i32 @finish_module(%struct.module* %39)
  %40 = load %struct.module*, %struct.module** %m, align 4
  call void @delete_module(%struct.module* %40)
  br label %do.body41

do.body41:                                        ; preds = %if.end39
  %41 = load i32, i32* @queueing_enabled, align 4
  %dec42 = add nsw i32 %41, -1
  store i32 %dec42, i32* @queueing_enabled, align 4
  %tobool43 = icmp ne i32 %dec42, 0
  br i1 %tobool43, label %if.end59, label %if.then44

if.then44:                                        ; preds = %do.body41
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  br label %while.cond46

while.cond46:                                     ; preds = %while.body48, %do.body45
  %42 = load i32, i32* @queue_front, align 4
  %43 = load i32, i32* @queue_rear, align 4
  %cmp47 = icmp ne i32 %42, %43
  br i1 %cmp47, label %while.body48, label %while.end57

while.body48:                                     ; preds = %while.cond46
  %44 = load i32, i32* @queue_front, align 4
  %add51 = add nsw i32 %44, 1
  %rem52 = srem i32 %add51, 128
  store i32 %rem52, i32* @queue_front, align 4
  %45 = load i32, i32* @queue_front, align 4
  %arrayidx53 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %45
  call void @signal_setmask(%struct.__sigset_t* sret %tmp54, %struct.__sigset_t* byval align 4 %arrayidx53)
  %46 = bitcast %struct.__sigset_t* %oset50 to i8*
  %47 = bitcast %struct.__sigset_t* %tmp54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* %47, i32 128, i32 4, i1 false)
  %48 = load i32, i32* @queue_front, align 4
  %arrayidx55 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %48
  %49 = load i32, i32* %arrayidx55, align 4
  call void @zhandler(i32 %49)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp56, %struct.__sigset_t* byval align 4 %oset50)
  br label %while.cond46

while.end57:                                      ; preds = %while.cond46
  br label %do.end58

do.end58:                                         ; preds = %while.end57
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %do.body41
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  store i32 1, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %lor.lhs.false
  %50 = load %struct.module*, %struct.module** %m, align 4
  %node62 = getelementptr inbounds %struct.module, %struct.module* %50, i32 0, i32 0
  %flags63 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node62, i32 0, i32 2
  %51 = load i32, i32* %flags63, align 4
  %or64 = or i32 %51, 48
  store i32 %or64, i32* %flags63, align 4
  %52 = load %struct.module*, %struct.module** %m, align 4
  %node65 = getelementptr inbounds %struct.module, %struct.module* %52, i32 0, i32 0
  %flags66 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node65, i32 0, i32 2
  %53 = load i32, i32* %flags66, align 4
  %and = and i32 %53, -5
  store i32 %and, i32* %flags66, align 4
  br label %do.body67

do.body67:                                        ; preds = %if.end61
  %54 = load i32, i32* @queueing_enabled, align 4
  %dec68 = add nsw i32 %54, -1
  store i32 %dec68, i32* @queueing_enabled, align 4
  %tobool69 = icmp ne i32 %dec68, 0
  br i1 %tobool69, label %if.end85, label %if.then70

if.then70:                                        ; preds = %do.body67
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  br label %while.cond72

while.cond72:                                     ; preds = %while.body74, %do.body71
  %55 = load i32, i32* @queue_front, align 4
  %56 = load i32, i32* @queue_rear, align 4
  %cmp73 = icmp ne i32 %55, %56
  br i1 %cmp73, label %while.body74, label %while.end83

while.body74:                                     ; preds = %while.cond72
  %57 = load i32, i32* @queue_front, align 4
  %add77 = add nsw i32 %57, 1
  %rem78 = srem i32 %add77, 128
  store i32 %rem78, i32* @queue_front, align 4
  %58 = load i32, i32* @queue_front, align 4
  %arrayidx79 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %58
  call void @signal_setmask(%struct.__sigset_t* sret %tmp80, %struct.__sigset_t* byval align 4 %arrayidx79)
  %59 = bitcast %struct.__sigset_t* %oset76 to i8*
  %60 = bitcast %struct.__sigset_t* %tmp80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %59, i8* %60, i32 128, i32 4, i1 false)
  %61 = load i32, i32* @queue_front, align 4
  %arrayidx81 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %61
  %62 = load i32, i32* %arrayidx81, align 4
  call void @zhandler(i32 %62)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp82, %struct.__sigset_t* byval align 4 %oset76)
  br label %while.cond72

while.end83:                                      ; preds = %while.cond72
  br label %do.end84

do.end84:                                         ; preds = %while.end83
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %do.body67
  br label %do.end86

do.end86:                                         ; preds = %if.end85
  %63 = load i32, i32* %bootret, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end3
  %64 = load %struct.module*, %struct.module** %m, align 4
  %node88 = getelementptr inbounds %struct.module, %struct.module* %64, i32 0, i32 0
  %flags89 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node88, i32 0, i32 2
  %65 = load i32, i32* %flags89, align 4
  %and90 = and i32 %65, 4
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end113

if.then92:                                        ; preds = %if.end87
  br label %do.body93

do.body93:                                        ; preds = %if.then92
  %66 = load i32, i32* @queueing_enabled, align 4
  %dec94 = add nsw i32 %66, -1
  store i32 %dec94, i32* @queueing_enabled, align 4
  %tobool95 = icmp ne i32 %dec94, 0
  br i1 %tobool95, label %if.end111, label %if.then96

if.then96:                                        ; preds = %do.body93
  br label %do.body97

do.body97:                                        ; preds = %if.then96
  br label %while.cond98

while.cond98:                                     ; preds = %while.body100, %do.body97
  %67 = load i32, i32* @queue_front, align 4
  %68 = load i32, i32* @queue_rear, align 4
  %cmp99 = icmp ne i32 %67, %68
  br i1 %cmp99, label %while.body100, label %while.end109

while.body100:                                    ; preds = %while.cond98
  %69 = load i32, i32* @queue_front, align 4
  %add103 = add nsw i32 %69, 1
  %rem104 = srem i32 %add103, 128
  store i32 %rem104, i32* @queue_front, align 4
  %70 = load i32, i32* @queue_front, align 4
  %arrayidx105 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %70
  call void @signal_setmask(%struct.__sigset_t* sret %tmp106, %struct.__sigset_t* byval align 4 %arrayidx105)
  %71 = bitcast %struct.__sigset_t* %oset102 to i8*
  %72 = bitcast %struct.__sigset_t* %tmp106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %71, i8* %72, i32 128, i32 4, i1 false)
  %73 = load i32, i32* @queue_front, align 4
  %arrayidx107 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %73
  %74 = load i32, i32* %arrayidx107, align 4
  call void @zhandler(i32 %74)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp108, %struct.__sigset_t* byval align 4 %oset102)
  br label %while.cond98

while.end109:                                     ; preds = %while.cond98
  br label %do.end110

do.end110:                                        ; preds = %while.end109
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %do.body93
  br label %do.end112

do.end112:                                        ; preds = %if.end111
  store i32 0, i32* %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.end87
  %75 = load %struct.module*, %struct.module** %m, align 4
  %node114 = getelementptr inbounds %struct.module, %struct.module* %75, i32 0, i32 0
  %flags115 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node114, i32 0, i32 2
  %76 = load i32, i32* %flags115, align 4
  %and116 = and i32 %76, 2
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.else122

if.then118:                                       ; preds = %if.end113
  %77 = load %struct.module*, %struct.module** %m, align 4
  %node119 = getelementptr inbounds %struct.module, %struct.module* %77, i32 0, i32 0
  %flags120 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node119, i32 0, i32 2
  %78 = load i32, i32* %flags120, align 4
  %and121 = and i32 %78, -3
  store i32 %and121, i32* %flags120, align 4
  br label %if.end155

if.else122:                                       ; preds = %if.end113
  %79 = load %struct.module*, %struct.module** %m, align 4
  %node123 = getelementptr inbounds %struct.module, %struct.module* %79, i32 0, i32 0
  %flags124 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node123, i32 0, i32 2
  %80 = load i32, i32* %flags124, align 4
  %and125 = and i32 %80, 8
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else122
  %81 = load %struct.module*, %struct.module** %m, align 4
  %u127 = getelementptr inbounds %struct.module, %struct.module* %81, i32 0, i32 1
  %linked128 = bitcast %union.anon* %u127 to %struct.linkedmod**
  %82 = load %struct.linkedmod*, %struct.linkedmod** %linked128, align 4
  %83 = bitcast %struct.linkedmod* %82 to i8*
  %tobool129 = icmp ne i8* %83, null
  br i1 %tobool129, label %if.then133, label %if.end154

cond.false:                                       ; preds = %if.else122
  %84 = load %struct.module*, %struct.module** %m, align 4
  %u130 = getelementptr inbounds %struct.module, %struct.module* %84, i32 0, i32 1
  %handle131 = bitcast %union.anon* %u130 to i8**
  %85 = load i8*, i8** %handle131, align 4
  %tobool132 = icmp ne i8* %85, null
  br i1 %tobool132, label %if.then133, label %if.end154

if.then133:                                       ; preds = %cond.false, %cond.true
  br label %do.body134

do.body134:                                       ; preds = %if.then133
  %86 = load i32, i32* @queueing_enabled, align 4
  %dec135 = add nsw i32 %86, -1
  store i32 %dec135, i32* @queueing_enabled, align 4
  %tobool136 = icmp ne i32 %dec135, 0
  br i1 %tobool136, label %if.end152, label %if.then137

if.then137:                                       ; preds = %do.body134
  br label %do.body138

do.body138:                                       ; preds = %if.then137
  br label %while.cond139

while.cond139:                                    ; preds = %while.body141, %do.body138
  %87 = load i32, i32* @queue_front, align 4
  %88 = load i32, i32* @queue_rear, align 4
  %cmp140 = icmp ne i32 %87, %88
  br i1 %cmp140, label %while.body141, label %while.end150

while.body141:                                    ; preds = %while.cond139
  %89 = load i32, i32* @queue_front, align 4
  %add144 = add nsw i32 %89, 1
  %rem145 = srem i32 %add144, 128
  store i32 %rem145, i32* @queue_front, align 4
  %90 = load i32, i32* @queue_front, align 4
  %arrayidx146 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %90
  call void @signal_setmask(%struct.__sigset_t* sret %tmp147, %struct.__sigset_t* byval align 4 %arrayidx146)
  %91 = bitcast %struct.__sigset_t* %oset143 to i8*
  %92 = bitcast %struct.__sigset_t* %tmp147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %91, i8* %92, i32 128, i32 4, i1 false)
  %93 = load i32, i32* @queue_front, align 4
  %arrayidx148 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %93
  %94 = load i32, i32* %arrayidx148, align 4
  call void @zhandler(i32 %94)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp149, %struct.__sigset_t* byval align 4 %oset143)
  br label %while.cond139

while.end150:                                     ; preds = %while.cond139
  br label %do.end151

do.end151:                                        ; preds = %while.end150
  br label %if.end152

if.end152:                                        ; preds = %do.end151, %do.body134
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  store i32 0, i32* %retval, align 4
  br label %return

if.end154:                                        ; preds = %cond.false, %cond.true
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then118
  %95 = load %struct.module*, %struct.module** %m, align 4
  %node156 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 0
  %flags157 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node156, i32 0, i32 2
  %96 = load i32, i32* %flags157, align 4
  %and158 = and i32 %96, 1
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then160, label %if.end181

if.then160:                                       ; preds = %if.end155
  br label %do.body161

do.body161:                                       ; preds = %if.then160
  %97 = load i32, i32* @queueing_enabled, align 4
  %dec162 = add nsw i32 %97, -1
  store i32 %dec162, i32* @queueing_enabled, align 4
  %tobool163 = icmp ne i32 %dec162, 0
  br i1 %tobool163, label %if.end179, label %if.then164

if.then164:                                       ; preds = %do.body161
  br label %do.body165

do.body165:                                       ; preds = %if.then164
  br label %while.cond166

while.cond166:                                    ; preds = %while.body168, %do.body165
  %98 = load i32, i32* @queue_front, align 4
  %99 = load i32, i32* @queue_rear, align 4
  %cmp167 = icmp ne i32 %98, %99
  br i1 %cmp167, label %while.body168, label %while.end177

while.body168:                                    ; preds = %while.cond166
  %100 = load i32, i32* @queue_front, align 4
  %add171 = add nsw i32 %100, 1
  %rem172 = srem i32 %add171, 128
  store i32 %rem172, i32* @queue_front, align 4
  %101 = load i32, i32* @queue_front, align 4
  %arrayidx173 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %101
  call void @signal_setmask(%struct.__sigset_t* sret %tmp174, %struct.__sigset_t* byval align 4 %arrayidx173)
  %102 = bitcast %struct.__sigset_t* %oset170 to i8*
  %103 = bitcast %struct.__sigset_t* %tmp174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %102, i8* %103, i32 128, i32 4, i1 false)
  %104 = load i32, i32* @queue_front, align 4
  %arrayidx175 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %104
  %105 = load i32, i32* %arrayidx175, align 4
  call void @zhandler(i32 %105)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp176, %struct.__sigset_t* byval align 4 %oset170)
  br label %while.cond166

while.end177:                                     ; preds = %while.cond166
  br label %do.end178

do.end178:                                        ; preds = %while.end177
  br label %if.end179

if.end179:                                        ; preds = %do.end178, %do.body161
  br label %do.end180

do.end180:                                        ; preds = %if.end179
  %106 = load i8*, i8** %name.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* %106)
  store i32 1, i32* %retval, align 4
  br label %return

if.end181:                                        ; preds = %if.end155
  %107 = load %struct.module*, %struct.module** %m, align 4
  %node182 = getelementptr inbounds %struct.module, %struct.module* %107, i32 0, i32 0
  %flags183 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node182, i32 0, i32 2
  %108 = load i32, i32* %flags183, align 4
  %or184 = or i32 %108, 1
  store i32 %or184, i32* %flags183, align 4
  %109 = load %struct.module*, %struct.module** %m, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %109, i32 0, i32 3
  %110 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool185 = icmp ne %union.linkroot* %110, null
  br i1 %tobool185, label %if.then186, label %if.end217

if.then186:                                       ; preds = %if.end181
  %111 = load %struct.module*, %struct.module** %m, align 4
  %deps188 = getelementptr inbounds %struct.module, %struct.module* %111, i32 0, i32 3
  %112 = load %union.linkroot*, %union.linkroot** %deps188, align 4
  %list = bitcast %union.linkroot* %112 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %113 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %113, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then186
  %114 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool189 = icmp ne %struct.linknode* %114, null
  br i1 %tobool189, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %115, i32 0, i32 2
  %116 = load i8*, i8** %dat, align 4
  %117 = load i32, i32* %silent.addr, align 4
  %call190 = call i32 @load_module(i8* %116, %struct.feature_enables* null, i32 %117)
  %cmp191 = icmp eq i32 %call190, 1
  br i1 %cmp191, label %if.then192, label %if.end216

if.then192:                                       ; preds = %for.body
  %118 = load %struct.module*, %struct.module** %m, align 4
  %node193 = getelementptr inbounds %struct.module, %struct.module* %118, i32 0, i32 0
  %flags194 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node193, i32 0, i32 2
  %119 = load i32, i32* %flags194, align 4
  %and195 = and i32 %119, -2
  store i32 %and195, i32* %flags194, align 4
  br label %do.body196

do.body196:                                       ; preds = %if.then192
  %120 = load i32, i32* @queueing_enabled, align 4
  %dec197 = add nsw i32 %120, -1
  store i32 %dec197, i32* @queueing_enabled, align 4
  %tobool198 = icmp ne i32 %dec197, 0
  br i1 %tobool198, label %if.end214, label %if.then199

if.then199:                                       ; preds = %do.body196
  br label %do.body200

do.body200:                                       ; preds = %if.then199
  br label %while.cond201

while.cond201:                                    ; preds = %while.body203, %do.body200
  %121 = load i32, i32* @queue_front, align 4
  %122 = load i32, i32* @queue_rear, align 4
  %cmp202 = icmp ne i32 %121, %122
  br i1 %cmp202, label %while.body203, label %while.end212

while.body203:                                    ; preds = %while.cond201
  %123 = load i32, i32* @queue_front, align 4
  %add206 = add nsw i32 %123, 1
  %rem207 = srem i32 %add206, 128
  store i32 %rem207, i32* @queue_front, align 4
  %124 = load i32, i32* @queue_front, align 4
  %arrayidx208 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %124
  call void @signal_setmask(%struct.__sigset_t* sret %tmp209, %struct.__sigset_t* byval align 4 %arrayidx208)
  %125 = bitcast %struct.__sigset_t* %oset205 to i8*
  %126 = bitcast %struct.__sigset_t* %tmp209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %125, i8* %126, i32 128, i32 4, i1 false)
  %127 = load i32, i32* @queue_front, align 4
  %arrayidx210 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %127
  %128 = load i32, i32* %arrayidx210, align 4
  call void @zhandler(i32 %128)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp211, %struct.__sigset_t* byval align 4 %oset205)
  br label %while.cond201

while.end212:                                     ; preds = %while.cond201
  br label %do.end213

do.end213:                                        ; preds = %while.end212
  br label %if.end214

if.end214:                                        ; preds = %do.end213, %do.body196
  br label %do.end215

do.end215:                                        ; preds = %if.end214
  store i32 1, i32* %retval, align 4
  br label %return

if.end216:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end216
  %129 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %129, i32 0, i32 0
  %130 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %130, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end217

if.end217:                                        ; preds = %for.end, %if.end181
  %131 = load %struct.module*, %struct.module** %m, align 4
  %node218 = getelementptr inbounds %struct.module, %struct.module* %131, i32 0, i32 0
  %flags219 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node218, i32 0, i32 2
  %132 = load i32, i32* %flags219, align 4
  %and220 = and i32 %132, -2
  store i32 %and220, i32* %flags219, align 4
  %133 = load %struct.module*, %struct.module** %m, align 4
  %u221 = getelementptr inbounds %struct.module, %struct.module* %133, i32 0, i32 1
  %handle222 = bitcast %union.anon* %u221 to i8**
  %134 = load i8*, i8** %handle222, align 4
  %tobool223 = icmp ne i8* %134, null
  br i1 %tobool223, label %if.end305, label %if.then224

if.then224:                                       ; preds = %if.end217
  store i8* null, i8** %handle, align 4
  %135 = load i8*, i8** %name.addr, align 4
  %call225 = call %struct.linkedmod* @module_linked(i8* %135)
  store %struct.linkedmod* %call225, %struct.linkedmod** %linked, align 4
  %tobool226 = icmp ne %struct.linkedmod* %call225, null
  br i1 %tobool226, label %if.end251, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.then224
  %136 = load i8*, i8** %name.addr, align 4
  %137 = load i32, i32* %silent.addr, align 4
  %call228 = call i8* @do_load_module(i8* %136, i32 %137)
  store i8* %call228, i8** %handle, align 4
  %tobool229 = icmp ne i8* %call228, null
  br i1 %tobool229, label %if.end251, label %if.then230

if.then230:                                       ; preds = %land.lhs.true227
  br label %do.body231

do.body231:                                       ; preds = %if.then230
  %138 = load i32, i32* @queueing_enabled, align 4
  %dec232 = add nsw i32 %138, -1
  store i32 %dec232, i32* @queueing_enabled, align 4
  %tobool233 = icmp ne i32 %dec232, 0
  br i1 %tobool233, label %if.end249, label %if.then234

if.then234:                                       ; preds = %do.body231
  br label %do.body235

do.body235:                                       ; preds = %if.then234
  br label %while.cond236

while.cond236:                                    ; preds = %while.body238, %do.body235
  %139 = load i32, i32* @queue_front, align 4
  %140 = load i32, i32* @queue_rear, align 4
  %cmp237 = icmp ne i32 %139, %140
  br i1 %cmp237, label %while.body238, label %while.end247

while.body238:                                    ; preds = %while.cond236
  %141 = load i32, i32* @queue_front, align 4
  %add241 = add nsw i32 %141, 1
  %rem242 = srem i32 %add241, 128
  store i32 %rem242, i32* @queue_front, align 4
  %142 = load i32, i32* @queue_front, align 4
  %arrayidx243 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %142
  call void @signal_setmask(%struct.__sigset_t* sret %tmp244, %struct.__sigset_t* byval align 4 %arrayidx243)
  %143 = bitcast %struct.__sigset_t* %oset240 to i8*
  %144 = bitcast %struct.__sigset_t* %tmp244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %143, i8* %144, i32 128, i32 4, i1 false)
  %145 = load i32, i32* @queue_front, align 4
  %arrayidx245 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %145
  %146 = load i32, i32* %arrayidx245, align 4
  call void @zhandler(i32 %146)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp246, %struct.__sigset_t* byval align 4 %oset240)
  br label %while.cond236

while.end247:                                     ; preds = %while.cond236
  br label %do.end248

do.end248:                                        ; preds = %while.end247
  br label %if.end249

if.end249:                                        ; preds = %do.end248, %do.body231
  br label %do.end250

do.end250:                                        ; preds = %if.end249
  store i32 1, i32* %retval, align 4
  br label %return

if.end251:                                        ; preds = %land.lhs.true227, %if.then224
  %147 = load i8*, i8** %handle, align 4
  %tobool252 = icmp ne i8* %147, null
  br i1 %tobool252, label %if.then253, label %if.else259

if.then253:                                       ; preds = %if.end251
  %148 = load i8*, i8** %handle, align 4
  %149 = load %struct.module*, %struct.module** %m, align 4
  %u254 = getelementptr inbounds %struct.module, %struct.module* %149, i32 0, i32 1
  %handle255 = bitcast %union.anon* %u254 to i8**
  store i8* %148, i8** %handle255, align 4
  %150 = load %struct.module*, %struct.module** %m, align 4
  %node256 = getelementptr inbounds %struct.module, %struct.module* %150, i32 0, i32 0
  %flags257 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node256, i32 0, i32 2
  %151 = load i32, i32* %flags257, align 4
  %or258 = or i32 %151, 4
  store i32 %or258, i32* %flags257, align 4
  br label %if.end265

if.else259:                                       ; preds = %if.end251
  %152 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %153 = load %struct.module*, %struct.module** %m, align 4
  %u260 = getelementptr inbounds %struct.module, %struct.module* %153, i32 0, i32 1
  %linked261 = bitcast %union.anon* %u260 to %struct.linkedmod**
  store %struct.linkedmod* %152, %struct.linkedmod** %linked261, align 4
  %154 = load %struct.module*, %struct.module** %m, align 4
  %node262 = getelementptr inbounds %struct.module, %struct.module* %154, i32 0, i32 0
  %flags263 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node262, i32 0, i32 2
  %155 = load i32, i32* %flags263, align 4
  %or264 = or i32 %155, 12
  store i32 %or264, i32* %flags263, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.else259, %if.then253
  %156 = load %struct.module*, %struct.module** %m, align 4
  %call266 = call i32 @setup_module(%struct.module* %156)
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.then268, label %if.end301

if.then268:                                       ; preds = %if.end265
  %157 = load %struct.module*, %struct.module** %m, align 4
  %call269 = call i32 @finish_module(%struct.module* %157)
  %158 = load i8*, i8** %handle, align 4
  %tobool270 = icmp ne i8* %158, null
  br i1 %tobool270, label %if.then271, label %if.else274

if.then271:                                       ; preds = %if.then268
  %159 = load %struct.module*, %struct.module** %m, align 4
  %u272 = getelementptr inbounds %struct.module, %struct.module* %159, i32 0, i32 1
  %handle273 = bitcast %union.anon* %u272 to i8**
  store i8* null, i8** %handle273, align 4
  br label %if.end277

if.else274:                                       ; preds = %if.then268
  %160 = load %struct.module*, %struct.module** %m, align 4
  %u275 = getelementptr inbounds %struct.module, %struct.module* %160, i32 0, i32 1
  %linked276 = bitcast %union.anon* %u275 to %struct.linkedmod**
  store %struct.linkedmod* null, %struct.linkedmod** %linked276, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.else274, %if.then271
  %161 = load %struct.module*, %struct.module** %m, align 4
  %node278 = getelementptr inbounds %struct.module, %struct.module* %161, i32 0, i32 0
  %flags279 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node278, i32 0, i32 2
  %162 = load i32, i32* %flags279, align 4
  %and280 = and i32 %162, -5
  store i32 %and280, i32* %flags279, align 4
  br label %do.body281

do.body281:                                       ; preds = %if.end277
  %163 = load i32, i32* @queueing_enabled, align 4
  %dec282 = add nsw i32 %163, -1
  store i32 %dec282, i32* @queueing_enabled, align 4
  %tobool283 = icmp ne i32 %dec282, 0
  br i1 %tobool283, label %if.end299, label %if.then284

if.then284:                                       ; preds = %do.body281
  br label %do.body285

do.body285:                                       ; preds = %if.then284
  br label %while.cond286

while.cond286:                                    ; preds = %while.body288, %do.body285
  %164 = load i32, i32* @queue_front, align 4
  %165 = load i32, i32* @queue_rear, align 4
  %cmp287 = icmp ne i32 %164, %165
  br i1 %cmp287, label %while.body288, label %while.end297

while.body288:                                    ; preds = %while.cond286
  %166 = load i32, i32* @queue_front, align 4
  %add291 = add nsw i32 %166, 1
  %rem292 = srem i32 %add291, 128
  store i32 %rem292, i32* @queue_front, align 4
  %167 = load i32, i32* @queue_front, align 4
  %arrayidx293 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %167
  call void @signal_setmask(%struct.__sigset_t* sret %tmp294, %struct.__sigset_t* byval align 4 %arrayidx293)
  %168 = bitcast %struct.__sigset_t* %oset290 to i8*
  %169 = bitcast %struct.__sigset_t* %tmp294 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %168, i8* %169, i32 128, i32 4, i1 false)
  %170 = load i32, i32* @queue_front, align 4
  %arrayidx295 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %170
  %171 = load i32, i32* %arrayidx295, align 4
  call void @zhandler(i32 %171)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp296, %struct.__sigset_t* byval align 4 %oset290)
  br label %while.cond286

while.end297:                                     ; preds = %while.cond286
  br label %do.end298

do.end298:                                        ; preds = %while.end297
  br label %if.end299

if.end299:                                        ; preds = %do.end298, %do.body281
  br label %do.end300

do.end300:                                        ; preds = %if.end299
  store i32 1, i32* %retval, align 4
  br label %return

if.end301:                                        ; preds = %if.end265
  %172 = load %struct.module*, %struct.module** %m, align 4
  %node302 = getelementptr inbounds %struct.module, %struct.module* %172, i32 0, i32 0
  %flags303 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node302, i32 0, i32 2
  %173 = load i32, i32* %flags303, align 4
  %or304 = or i32 %173, 16
  store i32 %or304, i32* %flags303, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.end301, %if.end217
  %174 = load %struct.module*, %struct.module** %m, align 4
  %node306 = getelementptr inbounds %struct.module, %struct.module* %174, i32 0, i32 0
  %flags307 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node306, i32 0, i32 2
  %175 = load i32, i32* %flags307, align 4
  %or308 = or i32 %175, 4
  store i32 %or308, i32* %flags307, align 4
  %176 = load %struct.module*, %struct.module** %m, align 4
  %177 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %178 = load i32, i32* %silent.addr, align 4
  %call309 = call i32 @do_boot_module(%struct.module* %176, %struct.feature_enables* %177, i32 %178)
  store i32 %call309, i32* %bootret, align 4
  %cmp310 = icmp eq i32 %call309, 1
  br i1 %cmp310, label %if.then311, label %if.end348

if.then311:                                       ; preds = %if.end305
  %179 = load %struct.module*, %struct.module** %m, align 4
  %call312 = call i32 @do_cleanup_module(%struct.module* %179)
  %180 = load %struct.module*, %struct.module** %m, align 4
  %call313 = call i32 @finish_module(%struct.module* %180)
  %181 = load %struct.module*, %struct.module** %m, align 4
  %node314 = getelementptr inbounds %struct.module, %struct.module* %181, i32 0, i32 0
  %flags315 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node314, i32 0, i32 2
  %182 = load i32, i32* %flags315, align 4
  %and316 = and i32 %182, 8
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %if.then318, label %if.else321

if.then318:                                       ; preds = %if.then311
  %183 = load %struct.module*, %struct.module** %m, align 4
  %u319 = getelementptr inbounds %struct.module, %struct.module* %183, i32 0, i32 1
  %linked320 = bitcast %union.anon* %u319 to %struct.linkedmod**
  store %struct.linkedmod* null, %struct.linkedmod** %linked320, align 4
  br label %if.end324

if.else321:                                       ; preds = %if.then311
  %184 = load %struct.module*, %struct.module** %m, align 4
  %u322 = getelementptr inbounds %struct.module, %struct.module* %184, i32 0, i32 1
  %handle323 = bitcast %union.anon* %u322 to i8**
  store i8* null, i8** %handle323, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.else321, %if.then318
  %185 = load %struct.module*, %struct.module** %m, align 4
  %node325 = getelementptr inbounds %struct.module, %struct.module* %185, i32 0, i32 0
  %flags326 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node325, i32 0, i32 2
  %186 = load i32, i32* %flags326, align 4
  %and327 = and i32 %186, -5
  store i32 %and327, i32* %flags326, align 4
  br label %do.body328

do.body328:                                       ; preds = %if.end324
  %187 = load i32, i32* @queueing_enabled, align 4
  %dec329 = add nsw i32 %187, -1
  store i32 %dec329, i32* @queueing_enabled, align 4
  %tobool330 = icmp ne i32 %dec329, 0
  br i1 %tobool330, label %if.end346, label %if.then331

if.then331:                                       ; preds = %do.body328
  br label %do.body332

do.body332:                                       ; preds = %if.then331
  br label %while.cond333

while.cond333:                                    ; preds = %while.body335, %do.body332
  %188 = load i32, i32* @queue_front, align 4
  %189 = load i32, i32* @queue_rear, align 4
  %cmp334 = icmp ne i32 %188, %189
  br i1 %cmp334, label %while.body335, label %while.end344

while.body335:                                    ; preds = %while.cond333
  %190 = load i32, i32* @queue_front, align 4
  %add338 = add nsw i32 %190, 1
  %rem339 = srem i32 %add338, 128
  store i32 %rem339, i32* @queue_front, align 4
  %191 = load i32, i32* @queue_front, align 4
  %arrayidx340 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %191
  call void @signal_setmask(%struct.__sigset_t* sret %tmp341, %struct.__sigset_t* byval align 4 %arrayidx340)
  %192 = bitcast %struct.__sigset_t* %oset337 to i8*
  %193 = bitcast %struct.__sigset_t* %tmp341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %192, i8* %193, i32 128, i32 4, i1 false)
  %194 = load i32, i32* @queue_front, align 4
  %arrayidx342 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %194
  %195 = load i32, i32* %arrayidx342, align 4
  call void @zhandler(i32 %195)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp343, %struct.__sigset_t* byval align 4 %oset337)
  br label %while.cond333

while.end344:                                     ; preds = %while.cond333
  br label %do.end345

do.end345:                                        ; preds = %while.end344
  br label %if.end346

if.end346:                                        ; preds = %do.end345, %do.body328
  br label %do.end347

do.end347:                                        ; preds = %if.end346
  store i32 1, i32* %retval, align 4
  br label %return

if.end348:                                        ; preds = %if.end305
  %196 = load %struct.module*, %struct.module** %m, align 4
  %node349 = getelementptr inbounds %struct.module, %struct.module* %196, i32 0, i32 0
  %flags350 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node349, i32 0, i32 2
  %197 = load i32, i32* %flags350, align 4
  %or351 = or i32 %197, 32
  store i32 %or351, i32* %flags350, align 4
  %198 = load %struct.module*, %struct.module** %m, align 4
  %node352 = getelementptr inbounds %struct.module, %struct.module* %198, i32 0, i32 0
  %flags353 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node352, i32 0, i32 2
  %199 = load i32, i32* %flags353, align 4
  %and354 = and i32 %199, -5
  store i32 %and354, i32* %flags353, align 4
  br label %do.body355

do.body355:                                       ; preds = %if.end348
  %200 = load i32, i32* @queueing_enabled, align 4
  %dec356 = add nsw i32 %200, -1
  store i32 %dec356, i32* @queueing_enabled, align 4
  %tobool357 = icmp ne i32 %dec356, 0
  br i1 %tobool357, label %if.end373, label %if.then358

if.then358:                                       ; preds = %do.body355
  br label %do.body359

do.body359:                                       ; preds = %if.then358
  br label %while.cond360

while.cond360:                                    ; preds = %while.body362, %do.body359
  %201 = load i32, i32* @queue_front, align 4
  %202 = load i32, i32* @queue_rear, align 4
  %cmp361 = icmp ne i32 %201, %202
  br i1 %cmp361, label %while.body362, label %while.end371

while.body362:                                    ; preds = %while.cond360
  %203 = load i32, i32* @queue_front, align 4
  %add365 = add nsw i32 %203, 1
  %rem366 = srem i32 %add365, 128
  store i32 %rem366, i32* @queue_front, align 4
  %204 = load i32, i32* @queue_front, align 4
  %arrayidx367 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %204
  call void @signal_setmask(%struct.__sigset_t* sret %tmp368, %struct.__sigset_t* byval align 4 %arrayidx367)
  %205 = bitcast %struct.__sigset_t* %oset364 to i8*
  %206 = bitcast %struct.__sigset_t* %tmp368 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %205, i8* %206, i32 128, i32 4, i1 false)
  %207 = load i32, i32* @queue_front, align 4
  %arrayidx369 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %207
  %208 = load i32, i32* %arrayidx369, align 4
  call void @zhandler(i32 %208)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp370, %struct.__sigset_t* byval align 4 %oset364)
  br label %while.cond360

while.end371:                                     ; preds = %while.cond360
  br label %do.end372

do.end372:                                        ; preds = %while.end371
  br label %if.end373

if.end373:                                        ; preds = %do.end372, %do.body355
  br label %do.end374

do.end374:                                        ; preds = %if.end373
  %209 = load i32, i32* %bootret, align 4
  store i32 %209, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end374, %do.end347, %do.end300, %do.end250, %do.end215, %do.end180, %do.end153, %do.end112, %do.end86, %do.end60, %do.end18, %if.end
  %210 = load i32, i32* %retval, align 4
  ret i32 %210
}

; Function Attrs: noinline nounwind
define internal i32 @modname_ok(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 4
  store i8* %p, i8** %p.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %p.addr, align 4
  %call = call i8* @itype_end(i8* %0, i32 128, i32 0)
  store i8* %call, i8** %p.addr, align 4
  %1 = load i8*, i8** %p.addr, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i8*, i8** %p.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define internal i8* @do_load_module(i8* %name, i32 %silent) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %silent.addr = alloca i32, align 4
  %ret = alloca i8*, align 4
  %errstr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %silent, i32* %silent.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @try_load_module(i8* %0)
  store i8* %call, i8** %ret, align 4
  %1 = load i8*, i8** %ret, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %silent.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @dlerror()
  store i8* %call2, i8** %errstr, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %4 = load i8*, i8** %errstr, align 4
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i8*, i8** %errstr, align 4
  %call4 = call i8* @metafy(i8* %5, i32 -1, i32 6)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8* %3, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %6 = load i8*, i8** %ret, align 4
  ret i8* %6
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

declare i8* @zshcalloc(i32) #1

; Function Attrs: noinline nounwind
define internal i32 @setup_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %setup = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 1
  %setup1 = bitcast {}** %setup to i32 (%struct.module*)**
  %4 = load i32 (%struct.module*)*, i32 (%struct.module*)** %setup1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 %4(%struct.module* %5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.module*, %struct.module** %m.addr, align 4
  %call2 = call i32 @dyn_setup_module(%struct.module* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @do_boot_module(%struct.module* %m, %struct.feature_enables* %enablesarr, i32 %silent) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %enablesarr.addr = alloca %struct.feature_enables*, align 4
  %silent.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.feature_enables* %enablesarr, %struct.feature_enables** %enablesarr.addr, align 4
  store i32 %silent, i32* %silent.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %1 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %2 = load i32, i32* %silent.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 17, i32 16
  %call = call i32 @do_module_features(%struct.module* %0, %struct.feature_enables* %1, i32 %cond)
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 @boot_module(%struct.module* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal i32 @do_cleanup_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %tobool1 = icmp ne %struct.linkedmod* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %u2 = getelementptr inbounds %struct.module, %struct.module* %4, i32 0, i32 1
  %linked3 = bitcast %union.anon* %u2 to %struct.linkedmod**
  %5 = load %struct.linkedmod*, %struct.linkedmod** %linked3, align 4
  %cleanup = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %5, i32 0, i32 5
  %cleanup4 = bitcast {}** %cleanup to i32 (%struct.module*)**
  %6 = load i32 (%struct.module*)*, i32 (%struct.module*)** %cleanup4, align 4
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 %6(%struct.module* %7)
  %tobool5 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %8 = phi i1 [ false, %cond.true ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.module*, %struct.module** %m.addr, align 4
  %u6 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 1
  %handle = bitcast %union.anon* %u6 to i8**
  %10 = load i8*, i8** %handle, align 4
  %tobool7 = icmp ne i8* %10, null
  br i1 %tobool7, label %land.rhs8, label %land.end11

land.rhs8:                                        ; preds = %cond.false
  %11 = load %struct.module*, %struct.module** %m.addr, align 4
  %call9 = call i32 @cleanup_module(%struct.module* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end11

land.end11:                                       ; preds = %land.rhs8, %cond.false
  %12 = phi i1 [ false, %cond.false ], [ %tobool10, %land.rhs8 ]
  %land.ext12 = zext i1 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end11, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %land.ext12, %land.end11 ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @finish_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %finish = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 6
  %finish1 = bitcast {}** %finish to i32 (%struct.module*)**
  %4 = load i32 (%struct.module*)*, i32 (%struct.module*)** %finish1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 %4(%struct.module* %5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.module*, %struct.module** %m.addr, align 4
  %call2 = call i32 @dyn_finish_module(%struct.module* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal void @delete_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %3 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  %5 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 14
  %6 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %node1 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  call void %6(%struct.hashnode* %node1)
  ret void
}

; Function Attrs: noinline nounwind
define i32 @require_module(i8* %module, %struct.feature_enables* %features, i32 %silent) #0 {
entry:
  %module.addr = alloca i8*, align 4
  %features.addr = alloca %struct.feature_enables*, align 4
  %silent.addr = alloca i32, align 4
  %m = alloca %struct.module*, align 4
  %ret = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp10 = alloca %struct.__sigset_t, align 4
  store i8* %module, i8** %module.addr, align 4
  store %struct.feature_enables* %features, %struct.feature_enables** %features.addr, align 4
  store i32 %silent, i32* %silent.addr, align 4
  store %struct.module* null, %struct.module** %m, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i8*, i8** %module.addr, align 4
  %call = call %struct.module* @find_module(i8* %1, i32 1, i8** %module.addr)
  store %struct.module* %call, %struct.module** %m, align 4
  %2 = load %struct.module*, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %4 = load i8*, i8** %handle, align 4
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load i8*, i8** %module.addr, align 4
  %8 = load %struct.feature_enables*, %struct.feature_enables** %features.addr, align 4
  %9 = load i32, i32* %silent.addr, align 4
  %call4 = call i32 @load_module(i8* %7, %struct.feature_enables* %8, i32 %9)
  store i32 %call4, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false2
  %10 = load %struct.module*, %struct.module** %m, align 4
  %11 = load %struct.feature_enables*, %struct.feature_enables** %features.addr, align 4
  %call5 = call i32 @do_module_features(%struct.module* %10, %struct.feature_enables* %11, i32 0)
  store i32 %call5, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool6 = icmp ne i32 %dec, 0
  br i1 %tobool6, label %if.end11, label %if.then7

if.then7:                                         ; preds = %do.body
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body8
  %13 = load i32, i32* @queue_front, align 4
  %14 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %15, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %16 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %16
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %17 = bitcast %struct.__sigset_t* %oset to i8*
  %18 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 4, i1 false)
  %19 = load i32, i32* @queue_front, align 4
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %19
  %20 = load i32, i32* %arrayidx9, align 4
  call void @zhandler(i32 %20)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp10, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  %21 = load i32, i32* %ret, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind
define internal i32 @do_module_features(%struct.module* %m, %struct.feature_enables* %enablesarr, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %enablesarr.addr = alloca %struct.feature_enables*, align 4
  %flags.addr = alloca i32, align 4
  %features = alloca i8**, align 4
  %ret = alloca i32, align 4
  %enables = alloca i32*, align 4
  %an = alloca %struct.linknode*, align 4
  %nextn = alloca %struct.linknode*, align 4
  %al = alloca i8*, align 4
  %ptr = alloca i8**, align 4
  %arg = alloca [2 x i8*], align 4
  %fep = alloca %struct.feature_enables*, align 4
  %str37 = alloca i8*, align 4
  %fep78 = alloca %struct.feature_enables*, align 4
  %fp = alloca i8**, align 4
  %esp = alloca i8*, align 4
  %on = alloca i32, align 4
  %found = alloca i32, align 4
  %n_features = alloca i32, align 4
  %ep = alloca i32*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.feature_enables* %enablesarr, %struct.feature_enables** %enablesarr.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @features_module(%struct.module* %0, i8*** %features)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else145

if.then:                                          ; preds = %entry
  store i32* null, i32** %enables, align 4
  %1 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 @enables_module(%struct.module* %1, i32** %enables)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then2
  %3 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then
  %5 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %5, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end75

land.lhs.true:                                    ; preds = %if.end5
  %6 = load %struct.module*, %struct.module** %m.addr, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 2
  %7 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool8 = icmp ne %union.linkroot* %7, null
  br i1 %tobool8, label %if.then9, label %if.end75

if.then9:                                         ; preds = %land.lhs.true
  %8 = load %struct.module*, %struct.module** %m.addr, align 4
  %autoloads10 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 2
  %9 = load %union.linkroot*, %union.linkroot** %autoloads10, align 4
  %list = bitcast %union.linkroot* %9 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %10 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %10, %struct.linknode** %an, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.then9
  %11 = load %struct.linknode*, %struct.linknode** %an, align 4
  %tobool11 = icmp ne %struct.linknode* %11, null
  br i1 %tobool11, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  %12 = load %struct.linknode*, %struct.linknode** %an, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 2
  %13 = load i8*, i8** %dat, align 4
  store i8* %13, i8** %al, align 4
  %14 = load %struct.linknode*, %struct.linknode** %an, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %14, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %15, %struct.linknode** %nextn, align 4
  %16 = load i8**, i8*** %features, align 4
  store i8** %16, i8*** %ptr, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %17 = load i8**, i8*** %ptr, align 4
  %18 = load i8*, i8** %17, align 4
  %tobool13 = icmp ne i8* %18, null
  br i1 %tobool13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %19 = load i8*, i8** %al, align 4
  %20 = load i8**, i8*** %ptr, align 4
  %21 = load i8*, i8** %20, align 4
  %call15 = call i32 @strcmp(i8* %19, i8* %21)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.body14
  br label %for.end

if.end18:                                         ; preds = %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %22 = load i8**, i8*** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %ptr, align 4
  br label %for.cond12

for.end:                                          ; preds = %if.then17, %for.cond12
  %23 = load i8**, i8*** %ptr, align 4
  %24 = load i8*, i8** %23, align 4
  %tobool19 = icmp ne i8* %24, null
  br i1 %tobool19, label %if.end72, label %if.then20

if.then20:                                        ; preds = %for.end
  %25 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %25, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.then20
  %26 = load %struct.module*, %struct.module** %m.addr, align 4
  %node24 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %nam25 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node24, i32 0, i32 1
  %27 = load i8*, i8** %nam25, align 4
  %28 = load i8*, i8** %al, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.61, i32 0, i32 0), i8* %27, i8* %28)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20
  %29 = load i8*, i8** %al, align 4
  %call27 = call i8* @dupstring(i8* %29)
  store i8* %call27, i8** %al, align 4
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %arg, i32 0, i32 0
  store i8* %call27, i8** %arrayidx, align 4
  %arrayidx28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arg, i32 0, i32 1
  store i8* null, i8** %arrayidx28, align 4
  %30 = load %struct.module*, %struct.module** %m.addr, align 4
  %node29 = getelementptr inbounds %struct.module, %struct.module* %30, i32 0, i32 0
  %nam30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 1
  %31 = load i8*, i8** %nam30, align 4
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %arg, i32 0, i32 0
  %call31 = call i32 @autofeatures(i8* null, i8* %31, i8** %arraydecay, i32 0, i32 9)
  %32 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %tobool32 = icmp ne %struct.feature_enables* %32, null
  br i1 %tobool32, label %if.then33, label %if.end71

if.then33:                                        ; preds = %if.end26
  %33 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  store %struct.feature_enables* %33, %struct.feature_enables** %fep, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc68, %if.then33
  %34 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %34, i32 0, i32 0
  %35 = load i8*, i8** %str, align 4
  %tobool35 = icmp ne i8* %35, null
  br i1 %tobool35, label %for.body36, label %for.end70

for.body36:                                       ; preds = %for.cond34
  %36 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str38 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %36, i32 0, i32 0
  %37 = load i8*, i8** %str38, align 4
  store i8* %37, i8** %str37, align 4
  %38 = load i8*, i8** %str37, align 4
  %39 = load i8, i8* %38, align 1
  %conv = sext i8 %39 to i32
  %cmp39 = icmp eq i32 %conv, 43
  br i1 %cmp39, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body36
  %40 = load i8*, i8** %str37, align 4
  %41 = load i8, i8* %40, align 1
  %conv41 = sext i8 %41 to i32
  %cmp42 = icmp eq i32 %conv41, 45
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %lor.lhs.false, %for.body36
  %42 = load i8*, i8** %str37, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr45, i8** %str37, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false
  %43 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %43, i32 0, i32 1
  %44 = load %struct.patprog*, %struct.patprog** %pat, align 4
  %tobool47 = icmp ne %struct.patprog* %44, null
  br i1 %tobool47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end46
  %45 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat48 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %45, i32 0, i32 1
  %46 = load %struct.patprog*, %struct.patprog** %pat48, align 4
  %47 = load i8*, i8** %al, align 4
  %call49 = call i32 @pattry(%struct.patprog* %46, i8* %47)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then53, label %if.end67

cond.false:                                       ; preds = %if.end46
  %48 = load i8*, i8** %al, align 4
  %49 = load i8*, i8** %str37, align 4
  %call51 = call i32 @strcmp(i8* %48, i8* %49)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end67, label %if.then53

if.then53:                                        ; preds = %cond.false, %cond.true
  store i32 1, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then53
  %50 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str54 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %50, i32 0, i32 0
  %51 = load i8*, i8** %str54, align 4
  %tobool55 = icmp ne i8* %51, null
  br i1 %tobool55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %arrayidx56 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %52, i32 1
  %str57 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx56, i32 0, i32 0
  %53 = load i8*, i8** %str57, align 4
  %54 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str58 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %54, i32 0, i32 0
  store i8* %53, i8** %str58, align 4
  %55 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %arrayidx59 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %55, i32 1
  %pat60 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %arrayidx59, i32 0, i32 1
  %56 = load %struct.patprog*, %struct.patprog** %pat60, align 4
  %57 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat61 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %57, i32 0, i32 1
  store %struct.patprog* %56, %struct.patprog** %pat61, align 4
  %58 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %incdec.ptr62 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %58, i32 1
  store %struct.feature_enables* %incdec.ptr62, %struct.feature_enables** %fep, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat63 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %59, i32 0, i32 1
  %60 = load %struct.patprog*, %struct.patprog** %pat63, align 4
  %tobool64 = icmp ne %struct.patprog* %60, null
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %while.end
  br label %for.end70

if.end66:                                         ; preds = %while.end
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %cond.false, %cond.true
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %61 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %incdec.ptr69 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %61, i32 1
  store %struct.feature_enables* %incdec.ptr69, %struct.feature_enables** %fep, align 4
  br label %for.cond34

for.end70:                                        ; preds = %if.then65, %for.cond34
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %if.end26
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %for.end
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %62 = load %struct.linknode*, %struct.linknode** %nextn, align 4
  store %struct.linknode* %62, %struct.linknode** %an, align 4
  br label %for.cond

for.end74:                                        ; preds = %for.cond
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %land.lhs.true, %if.end5
  %63 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %tobool76 = icmp ne %struct.feature_enables* %63, null
  br i1 %tobool76, label %if.then77, label %if.else132

if.then77:                                        ; preds = %if.end75
  %64 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  store %struct.feature_enables* %64, %struct.feature_enables** %fep78, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc129, %if.then77
  %65 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %str80 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %65, i32 0, i32 0
  %66 = load i8*, i8** %str80, align 4
  %tobool81 = icmp ne i8* %66, null
  br i1 %tobool81, label %for.body82, label %for.end131

for.body82:                                       ; preds = %for.cond79
  %67 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %str83 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %67, i32 0, i32 0
  %68 = load i8*, i8** %str83, align 4
  store i8* %68, i8** %esp, align 4
  store i32 1, i32* %on, align 4
  store i32 0, i32* %found, align 4
  %69 = load i8*, i8** %esp, align 4
  %70 = load i8, i8* %69, align 1
  %conv84 = sext i8 %70 to i32
  %cmp85 = icmp eq i32 %conv84, 43
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %for.body82
  %71 = load i8*, i8** %esp, align 4
  %incdec.ptr88 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr88, i8** %esp, align 4
  br label %if.end95

if.else:                                          ; preds = %for.body82
  %72 = load i8*, i8** %esp, align 4
  %73 = load i8, i8* %72, align 1
  %conv89 = sext i8 %73 to i32
  %cmp90 = icmp eq i32 %conv89, 45
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.else
  store i32 0, i32* %on, align 4
  %74 = load i8*, i8** %esp, align 4
  %incdec.ptr93 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr93, i8** %esp, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.else
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then87
  %75 = load i8**, i8*** %features, align 4
  store i8** %75, i8*** %fp, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc115, %if.end95
  %76 = load i8**, i8*** %fp, align 4
  %77 = load i8*, i8** %76, align 4
  %tobool97 = icmp ne i8* %77, null
  br i1 %tobool97, label %for.body98, label %for.end117

for.body98:                                       ; preds = %for.cond96
  %78 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %pat99 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %78, i32 0, i32 1
  %79 = load %struct.patprog*, %struct.patprog** %pat99, align 4
  %tobool100 = icmp ne %struct.patprog* %79, null
  br i1 %tobool100, label %cond.true101, label %cond.false105

cond.true101:                                     ; preds = %for.body98
  %80 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %pat102 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %80, i32 0, i32 1
  %81 = load %struct.patprog*, %struct.patprog** %pat102, align 4
  %82 = load i8**, i8*** %fp, align 4
  %83 = load i8*, i8** %82, align 4
  %call103 = call i32 @pattry(%struct.patprog* %81, i8* %83)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then108, label %if.end114

cond.false105:                                    ; preds = %for.body98
  %84 = load i8**, i8*** %fp, align 4
  %85 = load i8*, i8** %84, align 4
  %86 = load i8*, i8** %esp, align 4
  %call106 = call i32 @strcmp(i8* %85, i8* %86)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end114, label %if.then108

if.then108:                                       ; preds = %cond.false105, %cond.true101
  %87 = load i32, i32* %on, align 4
  %88 = load i32*, i32** %enables, align 4
  %89 = load i8**, i8*** %fp, align 4
  %90 = load i8**, i8*** %features, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %89 to i32
  %sub.ptr.rhs.cast = ptrtoint i8** %90 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %arrayidx109 = getelementptr inbounds i32, i32* %88, i32 %sub.ptr.div
  store i32 %87, i32* %arrayidx109, align 4
  %91 = load i32, i32* %found, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %found, align 4
  %92 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %pat110 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %92, i32 0, i32 1
  %93 = load %struct.patprog*, %struct.patprog** %pat110, align 4
  %tobool111 = icmp ne %struct.patprog* %93, null
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.then108
  br label %for.end117

if.end113:                                        ; preds = %if.then108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %cond.false105, %cond.true101
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %94 = load i8**, i8*** %fp, align 4
  %incdec.ptr116 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %incdec.ptr116, i8*** %fp, align 4
  br label %for.cond96

for.end117:                                       ; preds = %if.then112, %for.cond96
  %95 = load i32, i32* %found, align 4
  %tobool118 = icmp ne i32 %95, 0
  br i1 %tobool118, label %if.end128, label %if.then119

if.then119:                                       ; preds = %for.end117
  %96 = load i32, i32* %flags.addr, align 4
  %and120 = and i32 %96, 1
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.end127, label %if.then122

if.then122:                                       ; preds = %if.then119
  %97 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %pat123 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %97, i32 0, i32 1
  %98 = load %struct.patprog*, %struct.patprog** %pat123, align 4
  %tobool124 = icmp ne %struct.patprog* %98, null
  %cond = select i1 %tobool124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0)
  %99 = load %struct.module*, %struct.module** %m.addr, align 4
  %node125 = getelementptr inbounds %struct.module, %struct.module* %99, i32 0, i32 0
  %nam126 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node125, i32 0, i32 1
  %100 = load i8*, i8** %nam126, align 4
  %101 = load i8*, i8** %esp, align 4
  call void (i8*, ...) @zwarn(i8* %cond, i8* %100, i8* %101)
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.then119
  store i32 1, i32* %retval, align 4
  br label %return

if.end128:                                        ; preds = %for.end117
  br label %for.inc129

for.inc129:                                       ; preds = %if.end128
  %102 = load %struct.feature_enables*, %struct.feature_enables** %fep78, align 4
  %incdec.ptr130 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %102, i32 1
  store %struct.feature_enables* %incdec.ptr130, %struct.feature_enables** %fep78, align 4
  br label %for.cond79

for.end131:                                       ; preds = %for.cond79
  br label %if.end140

if.else132:                                       ; preds = %if.end75
  %103 = load i8**, i8*** %features, align 4
  %call133 = call i32 @arrlen(i8** %103)
  store i32 %call133, i32* %n_features, align 4
  %104 = load i32*, i32** %enables, align 4
  store i32* %104, i32** %ep, align 4
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc137, %if.else132
  %105 = load i32, i32* %n_features, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %n_features, align 4
  %tobool135 = icmp ne i32 %105, 0
  br i1 %tobool135, label %for.body136, label %for.end139

for.body136:                                      ; preds = %for.cond134
  %106 = load i32*, i32** %ep, align 4
  store i32 1, i32* %106, align 4
  br label %for.inc137

for.inc137:                                       ; preds = %for.body136
  %107 = load i32*, i32** %ep, align 4
  %incdec.ptr138 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %incdec.ptr138, i32** %ep, align 4
  br label %for.cond134

for.end139:                                       ; preds = %for.cond134
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %for.end131
  %108 = load %struct.module*, %struct.module** %m.addr, align 4
  %call141 = call i32 @enables_module(%struct.module* %108, i32** %enables)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  store i32 2, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end140
  br label %if.end155

if.else145:                                       ; preds = %entry
  %109 = load %struct.feature_enables*, %struct.feature_enables** %enablesarr.addr, align 4
  %tobool146 = icmp ne %struct.feature_enables* %109, null
  br i1 %tobool146, label %if.then147, label %if.end154

if.then147:                                       ; preds = %if.else145
  %110 = load i32, i32* %flags.addr, align 4
  %and148 = and i32 %110, 1
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.end153, label %if.then150

if.then150:                                       ; preds = %if.then147
  %111 = load %struct.module*, %struct.module** %m.addr, align 4
  %node151 = getelementptr inbounds %struct.module, %struct.module* %111, i32 0, i32 0
  %nam152 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node151, i32 0, i32 1
  %112 = load i8*, i8** %nam152, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i32 0, i32 0), i8* %112)
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.then147
  store i32 1, i32* %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.else145
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end144
  %113 = load i32, i32* %ret, align 4
  store i32 %113, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end155, %if.end153, %if.then143, %if.end127, %if.end
  %114 = load i32, i32* %retval, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind
define void @add_dep(i8* %name, i8* %from) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %from.addr = alloca i8*, align 4
  %node = alloca %struct.linknode*, align 4
  %m = alloca %struct.module*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %from, i8** %from.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call %struct.module* @find_module(i8* %0, i32 3, i8** %name.addr)
  store %struct.module* %call, %struct.module** %m, align 4
  %1 = load %struct.module*, %struct.module** %m, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %1, i32 0, i32 3
  %2 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool = icmp ne %union.linkroot* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %union.linkroot* @znewlinklist()
  %3 = load %struct.module*, %struct.module** %m, align 4
  %deps2 = getelementptr inbounds %struct.module, %struct.module* %3, i32 0, i32 3
  store %union.linkroot* %call1, %union.linkroot** %deps2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.module*, %struct.module** %m, align 4
  %deps3 = getelementptr inbounds %struct.module, %struct.module* %4, i32 0, i32 3
  %5 = load %union.linkroot*, %union.linkroot** %deps3, align 4
  %list = bitcast %union.linkroot* %5 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %6 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %6, %struct.linknode** %node, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool4 = icmp ne %struct.linknode* %7, null
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 2
  %9 = load i8*, i8** %dat, align 4
  %10 = load i8*, i8** %from.addr, align 4
  %call5 = call i32 @strcmp(i8* %9, i8* %10)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %tobool6, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %12, i32 0, i32 0
  %13 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %13, %struct.linknode** %node, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool7 = icmp ne %struct.linknode* %14, null
  br i1 %tobool7, label %if.end14, label %if.then8

if.then8:                                         ; preds = %for.end
  %15 = load %struct.module*, %struct.module** %m, align 4
  %deps9 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 3
  %16 = load %union.linkroot*, %union.linkroot** %deps9, align 4
  %17 = load %struct.module*, %struct.module** %m, align 4
  %deps10 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 3
  %18 = load %union.linkroot*, %union.linkroot** %deps10, align 4
  %list11 = bitcast %union.linkroot* %18 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list11, i32 0, i32 1
  %19 = load %struct.linknode*, %struct.linknode** %last, align 4
  %20 = load i8*, i8** %from.addr, align 4
  %call12 = call i8* @ztrdup(i8* %20)
  %call13 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %16, %struct.linknode* %19, i8* %call12)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %for.end
  ret void
}

; Function Attrs: noinline nounwind
define i32 @bin_zmodload(i8* %nam, i8** %args, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %ops_bcpf = alloca i32, align 4
  %ops_au = alloca i32, align 4
  %ret = alloca i32, align 4
  %autoopts = alloca i32, align 4
  %fonly = alloca i8*, align 4
  %fp = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp249 = alloca %struct.__sigset_t, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 98
  %1 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 99
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind8 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [128 x i8], [128 x i8]* %ind8, i32 0, i32 112
  %5 = load i8, i8* %arrayidx9, align 4
  %conv10 = zext i8 %5 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false7
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind13 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [128 x i8], [128 x i8]* %ind13, i32 0, i32 102
  %7 = load i8, i8* %arrayidx14, align 2
  %conv15 = zext i8 %7 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp16, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %ops_bcpf, align 4
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind18 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [128 x i8], [128 x i8]* %ind18, i32 0, i32 97
  %10 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %lor.end29, label %lor.rhs23

lor.rhs23:                                        ; preds = %lor.end
  %11 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind24 = getelementptr inbounds %struct.options, %struct.options* %11, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [128 x i8], [128 x i8]* %ind24, i32 0, i32 117
  %12 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %12 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br label %lor.end29

lor.end29:                                        ; preds = %lor.rhs23, %lor.end
  %13 = phi i1 [ true, %lor.end ], [ %cmp27, %lor.rhs23 ]
  %lor.ext30 = zext i1 %13 to i32
  store i32 %lor.ext30, i32* %ops_au, align 4
  store i32 1, i32* %ret, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** %fonly, align 4
  %14 = load i32, i32* %ops_bcpf, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end29
  %15 = load i32, i32* %ops_au, align 4
  %tobool31 = icmp ne i32 %15, 0
  br i1 %tobool31, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.end29
  %17 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind32 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [128 x i8], [128 x i8]* %ind32, i32 0, i32 70
  %18 = load i8, i8* %arrayidx33, align 2
  %conv34 = zext i8 %18 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end46

land.lhs.true37:                                  ; preds = %if.end
  %19 = load i32, i32* %ops_bcpf, align 4
  %tobool38 = icmp ne i32 %19, 0
  br i1 %tobool38, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true37
  %20 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind40 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [128 x i8], [128 x i8]* %ind40, i32 0, i32 117
  %21 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %21 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false39, %land.lhs.true37
  %22 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %lor.lhs.false39, %if.end
  %23 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind47 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [128 x i8], [128 x i8]* %ind47, i32 0, i32 65
  %24 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %24 to i32
  %cmp50 = icmp ne i32 %conv49, 0
  br i1 %cmp50, label %if.then58, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end46
  %25 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind53 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [128 x i8], [128 x i8]* %ind53, i32 0, i32 82
  %26 = load i8, i8* %arrayidx54, align 2
  %conv55 = zext i8 %26 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %if.then58, label %if.end89

if.then58:                                        ; preds = %lor.lhs.false52, %if.end46
  %27 = load i32, i32* %ops_bcpf, align 4
  %tobool59 = icmp ne i32 %27, 0
  br i1 %tobool59, label %if.then80, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.then58
  %28 = load i32, i32* %ops_au, align 4
  %tobool61 = icmp ne i32 %28, 0
  br i1 %tobool61, label %if.then80, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false60
  %29 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind63 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [128 x i8], [128 x i8]* %ind63, i32 0, i32 100
  %30 = load i8, i8* %arrayidx64, align 4
  %conv65 = zext i8 %30 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then80, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false62
  %31 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind69 = getelementptr inbounds %struct.options, %struct.options* %31, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [128 x i8], [128 x i8]* %ind69, i32 0, i32 82
  %32 = load i8, i8* %arrayidx70, align 2
  %conv71 = zext i8 %32 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end81

land.lhs.true74:                                  ; preds = %lor.lhs.false68
  %33 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind75 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [128 x i8], [128 x i8]* %ind75, i32 0, i32 101
  %34 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %34 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true74, %lor.lhs.false62, %lor.lhs.false60, %if.then58
  %35 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end81:                                         ; preds = %land.lhs.true74, %lor.lhs.false68
  %36 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind82 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [128 x i8], [128 x i8]* %ind82, i32 0, i32 101
  %37 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %37 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br i1 %cmp85, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end81
  %38 = load i8*, i8** %nam.addr, align 4
  %39 = load i8**, i8*** %args.addr, align 4
  %40 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call = call i32 @bin_zmodload_alias(i8* %38, i8** %39, %struct.options* %40)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end81
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %lor.lhs.false52
  %41 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind90 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [128 x i8], [128 x i8]* %ind90, i32 0, i32 100
  %42 = load i8, i8* %arrayidx91, align 4
  %conv92 = zext i8 %42 to i32
  %cmp93 = icmp ne i32 %conv92, 0
  br i1 %cmp93, label %land.lhs.true95, label %if.end102

land.lhs.true95:                                  ; preds = %if.end89
  %43 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind96 = getelementptr inbounds %struct.options, %struct.options* %43, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [128 x i8], [128 x i8]* %ind96, i32 0, i32 97
  %44 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %44 to i32
  %cmp99 = icmp ne i32 %conv98, 0
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %land.lhs.true95
  %45 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %land.lhs.true95, %if.end89
  %46 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind103 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [128 x i8], [128 x i8]* %ind103, i32 0, i32 117
  %47 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %47 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %land.lhs.true108, label %if.end111

land.lhs.true108:                                 ; preds = %if.end102
  %48 = load i8**, i8*** %args.addr, align 4
  %49 = load i8*, i8** %48, align 4
  %tobool109 = icmp ne i8* %49, null
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %land.lhs.true108
  %50 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %land.lhs.true108, %if.end102
  %51 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind112 = getelementptr inbounds %struct.options, %struct.options* %51, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [128 x i8], [128 x i8]* %ind112, i32 0, i32 101
  %52 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %52 to i32
  %cmp115 = icmp ne i32 %conv114, 0
  br i1 %cmp115, label %land.lhs.true117, label %if.end160

land.lhs.true117:                                 ; preds = %if.end111
  %53 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind118 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [128 x i8], [128 x i8]* %ind118, i32 0, i32 73
  %54 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %54 to i32
  %cmp121 = icmp ne i32 %conv120, 0
  br i1 %cmp121, label %if.then159, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %land.lhs.true117
  %55 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind124 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [128 x i8], [128 x i8]* %ind124, i32 0, i32 76
  %56 = load i8, i8* %arrayidx125, align 4
  %conv126 = zext i8 %56 to i32
  %cmp127 = icmp ne i32 %conv126, 0
  br i1 %cmp127, label %if.then159, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false123
  %57 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind130 = getelementptr inbounds %struct.options, %struct.options* %57, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [128 x i8], [128 x i8]* %ind130, i32 0, i32 97
  %58 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %58 to i32
  %cmp133 = icmp ne i32 %conv132, 0
  br i1 %cmp133, label %land.lhs.true135, label %lor.lhs.false141

land.lhs.true135:                                 ; preds = %lor.lhs.false129
  %59 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind136 = getelementptr inbounds %struct.options, %struct.options* %59, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [128 x i8], [128 x i8]* %ind136, i32 0, i32 70
  %60 = load i8, i8* %arrayidx137, align 2
  %conv138 = zext i8 %60 to i32
  %cmp139 = icmp ne i32 %conv138, 0
  br i1 %cmp139, label %lor.lhs.false141, label %if.then159

lor.lhs.false141:                                 ; preds = %land.lhs.true135, %lor.lhs.false129
  %61 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind142 = getelementptr inbounds %struct.options, %struct.options* %61, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [128 x i8], [128 x i8]* %ind142, i32 0, i32 100
  %62 = load i8, i8* %arrayidx143, align 4
  %conv144 = zext i8 %62 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %if.then159, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false141
  %63 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind148 = getelementptr inbounds %struct.options, %struct.options* %63, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [128 x i8], [128 x i8]* %ind148, i32 0, i32 105
  %64 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %64 to i32
  %cmp151 = icmp ne i32 %conv150, 0
  br i1 %cmp151, label %if.then159, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false147
  %65 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind154 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [128 x i8], [128 x i8]* %ind154, i32 0, i32 117
  %66 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %66 to i32
  %cmp157 = icmp ne i32 %conv156, 0
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %lor.lhs.false153, %lor.lhs.false147, %lor.lhs.false141, %land.lhs.true135, %lor.lhs.false123, %land.lhs.true117
  %67 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %lor.lhs.false153, %if.end111
  %68 = load i8*, i8** %fonly, align 4
  store i8* %68, i8** %fp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end160
  %69 = load i8*, i8** %fp, align 4
  %70 = load i8, i8* %69, align 1
  %tobool161 = icmp ne i8 %70, 0
  br i1 %tobool161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind162 = getelementptr inbounds %struct.options, %struct.options* %71, i32 0, i32 0
  %72 = load i8*, i8** %fp, align 4
  %73 = load i8, i8* %72, align 1
  %idxprom = zext i8 %73 to i32
  %arrayidx163 = getelementptr inbounds [128 x i8], [128 x i8]* %ind162, i32 0, i32 %idxprom
  %74 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %74 to i32
  %cmp165 = icmp ne i32 %conv164, 0
  br i1 %cmp165, label %land.lhs.true167, label %if.end175

land.lhs.true167:                                 ; preds = %for.body
  %75 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind168 = getelementptr inbounds %struct.options, %struct.options* %75, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [128 x i8], [128 x i8]* %ind168, i32 0, i32 70
  %76 = load i8, i8* %arrayidx169, align 2
  %conv170 = zext i8 %76 to i32
  %cmp171 = icmp ne i32 %conv170, 0
  br i1 %cmp171, label %if.end175, label %if.then173

if.then173:                                       ; preds = %land.lhs.true167
  %77 = load i8*, i8** %nam.addr, align 4
  %78 = load i8*, i8** %fp, align 4
  %79 = load i8, i8* %78, align 1
  %conv174 = sext i8 %79 to i32
  call void (i8*, i8*, ...) @zwarnnam(i8* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 %conv174)
  store i32 1, i32* %retval, align 4
  br label %return

if.end175:                                        ; preds = %land.lhs.true167, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end175
  %80 = load i8*, i8** %fp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr, i8** %fp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %82 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind176 = getelementptr inbounds %struct.options, %struct.options* %82, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [128 x i8], [128 x i8]* %ind176, i32 0, i32 70
  %83 = load i8, i8* %arrayidx177, align 2
  %conv178 = zext i8 %83 to i32
  %cmp179 = icmp ne i32 %conv178, 0
  br i1 %cmp179, label %if.then181, label %if.else

if.then181:                                       ; preds = %for.end
  %84 = load i8*, i8** %nam.addr, align 4
  %85 = load i8**, i8*** %args.addr, align 4
  %86 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call182 = call i32 @bin_zmodload_features(i8* %84, i8** %85, %struct.options* %86)
  store i32 %call182, i32* %ret, align 4
  br label %if.end240

if.else:                                          ; preds = %for.end
  %87 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind183 = getelementptr inbounds %struct.options, %struct.options* %87, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [128 x i8], [128 x i8]* %ind183, i32 0, i32 101
  %88 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %88 to i32
  %cmp186 = icmp ne i32 %conv185, 0
  br i1 %cmp186, label %if.then188, label %if.else190

if.then188:                                       ; preds = %if.else
  %89 = load i8*, i8** %nam.addr, align 4
  %90 = load i8**, i8*** %args.addr, align 4
  %91 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call189 = call i32 @bin_zmodload_exist(i8* %89, i8** %90, %struct.options* %91)
  store i32 %call189, i32* %ret, align 4
  br label %if.end239

if.else190:                                       ; preds = %if.else
  %92 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind191 = getelementptr inbounds %struct.options, %struct.options* %92, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [128 x i8], [128 x i8]* %ind191, i32 0, i32 100
  %93 = load i8, i8* %arrayidx192, align 4
  %conv193 = zext i8 %93 to i32
  %cmp194 = icmp ne i32 %conv193, 0
  br i1 %cmp194, label %if.then196, label %if.else198

if.then196:                                       ; preds = %if.else190
  %94 = load i8*, i8** %nam.addr, align 4
  %95 = load i8**, i8*** %args.addr, align 4
  %96 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call197 = call i32 @bin_zmodload_dep(i8* %94, i8** %95, %struct.options* %96)
  store i32 %call197, i32* %ret, align 4
  br label %if.end238

if.else198:                                       ; preds = %if.else190
  %97 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind199 = getelementptr inbounds %struct.options, %struct.options* %97, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [128 x i8], [128 x i8]* %ind199, i32 0, i32 98
  %98 = load i8, i8* %arrayidx200, align 2
  %conv201 = zext i8 %98 to i32
  %cmp202 = icmp ne i32 %conv201, 0
  %conv203 = zext i1 %cmp202 to i32
  %99 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind204 = getelementptr inbounds %struct.options, %struct.options* %99, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [128 x i8], [128 x i8]* %ind204, i32 0, i32 99
  %100 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %100 to i32
  %cmp207 = icmp ne i32 %conv206, 0
  %conv208 = zext i1 %cmp207 to i32
  %add = add nsw i32 %conv203, %conv208
  %101 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind209 = getelementptr inbounds %struct.options, %struct.options* %101, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [128 x i8], [128 x i8]* %ind209, i32 0, i32 112
  %102 = load i8, i8* %arrayidx210, align 4
  %conv211 = zext i8 %102 to i32
  %cmp212 = icmp ne i32 %conv211, 0
  %conv213 = zext i1 %cmp212 to i32
  %add214 = add nsw i32 %add, %conv213
  %103 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind215 = getelementptr inbounds %struct.options, %struct.options* %103, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [128 x i8], [128 x i8]* %ind215, i32 0, i32 102
  %104 = load i8, i8* %arrayidx216, align 2
  %conv217 = zext i8 %104 to i32
  %cmp218 = icmp ne i32 %conv217, 0
  %conv219 = zext i1 %cmp218 to i32
  %add220 = add nsw i32 %add214, %conv219
  store i32 %add220, i32* %autoopts, align 4
  %tobool221 = icmp ne i32 %add220, 0
  br i1 %tobool221, label %if.then228, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.else198
  %105 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind223 = getelementptr inbounds %struct.options, %struct.options* %105, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [128 x i8], [128 x i8]* %ind223, i32 0, i32 97
  %106 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %106 to i32
  %cmp226 = icmp ne i32 %conv225, 0
  br i1 %cmp226, label %if.then228, label %if.else235

if.then228:                                       ; preds = %lor.lhs.false222, %if.else198
  %107 = load i32, i32* %autoopts, align 4
  %cmp229 = icmp sgt i32 %107, 1
  br i1 %cmp229, label %if.then231, label %if.else232

if.then231:                                       ; preds = %if.then228
  %108 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %ret, align 4
  br label %if.end234

if.else232:                                       ; preds = %if.then228
  %109 = load i8*, i8** %nam.addr, align 4
  %110 = load i8**, i8*** %args.addr, align 4
  %111 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call233 = call i32 @bin_zmodload_auto(i8* %109, i8** %110, %struct.options* %111)
  store i32 %call233, i32* %ret, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.else232, %if.then231
  br label %if.end237

if.else235:                                       ; preds = %lor.lhs.false222
  %112 = load i8*, i8** %nam.addr, align 4
  %113 = load i8**, i8*** %args.addr, align 4
  %114 = load %struct.options*, %struct.options** %ops.addr, align 4
  %call236 = call i32 @bin_zmodload_load(i8* %112, i8** %113, %struct.options* %114)
  store i32 %call236, i32* %ret, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.else235, %if.end234
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.then196
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.then188
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.then181
  br label %do.body

do.body:                                          ; preds = %if.end240
  %115 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %115, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool241 = icmp ne i32 %dec, 0
  br i1 %tobool241, label %if.end250, label %if.then242

if.then242:                                       ; preds = %do.body
  br label %do.body243

do.body243:                                       ; preds = %if.then242
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body243
  %116 = load i32, i32* @queue_front, align 4
  %117 = load i32, i32* @queue_rear, align 4
  %cmp244 = icmp ne i32 %116, %117
  br i1 %cmp244, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %118 = load i32, i32* @queue_front, align 4
  %add246 = add nsw i32 %118, 1
  %rem = srem i32 %add246, 128
  store i32 %rem, i32* @queue_front, align 4
  %119 = load i32, i32* @queue_front, align 4
  %arrayidx247 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %119
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx247)
  %120 = bitcast %struct.__sigset_t* %oset to i8*
  %121 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %120, i8* %121, i32 128, i32 4, i1 false)
  %122 = load i32, i32* @queue_front, align 4
  %arrayidx248 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %122
  %123 = load i32, i32* %arrayidx248, align 4
  call void @zhandler(i32 %123)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp249, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end250

if.end250:                                        ; preds = %do.end, %do.body
  br label %do.end251

do.end251:                                        ; preds = %if.end250
  %124 = load i32, i32* %ret, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end251, %if.then173, %if.then159, %if.then110, %if.then101, %if.then87, %if.then80, %if.then45, %if.then
  %125 = load i32, i32* %retval, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_alias(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %m = alloca %struct.module*, align 4
  %eqpos = alloca i8*, align 4
  %aliasname = alloca i8*, align 4
  %mname = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 82
  %3 = load i8, i8* %arrayidx, align 2
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 15
  %7 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 76
  %9 = load i8, i8* %arrayidx4, align 4
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  %cond = select i1 %cmp6, i32 1, i32 0
  %call = call i32 @scanhashtable(%struct.hashtable* %5, i32 1, i32 64, i32 0, void (%struct.hashnode*, i32)* %7, i32 %cond)
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %10 = load i8**, i8*** %args.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %args.addr, align 4
  %13 = load i8*, i8** %12, align 4
  %call10 = call i8* @strchr(i8* %13, i32 61)
  store i8* %call10, i8** %eqpos, align 4
  %14 = load i8*, i8** %eqpos, align 4
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load i8*, i8** %eqpos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %15, i32 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  store i8* %cond12, i8** %aliasname, align 4
  %16 = load i8*, i8** %eqpos, align 4
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  %17 = load i8*, i8** %eqpos, align 4
  store i8 0, i8* %17, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %cond.end
  %18 = load i8**, i8*** %args.addr, align 4
  %19 = load i8*, i8** %18, align 4
  %call16 = call i32 @modname_ok(i8* %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  %20 = load i8*, i8** %nam.addr, align 4
  %21 = load i8**, i8*** %args.addr, align 4
  %22 = load i8*, i8** %21, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %22)
  store i32 1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %23 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind20 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [128 x i8], [128 x i8]* %ind20, i32 0, i32 82
  %24 = load i8, i8* %arrayidx21, align 2
  %conv22 = zext i8 %24 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.else36

if.then25:                                        ; preds = %if.end19
  %25 = load i8*, i8** %aliasname, align 4
  %tobool26 = icmp ne i8* %25, null
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  %26 = load i8*, i8** %nam.addr, align 4
  %27 = load i8**, i8*** %args.addr, align 4
  %28 = load i8*, i8** %27, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i32 0, i32 0), i8* %28)
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then25
  %29 = load i8**, i8*** %args.addr, align 4
  %30 = load i8*, i8** %29, align 4
  %call29 = call %struct.module* @find_module(i8* %30, i32 0, i8** null)
  store %struct.module* %call29, %struct.module** %m, align 4
  %31 = load %struct.module*, %struct.module** %m, align 4
  %tobool30 = icmp ne %struct.module* %31, null
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  %32 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %33 = load i32, i32* %flags, align 4
  %and = and i32 %33, 64
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then31
  %34 = load i8*, i8** %nam.addr, align 4
  %35 = load i8**, i8*** %args.addr, align 4
  %36 = load i8*, i8** %35, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8* %36)
  store i32 1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then31
  %37 = load %struct.module*, %struct.module** %m, align 4
  call void @delete_module(%struct.module* %37)
  br label %if.end35

if.else:                                          ; preds = %if.end28
  %38 = load i8*, i8** %nam.addr, align 4
  %39 = load i8**, i8*** %args.addr, align 4
  %40 = load i8*, i8** %39, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i8* %40)
  store i32 1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end34
  br label %if.end96

if.else36:                                        ; preds = %if.end19
  %41 = load i8*, i8** %aliasname, align 4
  %tobool37 = icmp ne i8* %41, null
  br i1 %tobool37, label %if.then38, label %if.else74

if.then38:                                        ; preds = %if.else36
  %42 = load i8*, i8** %aliasname, align 4
  store i8* %42, i8** %mname, align 4
  %43 = load i8*, i8** %aliasname, align 4
  %call39 = call i32 @modname_ok(i8* %43)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then38
  %44 = load i8*, i8** %nam.addr, align 4
  %45 = load i8*, i8** %aliasname, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %45)
  store i32 1, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then38
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end42
  %46 = load i8*, i8** %mname, align 4
  %47 = load i8**, i8*** %args.addr, align 4
  %48 = load i8*, i8** %47, align 4
  %call43 = call i32 @strcmp(i8* %46, i8* %48)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %do.body
  %49 = load i8*, i8** %nam.addr, align 4
  %50 = load i8**, i8*** %args.addr, align 4
  %51 = load i8*, i8** %50, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i32 0, i32 0), i8* %51)
  store i32 1, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end46
  %52 = load i8*, i8** %mname, align 4
  %call47 = call %struct.module* @find_module(i8* %52, i32 0, i8** null)
  store %struct.module* %call47, %struct.module** %m, align 4
  %tobool48 = icmp ne %struct.module* %call47, null
  br i1 %tobool48, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %53 = load %struct.module*, %struct.module** %m, align 4
  %node49 = getelementptr inbounds %struct.module, %struct.module* %53, i32 0, i32 0
  %flags50 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node49, i32 0, i32 2
  %54 = load i32, i32* %flags50, align 4
  %and51 = and i32 %54, 64
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %55 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %55, i32 0, i32 1
  %alias = bitcast %union.anon* %u to i8**
  %56 = load i8*, i8** %alias, align 4
  store i8* %56, i8** %mname, align 4
  %tobool53 = icmp ne i8* %56, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %57 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool53, %land.rhs ]
  br i1 %57, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %58 = load i8**, i8*** %args.addr, align 4
  %59 = load i8*, i8** %58, align 4
  %call54 = call %struct.module* @find_module(i8* %59, i32 0, i8** null)
  store %struct.module* %call54, %struct.module** %m, align 4
  %60 = load %struct.module*, %struct.module** %m, align 4
  %tobool55 = icmp ne %struct.module* %60, null
  br i1 %tobool55, label %if.then56, label %if.else65

if.then56:                                        ; preds = %do.end
  %61 = load %struct.module*, %struct.module** %m, align 4
  %node57 = getelementptr inbounds %struct.module, %struct.module* %61, i32 0, i32 0
  %flags58 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node57, i32 0, i32 2
  %62 = load i32, i32* %flags58, align 4
  %and59 = and i32 %62, 64
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then56
  %63 = load i8*, i8** %nam.addr, align 4
  %64 = load i8**, i8*** %args.addr, align 4
  %65 = load i8*, i8** %64, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8* %65)
  store i32 1, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then56
  %66 = load %struct.module*, %struct.module** %m, align 4
  %u63 = getelementptr inbounds %struct.module, %struct.module* %66, i32 0, i32 1
  %alias64 = bitcast %union.anon* %u63 to i8**
  %67 = load i8*, i8** %alias64, align 4
  call void @zsfree(i8* %67)
  br label %if.end70

if.else65:                                        ; preds = %do.end
  %call66 = call i8* @zshcalloc(i32 28)
  %68 = bitcast i8* %call66 to %struct.module*
  store %struct.module* %68, %struct.module** %m, align 4
  %69 = load %struct.module*, %struct.module** %m, align 4
  %node67 = getelementptr inbounds %struct.module, %struct.module* %69, i32 0, i32 0
  %flags68 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node67, i32 0, i32 2
  store i32 64, i32* %flags68, align 4
  %70 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %70, i32 0, i32 8
  %71 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %72 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %73 = load i8**, i8*** %args.addr, align 4
  %74 = load i8*, i8** %73, align 4
  %call69 = call i8* @ztrdup(i8* %74)
  %75 = load %struct.module*, %struct.module** %m, align 4
  %76 = bitcast %struct.module* %75 to i8*
  call void %71(%struct.hashtable* %72, i8* %call69, i8* %76)
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.end62
  %77 = load i8*, i8** %aliasname, align 4
  %call71 = call i8* @ztrdup(i8* %77)
  %78 = load %struct.module*, %struct.module** %m, align 4
  %u72 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 1
  %alias73 = bitcast %union.anon* %u72 to i8**
  store i8* %call71, i8** %alias73, align 4
  br label %if.end95

if.else74:                                        ; preds = %if.else36
  %79 = load i8**, i8*** %args.addr, align 4
  %80 = load i8*, i8** %79, align 4
  %call75 = call %struct.module* @find_module(i8* %80, i32 0, i8** null)
  store %struct.module* %call75, %struct.module** %m, align 4
  %tobool76 = icmp ne %struct.module* %call75, null
  br i1 %tobool76, label %if.then77, label %if.else93

if.then77:                                        ; preds = %if.else74
  %81 = load %struct.module*, %struct.module** %m, align 4
  %node78 = getelementptr inbounds %struct.module, %struct.module* %81, i32 0, i32 0
  %flags79 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node78, i32 0, i32 2
  %82 = load i32, i32* %flags79, align 4
  %and80 = and i32 %82, 64
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.else91

if.then82:                                        ; preds = %if.then77
  %83 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode83 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %83, i32 0, i32 15
  %84 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode83, align 4
  %85 = load %struct.module*, %struct.module** %m, align 4
  %node84 = getelementptr inbounds %struct.module, %struct.module* %85, i32 0, i32 0
  %86 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind85 = getelementptr inbounds %struct.options, %struct.options* %86, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [128 x i8], [128 x i8]* %ind85, i32 0, i32 76
  %87 = load i8, i8* %arrayidx86, align 4
  %conv87 = zext i8 %87 to i32
  %cmp88 = icmp ne i32 %conv87, 0
  %cond90 = select i1 %cmp88, i32 1, i32 0
  call void %84(%struct.hashnode* %node84, i32 %cond90)
  br label %if.end92

if.else91:                                        ; preds = %if.then77
  %88 = load i8*, i8** %nam.addr, align 4
  %89 = load i8**, i8*** %args.addr, align 4
  %90 = load i8*, i8** %89, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8* %90)
  store i32 1, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then82
  br label %if.end94

if.else93:                                        ; preds = %if.else74
  %91 = load i8*, i8** %nam.addr, align 4
  %92 = load i8**, i8*** %args.addr, align 4
  %93 = load i8*, i8** %92, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i8* %93)
  store i32 1, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.end92
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end70
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end35
  br label %for.inc

for.inc:                                          ; preds = %if.end96
  %94 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else93, %if.else91, %if.then61, %if.then45, %if.then41, %if.else, %if.then33, %if.then27, %if.then18, %if.end, %if.then2
  %95 = load i32, i32* %retval, align 4
  ret i32 %95
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_features(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %iarg = alloca i32, align 4
  %modname = alloca i8*, align 4
  %patprogs = alloca %struct.patprog**, align 4
  %features = alloca %struct.feature_enables*, align 4
  %fep = alloca %struct.feature_enables*, align 4
  %printflags = alloca i32, align 4
  %argp = alloca i8**, align 4
  %patprogp = alloca %struct.patprog**, align 4
  %arg = alloca i8*, align 4
  %m = alloca %struct.module*, align 4
  %features70 = alloca i8**, align 4
  %fp = alloca i8**, align 4
  %arrset = alloca i8**, align 4
  %arrp = alloca i8**, align 4
  %enables = alloca i32*, align 4
  %ep = alloca i32*, align 4
  %param = alloca i8*, align 4
  %ln = alloca %struct.linknode*, align 4
  %fstr = alloca i8*, align 4
  %sense = alloca i32, align 4
  %al = alloca i8*, align 4
  %arg219 = alloca i8*, align 4
  %on = alloca i32, align 4
  %found = alloca i32, align 4
  %arrlen = alloca i32, align 4
  %argp312 = alloca i8**, align 4
  %arg316 = alloca i8*, align 4
  %onoff = alloca i8*, align 4
  %term = alloca i32, align 4
  %argp370 = alloca i8**, align 4
  %arg374 = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %modname, align 4
  %2 = load i8*, i8** %modname, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %4 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 76
  %5 = load i8, i8* %arrayidx, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end24

if.then2:                                         ; preds = %if.else
  store i32 17, i32* %printflags, align 4
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind3 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [128 x i8], [128 x i8]* %ind3, i32 0, i32 80
  %7 = load i8, i8* %arrayidx4, align 4
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then2
  %8 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  %9 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind9 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* %ind9, i32 0, i32 108
  %10 = load i8, i8* %arrayidx10, align 4
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  %11 = load i32, i32* %printflags, align 4
  %or = or i32 %11, 32
  store i32 %or, i32* %printflags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %12 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind16 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [128 x i8], [128 x i8]* %ind16, i32 0, i32 97
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  %14 = load i32, i32* %printflags, align 4
  %or22 = or i32 %14, 64
  store i32 %or22, i32* %printflags, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end15
  %15 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 15
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %18 = load i32, i32* %printflags, align 4
  %call = call i32 @scanhashtable(%struct.hashtable* %15, i32 1, i32 0, i32 64, void (%struct.hashnode*, i32)* %17, i32 %18)
  store i32 0, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %19 = load i8*, i8** %modname, align 4
  %tobool26 = icmp ne i8* %19, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  %20 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end25
  %21 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind29 = getelementptr inbounds %struct.options, %struct.options* %21, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [128 x i8], [128 x i8]* %ind29, i32 0, i32 109
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %22 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.else50

if.then34:                                        ; preds = %if.end28
  %23 = load i8**, i8*** %args.addr, align 4
  %call35 = call i32 @arrlen(i8** %23)
  %mul = mul i32 %call35, 4
  %call36 = call i8* @zhalloc(i32 %mul)
  %24 = bitcast i8* %call36 to %struct.patprog**
  store %struct.patprog** %24, %struct.patprog*** %patprogs, align 4
  store %struct.patprog** %24, %struct.patprog*** %patprogp, align 4
  %25 = load i8**, i8*** %args.addr, align 4
  store i8** %25, i8*** %argp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then34
  %26 = load i8**, i8*** %argp, align 4
  %27 = load i8*, i8** %26, align 4
  %tobool37 = icmp ne i8* %27, null
  br i1 %tobool37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8**, i8*** %argp, align 4
  %29 = load i8*, i8** %28, align 4
  store i8* %29, i8** %arg, align 4
  %30 = load i8*, i8** %arg, align 4
  %31 = load i8, i8* %30, align 1
  %conv38 = sext i8 %31 to i32
  %cmp39 = icmp eq i32 %conv38, 43
  br i1 %cmp39, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %32 = load i8*, i8** %arg, align 4
  %33 = load i8, i8* %32, align 1
  %conv41 = sext i8 %33 to i32
  %cmp42 = icmp eq i32 %conv41, 45
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %lor.lhs.false, %for.body
  %34 = load i8*, i8** %arg, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr45, i8** %arg, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false
  %35 = load i8*, i8** %arg, align 4
  call void @tokenize(i8* %35)
  %36 = load i8*, i8** %arg, align 4
  %call47 = call %struct.patprog* @patcompile(i8* %36, i32 0, i8** null)
  %37 = load %struct.patprog**, %struct.patprog*** %patprogp, align 4
  store %struct.patprog* %call47, %struct.patprog** %37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %38 = load i8**, i8*** %argp, align 4
  %incdec.ptr48 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %incdec.ptr48, i8*** %argp, align 4
  %39 = load %struct.patprog**, %struct.patprog*** %patprogp, align 4
  %incdec.ptr49 = getelementptr inbounds %struct.patprog*, %struct.patprog** %39, i32 1
  store %struct.patprog** %incdec.ptr49, %struct.patprog*** %patprogp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end51

if.else50:                                        ; preds = %if.end28
  store %struct.patprog** null, %struct.patprog*** %patprogs, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %for.end
  %40 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind52 = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [128 x i8], [128 x i8]* %ind52, i32 0, i32 108
  %41 = load i8, i8* %arrayidx53, align 4
  %conv54 = zext i8 %41 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %if.then69, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end51
  %42 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind58 = getelementptr inbounds %struct.options, %struct.options* %42, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [128 x i8], [128 x i8]* %ind58, i32 0, i32 76
  %43 = load i8, i8* %arrayidx59, align 4
  %conv60 = zext i8 %43 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %if.then69, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false57
  %44 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind64 = getelementptr inbounds %struct.options, %struct.options* %44, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [128 x i8], [128 x i8]* %ind64, i32 0, i32 101
  %45 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %45 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %if.then69, label %if.else453

if.then69:                                        ; preds = %lor.lhs.false63, %lor.lhs.false57, %if.end51
  store i8** null, i8*** %arrset, align 4
  store i8** null, i8*** %arrp, align 4
  store i32* null, i32** %enables, align 4
  %46 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind71 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [128 x i8], [128 x i8]* %ind71, i32 0, i32 80
  %47 = load i8, i8* %arrayidx72, align 4
  %conv73 = zext i8 %47 to i32
  %cmp74 = icmp sgt i32 %conv73, 3
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then69
  %48 = load %struct.options*, %struct.options** %ops.addr, align 4
  %args76 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 1
  %49 = load i8**, i8*** %args76, align 4
  %50 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind77 = getelementptr inbounds %struct.options, %struct.options* %50, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [128 x i8], [128 x i8]* %ind77, i32 0, i32 80
  %51 = load i8, i8* %arrayidx78, align 4
  %conv79 = zext i8 %51 to i32
  %shr = ashr i32 %conv79, 2
  %sub = sub nsw i32 %shr, 1
  %arrayidx80 = getelementptr inbounds i8*, i8** %49, i32 %sub
  %52 = load i8*, i8** %arrayidx80, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %52, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %param, align 4
  %53 = load i8*, i8** %modname, align 4
  %call81 = call %struct.module* @find_module(i8* %53, i32 1, i8** null)
  store %struct.module* %call81, %struct.module** %m, align 4
  %54 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind82 = getelementptr inbounds %struct.options, %struct.options* %54, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [128 x i8], [128 x i8]* %ind82, i32 0, i32 97
  %55 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %55 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br i1 %cmp85, label %if.then87, label %if.end181

if.then87:                                        ; preds = %cond.end
  %56 = load %struct.module*, %struct.module** %m, align 4
  %tobool88 = icmp ne %struct.module* %56, null
  br i1 %tobool88, label %lor.lhs.false89, label %if.then91

lor.lhs.false89:                                  ; preds = %if.then87
  %57 = load %struct.module*, %struct.module** %m, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %57, i32 0, i32 2
  %58 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool90 = icmp ne %union.linkroot* %58, null
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %lor.lhs.false89, %if.then87
  store i32 1, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %lor.lhs.false89
  %59 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind93 = getelementptr inbounds %struct.options, %struct.options* %59, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [128 x i8], [128 x i8]* %ind93, i32 0, i32 101
  %60 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %60 to i32
  %cmp96 = icmp ne i32 %conv95, 0
  br i1 %cmp96, label %if.then98, label %if.end126

if.then98:                                        ; preds = %if.end92
  %61 = load i8**, i8*** %args.addr, align 4
  store i8** %61, i8*** %fp, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc123, %if.then98
  %62 = load i8**, i8*** %fp, align 4
  %63 = load i8*, i8** %62, align 4
  %tobool100 = icmp ne i8* %63, null
  br i1 %tobool100, label %for.body101, label %for.end125

for.body101:                                      ; preds = %for.cond99
  %64 = load i8**, i8*** %fp, align 4
  %65 = load i8*, i8** %64, align 4
  store i8* %65, i8** %fstr, align 4
  store i32 1, i32* %sense, align 4
  %66 = load i8*, i8** %fstr, align 4
  %67 = load i8, i8* %66, align 1
  %conv102 = sext i8 %67 to i32
  %cmp103 = icmp eq i32 %conv102, 43
  br i1 %cmp103, label %if.then105, label %if.else107

if.then105:                                       ; preds = %for.body101
  %68 = load i8*, i8** %fstr, align 4
  %incdec.ptr106 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr106, i8** %fstr, align 4
  br label %if.end114

if.else107:                                       ; preds = %for.body101
  %69 = load i8*, i8** %fstr, align 4
  %70 = load i8, i8* %69, align 1
  %conv108 = sext i8 %70 to i32
  %cmp109 = icmp eq i32 %conv108, 45
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.else107
  %71 = load i8*, i8** %fstr, align 4
  %incdec.ptr112 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr112, i8** %fstr, align 4
  store i32 0, i32* %sense, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.else107
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then105
  %72 = load %struct.module*, %struct.module** %m, align 4
  %autoloads115 = getelementptr inbounds %struct.module, %struct.module* %72, i32 0, i32 2
  %73 = load %union.linkroot*, %union.linkroot** %autoloads115, align 4
  %74 = load i8*, i8** %fstr, align 4
  %call116 = call %struct.linknode* @linknodebystring(%union.linkroot* %73, i8* %74)
  %cmp117 = icmp ne %struct.linknode* %call116, null
  %conv118 = zext i1 %cmp117 to i32
  %75 = load i32, i32* %sense, align 4
  %cmp119 = icmp ne i32 %conv118, %75
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end114
  store i32 1, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.end114
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122
  %76 = load i8**, i8*** %fp, align 4
  %incdec.ptr124 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %incdec.ptr124, i8*** %fp, align 4
  br label %for.cond99

for.end125:                                       ; preds = %for.cond99
  store i32 0, i32* %retval, align 4
  br label %return

if.end126:                                        ; preds = %if.end92
  %77 = load i8*, i8** %param, align 4
  %tobool127 = icmp ne i8* %77, null
  br i1 %tobool127, label %if.then128, label %if.else133

if.then128:                                       ; preds = %if.end126
  %78 = load %struct.module*, %struct.module** %m, align 4
  %autoloads129 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 2
  %79 = load %union.linkroot*, %union.linkroot** %autoloads129, align 4
  %call130 = call i32 @countlinknodes(%union.linkroot* %79)
  %add = add nsw i32 %call130, 1
  %mul131 = mul i32 4, %add
  %call132 = call i8* @zalloc(i32 %mul131)
  %80 = bitcast i8* %call132 to i8**
  store i8** %80, i8*** %arrset, align 4
  store i8** %80, i8*** %arrp, align 4
  br label %if.end148

if.else133:                                       ; preds = %if.end126
  %81 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind134 = getelementptr inbounds %struct.options, %struct.options* %81, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [128 x i8], [128 x i8]* %ind134, i32 0, i32 76
  %82 = load i8, i8* %arrayidx135, align 4
  %conv136 = zext i8 %82 to i32
  %cmp137 = icmp ne i32 %conv136, 0
  br i1 %cmp137, label %if.then139, label %if.end147

if.then139:                                       ; preds = %if.else133
  %83 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %83, i32 0, i32 0
  %nam140 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %84 = load i8*, i8** %nam140, align 4
  %85 = load %struct.module*, %struct.module** %m, align 4
  %autoloads141 = getelementptr inbounds %struct.module, %struct.module* %85, i32 0, i32 2
  %86 = load %union.linkroot*, %union.linkroot** %autoloads141, align 4
  %tobool142 = icmp ne %union.linkroot* %86, null
  br i1 %tobool142, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then139
  %87 = load %struct.module*, %struct.module** %m, align 4
  %autoloads143 = getelementptr inbounds %struct.module, %struct.module* %87, i32 0, i32 2
  %88 = load %union.linkroot*, %union.linkroot** %autoloads143, align 4
  %list = bitcast %union.linkroot* %88 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %89 = load %struct.linknode*, %struct.linknode** %first, align 4
  %tobool144 = icmp ne %struct.linknode* %89, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then139
  %90 = phi i1 [ false, %if.then139 ], [ %tobool144, %land.rhs ]
  %cond145 = select i1 %90, i32 32, i32 10
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* %84, i32 %cond145)
  store i8** null, i8*** %arrp, align 4
  br label %if.end147

if.end147:                                        ; preds = %land.end, %if.else133
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.then128
  %91 = load %struct.module*, %struct.module** %m, align 4
  %autoloads149 = getelementptr inbounds %struct.module, %struct.module* %91, i32 0, i32 2
  %92 = load %union.linkroot*, %union.linkroot** %autoloads149, align 4
  %list150 = bitcast %union.linkroot* %92 to %struct.linklist*
  %first151 = getelementptr inbounds %struct.linklist, %struct.linklist* %list150, i32 0, i32 0
  %93 = load %struct.linknode*, %struct.linknode** %first151, align 4
  store %struct.linknode* %93, %struct.linknode** %ln, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc171, %if.end148
  %94 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool153 = icmp ne %struct.linknode* %94, null
  br i1 %tobool153, label %for.body154, label %for.end173

for.body154:                                      ; preds = %for.cond152
  %95 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %95, i32 0, i32 2
  %96 = load i8*, i8** %dat, align 4
  store i8* %96, i8** %al, align 4
  %97 = load i8*, i8** %param, align 4
  %tobool155 = icmp ne i8* %97, null
  br i1 %tobool155, label %if.then156, label %if.else159

if.then156:                                       ; preds = %for.body154
  %98 = load i8*, i8** %al, align 4
  %call157 = call i8* @ztrdup(i8* %98)
  %99 = load i8**, i8*** %arrp, align 4
  %incdec.ptr158 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %incdec.ptr158, i8*** %arrp, align 4
  store i8* %call157, i8** %99, align 4
  br label %if.end170

if.else159:                                       ; preds = %for.body154
  %100 = load i8*, i8** %al, align 4
  %101 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind160 = getelementptr inbounds %struct.options, %struct.options* %101, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [128 x i8], [128 x i8]* %ind160, i32 0, i32 76
  %102 = load i8, i8* %arrayidx161, align 4
  %conv162 = zext i8 %102 to i32
  %cmp163 = icmp ne i32 %conv162, 0
  br i1 %cmp163, label %land.rhs165, label %land.end167

land.rhs165:                                      ; preds = %if.else159
  %103 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %103, i32 0, i32 0
  %104 = load %struct.linknode*, %struct.linknode** %next, align 4
  %tobool166 = icmp ne %struct.linknode* %104, null
  br label %land.end167

land.end167:                                      ; preds = %land.rhs165, %if.else159
  %105 = phi i1 [ false, %if.else159 ], [ %tobool166, %land.rhs165 ]
  %cond168 = select i1 %105, i32 32, i32 10
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* %100, i32 %cond168)
  br label %if.end170

if.end170:                                        ; preds = %land.end167, %if.then156
  br label %for.inc171

for.inc171:                                       ; preds = %if.end170
  %106 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %next172 = getelementptr inbounds %struct.linknode, %struct.linknode* %106, i32 0, i32 0
  %107 = load %struct.linknode*, %struct.linknode** %next172, align 4
  store %struct.linknode* %107, %struct.linknode** %ln, align 4
  br label %for.cond152

for.end173:                                       ; preds = %for.cond152
  %108 = load i8*, i8** %param, align 4
  %tobool174 = icmp ne i8* %108, null
  br i1 %tobool174, label %if.then175, label %if.end180

if.then175:                                       ; preds = %for.end173
  %109 = load i8**, i8*** %arrp, align 4
  store i8* null, i8** %109, align 4
  %110 = load i8*, i8** %param, align 4
  %111 = load i8**, i8*** %arrset, align 4
  %call176 = call %struct.param* @setaparam(i8* %110, i8** %111)
  %tobool177 = icmp ne %struct.param* %call176, null
  br i1 %tobool177, label %if.end179, label %if.then178

if.then178:                                       ; preds = %if.then175
  store i32 1, i32* %retval, align 4
  br label %return

if.end179:                                        ; preds = %if.then175
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %for.end173
  store i32 0, i32* %retval, align 4
  br label %return

if.end181:                                        ; preds = %cond.end
  %112 = load %struct.module*, %struct.module** %m, align 4
  %tobool182 = icmp ne %struct.module* %112, null
  br i1 %tobool182, label %lor.lhs.false183, label %if.then188

lor.lhs.false183:                                 ; preds = %if.end181
  %113 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %113, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %114 = load i8*, i8** %handle, align 4
  %tobool184 = icmp ne i8* %114, null
  br i1 %tobool184, label %lor.lhs.false185, label %if.then188

lor.lhs.false185:                                 ; preds = %lor.lhs.false183
  %115 = load %struct.module*, %struct.module** %m, align 4
  %node186 = getelementptr inbounds %struct.module, %struct.module* %115, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node186, i32 0, i32 2
  %116 = load i32, i32* %flags, align 4
  %and = and i32 %116, 2
  %tobool187 = icmp ne i32 %and, 0
  br i1 %tobool187, label %if.then188, label %if.end196

if.then188:                                       ; preds = %lor.lhs.false185, %lor.lhs.false183, %if.end181
  %117 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind189 = getelementptr inbounds %struct.options, %struct.options* %117, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [128 x i8], [128 x i8]* %ind189, i32 0, i32 101
  %118 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %118 to i32
  %cmp192 = icmp ne i32 %conv191, 0
  br i1 %cmp192, label %if.end195, label %if.then194

if.then194:                                       ; preds = %if.then188
  %119 = load i8*, i8** %nam.addr, align 4
  %120 = load i8*, i8** %modname, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i32 0, i32 0), i8* %120)
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.then188
  store i32 1, i32* %retval, align 4
  br label %return

if.end196:                                        ; preds = %lor.lhs.false185
  %121 = load %struct.module*, %struct.module** %m, align 4
  %call197 = call i32 @features_module(%struct.module* %121, i8*** %features70)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then199, label %if.end209

if.then199:                                       ; preds = %if.end196
  %122 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind200 = getelementptr inbounds %struct.options, %struct.options* %122, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [128 x i8], [128 x i8]* %ind200, i32 0, i32 101
  %123 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %123 to i32
  %cmp203 = icmp ne i32 %conv202, 0
  br i1 %cmp203, label %if.end208, label %if.then205

if.then205:                                       ; preds = %if.then199
  %124 = load i8*, i8** %nam.addr, align 4
  %125 = load %struct.module*, %struct.module** %m, align 4
  %node206 = getelementptr inbounds %struct.module, %struct.module* %125, i32 0, i32 0
  %nam207 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node206, i32 0, i32 1
  %126 = load i8*, i8** %nam207, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i32 0, i32 0), i8* %126)
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.then199
  store i32 1, i32* %retval, align 4
  br label %return

if.end209:                                        ; preds = %if.end196
  %127 = load %struct.module*, %struct.module** %m, align 4
  %call210 = call i32 @enables_module(%struct.module* %127, i32** %enables)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.then212, label %if.end215

if.then212:                                       ; preds = %if.end209
  %128 = load i8*, i8** %nam.addr, align 4
  %129 = load %struct.module*, %struct.module** %m, align 4
  %node213 = getelementptr inbounds %struct.module, %struct.module* %129, i32 0, i32 0
  %nam214 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node213, i32 0, i32 1
  %130 = load i8*, i8** %nam214, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0), i8* %130)
  store i32 1, i32* %retval, align 4
  br label %return

if.end215:                                        ; preds = %if.end209
  %131 = load i8**, i8*** %args.addr, align 4
  store i8** %131, i8*** %arrp, align 4
  store i32 0, i32* %iarg, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc279, %if.end215
  %132 = load i8**, i8*** %arrp, align 4
  %133 = load i8*, i8** %132, align 4
  %tobool217 = icmp ne i8* %133, null
  br i1 %tobool217, label %for.body218, label %for.end282

for.body218:                                      ; preds = %for.cond216
  %134 = load i8**, i8*** %arrp, align 4
  %135 = load i8*, i8** %134, align 4
  store i8* %135, i8** %arg219, align 4
  store i32 0, i32* %found, align 4
  %136 = load i8*, i8** %arg219, align 4
  %137 = load i8, i8* %136, align 1
  %conv220 = sext i8 %137 to i32
  %cmp221 = icmp eq i32 %conv220, 45
  br i1 %cmp221, label %if.then223, label %if.else225

if.then223:                                       ; preds = %for.body218
  store i32 0, i32* %on, align 4
  %138 = load i8*, i8** %arg219, align 4
  %incdec.ptr224 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr224, i8** %arg219, align 4
  br label %if.end233

if.else225:                                       ; preds = %for.body218
  %139 = load i8*, i8** %arg219, align 4
  %140 = load i8, i8* %139, align 1
  %conv226 = sext i8 %140 to i32
  %cmp227 = icmp eq i32 %conv226, 43
  br i1 %cmp227, label %if.then229, label %if.else231

if.then229:                                       ; preds = %if.else225
  store i32 1, i32* %on, align 4
  %141 = load i8*, i8** %arg219, align 4
  %incdec.ptr230 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr230, i8** %arg219, align 4
  br label %if.end232

if.else231:                                       ; preds = %if.else225
  store i32 -1, i32* %on, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.else231, %if.then229
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.then223
  %142 = load i8**, i8*** %features70, align 4
  store i8** %142, i8*** %fp, align 4
  %143 = load i32*, i32** %enables, align 4
  store i32* %143, i32** %ep, align 4
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc263, %if.end233
  %144 = load i8**, i8*** %fp, align 4
  %145 = load i8*, i8** %144, align 4
  %tobool235 = icmp ne i8* %145, null
  br i1 %tobool235, label %for.body236, label %for.end266

for.body236:                                      ; preds = %for.cond234
  %146 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool237 = icmp ne %struct.patprog** %146, null
  br i1 %tobool237, label %cond.true238, label %cond.false242

cond.true238:                                     ; preds = %for.body236
  %147 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %148 = load i32, i32* %iarg, align 4
  %arrayidx239 = getelementptr inbounds %struct.patprog*, %struct.patprog** %147, i32 %148
  %149 = load %struct.patprog*, %struct.patprog** %arrayidx239, align 4
  %150 = load i8**, i8*** %fp, align 4
  %151 = load i8*, i8** %150, align 4
  %call240 = call i32 @pattry(%struct.patprog* %149, i8* %151)
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.then245, label %if.end262

cond.false242:                                    ; preds = %for.body236
  %152 = load i8*, i8** %arg219, align 4
  %153 = load i8**, i8*** %fp, align 4
  %154 = load i8*, i8** %153, align 4
  %call243 = call i32 @strcmp(i8* %152, i8* %154)
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.end262, label %if.then245

if.then245:                                       ; preds = %cond.false242, %cond.true238
  %155 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind246 = getelementptr inbounds %struct.options, %struct.options* %155, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [128 x i8], [128 x i8]* %ind246, i32 0, i32 101
  %156 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %156 to i32
  %cmp249 = icmp ne i32 %conv248, 0
  br i1 %cmp249, label %land.lhs.true, label %if.end258

land.lhs.true:                                    ; preds = %if.then245
  %157 = load i32, i32* %on, align 4
  %cmp251 = icmp ne i32 %157, -1
  br i1 %cmp251, label %land.lhs.true253, label %if.end258

land.lhs.true253:                                 ; preds = %land.lhs.true
  %158 = load i32, i32* %on, align 4
  %159 = load i32*, i32** %ep, align 4
  %160 = load i32, i32* %159, align 4
  %and254 = and i32 %160, 1
  %cmp255 = icmp ne i32 %158, %and254
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %land.lhs.true253
  store i32 1, i32* %retval, align 4
  br label %return

if.end258:                                        ; preds = %land.lhs.true253, %land.lhs.true, %if.then245
  %161 = load i32, i32* %found, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %found, align 4
  %162 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool259 = icmp ne %struct.patprog** %162, null
  br i1 %tobool259, label %if.end261, label %if.then260

if.then260:                                       ; preds = %if.end258
  br label %for.end266

if.end261:                                        ; preds = %if.end258
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %cond.false242, %cond.true238
  br label %for.inc263

for.inc263:                                       ; preds = %if.end262
  %163 = load i8**, i8*** %fp, align 4
  %incdec.ptr264 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %incdec.ptr264, i8*** %fp, align 4
  %164 = load i32*, i32** %ep, align 4
  %incdec.ptr265 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %incdec.ptr265, i32** %ep, align 4
  br label %for.cond234

for.end266:                                       ; preds = %if.then260, %for.cond234
  %165 = load i32, i32* %found, align 4
  %tobool267 = icmp ne i32 %165, 0
  br i1 %tobool267, label %if.end278, label %if.then268

if.then268:                                       ; preds = %for.end266
  %166 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind269 = getelementptr inbounds %struct.options, %struct.options* %166, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [128 x i8], [128 x i8]* %ind269, i32 0, i32 101
  %167 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %167 to i32
  %cmp272 = icmp ne i32 %conv271, 0
  br i1 %cmp272, label %if.end277, label %if.then274

if.then274:                                       ; preds = %if.then268
  %168 = load i8*, i8** %nam.addr, align 4
  %169 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool275 = icmp ne %struct.patprog** %169, null
  %cond276 = select i1 %tobool275, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0)
  %170 = load i8*, i8** %modname, align 4
  %171 = load i8**, i8*** %arrp, align 4
  %172 = load i8*, i8** %171, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %168, i8* %cond276, i8* %170, i8* %172)
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.then268
  store i32 1, i32* %retval, align 4
  br label %return

if.end278:                                        ; preds = %for.end266
  br label %for.inc279

for.inc279:                                       ; preds = %if.end278
  %173 = load i8**, i8*** %arrp, align 4
  %incdec.ptr280 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %incdec.ptr280, i8*** %arrp, align 4
  %174 = load i32, i32* %iarg, align 4
  %inc281 = add nsw i32 %174, 1
  store i32 %inc281, i32* %iarg, align 4
  br label %for.cond216

for.end282:                                       ; preds = %for.cond216
  %175 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind283 = getelementptr inbounds %struct.options, %struct.options* %175, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [128 x i8], [128 x i8]* %ind283, i32 0, i32 101
  %176 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %176 to i32
  %cmp286 = icmp ne i32 %conv285, 0
  br i1 %cmp286, label %if.then288, label %if.end289

if.then288:                                       ; preds = %for.end282
  store i32 0, i32* %retval, align 4
  br label %return

if.end289:                                        ; preds = %for.end282
  %177 = load i8*, i8** %param, align 4
  %tobool290 = icmp ne i8* %177, null
  br i1 %tobool290, label %if.then291, label %if.else353

if.then291:                                       ; preds = %if.end289
  store i32 0, i32* %arrlen, align 4
  %178 = load i8**, i8*** %features70, align 4
  store i8** %178, i8*** %fp, align 4
  %179 = load i32*, i32** %enables, align 4
  store i32* %179, i32** %ep, align 4
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc346, %if.then291
  %180 = load i8**, i8*** %fp, align 4
  %181 = load i8*, i8** %180, align 4
  %tobool293 = icmp ne i8* %181, null
  br i1 %tobool293, label %for.body294, label %for.end349

for.body294:                                      ; preds = %for.cond292
  %182 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind295 = getelementptr inbounds %struct.options, %struct.options* %182, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [128 x i8], [128 x i8]* %ind295, i32 0, i32 76
  %183 = load i8, i8* %arrayidx296, align 4
  %conv297 = zext i8 %183 to i32
  %cmp298 = icmp ne i32 %conv297, 0
  br i1 %cmp298, label %land.lhs.true300, label %if.end309

land.lhs.true300:                                 ; preds = %for.body294
  %184 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind301 = getelementptr inbounds %struct.options, %struct.options* %184, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [128 x i8], [128 x i8]* %ind301, i32 0, i32 108
  %185 = load i8, i8* %arrayidx302, align 4
  %conv303 = zext i8 %185 to i32
  %cmp304 = icmp ne i32 %conv303, 0
  br i1 %cmp304, label %if.end309, label %land.lhs.true306

land.lhs.true306:                                 ; preds = %land.lhs.true300
  %186 = load i32*, i32** %ep, align 4
  %187 = load i32, i32* %186, align 4
  %tobool307 = icmp ne i32 %187, 0
  br i1 %tobool307, label %if.end309, label %if.then308

if.then308:                                       ; preds = %land.lhs.true306
  br label %for.inc346

if.end309:                                        ; preds = %land.lhs.true306, %land.lhs.true300, %for.body294
  %188 = load i8**, i8*** %args.addr, align 4
  %189 = load i8*, i8** %188, align 4
  %tobool310 = icmp ne i8* %189, null
  br i1 %tobool310, label %if.then311, label %if.end344

if.then311:                                       ; preds = %if.end309
  %190 = load i8**, i8*** %args.addr, align 4
  store i8** %190, i8*** %argp312, align 4
  store i32 0, i32* %iarg, align 4
  br label %for.cond313

for.cond313:                                      ; preds = %for.inc337, %if.then311
  %191 = load i8**, i8*** %argp312, align 4
  %192 = load i8*, i8** %191, align 4
  %tobool314 = icmp ne i8* %192, null
  br i1 %tobool314, label %for.body315, label %for.end340

for.body315:                                      ; preds = %for.cond313
  %193 = load i8**, i8*** %argp312, align 4
  %194 = load i8*, i8** %193, align 4
  store i8* %194, i8** %arg316, align 4
  %195 = load i8*, i8** %arg316, align 4
  %196 = load i8, i8* %195, align 1
  %conv317 = sext i8 %196 to i32
  %cmp318 = icmp eq i32 %conv317, 43
  br i1 %cmp318, label %if.then324, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %for.body315
  %197 = load i8*, i8** %arg316, align 4
  %198 = load i8, i8* %197, align 1
  %conv321 = sext i8 %198 to i32
  %cmp322 = icmp eq i32 %conv321, 45
  br i1 %cmp322, label %if.then324, label %if.end326

if.then324:                                       ; preds = %lor.lhs.false320, %for.body315
  %199 = load i8*, i8** %arg316, align 4
  %incdec.ptr325 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr325, i8** %arg316, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then324, %lor.lhs.false320
  %200 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool327 = icmp ne %struct.patprog** %200, null
  br i1 %tobool327, label %cond.true328, label %cond.false332

cond.true328:                                     ; preds = %if.end326
  %201 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %202 = load i32, i32* %iarg, align 4
  %arrayidx329 = getelementptr inbounds %struct.patprog*, %struct.patprog** %201, i32 %202
  %203 = load %struct.patprog*, %struct.patprog** %arrayidx329, align 4
  %204 = load i8**, i8*** %fp, align 4
  %205 = load i8*, i8** %204, align 4
  %call330 = call i32 @pattry(%struct.patprog* %203, i8* %205)
  %tobool331 = icmp ne i32 %call330, 0
  br i1 %tobool331, label %if.then335, label %if.end336

cond.false332:                                    ; preds = %if.end326
  %206 = load i8**, i8*** %fp, align 4
  %207 = load i8*, i8** %206, align 4
  %208 = load i8*, i8** %arg316, align 4
  %call333 = call i32 @strcmp(i8* %207, i8* %208)
  %tobool334 = icmp ne i32 %call333, 0
  br i1 %tobool334, label %if.end336, label %if.then335

if.then335:                                       ; preds = %cond.false332, %cond.true328
  br label %for.end340

if.end336:                                        ; preds = %cond.false332, %cond.true328
  br label %for.inc337

for.inc337:                                       ; preds = %if.end336
  %209 = load i8**, i8*** %argp312, align 4
  %incdec.ptr338 = getelementptr inbounds i8*, i8** %209, i32 1
  store i8** %incdec.ptr338, i8*** %argp312, align 4
  %210 = load i32, i32* %iarg, align 4
  %inc339 = add nsw i32 %210, 1
  store i32 %inc339, i32* %iarg, align 4
  br label %for.cond313

for.end340:                                       ; preds = %if.then335, %for.cond313
  %211 = load i8**, i8*** %argp312, align 4
  %212 = load i8*, i8** %211, align 4
  %tobool341 = icmp ne i8* %212, null
  br i1 %tobool341, label %if.end343, label %if.then342

if.then342:                                       ; preds = %for.end340
  br label %for.inc346

if.end343:                                        ; preds = %for.end340
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end309
  %213 = load i32, i32* %arrlen, align 4
  %inc345 = add nsw i32 %213, 1
  store i32 %inc345, i32* %arrlen, align 4
  br label %for.inc346

for.inc346:                                       ; preds = %if.end344, %if.then342, %if.then308
  %214 = load i8**, i8*** %fp, align 4
  %incdec.ptr347 = getelementptr inbounds i8*, i8** %214, i32 1
  store i8** %incdec.ptr347, i8*** %fp, align 4
  %215 = load i32*, i32** %ep, align 4
  %incdec.ptr348 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %incdec.ptr348, i32** %ep, align 4
  br label %for.cond292

for.end349:                                       ; preds = %for.cond292
  %216 = load i32, i32* %arrlen, align 4
  %add350 = add nsw i32 %216, 1
  %mul351 = mul i32 4, %add350
  %call352 = call i8* @zalloc(i32 %mul351)
  %217 = bitcast i8* %call352 to i8**
  store i8** %217, i8*** %arrset, align 4
  store i8** %217, i8*** %arrp, align 4
  br label %if.end364

if.else353:                                       ; preds = %if.end289
  %218 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind354 = getelementptr inbounds %struct.options, %struct.options* %218, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [128 x i8], [128 x i8]* %ind354, i32 0, i32 76
  %219 = load i8, i8* %arrayidx355, align 4
  %conv356 = zext i8 %219 to i32
  %cmp357 = icmp ne i32 %conv356, 0
  br i1 %cmp357, label %if.then359, label %if.end363

if.then359:                                       ; preds = %if.else353
  %220 = load %struct.module*, %struct.module** %m, align 4
  %node360 = getelementptr inbounds %struct.module, %struct.module* %220, i32 0, i32 0
  %nam361 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node360, i32 0, i32 1
  %221 = load i8*, i8** %nam361, align 4
  %call362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i8* %221)
  br label %if.end363

if.end363:                                        ; preds = %if.then359, %if.else353
  br label %if.end364

if.end364:                                        ; preds = %if.end363, %for.end349
  %222 = load i8**, i8*** %features70, align 4
  store i8** %222, i8*** %fp, align 4
  %223 = load i32*, i32** %enables, align 4
  store i32* %223, i32** %ep, align 4
  br label %for.cond365

for.cond365:                                      ; preds = %for.inc442, %if.end364
  %224 = load i8**, i8*** %fp, align 4
  %225 = load i8*, i8** %224, align 4
  %tobool366 = icmp ne i8* %225, null
  br i1 %tobool366, label %for.body367, label %for.end445

for.body367:                                      ; preds = %for.cond365
  %226 = load i8**, i8*** %args.addr, align 4
  %227 = load i8*, i8** %226, align 4
  %tobool368 = icmp ne i8* %227, null
  br i1 %tobool368, label %if.then369, label %if.end402

if.then369:                                       ; preds = %for.body367
  %228 = load i8**, i8*** %args.addr, align 4
  store i8** %228, i8*** %argp370, align 4
  store i32 0, i32* %iarg, align 4
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc395, %if.then369
  %229 = load i8**, i8*** %argp370, align 4
  %230 = load i8*, i8** %229, align 4
  %tobool372 = icmp ne i8* %230, null
  br i1 %tobool372, label %for.body373, label %for.end398

for.body373:                                      ; preds = %for.cond371
  %231 = load i8**, i8*** %argp370, align 4
  %232 = load i8*, i8** %231, align 4
  store i8* %232, i8** %arg374, align 4
  %233 = load i8*, i8** %arg374, align 4
  %234 = load i8, i8* %233, align 1
  %conv375 = sext i8 %234 to i32
  %cmp376 = icmp eq i32 %conv375, 43
  br i1 %cmp376, label %if.then382, label %lor.lhs.false378

lor.lhs.false378:                                 ; preds = %for.body373
  %235 = load i8*, i8** %arg374, align 4
  %236 = load i8, i8* %235, align 1
  %conv379 = sext i8 %236 to i32
  %cmp380 = icmp eq i32 %conv379, 45
  br i1 %cmp380, label %if.then382, label %if.end384

if.then382:                                       ; preds = %lor.lhs.false378, %for.body373
  %237 = load i8*, i8** %arg374, align 4
  %incdec.ptr383 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr383, i8** %arg374, align 4
  br label %if.end384

if.end384:                                        ; preds = %if.then382, %lor.lhs.false378
  %238 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool385 = icmp ne %struct.patprog** %238, null
  br i1 %tobool385, label %cond.true386, label %cond.false390

cond.true386:                                     ; preds = %if.end384
  %239 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %240 = load i32, i32* %iarg, align 4
  %arrayidx387 = getelementptr inbounds %struct.patprog*, %struct.patprog** %239, i32 %240
  %241 = load %struct.patprog*, %struct.patprog** %arrayidx387, align 4
  %242 = load i8**, i8*** %fp, align 4
  %243 = load i8*, i8** %242, align 4
  %call388 = call i32 @pattry(%struct.patprog* %241, i8* %243)
  %tobool389 = icmp ne i32 %call388, 0
  br i1 %tobool389, label %if.then393, label %if.end394

cond.false390:                                    ; preds = %if.end384
  %244 = load i8**, i8*** %fp, align 4
  %245 = load i8*, i8** %244, align 4
  %246 = load i8**, i8*** %argp370, align 4
  %247 = load i8*, i8** %246, align 4
  %call391 = call i32 @strcmp(i8* %245, i8* %247)
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.end394, label %if.then393

if.then393:                                       ; preds = %cond.false390, %cond.true386
  br label %for.end398

if.end394:                                        ; preds = %cond.false390, %cond.true386
  br label %for.inc395

for.inc395:                                       ; preds = %if.end394
  %248 = load i8**, i8*** %argp370, align 4
  %incdec.ptr396 = getelementptr inbounds i8*, i8** %248, i32 1
  store i8** %incdec.ptr396, i8*** %argp370, align 4
  %249 = load i32, i32* %iarg, align 4
  %inc397 = add nsw i32 %249, 1
  store i32 %inc397, i32* %iarg, align 4
  br label %for.cond371

for.end398:                                       ; preds = %if.then393, %for.cond371
  %250 = load i8**, i8*** %argp370, align 4
  %251 = load i8*, i8** %250, align 4
  %tobool399 = icmp ne i8* %251, null
  br i1 %tobool399, label %if.end401, label %if.then400

if.then400:                                       ; preds = %for.end398
  br label %for.inc442

if.end401:                                        ; preds = %for.end398
  br label %if.end402

if.end402:                                        ; preds = %if.end401, %for.body367
  %252 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind403 = getelementptr inbounds %struct.options, %struct.options* %252, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [128 x i8], [128 x i8]* %ind403, i32 0, i32 76
  %253 = load i8, i8* %arrayidx404, align 4
  %conv405 = zext i8 %253 to i32
  %cmp406 = icmp ne i32 %conv405, 0
  br i1 %cmp406, label %land.lhs.true408, label %if.else418

land.lhs.true408:                                 ; preds = %if.end402
  %254 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind409 = getelementptr inbounds %struct.options, %struct.options* %254, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [128 x i8], [128 x i8]* %ind409, i32 0, i32 108
  %255 = load i8, i8* %arrayidx410, align 4
  %conv411 = zext i8 %255 to i32
  %cmp412 = icmp ne i32 %conv411, 0
  br i1 %cmp412, label %if.else418, label %if.then414

if.then414:                                       ; preds = %land.lhs.true408
  %256 = load i32*, i32** %ep, align 4
  %257 = load i32, i32* %256, align 4
  %tobool415 = icmp ne i32 %257, 0
  br i1 %tobool415, label %if.end417, label %if.then416

if.then416:                                       ; preds = %if.then414
  br label %for.inc442

if.end417:                                        ; preds = %if.then414
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i32 0, i32 0), i8** %onoff, align 4
  br label %if.end423

if.else418:                                       ; preds = %land.lhs.true408, %if.end402
  %258 = load i32*, i32** %ep, align 4
  %259 = load i32, i32* %258, align 4
  %tobool419 = icmp ne i32 %259, 0
  br i1 %tobool419, label %if.then420, label %if.else421

if.then420:                                       ; preds = %if.else418
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8** %onoff, align 4
  br label %if.end422

if.else421:                                       ; preds = %if.else418
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8** %onoff, align 4
  br label %if.end422

if.end422:                                        ; preds = %if.else421, %if.then420
  br label %if.end423

if.end423:                                        ; preds = %if.end422, %if.end417
  %260 = load i8*, i8** %param, align 4
  %tobool424 = icmp ne i8* %260, null
  br i1 %tobool424, label %if.then425, label %if.else428

if.then425:                                       ; preds = %if.end423
  %261 = load i8*, i8** %onoff, align 4
  %262 = load i8**, i8*** %fp, align 4
  %263 = load i8*, i8** %262, align 4
  %call426 = call i8* @bicat(i8* %261, i8* %263)
  %264 = load i8**, i8*** %arrp, align 4
  %incdec.ptr427 = getelementptr inbounds i8*, i8** %264, i32 1
  store i8** %incdec.ptr427, i8*** %arrp, align 4
  store i8* %call426, i8** %264, align 4
  br label %if.end441

if.else428:                                       ; preds = %if.end423
  %265 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind429 = getelementptr inbounds %struct.options, %struct.options* %265, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [128 x i8], [128 x i8]* %ind429, i32 0, i32 76
  %266 = load i8, i8* %arrayidx430, align 4
  %conv431 = zext i8 %266 to i32
  %cmp432 = icmp ne i32 %conv431, 0
  br i1 %cmp432, label %land.lhs.true434, label %if.else438

land.lhs.true434:                                 ; preds = %if.else428
  %267 = load i8**, i8*** %fp, align 4
  %arrayidx435 = getelementptr inbounds i8*, i8** %267, i32 1
  %268 = load i8*, i8** %arrayidx435, align 4
  %tobool436 = icmp ne i8* %268, null
  br i1 %tobool436, label %if.then437, label %if.else438

if.then437:                                       ; preds = %land.lhs.true434
  store i32 32, i32* %term, align 4
  br label %if.end439

if.else438:                                       ; preds = %land.lhs.true434, %if.else428
  store i32 10, i32* %term, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.else438, %if.then437
  %269 = load i8*, i8** %onoff, align 4
  %270 = load i8**, i8*** %fp, align 4
  %271 = load i8*, i8** %270, align 4
  %272 = load i32, i32* %term, align 4
  %call440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* %269, i8* %271, i32 %272)
  br label %if.end441

if.end441:                                        ; preds = %if.end439, %if.then425
  br label %for.inc442

for.inc442:                                       ; preds = %if.end441, %if.then416, %if.then400
  %273 = load i8**, i8*** %fp, align 4
  %incdec.ptr443 = getelementptr inbounds i8*, i8** %273, i32 1
  store i8** %incdec.ptr443, i8*** %fp, align 4
  %274 = load i32*, i32** %ep, align 4
  %incdec.ptr444 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %incdec.ptr444, i32** %ep, align 4
  br label %for.cond365

for.end445:                                       ; preds = %for.cond365
  %275 = load i8*, i8** %param, align 4
  %tobool446 = icmp ne i8* %275, null
  br i1 %tobool446, label %if.then447, label %if.end452

if.then447:                                       ; preds = %for.end445
  %276 = load i8**, i8*** %arrp, align 4
  store i8* null, i8** %276, align 4
  %277 = load i8*, i8** %param, align 4
  %278 = load i8**, i8*** %arrset, align 4
  %call448 = call %struct.param* @setaparam(i8* %277, i8** %278)
  %tobool449 = icmp ne %struct.param* %call448, null
  br i1 %tobool449, label %if.end451, label %if.then450

if.then450:                                       ; preds = %if.then447
  store i32 1, i32* %retval, align 4
  br label %return

if.end451:                                        ; preds = %if.then447
  br label %if.end452

if.end452:                                        ; preds = %if.end451, %for.end445
  store i32 0, i32* %retval, align 4
  br label %return

if.else453:                                       ; preds = %lor.lhs.false63
  %279 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind454 = getelementptr inbounds %struct.options, %struct.options* %279, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [128 x i8], [128 x i8]* %ind454, i32 0, i32 80
  %280 = load i8, i8* %arrayidx455, align 4
  %conv456 = zext i8 %280 to i32
  %cmp457 = icmp ne i32 %conv456, 0
  br i1 %cmp457, label %if.then459, label %if.else460

if.then459:                                       ; preds = %if.else453
  %281 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %281, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else460:                                       ; preds = %if.else453
  %282 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind461 = getelementptr inbounds %struct.options, %struct.options* %282, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [128 x i8], [128 x i8]* %ind461, i32 0, i32 97
  %283 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %283 to i32
  %cmp464 = icmp ne i32 %conv463, 0
  br i1 %cmp464, label %if.then466, label %if.end475

if.then466:                                       ; preds = %if.else460
  %284 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind467 = getelementptr inbounds %struct.options, %struct.options* %284, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [128 x i8], [128 x i8]* %ind467, i32 0, i32 109
  %285 = load i8, i8* %arrayidx468, align 1
  %conv469 = zext i8 %285 to i32
  %cmp470 = icmp ne i32 %conv469, 0
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %if.then466
  %286 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %286, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end473:                                        ; preds = %if.then466
  %287 = load i8*, i8** %nam.addr, align 4
  %288 = load i8*, i8** %modname, align 4
  %289 = load i8**, i8*** %args.addr, align 4
  %call474 = call i32 @autofeatures(i8* %287, i8* %288, i8** %289, i32 0, i32 1)
  store i32 %call474, i32* %retval, align 4
  br label %return

if.end475:                                        ; preds = %if.else460
  br label %if.end476

if.end476:                                        ; preds = %if.end475
  br label %if.end477

if.end477:                                        ; preds = %if.end476
  %290 = load i8**, i8*** %args.addr, align 4
  %call478 = call i32 @arrlen(i8** %290)
  %add479 = add nsw i32 %call478, 1
  %mul480 = mul i32 %add479, 8
  %call481 = call i8* @zhalloc(i32 %mul480)
  %291 = bitcast i8* %call481 to %struct.feature_enables*
  store %struct.feature_enables* %291, %struct.feature_enables** %features, align 4
  store %struct.feature_enables* %291, %struct.feature_enables** %fep, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end488, %if.end477
  %292 = load i8**, i8*** %args.addr, align 4
  %293 = load i8*, i8** %292, align 4
  %tobool482 = icmp ne i8* %293, null
  br i1 %tobool482, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %294 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr483 = getelementptr inbounds i8*, i8** %294, i32 1
  store i8** %incdec.ptr483, i8*** %args.addr, align 4
  %295 = load i8*, i8** %294, align 4
  %296 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %296, i32 0, i32 0
  store i8* %295, i8** %str, align 4
  %297 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %tobool484 = icmp ne %struct.patprog** %297, null
  br i1 %tobool484, label %cond.true485, label %cond.false487

cond.true485:                                     ; preds = %while.body
  %298 = load %struct.patprog**, %struct.patprog*** %patprogs, align 4
  %incdec.ptr486 = getelementptr inbounds %struct.patprog*, %struct.patprog** %298, i32 1
  store %struct.patprog** %incdec.ptr486, %struct.patprog*** %patprogs, align 4
  %299 = load %struct.patprog*, %struct.patprog** %298, align 4
  br label %cond.end488

cond.false487:                                    ; preds = %while.body
  br label %cond.end488

cond.end488:                                      ; preds = %cond.false487, %cond.true485
  %cond489 = phi %struct.patprog* [ %299, %cond.true485 ], [ null, %cond.false487 ]
  %300 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %300, i32 0, i32 1
  store %struct.patprog* %cond489, %struct.patprog** %pat, align 4
  %301 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %incdec.ptr490 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %301, i32 1
  store %struct.feature_enables* %incdec.ptr490, %struct.feature_enables** %fep, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %302 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %str491 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %302, i32 0, i32 0
  store i8* null, i8** %str491, align 4
  %303 = load %struct.feature_enables*, %struct.feature_enables** %fep, align 4
  %pat492 = getelementptr inbounds %struct.feature_enables, %struct.feature_enables* %303, i32 0, i32 1
  store %struct.patprog* null, %struct.patprog** %pat492, align 4
  %304 = load i8*, i8** %modname, align 4
  %305 = load %struct.feature_enables*, %struct.feature_enables** %features, align 4
  %306 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind493 = getelementptr inbounds %struct.options, %struct.options* %306, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [128 x i8], [128 x i8]* %ind493, i32 0, i32 115
  %307 = load i8, i8* %arrayidx494, align 1
  %conv495 = zext i8 %307 to i32
  %cmp496 = icmp ne i32 %conv495, 0
  %conv497 = zext i1 %cmp496 to i32
  %call498 = call i32 @require_module(i8* %304, %struct.feature_enables* %305, i32 %conv497)
  store i32 %call498, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end473, %if.then472, %if.then459, %if.end452, %if.then450, %if.then288, %if.end277, %if.then257, %if.then212, %if.end208, %if.end195, %if.end180, %if.then178, %for.end125, %if.then121, %if.then91, %if.then27, %if.end23, %if.then8
  %308 = load i32, i32* %retval, align 4
  ret i32 %308
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_exist(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %m = alloca %struct.module*, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  %0 = load i8**, i8*** %args.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 15
  %4 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %5 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 65
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  %cond = select i1 %cmp, i32 6, i32 2
  %call = call i32 @scanhashtable(%struct.hashtable* %2, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* %4, i32 %cond)
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %ret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %8 = load i8**, i8*** %args.addr, align 4
  %9 = load i8*, i8** %8, align 4
  %tobool3 = icmp ne i8* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i8**, i8*** %args.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %call4 = call %struct.module* @find_module(i8* %12, i32 1, i8** null)
  store %struct.module* %call4, %struct.module** %m, align 4
  %tobool5 = icmp ne %struct.module* %call4, null
  br i1 %tobool5, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %14 = load i8*, i8** %handle, align 4
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %15 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false, %for.body
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_dep(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %m = alloca %struct.module*, align 4
  %tnam = alloca i8*, align 4
  %dnode = alloca %struct.linknode*, align 4
  %depflags = alloca i32, align 4
  %ret = alloca i32, align 4
  %tnam63 = alloca i8*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 117
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else39

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  store i8* %3, i8** %tnam, align 4
  %4 = load i8*, i8** %tnam, align 4
  %call = call %struct.module* @find_module(i8* %4, i32 1, i8** %tnam)
  store %struct.module* %call, %struct.module** %m, align 4
  %5 = load %struct.module*, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %5, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i8**, i8*** %args.addr, align 4
  %7 = load i8*, i8** %6, align 4
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.module*, %struct.module** %m, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 3
  %9 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool4 = icmp ne %union.linkroot* %9, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then5
  %10 = load %struct.module*, %struct.module** %m, align 4
  %deps6 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 3
  %11 = load %union.linkroot*, %union.linkroot** %deps6, align 4
  %list = bitcast %union.linkroot* %11 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %12 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %12, %struct.linknode** %dnode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %13 = load %struct.linknode*, %struct.linknode** %dnode, align 4
  %tobool7 = icmp ne %struct.linknode* %13, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8**, i8*** %args.addr, align 4
  %15 = load i8*, i8** %14, align 4
  %16 = load %struct.linknode*, %struct.linknode** %dnode, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %16, i32 0, i32 2
  %17 = load i8*, i8** %dat, align 4
  %call8 = call i32 @strcmp(i8* %15, i8* %17)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %for.body
  %18 = load %struct.linknode*, %struct.linknode** %dnode, align 4
  %dat11 = getelementptr inbounds %struct.linknode, %struct.linknode* %18, i32 0, i32 2
  %19 = load i8*, i8** %dat11, align 4
  call void @zsfree(i8* %19)
  %20 = load %struct.module*, %struct.module** %m, align 4
  %deps12 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 3
  %21 = load %union.linkroot*, %union.linkroot** %deps12, align 4
  %22 = load %struct.linknode*, %struct.linknode** %dnode, align 4
  %call13 = call i8* @remnode(%union.linkroot* %21, %struct.linknode* %22)
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %23 = load %struct.linknode*, %struct.linknode** %dnode, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %23, i32 0, i32 0
  %24 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %24, %struct.linknode** %dnode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %25 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr15, i8*** %args.addr, align 4
  %26 = load i8*, i8** %incdec.ptr15, align 4
  %tobool16 = icmp ne i8* %26, null
  br i1 %tobool16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load %struct.module*, %struct.module** %m, align 4
  %deps17 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 3
  %28 = load %union.linkroot*, %union.linkroot** %deps17, align 4
  %list18 = bitcast %union.linkroot* %28 to %struct.linklist*
  %first19 = getelementptr inbounds %struct.linklist, %struct.linklist* %list18, i32 0, i32 0
  %29 = load %struct.linknode*, %struct.linknode** %first19, align 4
  %cmp20 = icmp eq %struct.linknode* %29, null
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %do.end
  %30 = load %struct.module*, %struct.module** %m, align 4
  %deps23 = getelementptr inbounds %struct.module, %struct.module* %30, i32 0, i32 3
  %31 = load %union.linkroot*, %union.linkroot** %deps23, align 4
  call void @freelinklist(%union.linkroot* %31, void (i8*)* @freestr)
  %32 = load %struct.module*, %struct.module** %m, align 4
  %deps24 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 3
  store %union.linkroot* null, %union.linkroot** %deps24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %do.end
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %if.end
  %33 = load %struct.module*, %struct.module** %m, align 4
  %deps26 = getelementptr inbounds %struct.module, %struct.module* %33, i32 0, i32 3
  %34 = load %union.linkroot*, %union.linkroot** %deps26, align 4
  %tobool27 = icmp ne %union.linkroot* %34, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.else
  %35 = load %struct.module*, %struct.module** %m, align 4
  %deps29 = getelementptr inbounds %struct.module, %struct.module* %35, i32 0, i32 3
  %36 = load %union.linkroot*, %union.linkroot** %deps29, align 4
  call void @freelinklist(%union.linkroot* %36, void (i8*)* @freestr)
  %37 = load %struct.module*, %struct.module** %m, align 4
  %deps30 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 3
  store %union.linkroot* null, %union.linkroot** %deps30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end25
  %38 = load %struct.module*, %struct.module** %m, align 4
  %deps33 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 3
  %39 = load %union.linkroot*, %union.linkroot** %deps33, align 4
  %tobool34 = icmp ne %union.linkroot* %39, null
  br i1 %tobool34, label %if.end38, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end32
  %40 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %40, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %41 = load i8*, i8** %handle, align 4
  %tobool36 = icmp ne i8* %41, null
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %land.lhs.true35
  %42 = load %struct.module*, %struct.module** %m, align 4
  call void @delete_module(%struct.module* %42)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true35, %if.end32
  store i32 0, i32* %retval, align 4
  br label %return

if.else39:                                        ; preds = %entry
  %43 = load i8**, i8*** %args.addr, align 4
  %arrayidx40 = getelementptr inbounds i8*, i8** %43, i32 0
  %44 = load i8*, i8** %arrayidx40, align 4
  %tobool41 = icmp ne i8* %44, null
  br i1 %tobool41, label %lor.lhs.false, label %if.then44

lor.lhs.false:                                    ; preds = %if.else39
  %45 = load i8**, i8*** %args.addr, align 4
  %arrayidx42 = getelementptr inbounds i8*, i8** %45, i32 1
  %46 = load i8*, i8** %arrayidx42, align 4
  %tobool43 = icmp ne i8* %46, null
  br i1 %tobool43, label %if.else62, label %if.then44

if.then44:                                        ; preds = %lor.lhs.false, %if.else39
  %47 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind45 = getelementptr inbounds %struct.options, %struct.options* %47, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [128 x i8], [128 x i8]* %ind45, i32 0, i32 76
  %48 = load i8, i8* %arrayidx46, align 4
  %conv47 = zext i8 %48 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  %cond = select i1 %cmp48, i32 9, i32 8
  store i32 %cond, i32* %depflags, align 4
  %49 = load i8**, i8*** %args.addr, align 4
  %arrayidx50 = getelementptr inbounds i8*, i8** %49, i32 0
  %50 = load i8*, i8** %arrayidx50, align 4
  %tobool51 = icmp ne i8* %50, null
  br i1 %tobool51, label %if.then52, label %if.else58

if.then52:                                        ; preds = %if.then44
  %51 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 10
  %52 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %53 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %54 = load i8**, i8*** %args.addr, align 4
  %arrayidx53 = getelementptr inbounds i8*, i8** %54, i32 0
  %55 = load i8*, i8** %arrayidx53, align 4
  %call54 = call %struct.hashnode* %52(%struct.hashtable* %53, i8* %55)
  %56 = bitcast %struct.hashnode* %call54 to %struct.module*
  store %struct.module* %56, %struct.module** %m, align 4
  %tobool55 = icmp ne %struct.module* %56, null
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then52
  %57 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %57, i32 0, i32 15
  %58 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %59 = load %struct.module*, %struct.module** %m, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %59, i32 0, i32 0
  %60 = load i32, i32* %depflags, align 4
  call void %58(%struct.hashnode* %node, i32 %60)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then52
  br label %if.end61

if.else58:                                        ; preds = %if.then44
  %61 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %62 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode59 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %62, i32 0, i32 15
  %63 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode59, align 4
  %64 = load i32, i32* %depflags, align 4
  %call60 = call i32 @scanhashtable(%struct.hashtable* %61, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* %63, i32 %64)
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end57
  store i32 0, i32* %retval, align 4
  br label %return

if.else62:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %ret, align 4
  %65 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr64 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %incdec.ptr64, i8*** %args.addr, align 4
  %66 = load i8*, i8** %65, align 4
  store i8* %66, i8** %tnam63, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc68, %if.else62
  %67 = load i8**, i8*** %args.addr, align 4
  %68 = load i8*, i8** %67, align 4
  %tobool66 = icmp ne i8* %68, null
  br i1 %tobool66, label %for.body67, label %for.end70

for.body67:                                       ; preds = %for.cond65
  %69 = load i8*, i8** %tnam63, align 4
  %70 = load i8**, i8*** %args.addr, align 4
  %71 = load i8*, i8** %70, align 4
  call void @add_dep(i8* %69, i8* %71)
  br label %for.inc68

for.inc68:                                        ; preds = %for.body67
  %72 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr69 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %incdec.ptr69, i8*** %args.addr, align 4
  br label %for.cond65

for.end70:                                        ; preds = %for.cond65
  %73 = load i32, i32* %ret, align 4
  store i32 %73, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end70, %if.end61, %if.end38, %if.then2
  %74 = load i32, i32* %retval, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_auto(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %fchar = alloca i32, align 4
  %flags = alloca i32, align 4
  %modnam = alloca i8*, align 4
  %p = alloca %struct.conddef*, align 4
  %p62 = alloca %struct.mathfunc*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 99
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else37

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end31, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = load %struct.conddef*, %struct.conddef** @condtab, align 4
  store %struct.conddef* %4, %struct.conddef** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool3 = icmp ne %struct.conddef* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module = getelementptr inbounds %struct.conddef, %struct.conddef* %6, i32 0, i32 7
  %7 = load i8*, i8** %module, align 4
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then5, label %if.end30

if.then5:                                         ; preds = %for.body
  %8 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind6 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [128 x i8], [128 x i8]* %ind6, i32 0, i32 76
  %9 = load i8, i8* %arrayidx7, align 4
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags12 = getelementptr inbounds %struct.conddef, %struct.conddef* %11, i32 0, i32 2
  %12 = load i32, i32* %flags12, align 4
  %and = and i32 %12, 1
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then11
  %call15 = call i32 @putchar(i32 73)
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then11
  %13 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module16 = getelementptr inbounds %struct.conddef, %struct.conddef* %13, i32 0, i32 7
  %14 = load i8*, i8** %module16, align 4
  %15 = load %struct.conddef*, %struct.conddef** %p, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* %14, i8* %16)
  br label %if.end29

if.else:                                          ; preds = %if.then5
  %17 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags18 = getelementptr inbounds %struct.conddef, %struct.conddef* %17, i32 0, i32 2
  %18 = load i32, i32* %flags18, align 4
  %and19 = and i32 %18, 1
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %if.end25

if.else23:                                        ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %20)
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then21
  %21 = load %struct.conddef*, %struct.conddef** %p, align 4
  %name26 = getelementptr inbounds %struct.conddef, %struct.conddef* %21, i32 0, i32 1
  %22 = load i8*, i8** %name26, align 4
  %23 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module27 = getelementptr inbounds %struct.conddef, %struct.conddef* %23, i32 0, i32 7
  %24 = load i8*, i8** %module27, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* %22, i8* %24)
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %25 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next = getelementptr inbounds %struct.conddef, %struct.conddef* %25, i32 0, i32 0
  %26 = load %struct.conddef*, %struct.conddef** %next, align 4
  store %struct.conddef* %26, %struct.conddef** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then
  %27 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind32 = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [128 x i8], [128 x i8]* %ind32, i32 0, i32 73
  %28 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  %cond = select i1 %cmp35, i32 67, i32 99
  store i32 %cond, i32* %fchar, align 4
  br label %if.end105

if.else37:                                        ; preds = %entry
  %29 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind38 = getelementptr inbounds %struct.options, %struct.options* %29, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [128 x i8], [128 x i8]* %ind38, i32 0, i32 112
  %30 = load i8, i8* %arrayidx39, align 4
  %conv40 = zext i8 %30 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.else53

if.then43:                                        ; preds = %if.else37
  %31 = load i8**, i8*** %args.addr, align 4
  %32 = load i8*, i8** %31, align 4
  %tobool44 = icmp ne i8* %32, null
  br i1 %tobool44, label %if.end52, label %if.then45

if.then45:                                        ; preds = %if.then43
  %33 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %34 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind46 = getelementptr inbounds %struct.options, %struct.options* %34, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [128 x i8], [128 x i8]* %ind46, i32 0, i32 76
  %35 = load i8, i8* %arrayidx47, align 4
  %conv48 = zext i8 %35 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @scanhashtable(%struct.hashtable* %33, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @printautoparams, i32 %conv50)
  store i32 0, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then43
  store i32 112, i32* %fchar, align 4
  br label %if.end104

if.else53:                                        ; preds = %if.else37
  %36 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind54 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [128 x i8], [128 x i8]* %ind54, i32 0, i32 102
  %37 = load i8, i8* %arrayidx55, align 2
  %conv56 = zext i8 %37 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %if.then59, label %if.else92

if.then59:                                        ; preds = %if.else53
  %38 = load i8**, i8*** %args.addr, align 4
  %39 = load i8*, i8** %38, align 4
  %tobool60 = icmp ne i8* %39, null
  br i1 %tobool60, label %if.end91, label %if.then61

if.then61:                                        ; preds = %if.then59
  %40 = load %struct.mathfunc*, %struct.mathfunc** @mathfuncs, align 4
  store %struct.mathfunc* %40, %struct.mathfunc** %p62, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc88, %if.then61
  %41 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %tobool64 = icmp ne %struct.mathfunc* %41, null
  br i1 %tobool64, label %for.body65, label %for.end90

for.body65:                                       ; preds = %for.cond63
  %42 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %flags66 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %42, i32 0, i32 2
  %43 = load i32, i32* %flags66, align 4
  %and67 = and i32 %43, 4
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.end87, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body65
  %44 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %module69 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %44, i32 0, i32 5
  %45 = load i8*, i8** %module69, align 4
  %tobool70 = icmp ne i8* %45, null
  br i1 %tobool70, label %if.then71, label %if.end87

if.then71:                                        ; preds = %land.lhs.true
  %46 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind72 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [128 x i8], [128 x i8]* %ind72, i32 0, i32 76
  %47 = load i8, i8* %arrayidx73, align 4
  %conv74 = zext i8 %47 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.then71
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call78 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %48)
  %49 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %module79 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %49, i32 0, i32 5
  %50 = load i8*, i8** %module79, align 4
  %51 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %name80 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %51, i32 0, i32 1
  %52 = load i8*, i8** %name80, align 4
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* %50, i8* %52)
  br label %if.end86

if.else82:                                        ; preds = %if.then71
  %53 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %name83 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %53, i32 0, i32 1
  %54 = load i8*, i8** %name83, align 4
  %55 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %module84 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %55, i32 0, i32 5
  %56 = load i8*, i8** %module84, align 4
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* %54, i8* %56)
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %if.then77
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %land.lhs.true, %for.body65
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %57 = load %struct.mathfunc*, %struct.mathfunc** %p62, align 4
  %next89 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %57, i32 0, i32 0
  %58 = load %struct.mathfunc*, %struct.mathfunc** %next89, align 4
  store %struct.mathfunc* %58, %struct.mathfunc** %p62, align 4
  br label %for.cond63

for.end90:                                        ; preds = %for.cond63
  store i32 0, i32* %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.then59
  store i32 102, i32* %fchar, align 4
  br label %if.end103

if.else92:                                        ; preds = %if.else53
  %59 = load i8**, i8*** %args.addr, align 4
  %60 = load i8*, i8** %59, align 4
  %tobool93 = icmp ne i8* %60, null
  br i1 %tobool93, label %if.end102, label %if.then94

if.then94:                                        ; preds = %if.else92
  %61 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %62 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind95 = getelementptr inbounds %struct.options, %struct.options* %62, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [128 x i8], [128 x i8]* %ind95, i32 0, i32 76
  %63 = load i8, i8* %arrayidx96, align 4
  %conv97 = zext i8 %63 to i32
  %cmp98 = icmp ne i32 %conv97, 0
  %cond100 = select i1 %cmp98, i32 4, i32 0
  %call101 = call i32 @scanhashtable(%struct.hashtable* %61, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @autoloadscan, i32 %cond100)
  store i32 0, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.else92
  store i32 98, i32* %fchar, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end91
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end52
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end31
  store i32 4, i32* %flags, align 4
  %64 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind106 = getelementptr inbounds %struct.options, %struct.options* %64, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [128 x i8], [128 x i8]* %ind106, i32 0, i32 105
  %65 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %65 to i32
  %cmp109 = icmp ne i32 %conv108, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end105
  %66 = load i32, i32* %flags, align 4
  %or = or i32 %66, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end105
  %67 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind113 = getelementptr inbounds %struct.options, %struct.options* %67, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [128 x i8], [128 x i8]* %ind113, i32 0, i32 117
  %68 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %68 to i32
  %cmp116 = icmp ne i32 %conv115, 0
  br i1 %cmp116, label %if.then118, label %if.else120

if.then118:                                       ; preds = %if.end112
  %69 = load i32, i32* %flags, align 4
  %or119 = or i32 %69, 8
  store i32 %or119, i32* %flags, align 4
  store i8* null, i8** %modnam, align 4
  br label %if.end125

if.else120:                                       ; preds = %if.end112
  %70 = load i8**, i8*** %args.addr, align 4
  %71 = load i8*, i8** %70, align 4
  store i8* %71, i8** %modnam, align 4
  %72 = load i8**, i8*** %args.addr, align 4
  %arrayidx121 = getelementptr inbounds i8*, i8** %72, i32 1
  %73 = load i8*, i8** %arrayidx121, align 4
  %tobool122 = icmp ne i8* %73, null
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.else120
  %74 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.else120
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then118
  %75 = load i8*, i8** %nam.addr, align 4
  %76 = load i8*, i8** %modnam, align 4
  %77 = load i8**, i8*** %args.addr, align 4
  %78 = load i32, i32* %fchar, align 4
  %79 = load i32, i32* %flags, align 4
  %call126 = call i32 @autofeatures(i8* %75, i8* %76, i8** %77, i32 %78, i32 %79)
  store i32 %call126, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end125, %if.then94, %for.end90, %if.then45, %for.end
  %80 = load i32, i32* %retval, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind
define internal i32 @bin_zmodload_load(i8* %nam, i8** %args, %struct.options* %ops) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %ops.addr = alloca %struct.options*, align 4
  %ret = alloca i32, align 4
  %tmpret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 117
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8**, i8*** %args.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %args.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %6 = load i8*, i8** %nam.addr, align 4
  %7 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 105
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call = call i32 @unload_named_module(i8* %5, i8* %6, i32 %conv6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %args.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i8**, i8*** %args.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %tobool9 = icmp ne i8* %12, null
  br i1 %tobool9, label %if.else17, label %if.then10

if.then10:                                        ; preds = %if.else
  %13 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 15
  %15 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  %16 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind11 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [128 x i8], [128 x i8]* %ind11, i32 0, i32 76
  %17 = load i8, i8* %arrayidx12, align 4
  %conv13 = zext i8 %17 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  %cond = select i1 %cmp14, i32 1, i32 0
  %call16 = call i32 @scanhashtable(%struct.hashtable* %13, i32 1, i32 0, i32 66, void (%struct.hashnode*, i32)* %15, i32 %cond)
  store i32 0, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %if.else17
  %18 = load i8**, i8*** %args.addr, align 4
  %19 = load i8*, i8** %18, align 4
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %20 = load i8**, i8*** %args.addr, align 4
  %21 = load i8*, i8** %20, align 4
  %22 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind21 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [128 x i8], [128 x i8]* %ind21, i32 0, i32 115
  %23 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @require_module(i8* %21, %struct.feature_enables* null, i32 %conv25)
  store i32 %call26, i32* %tmpret, align 4
  %24 = load i32, i32* %tmpret, align 4
  %tobool27 = icmp ne i32 %24, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %for.body20
  %25 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %25, 1
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %tmpret, align 4
  store i32 %26, i32* %ret, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %27 = load i8**, i8*** %args.addr, align 4
  %incdec.ptr33 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %incdec.ptr33, i8*** %args.addr, align 4
  br label %for.cond18

for.end34:                                        ; preds = %for.cond18
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end34, %if.then10, %for.end
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind
define i32 @unload_module(%struct.module* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %del = alloca i32, align 4
  %n = alloca %struct.linknode*, align 4
  %dm = alloca %struct.module*, align 4
  %am = alloca %struct.module*, align 4
  %du = alloca i32, align 4
  %i = alloca i32, align 4
  %sn = alloca %struct.linknode*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %alias = bitcast %union.anon* %u to i8**
  %3 = load i8*, i8** %alias, align 4
  %call = call %struct.module* @find_module(i8* %3, i32 1, i8** null)
  store %struct.module* %call, %struct.module** %m.addr, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %tobool1 = icmp ne %struct.module* %4, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %node4 = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %6 = load i32, i32* %flags5, align 4
  %and6 = and i32 %6, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %node8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %8 = load i32, i32* %flags9, align 4
  %and10 = and i32 %8, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load %struct.module*, %struct.module** %m.addr, align 4
  %call13 = call i32 @do_cleanup_module(%struct.module* %9)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end3
  %10 = load %struct.module*, %struct.module** %m.addr, align 4
  %node17 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 0
  %flags18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 2
  %11 = load i32, i32* %flags18, align 4
  %and19 = and i32 %11, -49
  store i32 %and19, i32* %flags18, align 4
  %12 = load %struct.module*, %struct.module** %m.addr, align 4
  %node20 = getelementptr inbounds %struct.module, %struct.module* %12, i32 0, i32 0
  %flags21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 2
  %13 = load i32, i32* %flags21, align 4
  %and22 = and i32 %13, 2
  store i32 %and22, i32* %del, align 4
  %14 = load %struct.module*, %struct.module** %m.addr, align 4
  %wrapper = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 4
  %15 = load i32, i32* %wrapper, align 4
  %tobool23 = icmp ne i32 %15, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end16
  %16 = load %struct.module*, %struct.module** %m.addr, align 4
  %node25 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %flags26 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node25, i32 0, i32 2
  %17 = load i32, i32* %flags26, align 4
  %or = or i32 %17, 2
  store i32 %or, i32* %flags26, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end16
  %18 = load %struct.module*, %struct.module** %m.addr, align 4
  %node28 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %flags29 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node28, i32 0, i32 2
  %19 = load i32, i32* %flags29, align 4
  %and30 = and i32 %19, -3
  store i32 %and30, i32* %flags29, align 4
  %20 = load %struct.module*, %struct.module** %m.addr, align 4
  %node31 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 0
  %flags32 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node31, i32 0, i32 2
  %21 = load i32, i32* %flags32, align 4
  %and33 = and i32 %21, 8
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end27
  %22 = load %struct.module*, %struct.module** %m.addr, align 4
  %u36 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 1
  %linked = bitcast %union.anon* %u36 to %struct.linkedmod**
  %23 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %tobool37 = icmp ne %struct.linkedmod* %23, null
  br i1 %tobool37, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.then35
  %24 = load %struct.module*, %struct.module** %m.addr, align 4
  %u39 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 1
  %linked40 = bitcast %union.anon* %u39 to %struct.linkedmod**
  %25 = load %struct.linkedmod*, %struct.linkedmod** %linked40, align 4
  %finish = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %25, i32 0, i32 6
  %finish41 = bitcast {}** %finish to i32 (%struct.module*)**
  %26 = load i32 (%struct.module*)*, i32 (%struct.module*)** %finish41, align 4
  %27 = load %struct.module*, %struct.module** %m.addr, align 4
  %call42 = call i32 %26(%struct.module* %27)
  %28 = load %struct.module*, %struct.module** %m.addr, align 4
  %u43 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 1
  %linked44 = bitcast %union.anon* %u43 to %struct.linkedmod**
  store %struct.linkedmod* null, %struct.linkedmod** %linked44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.then35
  br label %if.end53

if.else:                                          ; preds = %if.end27
  %29 = load %struct.module*, %struct.module** %m.addr, align 4
  %u46 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 1
  %handle = bitcast %union.anon* %u46 to i8**
  %30 = load i8*, i8** %handle, align 4
  %tobool47 = icmp ne i8* %30, null
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.else
  %31 = load %struct.module*, %struct.module** %m.addr, align 4
  %call49 = call i32 @finish_module(%struct.module* %31)
  %32 = load %struct.module*, %struct.module** %m.addr, align 4
  %u50 = getelementptr inbounds %struct.module, %struct.module* %32, i32 0, i32 1
  %handle51 = bitcast %union.anon* %u50 to i8**
  store i8* null, i8** %handle51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end45
  %33 = load i32, i32* %del, align 4
  %tobool54 = icmp ne i32 %33, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end123

land.lhs.true55:                                  ; preds = %if.end53
  %34 = load %struct.module*, %struct.module** %m.addr, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 3
  %35 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool56 = icmp ne %union.linkroot* %35, null
  br i1 %tobool56, label %if.then57, label %if.end123

if.then57:                                        ; preds = %land.lhs.true55
  %36 = load %struct.module*, %struct.module** %m.addr, align 4
  %deps58 = getelementptr inbounds %struct.module, %struct.module* %36, i32 0, i32 3
  %37 = load %union.linkroot*, %union.linkroot** %deps58, align 4
  %list = bitcast %union.linkroot* %37 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %38 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %38, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc120, %if.then57
  %39 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool59 = icmp ne %struct.linknode* %39, null
  br i1 %tobool59, label %for.body, label %for.end122

for.body:                                         ; preds = %for.cond
  %40 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %40, i32 0, i32 2
  %41 = load i8*, i8** %dat, align 4
  %call60 = call %struct.module* @find_module(i8* %41, i32 1, i8** null)
  store %struct.module* %call60, %struct.module** %dm, align 4
  %42 = load %struct.module*, %struct.module** %dm, align 4
  %tobool61 = icmp ne %struct.module* %42, null
  br i1 %tobool61, label %land.lhs.true62, label %if.end119

land.lhs.true62:                                  ; preds = %for.body
  %43 = load %struct.module*, %struct.module** %dm, align 4
  %node63 = getelementptr inbounds %struct.module, %struct.module* %43, i32 0, i32 0
  %flags64 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node63, i32 0, i32 2
  %44 = load i32, i32* %flags64, align 4
  %and65 = and i32 %44, 2
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end119

if.then67:                                        ; preds = %land.lhs.true62
  store i32 1, i32* %du, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc113, %if.then67
  %45 = load i32, i32* %du, align 4
  %tobool69 = icmp ne i32 %45, 0
  br i1 %tobool69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond68
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %47, i32 0, i32 0
  %48 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %46, %48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond68
  %49 = phi i1 [ false, %for.cond68 ], [ %cmp, %land.rhs ]
  br i1 %49, label %for.body70, label %for.end114

for.body70:                                       ; preds = %land.end
  %50 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %50, i32 0, i32 2
  %51 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %52 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %51, i32 %52
  %53 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  %54 = bitcast %struct.hashnode* %53 to %struct.module*
  store %struct.module* %54, %struct.module** %am, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc109, %for.body70
  %55 = load i32, i32* %du, align 4
  %tobool72 = icmp ne i32 %55, 0
  br i1 %tobool72, label %land.rhs73, label %land.end75

land.rhs73:                                       ; preds = %for.cond71
  %56 = load %struct.module*, %struct.module** %am, align 4
  %tobool74 = icmp ne %struct.module* %56, null
  br label %land.end75

land.end75:                                       ; preds = %land.rhs73, %for.cond71
  %57 = phi i1 [ false, %for.cond71 ], [ %tobool74, %land.rhs73 ]
  br i1 %57, label %for.body76, label %for.end112

for.body76:                                       ; preds = %land.end75
  %58 = load %struct.module*, %struct.module** %am, align 4
  %59 = load %struct.module*, %struct.module** %m.addr, align 4
  %cmp77 = icmp eq %struct.module* %58, %59
  br i1 %cmp77, label %if.then80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body76
  %60 = load %struct.module*, %struct.module** %am, align 4
  %deps78 = getelementptr inbounds %struct.module, %struct.module* %60, i32 0, i32 3
  %61 = load %union.linkroot*, %union.linkroot** %deps78, align 4
  %tobool79 = icmp ne %union.linkroot* %61, null
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %lor.lhs.false, %for.body76
  br label %for.inc109

if.end81:                                         ; preds = %lor.lhs.false
  %62 = load %struct.module*, %struct.module** %am, align 4
  %node82 = getelementptr inbounds %struct.module, %struct.module* %62, i32 0, i32 0
  %flags83 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node82, i32 0, i32 2
  %63 = load i32, i32* %flags83, align 4
  %and84 = and i32 %63, 8
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end81
  %64 = load %struct.module*, %struct.module** %am, align 4
  %u86 = getelementptr inbounds %struct.module, %struct.module* %64, i32 0, i32 1
  %linked87 = bitcast %union.anon* %u86 to %struct.linkedmod**
  %65 = load %struct.linkedmod*, %struct.linkedmod** %linked87, align 4
  %tobool88 = icmp ne %struct.linkedmod* %65, null
  br i1 %tobool88, label %if.end93, label %if.then92

cond.false:                                       ; preds = %if.end81
  %66 = load %struct.module*, %struct.module** %am, align 4
  %u89 = getelementptr inbounds %struct.module, %struct.module* %66, i32 0, i32 1
  %handle90 = bitcast %union.anon* %u89 to i8**
  %67 = load i8*, i8** %handle90, align 4
  %tobool91 = icmp ne i8* %67, null
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %cond.false, %cond.true
  br label %for.inc109

if.end93:                                         ; preds = %cond.false, %cond.true
  %68 = load %struct.module*, %struct.module** %am, align 4
  %deps94 = getelementptr inbounds %struct.module, %struct.module* %68, i32 0, i32 3
  %69 = load %union.linkroot*, %union.linkroot** %deps94, align 4
  %list95 = bitcast %union.linkroot* %69 to %struct.linklist*
  %first96 = getelementptr inbounds %struct.linklist, %struct.linklist* %list95, i32 0, i32 0
  %70 = load %struct.linknode*, %struct.linknode** %first96, align 4
  store %struct.linknode* %70, %struct.linknode** %sn, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc, %if.end93
  %71 = load i32, i32* %du, align 4
  %tobool98 = icmp ne i32 %71, 0
  br i1 %tobool98, label %land.rhs99, label %land.end101

land.rhs99:                                       ; preds = %for.cond97
  %72 = load %struct.linknode*, %struct.linknode** %sn, align 4
  %tobool100 = icmp ne %struct.linknode* %72, null
  br label %land.end101

land.end101:                                      ; preds = %land.rhs99, %for.cond97
  %73 = phi i1 [ false, %for.cond97 ], [ %tobool100, %land.rhs99 ]
  br i1 %73, label %for.body102, label %for.end

for.body102:                                      ; preds = %land.end101
  %74 = load %struct.linknode*, %struct.linknode** %sn, align 4
  %dat103 = getelementptr inbounds %struct.linknode, %struct.linknode* %74, i32 0, i32 2
  %75 = load i8*, i8** %dat103, align 4
  %76 = load %struct.module*, %struct.module** %dm, align 4
  %node104 = getelementptr inbounds %struct.module, %struct.module* %76, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node104, i32 0, i32 1
  %77 = load i8*, i8** %nam, align 4
  %call105 = call i32 @strcmp(i8* %75, i8* %77)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %for.body102
  store i32 0, i32* %du, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %for.body102
  br label %for.inc

for.inc:                                          ; preds = %if.end108
  %78 = load %struct.linknode*, %struct.linknode** %sn, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %78, i32 0, i32 0
  %79 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %79, %struct.linknode** %sn, align 4
  br label %for.cond97

for.end:                                          ; preds = %land.end101
  br label %for.inc109

for.inc109:                                       ; preds = %for.end, %if.then92, %if.then80
  %80 = load %struct.module*, %struct.module** %am, align 4
  %node110 = getelementptr inbounds %struct.module, %struct.module* %80, i32 0, i32 0
  %next111 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node110, i32 0, i32 0
  %81 = load %struct.hashnode*, %struct.hashnode** %next111, align 4
  %82 = bitcast %struct.hashnode* %81 to %struct.module*
  store %struct.module* %82, %struct.module** %am, align 4
  br label %for.cond71

for.end112:                                       ; preds = %land.end75
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond68

for.end114:                                       ; preds = %land.end
  %84 = load i32, i32* %du, align 4
  %tobool115 = icmp ne i32 %84, 0
  br i1 %tobool115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %for.end114
  %85 = load %struct.module*, %struct.module** %dm, align 4
  %call117 = call i32 @unload_module(%struct.module* %85)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %for.end114
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %land.lhs.true62, %for.body
  br label %for.inc120

for.inc120:                                       ; preds = %if.end119
  %86 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next121 = getelementptr inbounds %struct.linknode, %struct.linknode* %86, i32 0, i32 0
  %87 = load %struct.linknode*, %struct.linknode** %next121, align 4
  store %struct.linknode* %87, %struct.linknode** %n, align 4
  br label %for.cond

for.end122:                                       ; preds = %for.cond
  br label %if.end123

if.end123:                                        ; preds = %for.end122, %land.lhs.true55, %if.end53
  %88 = load %struct.module*, %struct.module** %m.addr, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %88, i32 0, i32 2
  %89 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool124 = icmp ne %union.linkroot* %89, null
  br i1 %tobool124, label %land.lhs.true125, label %if.else136

land.lhs.true125:                                 ; preds = %if.end123
  %90 = load %struct.module*, %struct.module** %m.addr, align 4
  %autoloads126 = getelementptr inbounds %struct.module, %struct.module* %90, i32 0, i32 2
  %91 = load %union.linkroot*, %union.linkroot** %autoloads126, align 4
  %list127 = bitcast %union.linkroot* %91 to %struct.linklist*
  %first128 = getelementptr inbounds %struct.linklist, %struct.linklist* %list127, i32 0, i32 0
  %92 = load %struct.linknode*, %struct.linknode** %first128, align 4
  %tobool129 = icmp ne %struct.linknode* %92, null
  br i1 %tobool129, label %if.then130, label %if.else136

if.then130:                                       ; preds = %land.lhs.true125
  %93 = load %struct.module*, %struct.module** %m.addr, align 4
  %node131 = getelementptr inbounds %struct.module, %struct.module* %93, i32 0, i32 0
  %nam132 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node131, i32 0, i32 1
  %94 = load i8*, i8** %nam132, align 4
  %95 = load %struct.module*, %struct.module** %m.addr, align 4
  %autoloads133 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 2
  %96 = load %union.linkroot*, %union.linkroot** %autoloads133, align 4
  %call134 = call i8** @hlinklist2array(%union.linkroot* %96, i32 0)
  %call135 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %94, i8** %call134, i32 0, i32 1)
  br label %if.end141

if.else136:                                       ; preds = %land.lhs.true125, %if.end123
  %97 = load %struct.module*, %struct.module** %m.addr, align 4
  %deps137 = getelementptr inbounds %struct.module, %struct.module* %97, i32 0, i32 3
  %98 = load %union.linkroot*, %union.linkroot** %deps137, align 4
  %tobool138 = icmp ne %union.linkroot* %98, null
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.else136
  %99 = load %struct.module*, %struct.module** %m.addr, align 4
  call void @delete_module(%struct.module* %99)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.else136
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then130
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end141, %if.then24, %if.then15, %if.then2
  %100 = load i32, i32* %retval, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind
define i32 @autofeatures(i8* %cmdnam, i8* %module, i8** %features, i32 %prefchar, i32 %defflags) #0 {
entry:
  %cmdnam.addr = alloca i8*, align 4
  %module.addr = alloca i8*, align 4
  %features.addr = alloca i8**, align 4
  %prefchar.addr = alloca i32, align 4
  %defflags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %subret = alloca i32, align 4
  %defm = alloca %struct.module*, align 4
  %m = alloca %struct.module*, align 4
  %modfeatures = alloca i8**, align 4
  %modenables = alloca i32*, align 4
  %fnam = alloca i8*, align 4
  %typnam = alloca i8*, align 4
  %feature = alloca i8*, align 4
  %add = alloca i32, align 4
  %fchar = alloca i32, align 4
  %flags10 = alloca i32, align 4
  %fn = alloca i32 (i8*, i8*, i32)*, align 4
  %i = alloca i32, align 4
  %ptr = alloca i8**, align 4
  %ln = alloca %struct.linknode*, align 4
  %prev = alloca %struct.linknode*, align 4
  %cmp121 = alloca i32, align 4
  %ln148 = alloca %struct.linknode*, align 4
  store i8* %cmdnam, i8** %cmdnam.addr, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8** %features, i8*** %features.addr, align 4
  store i32 %prefchar, i32* %prefchar.addr, align 4
  store i32 %defflags, i32* %defflags.addr, align 4
  store i32 0, i32* %ret, align 4
  store i8** null, i8*** %modfeatures, align 4
  store i32* null, i32** %modenables, align 4
  %0 = load i8*, i8** %module.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %module.addr, align 4
  %call = call %struct.module* @find_module(i8* %1, i32 3, i8** null)
  store %struct.module* %call, %struct.module** %defm, align 4
  %2 = load %struct.module*, %struct.module** %defm, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 8
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.module*, %struct.module** %defm, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %4, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %5 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %6 = bitcast %struct.linkedmod* %5 to i8*
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %if.then5, label %if.end

cond.false:                                       ; preds = %if.then
  %7 = load %struct.module*, %struct.module** %defm, align 4
  %u3 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 1
  %handle = bitcast %union.anon* %u3 to i8**
  %8 = load i8*, i8** %handle, align 4
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %cond.false, %cond.true
  %9 = load %struct.module*, %struct.module** %defm, align 4
  %call6 = call i32 @features_module(%struct.module* %9, i8*** %modfeatures)
  %10 = load %struct.module*, %struct.module** %defm, align 4
  %call7 = call i32 @enables_module(%struct.module* %10, i32** %modenables)
  br label %if.end

if.end:                                           ; preds = %if.then5, %cond.false, %cond.true
  br label %if.end8

if.else:                                          ; preds = %entry
  store %struct.module* null, %struct.module** %defm, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc180, %if.end8
  %11 = load i8**, i8*** %features.addr, align 4
  %12 = load i8*, i8** %11, align 4
  %tobool9 = icmp ne i8* %12, null
  br i1 %tobool9, label %for.body, label %for.end182

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %defflags.addr, align 4
  store i32 %13, i32* %flags10, align 4
  %14 = load i32, i32* %prefchar.addr, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then12, label %if.else17

if.then12:                                        ; preds = %for.body
  store i32 1, i32* %add, align 4
  %15 = load i32, i32* %prefchar.addr, align 4
  store i32 %15, i32* %fchar, align 4
  %16 = load i8**, i8*** %features.addr, align 4
  %17 = load i8*, i8** %16, align 4
  store i8* %17, i8** %fnam, align 4
  %18 = load i8*, i8** %fnam, align 4
  %call13 = call i32 @strlen(i8* %18)
  %add14 = add i32 %call13, 3
  %call15 = call i8* @zhalloc(i32 %add14)
  store i8* %call15, i8** %feature, align 4
  %19 = load i8*, i8** %feature, align 4
  %20 = load i32, i32* %fchar, align 4
  %21 = load i8*, i8** %fnam, align 4
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %20, i8* %21)
  br label %if.end36

if.else17:                                        ; preds = %for.body
  %22 = load i8**, i8*** %features.addr, align 4
  %23 = load i8*, i8** %22, align 4
  store i8* %23, i8** %feature, align 4
  %24 = load i8*, i8** %feature, align 4
  %25 = load i8, i8* %24, align 1
  %conv = sext i8 %25 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  store i32 0, i32* %add, align 4
  %26 = load i8*, i8** %feature, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %feature, align 4
  br label %if.end27

if.else20:                                        ; preds = %if.else17
  store i32 1, i32* %add, align 4
  %27 = load i8*, i8** %feature, align 4
  %28 = load i8, i8* %27, align 1
  %conv21 = sext i8 %28 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else20
  %29 = load i8*, i8** %feature, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr25, i8** %feature, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then19
  %30 = load i8*, i8** %feature, align 4
  %31 = load i8, i8* %30, align 1
  %tobool28 = icmp ne i8 %31, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %if.end27
  %32 = load i8*, i8** %feature, align 4
  %arrayidx = getelementptr inbounds i8, i8* %32, i32 1
  %33 = load i8, i8* %arrayidx, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp ne i32 %conv29, 58
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %if.end27
  %34 = load i8*, i8** %cmdnam.addr, align 4
  %35 = load i8*, i8** %feature, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i8* %35)
  store i32 1, i32* %ret, align 4
  br label %for.inc180

if.end33:                                         ; preds = %lor.lhs.false
  %36 = load i8*, i8** %feature, align 4
  %add.ptr = getelementptr inbounds i8, i8* %36, i32 2
  store i8* %add.ptr, i8** %fnam, align 4
  %37 = load i8*, i8** %feature, align 4
  %arrayidx34 = getelementptr inbounds i8, i8* %37, i32 0
  %38 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %38 to i32
  store i32 %conv35, i32* %fchar, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.then12
  %39 = load i32, i32* %flags10, align 4
  %and37 = and i32 %39, 8
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 0, i32* %add, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  %40 = load i32, i32* %fchar, align 4
  switch i32 %40, label %sw.default [
    i32 98, label %sw.bb
    i32 67, label %sw.bb42
    i32 99, label %sw.bb43
    i32 102, label %sw.bb46
    i32 112, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end40
  %41 = load i32, i32* %add, align 4
  %tobool41 = icmp ne i32 %41, 0
  %cond = select i1 %tobool41, i32 (i8*, i8*, i32)* @add_autobin, i32 (i8*, i8*, i32)* @del_autobin
  store i32 (i8*, i8*, i32)* %cond, i32 (i8*, i8*, i32)** %fn, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8** %typnam, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end40
  %42 = load i32, i32* %flags10, align 4
  %or = or i32 %42, 2
  store i32 %or, i32* %flags10, align 4
  br label %sw.bb43

sw.bb43:                                          ; preds = %if.end40, %sw.bb42
  %43 = load i32, i32* %add, align 4
  %tobool44 = icmp ne i32 %43, 0
  %cond45 = select i1 %tobool44, i32 (i8*, i8*, i32)* @add_autocond, i32 (i8*, i8*, i32)* @del_autocond
  store i32 (i8*, i8*, i32)* %cond45, i32 (i8*, i8*, i32)** %fn, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8** %typnam, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end40
  %44 = load i32, i32* %add, align 4
  %tobool47 = icmp ne i32 %44, 0
  %cond48 = select i1 %tobool47, i32 (i8*, i8*, i32)* @add_automathfunc, i32 (i8*, i8*, i32)* @del_automathfunc
  store i32 (i8*, i8*, i32)* %cond48, i32 (i8*, i8*, i32)** %fn, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8** %typnam, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end40
  %45 = load i32, i32* %add, align 4
  %tobool50 = icmp ne i32 %45, 0
  %cond51 = select i1 %tobool50, i32 (i8*, i8*, i32)* @add_autoparam, i32 (i8*, i8*, i32)* @del_autoparam
  store i32 (i8*, i8*, i32)* %cond51, i32 (i8*, i8*, i32)** %fn, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8** %typnam, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end40
  %46 = load i8*, i8** %cmdnam.addr, align 4
  %47 = load i32, i32* %fchar, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %47)
  store i32 1, i32* %ret, align 4
  br label %for.inc180

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb
  %48 = load i8*, i8** %fnam, align 4
  %call52 = call i8* @strchr(i8* %48, i32 47)
  %tobool53 = icmp ne i8* %call52, null
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %sw.epilog
  %49 = load i8*, i8** %cmdnam.addr, align 4
  %50 = load i8*, i8** %fnam, align 4
  %51 = load i8*, i8** %typnam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i8* %50, i8* %51)
  store i32 1, i32* %ret, align 4
  br label %for.inc180

if.end55:                                         ; preds = %sw.epilog
  %52 = load i8*, i8** %module.addr, align 4
  %tobool56 = icmp ne i8* %52, null
  br i1 %tobool56, label %if.else83, label %if.then57

if.then57:                                        ; preds = %if.end55
  store i32 0, i32* %i, align 4
  store %struct.module* null, %struct.module** %m, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc74, %if.then57
  %53 = load %struct.module*, %struct.module** %m, align 4
  %tobool59 = icmp ne %struct.module* %53, null
  br i1 %tobool59, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond58
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %55, i32 0, i32 0
  %56 = load i32, i32* %hsize, align 4
  %cmp60 = icmp slt i32 %54, %56
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond58
  %57 = phi i1 [ false, %for.cond58 ], [ %cmp60, %land.rhs ]
  br i1 %57, label %for.body62, label %for.end75

for.body62:                                       ; preds = %land.end
  %58 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %58, i32 0, i32 2
  %59 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %60 = load i32, i32* %i, align 4
  %arrayidx63 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %59, i32 %60
  %61 = load %struct.hashnode*, %struct.hashnode** %arrayidx63, align 4
  %62 = bitcast %struct.hashnode* %61 to %struct.module*
  store %struct.module* %62, %struct.module** %m, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc, %for.body62
  %63 = load %struct.module*, %struct.module** %m, align 4
  %tobool65 = icmp ne %struct.module* %63, null
  br i1 %tobool65, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond64
  %64 = load %struct.module*, %struct.module** %m, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %64, i32 0, i32 2
  %65 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool67 = icmp ne %union.linkroot* %65, null
  br i1 %tobool67, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %for.body66
  %66 = load %struct.module*, %struct.module** %m, align 4
  %autoloads68 = getelementptr inbounds %struct.module, %struct.module* %66, i32 0, i32 2
  %67 = load %union.linkroot*, %union.linkroot** %autoloads68, align 4
  %68 = load i8*, i8** %feature, align 4
  %call69 = call %struct.linknode* @linknodebystring(%union.linkroot* %67, i8* %68)
  %tobool70 = icmp ne %struct.linknode* %call69, null
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true
  br label %for.end

if.end72:                                         ; preds = %land.lhs.true, %for.body66
  br label %for.inc

for.inc:                                          ; preds = %if.end72
  %69 = load %struct.module*, %struct.module** %m, align 4
  %node73 = getelementptr inbounds %struct.module, %struct.module* %69, i32 0, i32 0
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node73, i32 0, i32 0
  %70 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  %71 = bitcast %struct.hashnode* %70 to %struct.module*
  store %struct.module* %71, %struct.module** %m, align 4
  br label %for.cond64

for.end:                                          ; preds = %if.then71, %for.cond64
  br label %for.inc74

for.inc74:                                        ; preds = %for.end
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond58

for.end75:                                        ; preds = %land.end
  %73 = load %struct.module*, %struct.module** %m, align 4
  %tobool76 = icmp ne %struct.module* %73, null
  br i1 %tobool76, label %if.end82, label %if.then77

if.then77:                                        ; preds = %for.end75
  %74 = load i32, i32* %flags10, align 4
  %and78 = and i32 %74, 1
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.then77
  store i32 1, i32* %ret, align 4
  %75 = load i8*, i8** %cmdnam.addr, align 4
  %76 = load i8*, i8** %fnam, align 4
  %77 = load i8*, i8** %typnam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* %76, i8* %77)
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.then77
  br label %for.inc180

if.end82:                                         ; preds = %for.end75
  br label %if.end84

if.else83:                                        ; preds = %if.end55
  %78 = load %struct.module*, %struct.module** %defm, align 4
  store %struct.module* %78, %struct.module** %m, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end82
  store i32 0, i32* %subret, align 4
  %79 = load i32, i32* %add, align 4
  %tobool85 = icmp ne i32 %79, 0
  br i1 %tobool85, label %if.then86, label %if.else144

if.then86:                                        ; preds = %if.end84
  %80 = load i8**, i8*** %modfeatures, align 4
  %tobool87 = icmp ne i8** %80, null
  br i1 %tobool87, label %if.then88, label %if.end107

if.then88:                                        ; preds = %if.then86
  %81 = load i8**, i8*** %modfeatures, align 4
  store i8** %81, i8*** %ptr, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc96, %if.then88
  %82 = load i8**, i8*** %ptr, align 4
  %83 = load i8*, i8** %82, align 4
  %tobool90 = icmp ne i8* %83, null
  br i1 %tobool90, label %for.body91, label %for.end98

for.body91:                                       ; preds = %for.cond89
  %84 = load i8**, i8*** %ptr, align 4
  %85 = load i8*, i8** %84, align 4
  %86 = load i8*, i8** %feature, align 4
  %call92 = call i32 @strcmp(i8* %85, i8* %86)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %for.body91
  br label %for.end98

if.end95:                                         ; preds = %for.body91
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %87 = load i8**, i8*** %ptr, align 4
  %incdec.ptr97 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %incdec.ptr97, i8*** %ptr, align 4
  br label %for.cond89

for.end98:                                        ; preds = %if.then94, %for.cond89
  %88 = load i8**, i8*** %ptr, align 4
  %89 = load i8*, i8** %88, align 4
  %tobool99 = icmp ne i8* %89, null
  br i1 %tobool99, label %if.end102, label %if.then100

if.then100:                                       ; preds = %for.end98
  %90 = load i8*, i8** %cmdnam.addr, align 4
  %91 = load %struct.module*, %struct.module** %m, align 4
  %node101 = getelementptr inbounds %struct.module, %struct.module* %91, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node101, i32 0, i32 1
  %92 = load i8*, i8** %nam, align 4
  %93 = load i8*, i8** %feature, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %92, i8* %93)
  store i32 1, i32* %ret, align 4
  br label %for.inc180

if.end102:                                        ; preds = %for.end98
  %94 = load i32*, i32** %modenables, align 4
  %95 = load i8**, i8*** %ptr, align 4
  %96 = load i8**, i8*** %modfeatures, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %95 to i32
  %sub.ptr.rhs.cast = ptrtoint i8** %96 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %arrayidx103 = getelementptr inbounds i32, i32* %94, i32 %sub.ptr.div
  %97 = load i32, i32* %arrayidx103, align 4
  %tobool104 = icmp ne i32 %97, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end102
  br label %for.inc180

if.end106:                                        ; preds = %if.end102
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then86
  %98 = load %struct.module*, %struct.module** %m, align 4
  %autoloads108 = getelementptr inbounds %struct.module, %struct.module* %98, i32 0, i32 2
  %99 = load %union.linkroot*, %union.linkroot** %autoloads108, align 4
  %tobool109 = icmp ne %union.linkroot* %99, null
  br i1 %tobool109, label %if.else117, label %if.then110

if.then110:                                       ; preds = %if.end107
  %call111 = call %union.linkroot* @znewlinklist()
  %100 = load %struct.module*, %struct.module** %m, align 4
  %autoloads112 = getelementptr inbounds %struct.module, %struct.module* %100, i32 0, i32 2
  store %union.linkroot* %call111, %union.linkroot** %autoloads112, align 4
  %101 = load %struct.module*, %struct.module** %m, align 4
  %autoloads113 = getelementptr inbounds %struct.module, %struct.module* %101, i32 0, i32 2
  %102 = load %union.linkroot*, %union.linkroot** %autoloads113, align 4
  %103 = load %struct.module*, %struct.module** %m, align 4
  %autoloads114 = getelementptr inbounds %struct.module, %struct.module* %103, i32 0, i32 2
  %104 = load %union.linkroot*, %union.linkroot** %autoloads114, align 4
  %list = bitcast %union.linkroot* %104 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %105 = load %struct.linknode*, %struct.linknode** %last, align 4
  %106 = load i8*, i8** %feature, align 4
  %call115 = call i8* @ztrdup(i8* %106)
  %call116 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %102, %struct.linknode* %105, i8* %call115)
  br label %if.end143

if.else117:                                       ; preds = %if.end107
  %107 = load %struct.module*, %struct.module** %m, align 4
  %autoloads118 = getelementptr inbounds %struct.module, %struct.module* %107, i32 0, i32 2
  %108 = load %union.linkroot*, %union.linkroot** %autoloads118, align 4
  %109 = bitcast %union.linkroot* %108 to %struct.linknode*
  store %struct.linknode* %109, %struct.linknode** %prev, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end133, %if.else117
  %110 = load %struct.linknode*, %struct.linknode** %prev, align 4
  %next119 = getelementptr inbounds %struct.linknode, %struct.linknode* %110, i32 0, i32 0
  %111 = load %struct.linknode*, %struct.linknode** %next119, align 4
  store %struct.linknode* %111, %struct.linknode** %ln, align 4
  %tobool120 = icmp ne %struct.linknode* %111, null
  br i1 %tobool120, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = load i8*, i8** %feature, align 4
  %113 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %113, i32 0, i32 2
  %114 = load i8*, i8** %dat, align 4
  %call122 = call i32 @strcmp(i8* %112, i8* %114)
  store i32 %call122, i32* %cmp121, align 4
  %115 = load i32, i32* %cmp121, align 4
  %cmp123 = icmp eq i32 %115, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %while.body
  br label %while.end

if.end126:                                        ; preds = %while.body
  %116 = load i32, i32* %cmp121, align 4
  %cmp127 = icmp slt i32 %116, 0
  br i1 %cmp127, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.end126
  %117 = load %struct.module*, %struct.module** %m, align 4
  %autoloads130 = getelementptr inbounds %struct.module, %struct.module* %117, i32 0, i32 2
  %118 = load %union.linkroot*, %union.linkroot** %autoloads130, align 4
  %119 = load %struct.linknode*, %struct.linknode** %prev, align 4
  %120 = load i8*, i8** %feature, align 4
  %call131 = call i8* @ztrdup(i8* %120)
  %call132 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %118, %struct.linknode* %119, i8* %call131)
  br label %while.end

if.end133:                                        ; preds = %if.end126
  %121 = load %struct.linknode*, %struct.linknode** %ln, align 4
  store %struct.linknode* %121, %struct.linknode** %prev, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then129, %if.then125, %while.cond
  %122 = load %struct.linknode*, %struct.linknode** %ln, align 4
  %tobool134 = icmp ne %struct.linknode* %122, null
  br i1 %tobool134, label %if.end142, label %if.then135

if.then135:                                       ; preds = %while.end
  %123 = load %struct.module*, %struct.module** %m, align 4
  %autoloads136 = getelementptr inbounds %struct.module, %struct.module* %123, i32 0, i32 2
  %124 = load %union.linkroot*, %union.linkroot** %autoloads136, align 4
  %125 = load %struct.module*, %struct.module** %m, align 4
  %autoloads137 = getelementptr inbounds %struct.module, %struct.module* %125, i32 0, i32 2
  %126 = load %union.linkroot*, %union.linkroot** %autoloads137, align 4
  %list138 = bitcast %union.linkroot* %126 to %struct.linklist*
  %last139 = getelementptr inbounds %struct.linklist, %struct.linklist* %list138, i32 0, i32 1
  %127 = load %struct.linknode*, %struct.linknode** %last139, align 4
  %128 = load i8*, i8** %feature, align 4
  %call140 = call i8* @ztrdup(i8* %128)
  %call141 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %124, %struct.linknode* %127, i8* %call140)
  br label %if.end142

if.end142:                                        ; preds = %if.then135, %while.end
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then110
  br label %if.end161

if.else144:                                       ; preds = %if.end84
  %129 = load %struct.module*, %struct.module** %m, align 4
  %autoloads145 = getelementptr inbounds %struct.module, %struct.module* %129, i32 0, i32 2
  %130 = load %union.linkroot*, %union.linkroot** %autoloads145, align 4
  %tobool146 = icmp ne %union.linkroot* %130, null
  br i1 %tobool146, label %if.then147, label %if.end160

if.then147:                                       ; preds = %if.else144
  %131 = load %struct.module*, %struct.module** %m, align 4
  %autoloads149 = getelementptr inbounds %struct.module, %struct.module* %131, i32 0, i32 2
  %132 = load %union.linkroot*, %union.linkroot** %autoloads149, align 4
  %133 = load i8*, i8** %feature, align 4
  %call150 = call %struct.linknode* @linknodebystring(%union.linkroot* %132, i8* %133)
  store %struct.linknode* %call150, %struct.linknode** %ln148, align 4
  %tobool151 = icmp ne %struct.linknode* %call150, null
  br i1 %tobool151, label %if.then152, label %if.else155

if.then152:                                       ; preds = %if.then147
  %134 = load %struct.module*, %struct.module** %m, align 4
  %autoloads153 = getelementptr inbounds %struct.module, %struct.module* %134, i32 0, i32 2
  %135 = load %union.linkroot*, %union.linkroot** %autoloads153, align 4
  %136 = load %struct.linknode*, %struct.linknode** %ln148, align 4
  %call154 = call i8* @remnode(%union.linkroot* %135, %struct.linknode* %136)
  call void @zsfree(i8* %call154)
  br label %if.end159

if.else155:                                       ; preds = %if.then147
  %137 = load i32, i32* %flags10, align 4
  %and156 = and i32 %137, 1
  %tobool157 = icmp ne i32 %and156, 0
  %cond158 = select i1 %tobool157, i32 -2, i32 2
  store i32 %cond158, i32* %subret, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else155, %if.then152
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.else144
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end143
  %138 = load i32, i32* %subret, align 4
  %cmp162 = icmp eq i32 %138, 0
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end161
  %139 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fn, align 4
  %140 = load i8*, i8** %module.addr, align 4
  %141 = load i8*, i8** %fnam, align 4
  %142 = load i32, i32* %flags10, align 4
  %call165 = call i32 %139(i8* %140, i8* %141, i32 %142)
  store i32 %call165, i32* %subret, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end161
  %143 = load i32, i32* %subret, align 4
  %cmp167 = icmp ne i32 %143, 0
  br i1 %cmp167, label %if.then169, label %if.end179

if.then169:                                       ; preds = %if.end166
  %144 = load i32, i32* %subret, align 4
  %cmp170 = icmp ne i32 %144, -2
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then169
  store i32 1, i32* %ret, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.then169
  %145 = load i32, i32* %subret, align 4
  switch i32 %145, label %sw.default177 [
    i32 1, label %sw.bb174
    i32 2, label %sw.bb175
    i32 3, label %sw.bb176
  ]

sw.bb174:                                         ; preds = %if.end173
  %146 = load i8*, i8** %cmdnam.addr, align 4
  %147 = load i8*, i8** %typnam, align 4
  %148 = load i8*, i8** %fnam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8* %147, i8* %148)
  br label %sw.epilog178

sw.bb175:                                         ; preds = %if.end173
  %149 = load i8*, i8** %cmdnam.addr, align 4
  %150 = load i8*, i8** %fnam, align 4
  %151 = load i8*, i8** %typnam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* %150, i8* %151)
  br label %sw.epilog178

sw.bb176:                                         ; preds = %if.end173
  %152 = load i8*, i8** %cmdnam.addr, align 4
  %153 = load i8*, i8** %fnam, align 4
  %154 = load i8*, i8** %typnam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* %153, i8* %154)
  br label %sw.epilog178

sw.default177:                                    ; preds = %if.end173
  br label %sw.epilog178

sw.epilog178:                                     ; preds = %sw.default177, %sw.bb176, %sw.bb175, %sw.bb174
  br label %if.end179

if.end179:                                        ; preds = %sw.epilog178, %if.end166
  br label %for.inc180

for.inc180:                                       ; preds = %if.end179, %if.then105, %if.then100, %if.end81, %if.then54, %sw.default, %if.then32
  %155 = load i8**, i8*** %features.addr, align 4
  %incdec.ptr181 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %incdec.ptr181, i8*** %features.addr, align 4
  br label %for.cond

for.end182:                                       ; preds = %for.cond
  %156 = load i32, i32* %ret, align 4
  ret i32 %156
}

declare i8** @hlinklist2array(%union.linkroot*, i32) #1

; Function Attrs: noinline nounwind
define i32 @unload_named_module(i8* %modname, i8* %nam, i32 %silent) #0 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca i8*, align 4
  %nam.addr = alloca i8*, align 4
  %silent.addr = alloca i32, align 4
  %mname = alloca i8*, align 4
  %m = alloca %struct.module*, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %del = alloca i32, align 4
  %dm = alloca %struct.module*, align 4
  %dn = alloca %struct.linknode*, align 4
  store i8* %modname, i8** %modname.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i32 %silent, i32* %silent.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %modname.addr, align 4
  %call = call %struct.module* @find_module(i8* %0, i32 1, i8** %mname)
  store %struct.module* %call, %struct.module** %m, align 4
  %1 = load %struct.module*, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %1, null
  br i1 %tobool, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  store i32 0, i32* %del, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  %9 = bitcast %struct.hashnode* %8 to %struct.module*
  store %struct.module* %9, %struct.module** %dm, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %10 = load %struct.module*, %struct.module** %dm, align 4
  %tobool2 = icmp ne %struct.module* %10, null
  br i1 %tobool2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  %11 = load %struct.module*, %struct.module** %dm, align 4
  %deps = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 3
  %12 = load %union.linkroot*, %union.linkroot** %deps, align 4
  %tobool4 = icmp ne %union.linkroot* %12, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %for.body3
  %13 = load %struct.module*, %struct.module** %dm, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %14 = load i8*, i8** %handle, align 4
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %for.body3
  br label %for.inc18

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.module*, %struct.module** %dm, align 4
  %deps7 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 3
  %16 = load %union.linkroot*, %union.linkroot** %deps7, align 4
  %list = bitcast %union.linkroot* %16 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %17 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %17, %struct.linknode** %dn, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end
  %18 = load %struct.linknode*, %struct.linknode** %dn, align 4
  %tobool9 = icmp ne %struct.linknode* %18, null
  br i1 %tobool9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %19 = load %struct.linknode*, %struct.linknode** %dn, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %19, i32 0, i32 2
  %20 = load i8*, i8** %dat, align 4
  %21 = load i8*, i8** %mname, align 4
  %call11 = call i32 @strcmp(i8* %20, i8* %21)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %for.body10
  %22 = load %struct.module*, %struct.module** %dm, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %23 = load i32, i32* %flags, align 4
  %and = and i32 %23, 2
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  store i32 1, i32* %del, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then13
  %24 = load i8*, i8** %nam.addr, align 4
  %25 = load i8*, i8** %mname, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0), i8* %25)
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %26 = load %struct.linknode*, %struct.linknode** %dn, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %26, i32 0, i32 0
  %27 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %27, %struct.linknode** %dn, align 4
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then6
  %28 = load %struct.module*, %struct.module** %dm, align 4
  %node19 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %next20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 0
  %29 = load %struct.hashnode*, %struct.hashnode** %next20, align 4
  %30 = bitcast %struct.hashnode* %29 to %struct.module*
  store %struct.module* %30, %struct.module** %dm, align 4
  br label %for.cond1

for.end21:                                        ; preds = %for.cond1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %32 = load i32, i32* %del, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end23
  %33 = load %struct.module*, %struct.module** %m, align 4
  %wrapper = getelementptr inbounds %struct.module, %struct.module* %33, i32 0, i32 4
  %34 = load i32, i32* %wrapper, align 4
  %inc26 = add nsw i32 %34, 1
  store i32 %inc26, i32* %wrapper, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end23
  %35 = load %struct.module*, %struct.module** %m, align 4
  %call28 = call i32 @unload_module(%struct.module* %35)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  store i32 1, i32* %ret, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27
  %36 = load i32, i32* %del, align 4
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %37 = load %struct.module*, %struct.module** %m, align 4
  %wrapper34 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 4
  %38 = load i32, i32* %wrapper34, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %wrapper34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  br label %if.end40

if.else36:                                        ; preds = %entry
  %39 = load i32, i32* %silent.addr, align 4
  %tobool37 = icmp ne i32 %39, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.else36
  %40 = load i8*, i8** %nam.addr, align 4
  %41 = load i8*, i8** %modname.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %41)
  store i32 1, i32* %ret, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else36
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end35
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.else
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind
define i8** @featuresarray(%struct.module* %m, %struct.features* %f) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %f.addr = alloca %struct.features*, align 4
  %bn_size = alloca i32, align 4
  %cd_size = alloca i32, align 4
  %mf_size = alloca i32, align 4
  %pd_size = alloca i32, align 4
  %features_size = alloca i32, align 4
  %bnp = alloca %struct.builtin*, align 4
  %cdp = alloca %struct.conddef*, align 4
  %mfp = alloca %struct.mathfunc*, align 4
  %pdp = alloca %struct.paramdef*, align 4
  %features = alloca i8**, align 4
  %featurep = alloca i8**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.features* %f, %struct.features** %f.addr, align 4
  %0 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_size1 = getelementptr inbounds %struct.features, %struct.features* %0, i32 0, i32 1
  %1 = load i32, i32* %bn_size1, align 4
  store i32 %1, i32* %bn_size, align 4
  %2 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_size2 = getelementptr inbounds %struct.features, %struct.features* %2, i32 0, i32 3
  %3 = load i32, i32* %cd_size2, align 4
  store i32 %3, i32* %cd_size, align 4
  %4 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_size3 = getelementptr inbounds %struct.features, %struct.features* %4, i32 0, i32 5
  %5 = load i32, i32* %mf_size3, align 4
  store i32 %5, i32* %mf_size, align 4
  %6 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_size4 = getelementptr inbounds %struct.features, %struct.features* %6, i32 0, i32 7
  %7 = load i32, i32* %pd_size4, align 4
  store i32 %7, i32* %pd_size, align 4
  %8 = load i32, i32* %bn_size, align 4
  %9 = load i32, i32* %cd_size, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %pd_size, align 4
  %add5 = add nsw i32 %add, %10
  %11 = load i32, i32* %mf_size, align 4
  %add6 = add nsw i32 %add5, %11
  %12 = load %struct.features*, %struct.features** %f.addr, align 4
  %n_abstract = getelementptr inbounds %struct.features, %struct.features* %12, i32 0, i32 8
  %13 = load i32, i32* %n_abstract, align 4
  %add7 = add nsw i32 %add6, %13
  store i32 %add7, i32* %features_size, align 4
  %14 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_list = getelementptr inbounds %struct.features, %struct.features* %14, i32 0, i32 0
  %15 = load %struct.builtin*, %struct.builtin** %bn_list, align 4
  store %struct.builtin* %15, %struct.builtin** %bnp, align 4
  %16 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_list = getelementptr inbounds %struct.features, %struct.features* %16, i32 0, i32 2
  %17 = load %struct.conddef*, %struct.conddef** %cd_list, align 4
  store %struct.conddef* %17, %struct.conddef** %cdp, align 4
  %18 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_list = getelementptr inbounds %struct.features, %struct.features* %18, i32 0, i32 4
  %19 = load %struct.mathfunc*, %struct.mathfunc** %mf_list, align 4
  store %struct.mathfunc* %19, %struct.mathfunc** %mfp, align 4
  %20 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_list = getelementptr inbounds %struct.features, %struct.features* %20, i32 0, i32 6
  %21 = load %struct.paramdef*, %struct.paramdef** %pd_list, align 4
  store %struct.paramdef* %21, %struct.paramdef** %pdp, align 4
  %22 = load i32, i32* %features_size, align 4
  %add8 = add nsw i32 %22, 1
  %mul = mul i32 %add8, 4
  %call = call i8* @zhalloc(i32 %mul)
  %23 = bitcast i8* %call to i8**
  store i8** %23, i8*** %features, align 4
  %24 = load i8**, i8*** %features, align 4
  store i8** %24, i8*** %featurep, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %25 = load i32, i32* %bn_size, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %bn_size, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.builtin*, %struct.builtin** %bnp, align 4
  %incdec.ptr = getelementptr inbounds %struct.builtin, %struct.builtin* %26, i32 1
  store %struct.builtin* %incdec.ptr, %struct.builtin** %bnp, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %26, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %27 = load i8*, i8** %nam, align 4
  %call9 = call i8* @dyncat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %27)
  %28 = load i8**, i8*** %featurep, align 4
  %incdec.ptr10 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %incdec.ptr10, i8*** %featurep, align 4
  store i8* %call9, i8** %28, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond11

while.cond11:                                     ; preds = %while.body14, %while.end
  %29 = load i32, i32* %cd_size, align 4
  %dec12 = add nsw i32 %29, -1
  store i32 %dec12, i32* %cd_size, align 4
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %while.body14, label %while.end19

while.body14:                                     ; preds = %while.cond11
  %30 = load %struct.conddef*, %struct.conddef** %cdp, align 4
  %flags = getelementptr inbounds %struct.conddef, %struct.conddef* %30, i32 0, i32 2
  %31 = load i32, i32* %flags, align 4
  %and = and i32 %31, 1
  %tobool15 = icmp ne i32 %and, 0
  %cond = select i1 %tobool15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)
  %32 = load %struct.conddef*, %struct.conddef** %cdp, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 4
  %call16 = call i8* @dyncat(i8* %cond, i8* %33)
  %34 = load i8**, i8*** %featurep, align 4
  %incdec.ptr17 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %incdec.ptr17, i8*** %featurep, align 4
  store i8* %call16, i8** %34, align 4
  %35 = load %struct.conddef*, %struct.conddef** %cdp, align 4
  %incdec.ptr18 = getelementptr inbounds %struct.conddef, %struct.conddef* %35, i32 1
  store %struct.conddef* %incdec.ptr18, %struct.conddef** %cdp, align 4
  br label %while.cond11

while.end19:                                      ; preds = %while.cond11
  br label %while.cond20

while.cond20:                                     ; preds = %while.body23, %while.end19
  %36 = load i32, i32* %mf_size, align 4
  %dec21 = add nsw i32 %36, -1
  store i32 %dec21, i32* %mf_size, align 4
  %tobool22 = icmp ne i32 %36, 0
  br i1 %tobool22, label %while.body23, label %while.end28

while.body23:                                     ; preds = %while.cond20
  %37 = load %struct.mathfunc*, %struct.mathfunc** %mfp, align 4
  %incdec.ptr24 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %37, i32 1
  store %struct.mathfunc* %incdec.ptr24, %struct.mathfunc** %mfp, align 4
  %name25 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %37, i32 0, i32 1
  %38 = load i8*, i8** %name25, align 4
  %call26 = call i8* @dyncat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %38)
  %39 = load i8**, i8*** %featurep, align 4
  %incdec.ptr27 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %incdec.ptr27, i8*** %featurep, align 4
  store i8* %call26, i8** %39, align 4
  br label %while.cond20

while.end28:                                      ; preds = %while.cond20
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %while.end28
  %40 = load i32, i32* %pd_size, align 4
  %dec30 = add nsw i32 %40, -1
  store i32 %dec30, i32* %pd_size, align 4
  %tobool31 = icmp ne i32 %40, 0
  br i1 %tobool31, label %while.body32, label %while.end37

while.body32:                                     ; preds = %while.cond29
  %41 = load %struct.paramdef*, %struct.paramdef** %pdp, align 4
  %incdec.ptr33 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %41, i32 1
  store %struct.paramdef* %incdec.ptr33, %struct.paramdef** %pdp, align 4
  %name34 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %41, i32 0, i32 0
  %42 = load i8*, i8** %name34, align 4
  %call35 = call i8* @dyncat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* %42)
  %43 = load i8**, i8*** %featurep, align 4
  %incdec.ptr36 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %incdec.ptr36, i8*** %featurep, align 4
  store i8* %call35, i8** %43, align 4
  br label %while.cond29

while.end37:                                      ; preds = %while.cond29
  %44 = load i8**, i8*** %features, align 4
  %45 = load i32, i32* %features_size, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %44, i32 %45
  store i8* null, i8** %arrayidx, align 4
  %46 = load i8**, i8*** %features, align 4
  ret i8** %46
}

declare i8* @zhalloc(i32) #1

declare i8* @dyncat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32* @getfeatureenables(%struct.module* %m, %struct.features* %f) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %f.addr = alloca %struct.features*, align 4
  %bn_size = alloca i32, align 4
  %cd_size = alloca i32, align 4
  %mf_size = alloca i32, align 4
  %pd_size = alloca i32, align 4
  %features_size = alloca i32, align 4
  %bnp = alloca %struct.builtin*, align 4
  %cdp = alloca %struct.conddef*, align 4
  %mfp = alloca %struct.mathfunc*, align 4
  %pdp = alloca %struct.paramdef*, align 4
  %enables = alloca i32*, align 4
  %enablep = alloca i32*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.features* %f, %struct.features** %f.addr, align 4
  %0 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_size1 = getelementptr inbounds %struct.features, %struct.features* %0, i32 0, i32 1
  %1 = load i32, i32* %bn_size1, align 4
  store i32 %1, i32* %bn_size, align 4
  %2 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_size2 = getelementptr inbounds %struct.features, %struct.features* %2, i32 0, i32 3
  %3 = load i32, i32* %cd_size2, align 4
  store i32 %3, i32* %cd_size, align 4
  %4 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_size3 = getelementptr inbounds %struct.features, %struct.features* %4, i32 0, i32 5
  %5 = load i32, i32* %mf_size3, align 4
  store i32 %5, i32* %mf_size, align 4
  %6 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_size4 = getelementptr inbounds %struct.features, %struct.features* %6, i32 0, i32 7
  %7 = load i32, i32* %pd_size4, align 4
  store i32 %7, i32* %pd_size, align 4
  %8 = load i32, i32* %bn_size, align 4
  %9 = load i32, i32* %cd_size, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %mf_size, align 4
  %add5 = add nsw i32 %add, %10
  %11 = load i32, i32* %pd_size, align 4
  %add6 = add nsw i32 %add5, %11
  %12 = load %struct.features*, %struct.features** %f.addr, align 4
  %n_abstract = getelementptr inbounds %struct.features, %struct.features* %12, i32 0, i32 8
  %13 = load i32, i32* %n_abstract, align 4
  %add7 = add nsw i32 %add6, %13
  store i32 %add7, i32* %features_size, align 4
  %14 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_list = getelementptr inbounds %struct.features, %struct.features* %14, i32 0, i32 0
  %15 = load %struct.builtin*, %struct.builtin** %bn_list, align 4
  store %struct.builtin* %15, %struct.builtin** %bnp, align 4
  %16 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_list = getelementptr inbounds %struct.features, %struct.features* %16, i32 0, i32 2
  %17 = load %struct.conddef*, %struct.conddef** %cd_list, align 4
  store %struct.conddef* %17, %struct.conddef** %cdp, align 4
  %18 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_list = getelementptr inbounds %struct.features, %struct.features* %18, i32 0, i32 4
  %19 = load %struct.mathfunc*, %struct.mathfunc** %mf_list, align 4
  store %struct.mathfunc* %19, %struct.mathfunc** %mfp, align 4
  %20 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_list = getelementptr inbounds %struct.features, %struct.features* %20, i32 0, i32 6
  %21 = load %struct.paramdef*, %struct.paramdef** %pd_list, align 4
  store %struct.paramdef* %21, %struct.paramdef** %pdp, align 4
  %22 = load i32, i32* %features_size, align 4
  %mul = mul i32 4, %22
  %call = call i8* @zhalloc(i32 %mul)
  %23 = bitcast i8* %call to i32*
  store i32* %23, i32** %enables, align 4
  %24 = load i32*, i32** %enables, align 4
  store i32* %24, i32** %enablep, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %25 = load i32, i32* %bn_size, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %bn_size, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.builtin*, %struct.builtin** %bnp, align 4
  %incdec.ptr = getelementptr inbounds %struct.builtin, %struct.builtin* %26, i32 1
  store %struct.builtin* %incdec.ptr, %struct.builtin** %bnp, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %26, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %27 = load i32, i32* %flags, align 4
  %and = and i32 %27, 8
  %tobool8 = icmp ne i32 %and, 0
  %cond = select i1 %tobool8, i32 1, i32 0
  %28 = load i32*, i32** %enablep, align 4
  %incdec.ptr9 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr9, i32** %enablep, align 4
  store i32 %cond, i32* %28, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond10

while.cond10:                                     ; preds = %while.body13, %while.end
  %29 = load i32, i32* %cd_size, align 4
  %dec11 = add nsw i32 %29, -1
  store i32 %dec11, i32* %cd_size, align 4
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %while.body13, label %while.end20

while.body13:                                     ; preds = %while.cond10
  %30 = load %struct.conddef*, %struct.conddef** %cdp, align 4
  %incdec.ptr14 = getelementptr inbounds %struct.conddef, %struct.conddef* %30, i32 1
  store %struct.conddef* %incdec.ptr14, %struct.conddef** %cdp, align 4
  %flags15 = getelementptr inbounds %struct.conddef, %struct.conddef* %30, i32 0, i32 2
  %31 = load i32, i32* %flags15, align 4
  %and16 = and i32 %31, 2
  %tobool17 = icmp ne i32 %and16, 0
  %cond18 = select i1 %tobool17, i32 1, i32 0
  %32 = load i32*, i32** %enablep, align 4
  %incdec.ptr19 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr19, i32** %enablep, align 4
  store i32 %cond18, i32* %32, align 4
  br label %while.cond10

while.end20:                                      ; preds = %while.cond10
  br label %while.cond21

while.cond21:                                     ; preds = %while.body24, %while.end20
  %33 = load i32, i32* %mf_size, align 4
  %dec22 = add nsw i32 %33, -1
  store i32 %dec22, i32* %mf_size, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %while.body24, label %while.end31

while.body24:                                     ; preds = %while.cond21
  %34 = load %struct.mathfunc*, %struct.mathfunc** %mfp, align 4
  %incdec.ptr25 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %34, i32 1
  store %struct.mathfunc* %incdec.ptr25, %struct.mathfunc** %mfp, align 4
  %flags26 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %34, i32 0, i32 2
  %35 = load i32, i32* %flags26, align 4
  %and27 = and i32 %35, 2
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 1, i32 0
  %36 = load i32*, i32** %enablep, align 4
  %incdec.ptr30 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %incdec.ptr30, i32** %enablep, align 4
  store i32 %cond29, i32* %36, align 4
  br label %while.cond21

while.end31:                                      ; preds = %while.cond21
  br label %while.cond32

while.cond32:                                     ; preds = %while.body35, %while.end31
  %37 = load i32, i32* %pd_size, align 4
  %dec33 = add nsw i32 %37, -1
  store i32 %dec33, i32* %pd_size, align 4
  %tobool34 = icmp ne i32 %37, 0
  br i1 %tobool34, label %while.body35, label %while.end40

while.body35:                                     ; preds = %while.cond32
  %38 = load %struct.paramdef*, %struct.paramdef** %pdp, align 4
  %incdec.ptr36 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %38, i32 1
  store %struct.paramdef* %incdec.ptr36, %struct.paramdef** %pdp, align 4
  %pm = getelementptr inbounds %struct.paramdef, %struct.paramdef* %38, i32 0, i32 6
  %39 = load %struct.param*, %struct.param** %pm, align 4
  %tobool37 = icmp ne %struct.param* %39, null
  %cond38 = select i1 %tobool37, i32 1, i32 0
  %40 = load i32*, i32** %enablep, align 4
  %incdec.ptr39 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr39, i32** %enablep, align 4
  store i32 %cond38, i32* %40, align 4
  br label %while.cond32

while.end40:                                      ; preds = %while.cond32
  %41 = load i32*, i32** %enables, align 4
  ret i32* %41
}

; Function Attrs: noinline nounwind
define i32 @setfeatureenables(%struct.module* %m, %struct.features* %f, i32* %e) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %f.addr = alloca %struct.features*, align 4
  %e.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.features* %f, %struct.features** %f.addr, align 4
  store i32* %e, i32** %e.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_size = getelementptr inbounds %struct.features, %struct.features* %0, i32 0, i32 1
  %1 = load i32, i32* %bn_size, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  %4 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_list = getelementptr inbounds %struct.features, %struct.features* %4, i32 0, i32 0
  %5 = load %struct.builtin*, %struct.builtin** %bn_list, align 4
  %6 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_size1 = getelementptr inbounds %struct.features, %struct.features* %6, i32 0, i32 1
  %7 = load i32, i32* %bn_size1, align 4
  %8 = load i32*, i32** %e.addr, align 4
  %call = call i32 @setbuiltins(i8* %3, %struct.builtin* %5, i32 %7, i32* %8)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load i32*, i32** %e.addr, align 4
  %tobool4 = icmp ne i32* %9, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load %struct.features*, %struct.features** %f.addr, align 4
  %bn_size6 = getelementptr inbounds %struct.features, %struct.features* %10, i32 0, i32 1
  %11 = load i32, i32* %bn_size6, align 4
  %12 = load i32*, i32** %e.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %12, i32 %11
  store i32* %add.ptr, i32** %e.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %13 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_size = getelementptr inbounds %struct.features, %struct.features* %13, i32 0, i32 3
  %14 = load i32, i32* %cd_size, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.end8
  %15 = load %struct.module*, %struct.module** %m.addr, align 4
  %node11 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  %16 = load i8*, i8** %nam12, align 4
  %17 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_list = getelementptr inbounds %struct.features, %struct.features* %17, i32 0, i32 2
  %18 = load %struct.conddef*, %struct.conddef** %cd_list, align 4
  %19 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_size13 = getelementptr inbounds %struct.features, %struct.features* %19, i32 0, i32 3
  %20 = load i32, i32* %cd_size13, align 4
  %21 = load i32*, i32** %e.addr, align 4
  %call14 = call i32 @setconddefs(i8* %16, %struct.conddef* %18, i32 %20, i32* %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then10
  store i32 1, i32* %ret, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then10
  %22 = load i32*, i32** %e.addr, align 4
  %tobool18 = icmp ne i32* %22, null
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %23 = load %struct.features*, %struct.features** %f.addr, align 4
  %cd_size20 = getelementptr inbounds %struct.features, %struct.features* %23, i32 0, i32 3
  %24 = load i32, i32* %cd_size20, align 4
  %25 = load i32*, i32** %e.addr, align 4
  %add.ptr21 = getelementptr inbounds i32, i32* %25, i32 %24
  store i32* %add.ptr21, i32** %e.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end8
  %26 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_size = getelementptr inbounds %struct.features, %struct.features* %26, i32 0, i32 5
  %27 = load i32, i32* %mf_size, align 4
  %tobool24 = icmp ne i32 %27, 0
  br i1 %tobool24, label %if.then25, label %if.end38

if.then25:                                        ; preds = %if.end23
  %28 = load %struct.module*, %struct.module** %m.addr, align 4
  %node26 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %nam27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node26, i32 0, i32 1
  %29 = load i8*, i8** %nam27, align 4
  %30 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_list = getelementptr inbounds %struct.features, %struct.features* %30, i32 0, i32 4
  %31 = load %struct.mathfunc*, %struct.mathfunc** %mf_list, align 4
  %32 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_size28 = getelementptr inbounds %struct.features, %struct.features* %32, i32 0, i32 5
  %33 = load i32, i32* %mf_size28, align 4
  %34 = load i32*, i32** %e.addr, align 4
  %call29 = call i32 @setmathfuncs(i8* %29, %struct.mathfunc* %31, i32 %33, i32* %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then25
  store i32 1, i32* %ret, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then25
  %35 = load i32*, i32** %e.addr, align 4
  %tobool33 = icmp ne i32* %35, null
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end32
  %36 = load %struct.features*, %struct.features** %f.addr, align 4
  %mf_size35 = getelementptr inbounds %struct.features, %struct.features* %36, i32 0, i32 5
  %37 = load i32, i32* %mf_size35, align 4
  %38 = load i32*, i32** %e.addr, align 4
  %add.ptr36 = getelementptr inbounds i32, i32* %38, i32 %37
  store i32* %add.ptr36, i32** %e.addr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end23
  %39 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_size = getelementptr inbounds %struct.features, %struct.features* %39, i32 0, i32 7
  %40 = load i32, i32* %pd_size, align 4
  %tobool39 = icmp ne i32 %40, 0
  br i1 %tobool39, label %if.then40, label %if.end53

if.then40:                                        ; preds = %if.end38
  %41 = load %struct.module*, %struct.module** %m.addr, align 4
  %node41 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 0
  %nam42 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node41, i32 0, i32 1
  %42 = load i8*, i8** %nam42, align 4
  %43 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_list = getelementptr inbounds %struct.features, %struct.features* %43, i32 0, i32 6
  %44 = load %struct.paramdef*, %struct.paramdef** %pd_list, align 4
  %45 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_size43 = getelementptr inbounds %struct.features, %struct.features* %45, i32 0, i32 7
  %46 = load i32, i32* %pd_size43, align 4
  %47 = load i32*, i32** %e.addr, align 4
  %call44 = call i32 @setparamdefs(i8* %42, %struct.paramdef* %44, i32 %46, i32* %47)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  store i32 1, i32* %ret, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %48 = load i32*, i32** %e.addr, align 4
  %tobool48 = icmp ne i32* %48, null
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %49 = load %struct.features*, %struct.features** %f.addr, align 4
  %pd_size50 = getelementptr inbounds %struct.features, %struct.features* %49, i32 0, i32 7
  %50 = load i32, i32* %pd_size50, align 4
  %51 = load i32*, i32** %e.addr, align 4
  %add.ptr51 = getelementptr inbounds i32, i32* %51, i32 %50
  store i32* %add.ptr51, i32** %e.addr, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end38
  %52 = load i32, i32* %ret, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind
define internal i32 @setbuiltins(i8* %nam, %struct.builtin* %binl, i32 %size, i32* %e) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %binl.addr = alloca %struct.builtin*, align 4
  %size.addr = alloca i32, align 4
  %e.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca %struct.builtin*, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.builtin* %binl, %struct.builtin** %binl.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %e, i32** %e.addr, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.builtin*, %struct.builtin** %binl.addr, align 4
  %3 = load i32, i32* %n, align 4
  %arrayidx = getelementptr inbounds %struct.builtin, %struct.builtin* %2, i32 %3
  store %struct.builtin* %arrayidx, %struct.builtin** %b, align 4
  %4 = load i32*, i32** %e.addr, align 4
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32*, i32** %e.addr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr, i32** %e.addr, align 4
  %6 = load i32, i32* %5, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.else11

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 8
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %9 = load %struct.builtin*, %struct.builtin** %b, align 4
  %call = call i32 @addbuiltin(%struct.builtin* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %10 = load i8*, i8** %nam.addr, align 4
  %11 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node6 = getelementptr inbounds %struct.builtin, %struct.builtin* %11, i32 0, i32 0
  %nam7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 1
  %12 = load i8*, i8** %nam7, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* %12)
  store i32 1, i32* %ret, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %13 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node8 = getelementptr inbounds %struct.builtin, %struct.builtin* %13, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %14 = load i32, i32* %flags9, align 4
  %or = or i32 %14, 8
  store i32 %or, i32* %flags9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  br label %if.end30

if.else11:                                        ; preds = %land.lhs.true, %for.body
  %15 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node12 = getelementptr inbounds %struct.builtin, %struct.builtin* %15, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %16 = load i32, i32* %flags13, align 4
  %and14 = and i32 %16, 8
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.else11
  br label %for.inc

if.end17:                                         ; preds = %if.else11
  %17 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node18 = getelementptr inbounds %struct.builtin, %struct.builtin* %17, i32 0, i32 0
  %nam19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node18, i32 0, i32 1
  %18 = load i8*, i8** %nam19, align 4
  %call20 = call i32 @deletebuiltin(i8* %18)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.end17
  %19 = load i8*, i8** %nam.addr, align 4
  %20 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node23 = getelementptr inbounds %struct.builtin, %struct.builtin* %20, i32 0, i32 0
  %nam24 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node23, i32 0, i32 1
  %21 = load i8*, i8** %nam24, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i32 0, i32 0), i8* %21)
  store i32 1, i32* %ret, align 4
  br label %if.end29

if.else25:                                        ; preds = %if.end17
  %22 = load %struct.builtin*, %struct.builtin** %b, align 4
  %node26 = getelementptr inbounds %struct.builtin, %struct.builtin* %22, i32 0, i32 0
  %flags27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node26, i32 0, i32 2
  %23 = load i32, i32* %flags27, align 4
  %and28 = and i32 %23, -9
  store i32 %and28, i32* %flags27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else25, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.then16, %if.then3
  %24 = load i32, i32* %n, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %ret, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind
define internal i32 @setconddefs(i8* %nam, %struct.conddef* %c, i32 %size, i32* %e) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %c.addr = alloca %struct.conddef*, align 4
  %size.addr = alloca i32, align 4
  %e.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.conddef* %c, %struct.conddef** %c.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %e, i32** %e.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.then14, %if.then4, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32*, i32** %e.addr, align 4
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32*, i32** %e.addr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %e.addr, align 4
  %3 = load i32, i32* %2, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.else10

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %flags = getelementptr inbounds %struct.conddef, %struct.conddef* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %incdec.ptr5 = getelementptr inbounds %struct.conddef, %struct.conddef* %6, i32 1
  store %struct.conddef* %incdec.ptr5, %struct.conddef** %c.addr, align 4
  br label %while.cond

if.end:                                           ; preds = %if.then
  %7 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %call = call i32 @addconddef(%struct.conddef* %7)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.89, i32 0, i32 0), i8* %10)
  store i32 1, i32* %ret, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %11 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %flags8 = getelementptr inbounds %struct.conddef, %struct.conddef* %11, i32 0, i32 2
  %12 = load i32, i32* %flags8, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %flags8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %if.end25

if.else10:                                        ; preds = %land.lhs.true, %while.body
  %13 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %flags11 = getelementptr inbounds %struct.conddef, %struct.conddef* %13, i32 0, i32 2
  %14 = load i32, i32* %flags11, align 4
  %and12 = and i32 %14, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.else10
  %15 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %incdec.ptr15 = getelementptr inbounds %struct.conddef, %struct.conddef* %15, i32 1
  store %struct.conddef* %incdec.ptr15, %struct.conddef** %c.addr, align 4
  br label %while.cond

if.end16:                                         ; preds = %if.else10
  %16 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %call17 = call i32 @deleteconddef(%struct.conddef* %16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.end16
  %17 = load i8*, i8** %nam.addr, align 4
  %18 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %name20 = getelementptr inbounds %struct.conddef, %struct.conddef* %18, i32 0, i32 1
  %19 = load i8*, i8** %name20, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i32 0, i32 0), i8* %19)
  store i32 1, i32* %ret, align 4
  br label %if.end24

if.else21:                                        ; preds = %if.end16
  %20 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %flags22 = getelementptr inbounds %struct.conddef, %struct.conddef* %20, i32 0, i32 2
  %21 = load i32, i32* %flags22, align 4
  %and23 = and i32 %21, -3
  store i32 %and23, i32* %flags22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  %22 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %incdec.ptr26 = getelementptr inbounds %struct.conddef, %struct.conddef* %22, i32 1
  store %struct.conddef* %incdec.ptr26, %struct.conddef** %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define internal i32 @setmathfuncs(i8* %nam, %struct.mathfunc* %f, i32 %size, i32* %e) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %f.addr = alloca %struct.mathfunc*, align 4
  %size.addr = alloca i32, align 4
  %e.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.mathfunc* %f, %struct.mathfunc** %f.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %e, i32** %e.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.then14, %if.then4, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32*, i32** %e.addr, align 4
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32*, i32** %e.addr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %e.addr, align 4
  %3 = load i32, i32* %2, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.else10

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %incdec.ptr5 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %6, i32 1
  store %struct.mathfunc* %incdec.ptr5, %struct.mathfunc** %f.addr, align 4
  br label %while.cond

if.end:                                           ; preds = %if.then
  %7 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %call = call i32 @addmathfunc(%struct.mathfunc* %7)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %name = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.91, i32 0, i32 0), i8* %10)
  store i32 1, i32* %ret, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %11 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags8 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %11, i32 0, i32 2
  %12 = load i32, i32* %flags8, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %flags8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %if.end25

if.else10:                                        ; preds = %land.lhs.true, %while.body
  %13 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags11 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %13, i32 0, i32 2
  %14 = load i32, i32* %flags11, align 4
  %and12 = and i32 %14, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.else10
  %15 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %incdec.ptr15 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %15, i32 1
  store %struct.mathfunc* %incdec.ptr15, %struct.mathfunc** %f.addr, align 4
  br label %while.cond

if.end16:                                         ; preds = %if.else10
  %16 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %call17 = call i32 @deletemathfunc(%struct.mathfunc* %16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.end16
  %17 = load i8*, i8** %nam.addr, align 4
  %18 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %name20 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %18, i32 0, i32 1
  %19 = load i8*, i8** %name20, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* %19)
  store i32 1, i32* %ret, align 4
  br label %if.end24

if.else21:                                        ; preds = %if.end16
  %20 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags22 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %20, i32 0, i32 2
  %21 = load i32, i32* %flags22, align 4
  %and23 = and i32 %21, -3
  store i32 %and23, i32* %flags22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  %22 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %incdec.ptr26 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %22, i32 1
  store %struct.mathfunc* %incdec.ptr26, %struct.mathfunc** %f.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind
define internal i32 @setparamdefs(i8* %nam, %struct.paramdef* %d, i32 %size, i32* %e) #0 {
entry:
  %nam.addr = alloca i8*, align 4
  %d.addr = alloca %struct.paramdef*, align 4
  %size.addr = alloca i32, align 4
  %e.addr = alloca i32*, align 4
  %ret = alloca i32, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store %struct.paramdef* %d, %struct.paramdef** %d.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %e, i32** %e.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.then11, %if.then4, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32*, i32** %e.addr, align 4
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32*, i32** %e.addr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %e.addr, align 4
  %3 = load i32, i32* %2, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm = getelementptr inbounds %struct.paramdef, %struct.paramdef* %4, i32 0, i32 6
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %tobool3 = icmp ne %struct.param* %5, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %incdec.ptr5 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %6, i32 1
  store %struct.paramdef* %incdec.ptr5, %struct.paramdef** %d.addr, align 4
  br label %while.cond

if.end:                                           ; preds = %if.then
  %7 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %call = call i32 @addparamdef(%struct.paramdef* %7)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %nam.addr, align 4
  %9 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name = getelementptr inbounds %struct.paramdef, %struct.paramdef* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i32 0, i32 0), i8* %10)
  store i32 1, i32* %ret, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %while.body
  %11 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %pm9 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %11, i32 0, i32 6
  %12 = load %struct.param*, %struct.param** %pm9, align 4
  %tobool10 = icmp ne %struct.param* %12, null
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.else
  %13 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %incdec.ptr12 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %13, i32 1
  store %struct.paramdef* %incdec.ptr12, %struct.paramdef** %d.addr, align 4
  br label %while.cond

if.end13:                                         ; preds = %if.else
  %14 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %call14 = call i32 @deleteparamdef(%struct.paramdef* %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %15 = load i8*, i8** %nam.addr, align 4
  %16 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %name17 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %16, i32 0, i32 0
  %17 = load i8*, i8** %name17, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.94, i32 0, i32 0), i8* %17)
  store i32 1, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end8
  %18 = load %struct.paramdef*, %struct.paramdef** %d.addr, align 4
  %incdec.ptr20 = getelementptr inbounds %struct.paramdef, %struct.paramdef* %18, i32 1
  store %struct.paramdef* %incdec.ptr20, %struct.paramdef** %d.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %ret, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind
define i32 @handlefeatures(%struct.module* %m, %struct.features* %f, i32** %enables) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %f.addr = alloca %struct.features*, align 4
  %enables.addr = alloca i32**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store %struct.features* %f, %struct.features** %f.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  %0 = load i32**, i32*** %enables.addr, align 4
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32**, i32*** %enables.addr, align 4
  %2 = load i32*, i32** %1, align 4
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.module*, %struct.module** %m.addr, align 4
  %4 = load %struct.features*, %struct.features** %f.addr, align 4
  %5 = load i32**, i32*** %enables.addr, align 4
  %tobool2 = icmp ne i32** %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32**, i32*** %enables.addr, align 4
  %7 = load i32*, i32** %6, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %7, %cond.true ], [ null, %cond.false ]
  %call = call i32 @setfeatureenables(%struct.module* %3, %struct.features* %4, i32* %cond)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.module*, %struct.module** %m.addr, align 4
  %9 = load %struct.features*, %struct.features** %f.addr, align 4
  %call3 = call i32* @getfeatureenables(%struct.module* %8, %struct.features* %9)
  %10 = load i32**, i32*** %enables.addr, align 4
  store i32* %call3, i32** %10, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @features_module(%struct.module* %m, i8*** %features) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %features.addr = alloca i8***, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i8*** %features, i8**** %features.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %features1 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 2
  %4 = load i32 (%struct.module*, i8***)*, i32 (%struct.module*, i8***)** %features1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %6 = load i8***, i8**** %features.addr, align 4
  %call = call i32 %4(%struct.module* %5, i8*** %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %8 = load i8***, i8**** %features.addr, align 4
  %call2 = call i32 @dyn_features_module(%struct.module* %7, i8*** %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @enables_module(%struct.module* %m, i32** %enables) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %enables.addr = alloca i32**, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %enables1 = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 3
  %4 = load i32 (%struct.module*, i32**)*, i32 (%struct.module*, i32**)** %enables1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %6 = load i32**, i32*** %enables.addr, align 4
  %call = call i32 %4(%struct.module* %5, i32** %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %8 = load i32**, i32*** %enables.addr, align 4
  %call2 = call i32 @dyn_enables_module(%struct.module* %7, i32** %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

declare i32 @strlen(i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @add_autobin(i8* %module, i8* %bnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca i8*, align 4
  %bnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %bn = alloca %struct.builtin*, align 4
  %ret = alloca i32, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8* %bnam, i8** %bnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i8* @zshcalloc(i32 36)
  %0 = bitcast i8* %call to %struct.builtin*
  store %struct.builtin* %0, %struct.builtin** %bn, align 4
  %1 = load i8*, i8** %bnam.addr, align 4
  %call1 = call i8* @ztrdup(i8* %1)
  %2 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load i8*, i8** %module.addr, align 4
  %call2 = call i8* @ztrdup(i8* %3)
  %4 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr = getelementptr inbounds %struct.builtin, %struct.builtin* %4, i32 0, i32 5
  store i8* %call2, i8** %optstr, align 4
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node3 = getelementptr inbounds %struct.builtin, %struct.builtin* %6, i32 0, i32 0
  %flags4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  %7 = load i32, i32* %flags4, align 4
  %or = or i32 %7, 131072
  store i32 %or, i32* %flags4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %call5 = call i32 @addbuiltin(%struct.builtin* %8)
  store i32 %call5, i32* %ret, align 4
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %9 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 14
  %10 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %11 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node8 = getelementptr inbounds %struct.builtin, %struct.builtin* %11, i32 0, i32 0
  call void %10(%struct.hashnode* %node8)
  %12 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %12, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then7
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal i32 @del_autobin(i8* %module, i8* %bnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca i8*, align 4
  %bnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %bn = alloca %struct.builtin*, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8* %bnam, i8** %bnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 10
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %3 = load i8*, i8** %bnam.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.builtin*
  store %struct.builtin* %4, %struct.builtin** %bn, align 4
  %5 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %tobool = icmp ne %struct.builtin* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.else:                                          ; preds = %entry
  %7 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %7, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags3, align 4
  %and4 = and i32 %8, 8
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %9 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %9, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i32 3, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %10 = load i8*, i8** %bnam.addr, align 4
  %call12 = call i32 @deletebuiltin(i8* %10)
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.end10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then9, %if.then2
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind
define internal i32 @add_autocond(i8* %module, i8* %cnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca i8*, align 4
  %cnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %c = alloca %struct.conddef*, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8* %cnam, i8** %cnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i8* @zalloc(i32 32)
  %0 = bitcast i8* %call to %struct.conddef*
  store %struct.conddef* %0, %struct.conddef** %c, align 4
  %1 = load i8*, i8** %cnam.addr, align 4
  %call1 = call i8* @ztrdup(i8* %1)
  %2 = load %struct.conddef*, %struct.conddef** %c, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %2, i32 0, i32 1
  store i8* %call1, i8** %name, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %and = and i32 %3, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %4 = load %struct.conddef*, %struct.conddef** %c, align 4
  %flags2 = getelementptr inbounds %struct.conddef, %struct.conddef* %4, i32 0, i32 2
  store i32 %cond, i32* %flags2, align 4
  %5 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %5, 4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.conddef*, %struct.conddef** %c, align 4
  %flags5 = getelementptr inbounds %struct.conddef, %struct.conddef* %6, i32 0, i32 2
  %7 = load i32, i32* %flags5, align 4
  %or = or i32 %7, 4
  store i32 %or, i32* %flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %module.addr, align 4
  %call6 = call i8* @ztrdup(i8* %8)
  %9 = load %struct.conddef*, %struct.conddef** %c, align 4
  %module7 = getelementptr inbounds %struct.conddef, %struct.conddef* %9, i32 0, i32 7
  store i8* %call6, i8** %module7, align 4
  %10 = load %struct.conddef*, %struct.conddef** %c, align 4
  %call8 = call i32 @addconddef(%struct.conddef* %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end
  %11 = load %struct.conddef*, %struct.conddef** %c, align 4
  %name11 = getelementptr inbounds %struct.conddef, %struct.conddef* %11, i32 0, i32 1
  %12 = load i8*, i8** %name11, align 4
  call void @zsfree(i8* %12)
  %13 = load %struct.conddef*, %struct.conddef** %c, align 4
  %module12 = getelementptr inbounds %struct.conddef, %struct.conddef* %13, i32 0, i32 7
  %14 = load i8*, i8** %module12, align 4
  call void @zsfree(i8* %14)
  %15 = load %struct.conddef*, %struct.conddef** %c, align 4
  %16 = bitcast %struct.conddef* %15 to i8*
  call void @zfree(i8* %16, i32 32)
  %17 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %17, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then10
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @del_autocond(i8* %modnam, i8* %cnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %modnam.addr = alloca i8*, align 4
  %cnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %cd = alloca %struct.conddef*, align 4
  store i8* %modnam, i8** %modnam.addr, align 4
  store i8* %cnam, i8** %cnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load i8*, i8** %cnam.addr, align 4
  %call = call %struct.conddef* @getconddef(i32 %cond, i8* %1, i32 0)
  store %struct.conddef* %call, %struct.conddef** %cd, align 4
  %2 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %tobool1 = icmp ne %struct.conddef* %2, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %3, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end16

if.else:                                          ; preds = %entry
  %4 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %flags5 = getelementptr inbounds %struct.conddef, %struct.conddef* %4, i32 0, i32 2
  %5 = load i32, i32* %flags5, align 4
  %and6 = and i32 %5, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  %6 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %6, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then8
  store i32 3, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then8
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %7 = load %struct.conddef*, %struct.conddef** %cd, align 4
  %call14 = call i32 @deleteconddef(%struct.conddef* %7)
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.end12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then11, %if.then4
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind
define internal i32 @add_automathfunc(i8* %module, i8* %fnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca i8*, align 4
  %fnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %f = alloca %struct.mathfunc*, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8* %fnam, i8** %fnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i8* @zalloc(i32 36)
  %0 = bitcast i8* %call to %struct.mathfunc*
  store %struct.mathfunc* %0, %struct.mathfunc** %f, align 4
  %1 = load i8*, i8** %fnam.addr, align 4
  %call1 = call i8* @ztrdup(i8* %1)
  %2 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %name = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %2, i32 0, i32 1
  store i8* %call1, i8** %name, align 4
  %3 = load i8*, i8** %module.addr, align 4
  %call2 = call i8* @ztrdup(i8* %3)
  %4 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %module3 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %4, i32 0, i32 5
  store i8* %call2, i8** %module3, align 4
  %5 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags4 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %5, i32 0, i32 2
  store i32 0, i32* %flags4, align 4
  %6 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %call5 = call i32 @addmathfunc(%struct.mathfunc* %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %7 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %name6 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %7, i32 0, i32 1
  %8 = load i8*, i8** %name6, align 4
  call void @zsfree(i8* %8)
  %9 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %module7 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %9, i32 0, i32 5
  %10 = load i8*, i8** %module7, align 4
  call void @zsfree(i8* %10)
  %11 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %12 = bitcast %struct.mathfunc* %11 to i8*
  call void @zfree(i8* %12, i32 36)
  %13 = load i32, i32* %flags.addr, align 4
  %and = and i32 %13, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind
define internal i32 @del_automathfunc(i8* %modnam, i8* %fnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %modnam.addr = alloca i8*, align 4
  %fnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %f = alloca %struct.mathfunc*, align 4
  store i8* %modnam, i8** %modnam.addr, align 4
  store i8* %fnam, i8** %fnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %fnam.addr, align 4
  %call = call %struct.mathfunc* @getmathfunc(i8* %0, i32 0)
  store %struct.mathfunc* %call, %struct.mathfunc** %f, align 4
  %1 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %tobool = icmp ne %struct.mathfunc* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.else:                                          ; preds = %entry
  %3 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %flags3 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %3, i32 0, i32 2
  %4 = load i32, i32* %flags3, align 4
  %and4 = and i32 %4, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %5 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %5, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i32 3, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %6 = load %struct.mathfunc*, %struct.mathfunc** %f, align 4
  %call12 = call i32 @deletemathfunc(%struct.mathfunc* %6)
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.end10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then9, %if.then2
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal i32 @add_autoparam(i8* %module, i8* %pnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca i8*, align 4
  %pnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %ret = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %oset29 = alloca %struct.__sigset_t, align 4
  %tmp33 = alloca %struct.__sigset_t, align 4
  %tmp35 = alloca %struct.__sigset_t, align 4
  store i8* %module, i8** %module.addr, align 4
  store i8* %pnam, i8** %pnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i8*, i8** %pnam.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 1
  %call = call i32 @checkaddparam(i8* %1, i32 %and)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool1 = icmp ne i32 %dec, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body3
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
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %8 = bitcast %struct.__sigset_t* %oset to i8*
  %9 = bitcast %struct.__sigset_t* %tmp to i8*
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
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %12, 2
  %cond = select i1 %cmp7, i32 0, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %13 = load i8*, i8** %pnam.addr, align 4
  %call9 = call i8* @dupstring(i8* %13)
  %14 = load i8*, i8** %module.addr, align 4
  %call10 = call i8* @ztrdup(i8* %14)
  %call11 = call %struct.param* @setsparam(i8* %call9, i8* %call10)
  store %struct.param* %call11, %struct.param** %pm, align 4
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %16 = load i32, i32* %flags12, align 8
  %or = or i32 %16, 134217728
  store i32 %or, i32* %flags12, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %17, 4
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end8
  %18 = load %struct.param*, %struct.param** %pm, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 0
  %flags17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 2
  %19 = load i32, i32* %flags17, align 8
  %or18 = or i32 %19, 268435456
  store i32 %or18, i32* %flags17, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end8
  br label %do.body20

do.body20:                                        ; preds = %if.end19
  %20 = load i32, i32* @queueing_enabled, align 4
  %dec21 = add nsw i32 %20, -1
  store i32 %dec21, i32* @queueing_enabled, align 4
  %tobool22 = icmp ne i32 %dec21, 0
  br i1 %tobool22, label %if.end38, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %while.cond25

while.cond25:                                     ; preds = %while.body27, %do.body24
  %21 = load i32, i32* @queue_front, align 4
  %22 = load i32, i32* @queue_rear, align 4
  %cmp26 = icmp ne i32 %21, %22
  br i1 %cmp26, label %while.body27, label %while.end36

while.body27:                                     ; preds = %while.cond25
  %23 = load i32, i32* @queue_front, align 4
  %add30 = add nsw i32 %23, 1
  %rem31 = srem i32 %add30, 128
  store i32 %rem31, i32* @queue_front, align 4
  %24 = load i32, i32* @queue_front, align 4
  %arrayidx32 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %24
  call void @signal_setmask(%struct.__sigset_t* sret %tmp33, %struct.__sigset_t* byval align 4 %arrayidx32)
  %25 = bitcast %struct.__sigset_t* %oset29 to i8*
  %26 = bitcast %struct.__sigset_t* %tmp33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 128, i32 4, i1 false)
  %27 = load i32, i32* @queue_front, align 4
  %arrayidx34 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %27
  %28 = load i32, i32* %arrayidx34, align 4
  call void @zhandler(i32 %28)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp35, %struct.__sigset_t* byval align 4 %oset29)
  br label %while.cond25

while.end36:                                      ; preds = %while.cond25
  br label %do.end37

do.end37:                                         ; preds = %while.end36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %do.body20
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end39, %do.end6
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind
define internal i32 @del_autoparam(i8* %modnam, i8* %pnam, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %modnam.addr = alloca i8*, align 4
  %pnam.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  store i8* %modnam, i8** %modnam.addr, align 4
  store i8* %pnam, i8** %pnam.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %1 = load i8*, i8** %pnam.addr, align 4
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %0, i8* %1)
  %2 = bitcast %struct.hashnode* %call to %struct.param*
  store %struct.param* %2, %struct.param** %pm, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end14

if.else:                                          ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %flags3 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %6 = load i32, i32* %flags3, align 8
  %and4 = and i32 %6, 134217728
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.else11, label %if.then6

if.then6:                                         ; preds = %if.else
  %7 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %7, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i32 3, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %8 = load %struct.param*, %struct.param** %pm, align 4
  %call12 = call i32 @unsetparam_pm(%struct.param* %8, i32 0, i32 1)
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.end10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then9, %if.then2
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare i8* @strchr(i8*, i32) #1

declare %struct.linknode* @linknodebystring(%union.linkroot*, i8*) #1

declare void @freestr(i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @quotedzputs(i8*, %struct._IO_FILE*) #1

declare i32 @mb_niceformat(i8*, %struct._IO_FILE*, i8**, i32) #1

declare i32 @putchar(i32) #1

declare void @zwarn(i8*, ...) #1

declare i8* @itype_end(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i8* @try_load_module(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf = alloca [4097 x i8], align 1
  %pp = alloca i8**, align 4
  %ret = alloca i8*, align 4
  %l = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* null, i8** %ret, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i32 @strlen(i8* %0)
  %add = add i32 1, %call
  %add1 = add i32 %add, 1
  %add2 = add i32 %add1, 2
  store i32 %add2, i32* %l, align 4
  %1 = load i8**, i8*** @module_path, align 4
  store i8** %1, i8*** %pp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %ret, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %pp, align 4
  %4 = load i8*, i8** %3, align 4
  %tobool3 = icmp ne i8* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %l, align 4
  %7 = load i8**, i8*** %pp, align 4
  %8 = load i8*, i8** %7, align 4
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i8**, i8*** %pp, align 4
  %11 = load i8*, i8** %10, align 4
  %call5 = call i32 @strlen(i8* %11)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ 1, %cond.false ]
  %add6 = add i32 %6, %cond
  %cmp = icmp ugt i32 %add6, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %for.inc

if.end:                                           ; preds = %cond.end
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %12 = load i8**, i8*** %pp, align 4
  %13 = load i8*, i8** %12, align 4
  %14 = load i8, i8* %13, align 1
  %conv8 = sext i8 %14 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %if.end
  %15 = load i8**, i8*** %pp, align 4
  %16 = load i8*, i8** %15, align 4
  br label %cond.end12

cond.false11:                                     ; preds = %if.end
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i8* [ %16, %cond.true10 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), %cond.false11 ]
  %17 = load i8*, i8** %name.addr, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* %cond13, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %arraydecay15 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call16 = call i8* @unmetafy(i8* %arraydecay15, i32* null)
  %arraydecay17 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %18 = load i8, i8* %arraydecay17, align 1
  %tobool18 = icmp ne i8 %18, 0
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %cond.end12
  %arraydecay20 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call21 = call i8* @dlopen(i8* %arraydecay20, i32 257)
  store i8* %call21, i8** %ret, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %cond.end12
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.then
  %19 = load i8**, i8*** %pp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %pp, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %ret, align 4
  ret i8* %20
}

declare i8* @dlerror() #1

declare i8* @metafy(i8*, i32, i32) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i8* @dlopen(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @dyn_setup_module(%struct.module* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %fn = alloca i32 (%struct.module*)*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*)*
  store i32 (%struct.module*)* %1, i32 (%struct.module*)** %fn, align 4
  %2 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 %3(%struct.module* %4)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal i32 ()* @module_func(%struct.module* %m, i8* %name) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %1 = load i8*, i8** %handle, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dlsym(i8* %1, i8* %2)
  %3 = bitcast i8* %call to i32 ()*
  ret i32 ()* %3
}

declare i8* @dlsym(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @boot_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %boot = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 4
  %boot1 = bitcast {}** %boot to i32 (%struct.module*)**
  %4 = load i32 (%struct.module*)*, i32 (%struct.module*)** %boot1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 %4(%struct.module* %5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.module*, %struct.module** %m.addr, align 4
  %call2 = call i32 @dyn_boot_module(%struct.module* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @dyn_boot_module(%struct.module* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %fn = alloca i32 (%struct.module*)*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*)*
  store i32 (%struct.module*)* %1, i32 (%struct.module*)** %fn, align 4
  %2 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 %3(%struct.module* %4)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal i32 @cleanup_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %2, i32 0, i32 1
  %linked = bitcast %union.anon* %u to %struct.linkedmod**
  %3 = load %struct.linkedmod*, %struct.linkedmod** %linked, align 4
  %cleanup = getelementptr inbounds %struct.linkedmod, %struct.linkedmod* %3, i32 0, i32 5
  %cleanup1 = bitcast {}** %cleanup to i32 (%struct.module*)**
  %4 = load i32 (%struct.module*)*, i32 (%struct.module*)** %cleanup1, align 4
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 %4(%struct.module* %5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.module*, %struct.module** %m.addr, align 4
  %call2 = call i32 @dyn_cleanup_module(%struct.module* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind
define internal i32 @dyn_cleanup_module(%struct.module* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %fn = alloca i32 (%struct.module*)*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*)*
  store i32 (%struct.module*)* %1, i32 (%struct.module*)** %fn, align 4
  %2 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 %3(%struct.module* %4)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal i32 @dyn_finish_module(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %fn = alloca i32 (%struct.module*)*, align 4
  %r = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*)*
  store i32 (%struct.module*)* %1, i32 (%struct.module*)** %fn, align 4
  %2 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*)* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*)*, i32 (%struct.module*)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 %3(%struct.module* %4)
  store i32 %call1, i32* %r, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.module*, %struct.module** %m.addr, align 4
  %node = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %6 = load i8*, i8** %nam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0))
  store i32 1, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.module*, %struct.module** %m.addr, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %8 = load i8*, i8** %handle, align 4
  %call2 = call i32 @dlclose(i8* %8)
  %9 = load i32, i32* %r, align 4
  ret i32 %9
}

declare i32 @dlclose(i8*) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

declare i32 @arrlen(i8**) #1

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #1

; Function Attrs: noinline nounwind
define internal void @printautoparams(%struct.hashnode* %hn, i32 %lon) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %lon.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 134217728
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %lon.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 1
  %str = bitcast %union.anon.0* %u to i8**
  %6 = load i8*, i8** %str, align 8
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 1
  %8 = load i8*, i8** %nam, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* %6, i8* %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %nam5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %10 = load i8*, i8** %nam5, align 4
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %u6 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 1
  %str7 = bitcast %union.anon.0* %u6 to i8**
  %12 = load i8*, i8** %str7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* %10, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @autoloadscan(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %bn = alloca %struct.builtin*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.builtin*
  store %struct.builtin* %1, %struct.builtin** %bn, align 4
  %2 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node = getelementptr inbounds %struct.builtin, %struct.builtin* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %printflags.addr, align 4
  %and1 = and i32 %4, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr = getelementptr inbounds %struct.builtin, %struct.builtin* %6, i32 0, i32 5
  %7 = load i8*, i8** %optstr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  %10 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr8 = getelementptr inbounds %struct.builtin, %struct.builtin* %10, i32 0, i32 5
  %11 = load i8*, i8** %optstr8, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call9 = call i8* @quotedzputs(i8* %11, %struct._IO_FILE* %12)
  %13 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node10 = getelementptr inbounds %struct.builtin, %struct.builtin* %13, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  %15 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr11 = getelementptr inbounds %struct.builtin, %struct.builtin* %15, i32 0, i32 5
  %16 = load i8*, i8** %optstr11, align 4
  %call12 = call i32 @strcmp(i8* %14, i8* %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end7
  %call15 = call i32 @putchar(i32 32)
  %17 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node16 = getelementptr inbounds %struct.builtin, %struct.builtin* %17, i32 0, i32 0
  %nam17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 1
  %18 = load i8*, i8** %nam17, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call18 = call i8* @quotedzputs(i8* %18, %struct._IO_FILE* %19)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end7
  br label %if.end34

if.else:                                          ; preds = %if.end
  %20 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node20 = getelementptr inbounds %struct.builtin, %struct.builtin* %20, i32 0, i32 0
  %nam21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 1
  %21 = load i8*, i8** %nam21, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call22 = call i32 @mb_niceformat(i8* %21, %struct._IO_FILE* %22, i8** null, i32 0)
  %23 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node23 = getelementptr inbounds %struct.builtin, %struct.builtin* %23, i32 0, i32 0
  %nam24 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node23, i32 0, i32 1
  %24 = load i8*, i8** %nam24, align 4
  %25 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr25 = getelementptr inbounds %struct.builtin, %struct.builtin* %25, i32 0, i32 5
  %26 = load i8*, i8** %optstr25, align 4
  %call26 = call i32 @strcmp(i8* %24, i8* %26)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.else
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %optstr30 = getelementptr inbounds %struct.builtin, %struct.builtin* %28, i32 0, i32 5
  %29 = load i8*, i8** %optstr30, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call31 = call i32 @mb_niceformat(i8* %29, %struct._IO_FILE* %30, i8** null, i32 0)
  %call32 = call i32 @putchar(i32 41)
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end19
  %call35 = call i32 @putchar(i32 10)
  br label %return

return:                                           ; preds = %if.end34, %if.then
  ret void
}

declare void @tokenize(i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @countlinknodes(%union.linkroot*) #1

declare %struct.param* @setaparam(i8*, i8**) #1

declare i8* @bicat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @addconddef(%struct.conddef* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.conddef*, align 4
  %p = alloca %struct.conddef*, align 4
  store %struct.conddef* %c, %struct.conddef** %c.addr, align 4
  %0 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %flags = getelementptr inbounds %struct.conddef, %struct.conddef* %0, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %2 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %name = getelementptr inbounds %struct.conddef, %struct.conddef* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 4
  %call = call %struct.conddef* @getconddef(i32 %and, i8* %3, i32 0)
  store %struct.conddef* %call, %struct.conddef** %p, align 4
  %4 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool = icmp ne %struct.conddef* %4, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %5 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module = getelementptr inbounds %struct.conddef, %struct.conddef* %5, i32 0, i32 7
  %6 = load i8*, i8** %module, align 4
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.conddef*, %struct.conddef** %p, align 4
  %flags2 = getelementptr inbounds %struct.conddef, %struct.conddef* %7, i32 0, i32 2
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.conddef*, %struct.conddef** %p, align 4
  %call6 = call i32 @deleteconddef(%struct.conddef* %9)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %10 = load %struct.conddef*, %struct.conddef** @condtab, align 4
  %11 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  %next = getelementptr inbounds %struct.conddef, %struct.conddef* %11, i32 0, i32 0
  store %struct.conddef* %10, %struct.conddef** %next, align 4
  %12 = load %struct.conddef*, %struct.conddef** %c.addr, align 4
  store %struct.conddef* %12, %struct.conddef** @condtab, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then5
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal i32 @addmathfunc(%struct.mathfunc* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.mathfunc*, align 4
  %p = alloca %struct.mathfunc*, align 4
  %q = alloca %struct.mathfunc*, align 4
  store %struct.mathfunc* %f, %struct.mathfunc** %f.addr, align 4
  store %struct.mathfunc* null, %struct.mathfunc** %q, align 4
  %0 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %flags = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %0, i32 0, i32 2
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mathfunc*, %struct.mathfunc** @mathfuncs, align 4
  store %struct.mathfunc* %2, %struct.mathfunc** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %tobool1 = icmp ne %struct.mathfunc* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %name = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %4, i32 0, i32 1
  %5 = load i8*, i8** %name, align 4
  %6 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %name2 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %6, i32 0, i32 1
  %7 = load i8*, i8** %name2, align 4
  %call = call i32 @strcmp(i8* %5, i8* %7)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end11, label %if.then4

if.then4:                                         ; preds = %for.body
  %8 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %module = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %8, i32 0, i32 5
  %9 = load i8*, i8** %module, align 4
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.then4
  %10 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %flags6 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %10, i32 0, i32 2
  %11 = load i32, i32* %flags6, align 4
  %and7 = and i32 %11, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %12 = load %struct.mathfunc*, %struct.mathfunc** %q, align 4
  %13 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  call void @removemathfunc(%struct.mathfunc* %12, %struct.mathfunc* %13)
  br label %for.end

if.end10:                                         ; preds = %land.lhs.true, %if.then4
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %14 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  store %struct.mathfunc* %14, %struct.mathfunc** %q, align 4
  %15 = load %struct.mathfunc*, %struct.mathfunc** %p, align 4
  %next = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %15, i32 0, i32 0
  %16 = load %struct.mathfunc*, %struct.mathfunc** %next, align 4
  store %struct.mathfunc* %16, %struct.mathfunc** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then9, %for.cond
  %17 = load %struct.mathfunc*, %struct.mathfunc** @mathfuncs, align 4
  %18 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  %next12 = getelementptr inbounds %struct.mathfunc, %struct.mathfunc* %18, i32 0, i32 0
  store %struct.mathfunc* %17, %struct.mathfunc** %next12, align 4
  %19 = load %struct.mathfunc*, %struct.mathfunc** %f.addr, align 4
  store %struct.mathfunc* %19, %struct.mathfunc** @mathfuncs, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end10, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind
define internal i32 @dyn_features_module(%struct.module* %m, i8*** %features) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %features.addr = alloca i8***, align 4
  %fn = alloca i32 (%struct.module*, i8***)*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i8*** %features, i8**** %features.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*, i8***)*
  store i32 (%struct.module*, i8***)* %1, i32 (%struct.module*, i8***)** %fn, align 4
  %2 = load i32 (%struct.module*, i8***)*, i32 (%struct.module*, i8***)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*, i8***)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*, i8***)*, i32 (%struct.module*, i8***)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %5 = load i8***, i8**** %features.addr, align 4
  %call1 = call i32 %3(%struct.module* %4, i8*** %5)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal i32 @dyn_enables_module(%struct.module* %m, i32** %enables) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.module*, align 4
  %enables.addr = alloca i32**, align 4
  %fn = alloca i32 (%struct.module*, i32**)*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 ()* @module_func(%struct.module* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0))
  %1 = bitcast i32 ()* %call to i32 (%struct.module*, i32**)*
  store i32 (%struct.module*, i32**)* %1, i32 (%struct.module*, i32**)** %fn, align 4
  %2 = load i32 (%struct.module*, i32**)*, i32 (%struct.module*, i32**)** %fn, align 4
  %tobool = icmp ne i32 (%struct.module*, i32**)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32 (%struct.module*, i32**)*, i32 (%struct.module*, i32**)** %fn, align 4
  %4 = load %struct.module*, %struct.module** %m.addr, align 4
  %5 = load i32**, i32*** %enables.addr, align 4
  %call1 = call i32 %3(%struct.module* %4, i32** %5)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare %struct.param* @setsparam(i8*, i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
