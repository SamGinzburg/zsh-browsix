; ModuleID = 'parameter.c'
source_filename = "parameter.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.features = type { %struct.builtin*, i32, %struct.conddef*, i32, %struct.mathfunc*, i32, %struct.paramdef*, i32, i32 }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%struct.mnumber = type { %union.anon.0, i32 }
%union.anon.0 = type { double }
%struct.paramdef = type { i8*, i32, i8*, i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.param* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, {}*, {}*, {}*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon.1, %union.anon.2, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.1 = type { double }
%union.anon.2 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i32, i32, i32 }
%struct.job = type { i32, i32, i32, i8*, %struct.process*, %struct.process*, %union.linkroot*, i32, %struct.ttyinfo* }
%struct.process = type { %struct.process*, i32, [80 x i8], i32, %struct.rusage, %struct.timeval, %struct.timeval }
%struct.rusage = type { %struct.timeval, %struct.timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.timeval = type { i32, i32 }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%struct.cmdnam = type { %struct.hashnode, %union.anon.3 }
%union.anon.3 = type { i8** }
%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i32 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%struct.optname = type { %struct.hashnode, i32 }
%struct.groupset = type { %struct.groupmap*, i32 }
%struct.groupmap = type { i8*, i32 }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.alias = type { %struct.hashnode, i8*, i32 }
%struct.group = type { i8*, i8*, i32, i8** }

@module_features = internal global %struct.features { %struct.builtin* null, i32 0, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* getelementptr inbounds ([33 x %struct.paramdef], [33 x %struct.paramdef]* @partab, i32 0, i32 0), i32 33, i32 0 }, align 4
@incleanup = internal global i32 0, align 4
@partab = internal global [33 x %struct.paramdef] [%struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmraliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmralias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmraliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmbuiltin, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmbuiltins, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmcommands_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmcommand, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmcommands, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 4243457, i8* null, i8* bitcast (%struct.gsu_array* @dirs_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmdisraliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdisralias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdisraliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdisbuiltin, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdisbuiltins, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmdisfunctions_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdisfunction, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdisfunctions, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdisfunction_source, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdisfunction_source, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmdisgaliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdisgalias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdisgaliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @dispatchars_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @disreswords_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmdissaliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmdissalias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmdissaliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @funcfiletrace_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @funcsourcetrace_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @funcstack_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmfunctions_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmfunction, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmfunctions, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmfunction_source, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmfunction_source, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @functrace_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmgaliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmgalias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmgaliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmhistory, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmhistory, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @historywords_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmjobdir, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmjobdirs, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmjobstate, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmjobstates, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmjobtext, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmjobtexts, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmmodule, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmmodules, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmnameddirs_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmnameddir, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmnameddirs, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmoptions_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmoption, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmoptions, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmparameter, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmparameters, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @patchars_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 4244481, i8* null, i8* bitcast (%struct.gsu_array* @reswords_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 4243456, i8* null, i8* bitcast (%struct.gsu_hash* @pmsaliases_gsu to i8*), %struct.hashnode* (%struct.hashtable*, i8*)* @getpmsalias, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmsaliases, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmuserdir, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmuserdirs, %struct.param* null }, %struct.paramdef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 4244480, i8* null, i8* null, %struct.hashnode* (%struct.hashtable*, i8*)* @getpmusergroups, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* @scanpmusergroups, %struct.param* null }], align 4
@.str = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@pmraliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmraliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@pmcommands_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmcommands, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"dirstack\00", align 1
@dirs_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @dirsgetfn, void (%struct.param*, i8**)* @dirssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"dis_aliases\00", align 1
@pmdisraliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmdisraliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"dis_builtins\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dis_functions\00", align 1
@pmdisfunctions_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmdisfunctions, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"dis_functions_source\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"dis_galiases\00", align 1
@pmdisgaliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmdisgaliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"dis_patchars\00", align 1
@dispatchars_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @dispatcharsgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"dis_reswords\00", align 1
@disreswords_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @disreswordsgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"dis_saliases\00", align 1
@pmdissaliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmdissaliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"funcfiletrace\00", align 1
@funcfiletrace_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @funcfiletracegetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"funcsourcetrace\00", align 1
@funcsourcetrace_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @funcsourcetracegetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"funcstack\00", align 1
@funcstack_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @funcstackgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@pmfunctions_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmfunctions, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"functions_source\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"functrace\00", align 1
@functrace_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @functracegetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"galiases\00", align 1
@pmgaliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmgaliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"historywords\00", align 1
@historywords_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @histwgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"jobdirs\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"jobstates\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"jobtexts\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"nameddirs\00", align 1
@pmnameddirs_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmnameddirs, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@pmoptions_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmoptions, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"patchars\00", align 1
@patchars_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @patcharsgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"reswords\00", align 1
@reswords_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @reswordsgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"saliases\00", align 1
@pmsaliases_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @setpmsaliases, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"userdirs\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"usergroups\00", align 1
@aliastab = external global %struct.hashtable*, align 4
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pmralias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmralias, void (%struct.param*, i32)* @unsetpmalias }, align 4
@pmgalias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmgalias, void (%struct.param*, i32)* @unsetpmalias }, align 4
@pmsalias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmsalias, void (%struct.param*, i32)* @unsetpmsalias }, align 4
@pmdisralias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmdisralias, void (%struct.param*, i32)* @unsetpmalias }, align 4
@pmdisgalias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmdisgalias, void (%struct.param*, i32)* @unsetpmalias }, align 4
@pmdissalias_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmdissalias, void (%struct.param*, i32)* @unsetpmsalias }, align 4
@sufaliastab = external global %struct.hashtable*, align 4
@nullsetscalar_gsu = external constant %struct.gsu_scalar, align 4
@builtintab = external global %struct.hashtable*, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@cmdnamtab = external global %struct.hashtable*, align 4
@opts = external global [181 x i8], align 1
@pmcommand_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmcommand, void (%struct.param*, i32)* @unsetpmcommand }, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"restricted: %s\00", align 1
@dirstack = external global %union.linkroot*, align 4
@dummy_eprog = external global %struct.eprog, align 4
@.str.38 = private unnamed_addr constant [28 x i8] c"invalid function definition\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@shfunctab = external global %struct.hashtable*, align 4
@pmdisfunction_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmdisfunction, void (%struct.param*, i32)* @unsetpmfunction }, align 4
@pmfunction_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmfunction, void (%struct.param*, i32)* @unsetpmfunction }, align 4
@.str.40 = private unnamed_addr constant [20 x i8] c"builtin autoload -X\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"Ut\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"{\0A\09\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c" \22$@\22\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@zpc_strings = external global [19 x i8*], align 4
@zpc_disables = external global [19 x i8], align 1
@reswdtab = external global %struct.hashtable*, align 4
@funcstack = external global %struct.funcstack*, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"%s:%ld\00", align 1
@typtab = external global [256 x i16], align 2
@curhist = external global i32, align 4
@maxjob = external global i32, align 4
@jobtab = external global %struct.job*, align 4
@pwd = external global i8*, align 4
@.str.50 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@curjob = external global i32, align 4
@.str.51 = private unnamed_addr constant [3 x i8] c":+\00", align 1
@prevjob = external global i32, align 4
@.str.52 = private unnamed_addr constant [3 x i8] c":-\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"exit %d\00", align 1
@sig_msg = external global [33 x i8*], align 4
@.str.58 = private unnamed_addr constant [15 x i8] c"unknown signal\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"%s (core dumped)\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c":%d=%s\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@modulestab = external global %struct.hashtable*, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"alias:\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"autoloaded\00", align 1
@condtab = external global %struct.conddef*, align 4
@realparamtab = external global %struct.hashtable*, align 4
@nameddirtab = external global %struct.hashtable*, align 4
@.str.65 = private unnamed_addr constant [18 x i8] c"invalid value: ''\00", align 1
@pmnamedir_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmnameddir, void (%struct.param*, i32)* @unsetpmnameddir }, align 4
@.str.66 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"invalid value: %s\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"can't change option: %s\00", align 1
@pmoption_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @setpmoption, void (%struct.param*, i32)* @unsetpmoption }, align 4
@.str.70 = private unnamed_addr constant [19 x i8] c"no such option: %s\00", align 1
@optiontab = external global %struct.hashtable*, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"-local\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"-left\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"-right_blanks\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"-right_zeros\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"-lower\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"-upper\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"-readonly\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"-tag\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"-export\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"-unique\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"-hide\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"-hideval\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"-special\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"failed to retrieve groups for user: %e\00", align 1

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
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  store i32 1, i32* @incleanup, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %1 = load i32**, i32*** %enables.addr, align 4
  %call = call i32 @handlefeatures(%struct.module* %0, %struct.features* @module_features, i32** %1)
  store i32 %call, i32* %ret, align 4
  store i32 0, i32* @incleanup, align 4
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

declare i32 @handlefeatures(%struct.module*, %struct.features*, i32**) #1

; Function Attrs: noinline nounwind
define i32 @boot_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %ret = alloca i32, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32 1, i32* @incleanup, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @setfeatureenables(%struct.module* %0, %struct.features* @module_features, i32* null)
  store i32 %call, i32* %ret, align 4
  store i32 0, i32* @incleanup, align 4
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #1

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmralias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 0)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmraliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmbuiltin(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getbuiltin(%struct.hashtable* %0, i8* %1, i32 0)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmbuiltins(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanbuiltins(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmcommand(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %cmd = alloca %struct.cmdnam*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %getnode1 = bitcast {}** %getnode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %3 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %3)
  %4 = bitcast %struct.hashnode* %call to %struct.cmdnam*
  store %struct.cmdnam* %4, %struct.cmdnam** %cmd, align 4
  %tobool = icmp ne %struct.cmdnam* %4, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 71), align 1
  %conv = sext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 6
  %7 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %filltable, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  call void %7(%struct.hashtable* %8)
  %9 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %getnode3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 9
  %getnode4 = bitcast {}** %getnode3 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %10 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode4, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %12 = load i8*, i8** %name.addr, align 4
  %call5 = call %struct.hashnode* %10(%struct.hashtable* %11, i8* %12)
  %13 = bitcast %struct.hashnode* %call5 to %struct.cmdnam*
  store %struct.cmdnam* %13, %struct.cmdnam** %cmd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call6 = call i8* @hcalloc(i32 56)
  %14 = bitcast i8* %call6 to %struct.param*
  store %struct.param* %14, %struct.param** %pm, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %call7 = call i8* @dupstring(i8* %15)
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call7, i8** %nam, align 4
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  store i32 0, i32* %flags, align 8
  %18 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmcommand_gsu, %struct.gsu_scalar** %s, align 8
  %19 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %tobool9 = icmp ne %struct.cmdnam* %19, null
  br i1 %tobool9, label %if.then10, label %if.else37

if.then10:                                        ; preds = %if.end
  %20 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %node11 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %20, i32 0, i32 0
  %flags12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 2
  %21 = load i32, i32* %flags12, align 4
  %and = and i32 %21, 2
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  %22 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %22, i32 0, i32 1
  %cmd15 = bitcast %union.anon.3* %u to i8**
  %23 = load i8*, i8** %cmd15, align 4
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %u16 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 1
  %str = bitcast %union.anon.1* %u16 to i8**
  store i8* %23, i8** %str, align 8
  br label %if.end36

if.else:                                          ; preds = %if.then10
  %25 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u17 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %25, i32 0, i32 1
  %name18 = bitcast %union.anon.3* %u17 to i8***
  %26 = load i8**, i8*** %name18, align 4
  %27 = load i8*, i8** %26, align 4
  %call19 = call i32 @strlen(i8* %27)
  %28 = load i8*, i8** %name.addr, align 4
  %call20 = call i32 @strlen(i8* %28)
  %add = add i32 %call19, %call20
  %add21 = add i32 %add, 2
  %call22 = call i8* @zhalloc(i32 %add21)
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %u23 = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 1
  %str24 = bitcast %union.anon.1* %u23 to i8**
  store i8* %call22, i8** %str24, align 8
  %30 = load %struct.param*, %struct.param** %pm, align 4
  %u25 = getelementptr inbounds %struct.param, %struct.param* %30, i32 0, i32 1
  %str26 = bitcast %union.anon.1* %u25 to i8**
  %31 = load i8*, i8** %str26, align 8
  %32 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u27 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %32, i32 0, i32 1
  %name28 = bitcast %union.anon.3* %u27 to i8***
  %33 = load i8**, i8*** %name28, align 4
  %34 = load i8*, i8** %33, align 4
  %call29 = call i8* @strcpy(i8* %31, i8* %34)
  %35 = load %struct.param*, %struct.param** %pm, align 4
  %u30 = getelementptr inbounds %struct.param, %struct.param* %35, i32 0, i32 1
  %str31 = bitcast %union.anon.1* %u30 to i8**
  %36 = load i8*, i8** %str31, align 8
  %call32 = call i8* @strcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  %37 = load %struct.param*, %struct.param** %pm, align 4
  %u33 = getelementptr inbounds %struct.param, %struct.param* %37, i32 0, i32 1
  %str34 = bitcast %union.anon.1* %u33 to i8**
  %38 = load i8*, i8** %str34, align 8
  %39 = load i8*, i8** %name.addr, align 4
  %call35 = call i8* @strcat(i8* %38, i8* %39)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then14
  br label %if.end43

if.else37:                                        ; preds = %if.end
  %call38 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %40 = load %struct.param*, %struct.param** %pm, align 4
  %u39 = getelementptr inbounds %struct.param, %struct.param* %40, i32 0, i32 1
  %str40 = bitcast %union.anon.1* %u39 to i8**
  store i8* %call38, i8** %str40, align 8
  %41 = load %struct.param*, %struct.param** %pm, align 4
  %node41 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 0
  %flags42 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node41, i32 0, i32 2
  %42 = load i32, i32* %flags42, align 8
  %or = or i32 %42, 37748736
  store i32 %or, i32* %flags42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else37, %if.end36
  %43 = load %struct.param*, %struct.param** %pm, align 4
  %node44 = getelementptr inbounds %struct.param, %struct.param* %43, i32 0, i32 0
  ret %struct.hashnode* %node44
}

; Function Attrs: noinline nounwind
define internal void @scanpmcommands(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %cmd = alloca %struct.cmdnam*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 71), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 6
  %2 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %filltable, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  call void %2(%struct.hashtable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmcommand_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %7 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %9 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %10 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %9, i32 %10
  %11 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %11, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool3 = icmp ne %struct.hashnode* %12, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %13 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %13, i32 0, i32 1
  %14 = load i8*, i8** %nam, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  store i8* %14, i8** %nam6, align 4
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %16 = bitcast %struct.hashnode* %15 to %struct.cmdnam*
  store %struct.cmdnam* %16, %struct.cmdnam** %cmd, align 4
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp7 = icmp ne void (%struct.hashnode*, i32)* %17, @scancountparams
  br i1 %cmp7, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body4
  %18 = load i32, i32* %flags.addr, align 4
  %and = and i32 %18, 17
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %19, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end41, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %node12 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %20, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %21 = load i32, i32* %flags13, align 4
  %and14 = and i32 %21, 2
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then11
  %22 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %22, i32 0, i32 1
  %cmd17 = bitcast %union.anon.3* %u to i8**
  %23 = load i8*, i8** %cmd17, align 4
  %u18 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u18 to i8**
  store i8* %23, i8** %str, align 8
  br label %if.end40

if.else:                                          ; preds = %if.then11
  %24 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u19 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %24, i32 0, i32 1
  %name = bitcast %union.anon.3* %u19 to i8***
  %25 = load i8**, i8*** %name, align 4
  %26 = load i8*, i8** %25, align 4
  %call = call i32 @strlen(i8* %26)
  %27 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %node20 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %27, i32 0, i32 0
  %nam21 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node20, i32 0, i32 1
  %28 = load i8*, i8** %nam21, align 4
  %call22 = call i32 @strlen(i8* %28)
  %add = add i32 %call, %call22
  %add23 = add i32 %add, 2
  %call24 = call i8* @zhalloc(i32 %add23)
  %u25 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str26 = bitcast %union.anon.1* %u25 to i8**
  store i8* %call24, i8** %str26, align 8
  %u27 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str28 = bitcast %union.anon.1* %u27 to i8**
  %29 = load i8*, i8** %str28, align 8
  %30 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %u29 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %30, i32 0, i32 1
  %name30 = bitcast %union.anon.3* %u29 to i8***
  %31 = load i8**, i8*** %name30, align 4
  %32 = load i8*, i8** %31, align 4
  %call31 = call i8* @strcpy(i8* %29, i8* %32)
  %u32 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str33 = bitcast %union.anon.1* %u32 to i8**
  %33 = load i8*, i8** %str33, align 8
  %call34 = call i8* @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  %u35 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str36 = bitcast %union.anon.1* %u35 to i8**
  %34 = load i8*, i8** %str36, align 8
  %35 = load %struct.cmdnam*, %struct.cmdnam** %cmd, align 4
  %node37 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %35, i32 0, i32 0
  %nam38 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node37, i32 0, i32 1
  %36 = load i8*, i8** %nam38, align 4
  %call39 = call i8* @strcat(i8* %34, i8* %36)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then16
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %lor.lhs.false, %for.body4
  %37 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node42 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %38 = load i32, i32* %flags.addr, align 4
  call void %37(%struct.hashnode* %node42, i32 %38)
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %39 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %39, i32 0, i32 0
  %40 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %40, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc43

for.inc43:                                        ; preds = %for.end
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdisralias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 1)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdisraliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdisbuiltin(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getbuiltin(%struct.hashtable* %0, i8* %1, i32 1)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdisbuiltins(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanbuiltins(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdisfunction(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getfunction(%struct.hashtable* %0, i8* %1, i32 1)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdisfunctions(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanfunctions(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdisfunction_source(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getfunction_source(%struct.hashtable* %0, i8* %1, i32 1)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdisfunction_source(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanfunctions_source(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdisgalias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 3)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdisgaliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 3)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmdissalias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 5)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmdissaliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 5)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmfunction(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getfunction(%struct.hashtable* %0, i8* %1, i32 0)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmfunctions(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanfunctions(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmfunction_source(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getfunction_source(%struct.hashtable* %0, i8* %1, i32 0)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmfunction_source(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  call void @scanfunctions_source(%struct.hashtable* %0, void (%struct.hashnode*, i32)* %1, i32 %2, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmgalias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 2)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmgaliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 2)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmhistory(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %he = alloca %struct.histent*, align 4
  %p = alloca i8*, align 4
  %ok = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  store i32 1, i32* %ok, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load i8*, i8** %name.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 48
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv4, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i8*, i8** %name.addr, align 4
  %10 = load i8, i8* %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 48
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i32 0, i32* %ok, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then
  %11 = load i8*, i8** %name.addr, align 4
  store i8* %11, i8** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i8*, i8** %p, align 4
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i8*, i8** %p, align 4
  %15 = load i8, i8* %14, align 1
  %idxprom = zext i8 %15 to i32
  %arrayidx11 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %and = and i32 %conv12, 1
  %tobool13 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %tobool13, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i8*, i8** %p, align 4
  %20 = load i8, i8* %19, align 1
  %tobool14 = icmp ne i8 %20, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.end
  store i32 0, i32* %ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %for.end
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %lor.lhs.false
  %21 = load i32, i32* %ok, align 4
  %tobool18 = icmp ne i32 %21, 0
  br i1 %tobool18, label %land.lhs.true, label %if.else26

land.lhs.true:                                    ; preds = %if.end17
  %22 = load i8*, i8** %name.addr, align 4
  %call19 = call i32 @atoi(i8* %22)
  %call20 = call %struct.histent* @quietgethist(i32 %call19)
  store %struct.histent* %call20, %struct.histent** %he, align 4
  %tobool21 = icmp ne %struct.histent* %call20, null
  br i1 %tobool21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %land.lhs.true
  %23 = load %struct.histent*, %struct.histent** %he, align 4
  %node23 = getelementptr inbounds %struct.histent, %struct.histent* %23, i32 0, i32 0
  %nam24 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node23, i32 0, i32 1
  %24 = load i8*, i8** %nam24, align 4
  %call25 = call i8* @dupstring(i8* %24)
  %25 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call25, i8** %str, align 8
  br label %if.end32

if.else26:                                        ; preds = %land.lhs.true, %if.end17
  %call27 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %26 = load %struct.param*, %struct.param** %pm, align 4
  %u28 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 1
  %str29 = bitcast %union.anon.1* %u28 to i8**
  store i8* %call27, i8** %str29, align 8
  %27 = load %struct.param*, %struct.param** %pm, align 4
  %node30 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 0
  %flags31 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node30, i32 0, i32 2
  %28 = load i32, i32* %flags31, align 8
  %or = or i32 %28, 37748736
  store i32 %or, i32* %flags31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then22
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %node33 = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 0
  ret %struct.hashnode* %node33
}

; Function Attrs: noinline nounwind
define internal void @scanpmhistory(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %he = alloca %struct.histent*, align 4
  %buf = alloca [40 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @curhist, align 4
  %call = call i32 @addhistnum(i32 %0, i32 -1, i32 16)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %call1 = call %struct.histent* @gethistent(i32 %1, i32 -1)
  store %struct.histent* %call1, %struct.histent** %he, align 4
  %2 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags2, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %3 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool = icmp ne %struct.histent* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp = icmp ne void (%struct.hashnode*, i32)* %4, @scancountparams
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %5 = load %struct.histent*, %struct.histent** %he, align 4
  %histnum = getelementptr inbounds %struct.histent, %struct.histent* %5, i32 0, i32 8
  %6 = load i32, i32* %histnum, align 4
  call void @convbase(i8* %arraydecay, i32 %6, i32 10)
  %arraydecay3 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %call4 = call i8* @dupstring(i8* %arraydecay3)
  %node5 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  store i8* %call4, i8** %nam, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %and = and i32 %7, 17
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %8, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  %9 = load %struct.histent*, %struct.histent** %he, align 4
  %node10 = getelementptr inbounds %struct.histent, %struct.histent* %9, i32 0, i32 0
  %nam11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  %10 = load i8*, i8** %nam11, align 4
  %call12 = call i8* @dupstring(i8* %10)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call12, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.body
  %11 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %12 = load i32, i32* %flags.addr, align 4
  call void %11(%struct.hashnode* %node14, i32 %12)
  %13 = load %struct.histent*, %struct.histent** %he, align 4
  %call15 = call %struct.histent* @up_histent(%struct.histent* %13)
  store %struct.histent* %call15, %struct.histent** %he, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmjobdir(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %job = alloca i32, align 4
  %pend = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load i8*, i8** %name.addr, align 4
  %call3 = call double @strtod(i8* %5, i8** %pend)
  %conv = fptosi double %call3 to i32
  store i32 %conv, i32* %job, align 4
  %6 = load i8*, i8** %pend, align 4
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 @getjob(i8* %8, i8* null)
  store i32 %call4, i32* %job, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %job, align 4
  %cmp = icmp sge i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %job, align 4
  %11 = load i32, i32* @maxjob, align 4
  %cmp6 = icmp sle i32 %10, %11
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %stat, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %15 = load %struct.job*, %struct.job** @jobtab, align 4
  %16 = load i32, i32* %job, align 4
  %arrayidx11 = getelementptr inbounds %struct.job, %struct.job* %15, i32 %16
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx11, i32 0, i32 4
  %17 = load %struct.process*, %struct.process** %procs, align 4
  %tobool12 = icmp ne %struct.process* %17, null
  br i1 %tobool12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* %job, align 4
  %arrayidx14 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %stat15 = getelementptr inbounds %struct.job, %struct.job* %arrayidx14, i32 0, i32 2
  %20 = load i32, i32* %stat15, align 4
  %and = and i32 %20, 32
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.else, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %21 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobdir(i32 %21)
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %if.end
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %u20 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 1
  %str21 = bitcast %union.anon.1* %u20 to i8**
  store i8* %call19, i8** %str21, align 8
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %25 = load i32, i32* %flags23, align 8
  %or = or i32 %25, 37748736
  store i32 %or, i32* %flags23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %26 = load %struct.param*, %struct.param** %pm, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  ret %struct.hashnode* %node25
}

; Function Attrs: noinline nounwind
define internal void @scanpmjobdirs(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %job = alloca i32, align 4
  %buf = alloca [40 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 1, i32* %job, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %job, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.job*, %struct.job** @jobtab, align 4
  %7 = load i32, i32* %job, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %6, i32 %7
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 4
  %8 = load %struct.process*, %struct.process** %procs, align 4
  %tobool3 = icmp ne %struct.process* %8, null
  br i1 %tobool3, label %land.lhs.true4, label %if.end21

land.lhs.true4:                                   ; preds = %land.lhs.true
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %job, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %stat6 = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %stat6, align 4
  %and = and i32 %11, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  %12 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp8 = icmp ne void (%struct.hashnode*, i32)* %12, @scancountparams
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %job, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 %13)
  %arraydecay10 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @dupstring(i8* %arraydecay10)
  %node12 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  store i8* %call11, i8** %nam, align 4
  %14 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %14, 17
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %15 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %15, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false, %if.then9
  %16 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobdir(i32 %16)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then17, %lor.lhs.false
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node20 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %18 = load i32, i32* %flags.addr, align 4
  call void %17(%struct.hashnode* %node20, i32 %18)
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %19 = load i32, i32* %job, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %job, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmjobstate(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %job = alloca i32, align 4
  %pend = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load i8*, i8** %name.addr, align 4
  %call3 = call double @strtod(i8* %5, i8** %pend)
  %conv = fptosi double %call3 to i32
  store i32 %conv, i32* %job, align 4
  %6 = load i8*, i8** %pend, align 4
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 @getjob(i8* %8, i8* null)
  store i32 %call4, i32* %job, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %job, align 4
  %cmp = icmp sge i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %job, align 4
  %11 = load i32, i32* @maxjob, align 4
  %cmp6 = icmp sle i32 %10, %11
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %stat, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %15 = load %struct.job*, %struct.job** @jobtab, align 4
  %16 = load i32, i32* %job, align 4
  %arrayidx11 = getelementptr inbounds %struct.job, %struct.job* %15, i32 %16
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx11, i32 0, i32 4
  %17 = load %struct.process*, %struct.process** %procs, align 4
  %tobool12 = icmp ne %struct.process* %17, null
  br i1 %tobool12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* %job, align 4
  %arrayidx14 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %stat15 = getelementptr inbounds %struct.job, %struct.job* %arrayidx14, i32 0, i32 2
  %20 = load i32, i32* %stat15, align 4
  %and = and i32 %20, 32
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.else, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %21 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobstate(i32 %21)
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %if.end
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %u20 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 1
  %str21 = bitcast %union.anon.1* %u20 to i8**
  store i8* %call19, i8** %str21, align 8
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %25 = load i32, i32* %flags23, align 8
  %or = or i32 %25, 37748736
  store i32 %or, i32* %flags23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %26 = load %struct.param*, %struct.param** %pm, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  ret %struct.hashnode* %node25
}

; Function Attrs: noinline nounwind
define internal void @scanpmjobstates(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %job = alloca i32, align 4
  %buf = alloca [40 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 1, i32* %job, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %job, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.job*, %struct.job** @jobtab, align 4
  %7 = load i32, i32* %job, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %6, i32 %7
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 4
  %8 = load %struct.process*, %struct.process** %procs, align 4
  %tobool3 = icmp ne %struct.process* %8, null
  br i1 %tobool3, label %land.lhs.true4, label %if.end21

land.lhs.true4:                                   ; preds = %land.lhs.true
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %job, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %stat6 = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %stat6, align 4
  %and = and i32 %11, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  %12 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp8 = icmp ne void (%struct.hashnode*, i32)* %12, @scancountparams
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %job, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 %13)
  %arraydecay10 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @dupstring(i8* %arraydecay10)
  %node12 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  store i8* %call11, i8** %nam, align 4
  %14 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %14, 17
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %15 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %15, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false, %if.then9
  %16 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobstate(i32 %16)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then17, %lor.lhs.false
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node20 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %18 = load i32, i32* %flags.addr, align 4
  call void %17(%struct.hashnode* %node20, i32 %18)
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %19 = load i32, i32* %job, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %job, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmjobtext(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %job = alloca i32, align 4
  %pend = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load i8*, i8** %name.addr, align 4
  %call3 = call double @strtod(i8* %5, i8** %pend)
  %conv = fptosi double %call3 to i32
  store i32 %conv, i32* %job, align 4
  %6 = load i8*, i8** %pend, align 4
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call i32 @getjob(i8* %8, i8* null)
  store i32 %call4, i32* %job, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %job, align 4
  %cmp = icmp sge i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %job, align 4
  %11 = load i32, i32* @maxjob, align 4
  %cmp6 = icmp sle i32 %10, %11
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = load %struct.job*, %struct.job** @jobtab, align 4
  %13 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %12, i32 %13
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %stat, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %15 = load %struct.job*, %struct.job** @jobtab, align 4
  %16 = load i32, i32* %job, align 4
  %arrayidx11 = getelementptr inbounds %struct.job, %struct.job* %15, i32 %16
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx11, i32 0, i32 4
  %17 = load %struct.process*, %struct.process** %procs, align 4
  %tobool12 = icmp ne %struct.process* %17, null
  br i1 %tobool12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %18 = load %struct.job*, %struct.job** @jobtab, align 4
  %19 = load i32, i32* %job, align 4
  %arrayidx14 = getelementptr inbounds %struct.job, %struct.job* %18, i32 %19
  %stat15 = getelementptr inbounds %struct.job, %struct.job* %arrayidx14, i32 0, i32 2
  %20 = load i32, i32* %stat15, align 4
  %and = and i32 %20, 32
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.else, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %21 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobtext(i32 %21)
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %if.end
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %u20 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 1
  %str21 = bitcast %union.anon.1* %u20 to i8**
  store i8* %call19, i8** %str21, align 8
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %25 = load i32, i32* %flags23, align 8
  %or = or i32 %25, 37748736
  store i32 %or, i32* %flags23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %26 = load %struct.param*, %struct.param** %pm, align 4
  %node25 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 0
  ret %struct.hashnode* %node25
}

; Function Attrs: noinline nounwind
define internal void @scanpmjobtexts(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %job = alloca i32, align 4
  %buf = alloca [40 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 1, i32* %job, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %job, align 4
  %2 = load i32, i32* @maxjob, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* %job, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %stat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.job*, %struct.job** @jobtab, align 4
  %7 = load i32, i32* %job, align 4
  %arrayidx2 = getelementptr inbounds %struct.job, %struct.job* %6, i32 %7
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx2, i32 0, i32 4
  %8 = load %struct.process*, %struct.process** %procs, align 4
  %tobool3 = icmp ne %struct.process* %8, null
  br i1 %tobool3, label %land.lhs.true4, label %if.end21

land.lhs.true4:                                   ; preds = %land.lhs.true
  %9 = load %struct.job*, %struct.job** @jobtab, align 4
  %10 = load i32, i32* %job, align 4
  %arrayidx5 = getelementptr inbounds %struct.job, %struct.job* %9, i32 %10
  %stat6 = getelementptr inbounds %struct.job, %struct.job* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %stat6, align 4
  %and = and i32 %11, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  %12 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp8 = icmp ne void (%struct.hashnode*, i32)* %12, @scancountparams
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %job, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 %13)
  %arraydecay10 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %call11 = call i8* @dupstring(i8* %arraydecay10)
  %node12 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 1
  store i8* %call11, i8** %nam, align 4
  %14 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %14, 17
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %15 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %15, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false, %if.then9
  %16 = load i32, i32* %job, align 4
  %call18 = call i8* @pmjobtext(i32 %16)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then17, %lor.lhs.false
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node20 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %18 = load i32, i32* %flags.addr, align 4
  call void %17(%struct.hashnode* %node20, i32 %18)
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %19 = load i32, i32* %job, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %job, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmmodule(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %type = alloca i8*, align 4
  %m = alloca %struct.module*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  store i8* null, i8** %type, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 10
  %getnode23 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode23, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call4 to %struct.module*
  store %struct.module* %9, %struct.module** %m, align 4
  %10 = load %struct.module*, %struct.module** %m, align 4
  %tobool = icmp ne %struct.module* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.hashnode* null, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %12 = load i8*, i8** %handle, align 4
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.module*, %struct.module** %m, align 4
  %node6 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %14 = load i32, i32* %flags7, align 4
  %and = and i32 %14, 2
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.end16, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %15 = load %struct.module*, %struct.module** %m, align 4
  %node10 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %16 = load i32, i32* %flags11, align 4
  %and12 = and i32 %16, 64
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %17 = load %struct.module*, %struct.module** %m, align 4
  %u14 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 1
  %alias = bitcast %union.anon* %u14 to i8**
  %18 = load i8*, i8** %alias, align 4
  %call15 = call i8* @dyncat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* %18)
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call15, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %type, align 4
  br label %if.end16

if.end16:                                         ; preds = %cond.end, %land.lhs.true, %if.end
  %19 = load i8*, i8** %type, align 4
  %tobool17 = icmp ne i8* %19, null
  br i1 %tobool17, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end16
  %20 = load %struct.module*, %struct.module** %m, align 4
  %autoloads = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 2
  %21 = load %union.linkroot*, %union.linkroot** %autoloads, align 4
  %tobool19 = icmp ne %union.linkroot* %21, null
  br i1 %tobool19, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %if.then18
  %22 = load %struct.module*, %struct.module** %m, align 4
  %autoloads21 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 2
  %23 = load %union.linkroot*, %union.linkroot** %autoloads21, align 4
  %list = bitcast %union.linkroot* %23 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %24 = load %struct.linknode*, %struct.linknode** %first, align 4
  %tobool22 = icmp ne %struct.linknode* %24, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8** %type, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true20, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end16
  %25 = load i8*, i8** %type, align 4
  %tobool26 = icmp ne i8* %25, null
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %26 = load i8*, i8** %type, align 4
  %call28 = call i8* @dupstring(i8* %26)
  %27 = load %struct.param*, %struct.param** %pm, align 4
  %u29 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 1
  %str = bitcast %union.anon.1* %u29 to i8**
  store i8* %call28, i8** %str, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end25
  %call30 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %28 = load %struct.param*, %struct.param** %pm, align 4
  %u31 = getelementptr inbounds %struct.param, %struct.param* %28, i32 0, i32 1
  %str32 = bitcast %union.anon.1* %u31 to i8**
  store i8* %call30, i8** %str32, align 8
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %node33 = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 0
  %flags34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node33, i32 0, i32 2
  %30 = load i32, i32* %flags34, align 8
  %or = or i32 %30, 37748736
  store i32 %or, i32* %flags34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then27
  %31 = load %struct.param*, %struct.param** %pm, align 4
  %node36 = getelementptr inbounds %struct.param, %struct.param* %31, i32 0, i32 0
  store %struct.hashnode* %node36, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then
  %32 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %32
}

; Function Attrs: noinline nounwind
define internal void @scanpmmodules(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %done = alloca %union.linkroot*, align 4
  %m = alloca %struct.module*, align 4
  %p = alloca %struct.conddef*, align 4
  %loaded = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %done, align 4
  %call1 = call i8* @dupstring(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0))
  store i8* %call1, i8** %loaded, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags2, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @modulestab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %8, null
  br i1 %tobool, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond3
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.module*
  store %struct.module* %10, %struct.module** %m, align 4
  %11 = load %struct.module*, %struct.module** %m, align 4
  %u = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 1
  %handle = bitcast %union.anon* %u to i8**
  %12 = load i8*, i8** %handle, align 4
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body4
  %13 = load %struct.module*, %struct.module** %m, align 4
  %node6 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %14 = load i32, i32* %flags7, align 4
  %and = and i32 %14, 2
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.module*, %struct.module** %m, align 4
  %node9 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  store i8* %16, i8** %nam11, align 4
  %17 = load %struct.module*, %struct.module** %m, align 4
  %node12 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %18 = load i32, i32* %flags13, align 4
  %and14 = and i32 %18, 64
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %19 = load %struct.module*, %struct.module** %m, align 4
  %u16 = getelementptr inbounds %struct.module, %struct.module* %19, i32 0, i32 1
  %alias = bitcast %union.anon* %u16 to i8**
  %20 = load i8*, i8** %alias, align 4
  %call17 = call i8* @dyncat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* %20)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %21 = load i8*, i8** %loaded, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call17, %cond.true ], [ %21, %cond.false ]
  %u18 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u18 to i8**
  store i8* %cond, i8** %str, align 8
  %22 = load %union.linkroot*, %union.linkroot** %done, align 4
  %23 = load %union.linkroot*, %union.linkroot** %done, align 4
  %list = bitcast %union.linkroot* %23 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %24 = load %struct.linknode*, %struct.linknode** %last, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 1
  %25 = load i8*, i8** %nam20, align 4
  %call21 = call %struct.linknode* @insertlinknode(%union.linkroot* %22, %struct.linknode* %24, i8* %25)
  %26 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %27 = load i32, i32* %flags.addr, align 4
  call void %26(%struct.hashnode* %node22, i32 %27)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %28, i32 0, i32 0
  %29 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %29, %struct.hashnode** %hn, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  %call25 = call i8* @dupstring(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0))
  %u26 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str27 = bitcast %union.anon.1* %u26 to i8**
  store i8* %call25, i8** %str27, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc58, %for.end24
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %hsize29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %32, i32 0, i32 0
  %33 = load i32, i32* %hsize29, align 4
  %cmp30 = icmp slt i32 %31, %33
  br i1 %cmp30, label %for.body31, label %for.end60

for.body31:                                       ; preds = %for.cond28
  %34 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %nodes32 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %34, i32 0, i32 2
  %35 = load %struct.hashnode**, %struct.hashnode*** %nodes32, align 4
  %36 = load i32, i32* %i, align 4
  %arrayidx33 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %35, i32 %36
  %37 = load %struct.hashnode*, %struct.hashnode** %arrayidx33, align 4
  store %struct.hashnode* %37, %struct.hashnode** %hn, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc55, %for.body31
  %38 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool35 = icmp ne %struct.hashnode* %38, null
  br i1 %tobool35, label %for.body36, label %for.end57

for.body36:                                       ; preds = %for.cond34
  %39 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %40 = bitcast %struct.hashnode* %39 to %struct.builtin*
  %node37 = getelementptr inbounds %struct.builtin, %struct.builtin* %40, i32 0, i32 0
  %flags38 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node37, i32 0, i32 2
  %41 = load i32, i32* %flags38, align 4
  %and39 = and i32 %41, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.end54, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %for.body36
  %42 = load %union.linkroot*, %union.linkroot** %done, align 4
  %43 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %44 = bitcast %struct.hashnode* %43 to %struct.builtin*
  %optstr = getelementptr inbounds %struct.builtin, %struct.builtin* %44, i32 0, i32 5
  %45 = load i8*, i8** %optstr, align 4
  %call42 = call %struct.linknode* @linknodebystring(%union.linkroot* %42, i8* %45)
  %tobool43 = icmp ne %struct.linknode* %call42, null
  br i1 %tobool43, label %if.end54, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  %46 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %47 = bitcast %struct.hashnode* %46 to %struct.builtin*
  %optstr45 = getelementptr inbounds %struct.builtin, %struct.builtin* %47, i32 0, i32 5
  %48 = load i8*, i8** %optstr45, align 4
  %node46 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam47 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node46, i32 0, i32 1
  store i8* %48, i8** %nam47, align 4
  %49 = load %union.linkroot*, %union.linkroot** %done, align 4
  %50 = load %union.linkroot*, %union.linkroot** %done, align 4
  %list48 = bitcast %union.linkroot* %50 to %struct.linklist*
  %last49 = getelementptr inbounds %struct.linklist, %struct.linklist* %list48, i32 0, i32 1
  %51 = load %struct.linknode*, %struct.linknode** %last49, align 4
  %node50 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam51 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node50, i32 0, i32 1
  %52 = load i8*, i8** %nam51, align 4
  %call52 = call %struct.linknode* @insertlinknode(%union.linkroot* %49, %struct.linknode* %51, i8* %52)
  %53 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node53 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %54 = load i32, i32* %flags.addr, align 4
  call void %53(%struct.hashnode* %node53, i32 %54)
  br label %if.end54

if.end54:                                         ; preds = %if.then44, %land.lhs.true41, %for.body36
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %55 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next56 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %55, i32 0, i32 0
  %56 = load %struct.hashnode*, %struct.hashnode** %next56, align 4
  store %struct.hashnode* %56, %struct.hashnode** %hn, align 4
  br label %for.cond34

for.end57:                                        ; preds = %for.cond34
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %57 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %57, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond28

for.end60:                                        ; preds = %for.cond28
  %58 = load %struct.conddef*, %struct.conddef** @condtab, align 4
  store %struct.conddef* %58, %struct.conddef** %p, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc80, %for.end60
  %59 = load %struct.conddef*, %struct.conddef** %p, align 4
  %tobool62 = icmp ne %struct.conddef* %59, null
  br i1 %tobool62, label %for.body63, label %for.end82

for.body63:                                       ; preds = %for.cond61
  %60 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module = getelementptr inbounds %struct.conddef, %struct.conddef* %60, i32 0, i32 7
  %61 = load i8*, i8** %module, align 4
  %tobool64 = icmp ne i8* %61, null
  br i1 %tobool64, label %land.lhs.true65, label %if.end79

land.lhs.true65:                                  ; preds = %for.body63
  %62 = load %union.linkroot*, %union.linkroot** %done, align 4
  %63 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module66 = getelementptr inbounds %struct.conddef, %struct.conddef* %63, i32 0, i32 7
  %64 = load i8*, i8** %module66, align 4
  %call67 = call %struct.linknode* @linknodebystring(%union.linkroot* %62, i8* %64)
  %tobool68 = icmp ne %struct.linknode* %call67, null
  br i1 %tobool68, label %if.end79, label %if.then69

if.then69:                                        ; preds = %land.lhs.true65
  %65 = load %struct.conddef*, %struct.conddef** %p, align 4
  %module70 = getelementptr inbounds %struct.conddef, %struct.conddef* %65, i32 0, i32 7
  %66 = load i8*, i8** %module70, align 4
  %node71 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam72 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node71, i32 0, i32 1
  store i8* %66, i8** %nam72, align 4
  %67 = load %union.linkroot*, %union.linkroot** %done, align 4
  %68 = load %union.linkroot*, %union.linkroot** %done, align 4
  %list73 = bitcast %union.linkroot* %68 to %struct.linklist*
  %last74 = getelementptr inbounds %struct.linklist, %struct.linklist* %list73, i32 0, i32 1
  %69 = load %struct.linknode*, %struct.linknode** %last74, align 4
  %node75 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam76 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node75, i32 0, i32 1
  %70 = load i8*, i8** %nam76, align 4
  %call77 = call %struct.linknode* @insertlinknode(%union.linkroot* %67, %struct.linknode* %69, i8* %70)
  %71 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node78 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %72 = load i32, i32* %flags.addr, align 4
  call void %71(%struct.hashnode* %node78, i32 %72)
  br label %if.end79

if.end79:                                         ; preds = %if.then69, %land.lhs.true65, %for.body63
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %73 = load %struct.conddef*, %struct.conddef** %p, align 4
  %next81 = getelementptr inbounds %struct.conddef, %struct.conddef* %73, i32 0, i32 0
  %74 = load %struct.conddef*, %struct.conddef** %next81, align 4
  store %struct.conddef* %74, %struct.conddef** %p, align 4
  br label %for.cond61

for.end82:                                        ; preds = %for.cond61
  store i32 0, i32* %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc116, %for.end82
  %75 = load i32, i32* %i, align 4
  %76 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %hsize84 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %76, i32 0, i32 0
  %77 = load i32, i32* %hsize84, align 4
  %cmp85 = icmp slt i32 %75, %77
  br i1 %cmp85, label %for.body86, label %for.end118

for.body86:                                       ; preds = %for.cond83
  %78 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %nodes87 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %78, i32 0, i32 2
  %79 = load %struct.hashnode**, %struct.hashnode*** %nodes87, align 4
  %80 = load i32, i32* %i, align 4
  %arrayidx88 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %79, i32 %80
  %81 = load %struct.hashnode*, %struct.hashnode** %arrayidx88, align 4
  store %struct.hashnode* %81, %struct.hashnode** %hn, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc113, %for.body86
  %82 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool90 = icmp ne %struct.hashnode* %82, null
  br i1 %tobool90, label %for.body91, label %for.end115

for.body91:                                       ; preds = %for.cond89
  %83 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %84 = bitcast %struct.hashnode* %83 to %struct.param*
  %node92 = getelementptr inbounds %struct.param, %struct.param* %84, i32 0, i32 0
  %flags93 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node92, i32 0, i32 2
  %85 = load i32, i32* %flags93, align 8
  %and94 = and i32 %85, 134217728
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %land.lhs.true96, label %if.end112

land.lhs.true96:                                  ; preds = %for.body91
  %86 = load %union.linkroot*, %union.linkroot** %done, align 4
  %87 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %88 = bitcast %struct.hashnode* %87 to %struct.param*
  %u97 = getelementptr inbounds %struct.param, %struct.param* %88, i32 0, i32 1
  %str98 = bitcast %union.anon.1* %u97 to i8**
  %89 = load i8*, i8** %str98, align 8
  %call99 = call %struct.linknode* @linknodebystring(%union.linkroot* %86, i8* %89)
  %tobool100 = icmp ne %struct.linknode* %call99, null
  br i1 %tobool100, label %if.end112, label %if.then101

if.then101:                                       ; preds = %land.lhs.true96
  %90 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %91 = bitcast %struct.hashnode* %90 to %struct.param*
  %u102 = getelementptr inbounds %struct.param, %struct.param* %91, i32 0, i32 1
  %str103 = bitcast %union.anon.1* %u102 to i8**
  %92 = load i8*, i8** %str103, align 8
  %node104 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam105 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node104, i32 0, i32 1
  store i8* %92, i8** %nam105, align 4
  %93 = load %union.linkroot*, %union.linkroot** %done, align 4
  %94 = load %union.linkroot*, %union.linkroot** %done, align 4
  %list106 = bitcast %union.linkroot* %94 to %struct.linklist*
  %last107 = getelementptr inbounds %struct.linklist, %struct.linklist* %list106, i32 0, i32 1
  %95 = load %struct.linknode*, %struct.linknode** %last107, align 4
  %node108 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam109 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node108, i32 0, i32 1
  %96 = load i8*, i8** %nam109, align 4
  %call110 = call %struct.linknode* @insertlinknode(%union.linkroot* %93, %struct.linknode* %95, i8* %96)
  %97 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node111 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %98 = load i32, i32* %flags.addr, align 4
  call void %97(%struct.hashnode* %node111, i32 %98)
  br label %if.end112

if.end112:                                        ; preds = %if.then101, %land.lhs.true96, %for.body91
  br label %for.inc113

for.inc113:                                       ; preds = %if.end112
  %99 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next114 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %99, i32 0, i32 0
  %100 = load %struct.hashnode*, %struct.hashnode** %next114, align 4
  store %struct.hashnode* %100, %struct.hashnode** %hn, align 4
  br label %for.cond89

for.end115:                                       ; preds = %for.cond89
  br label %for.inc116

for.inc116:                                       ; preds = %for.end115
  %101 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %101, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond83

for.end118:                                       ; preds = %for.cond83
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmnameddir(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 0, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmnamedir_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  %getnode3 = bitcast {}** %getnode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode3, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call4 to %struct.nameddir*
  store %struct.nameddir* %9, %struct.nameddir** %nd, align 4
  %tobool = icmp ne %struct.nameddir* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node5 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %10, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %11 = load i32, i32* %flags6, align 4
  %and = and i32 %11, 2
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %12, i32 0, i32 1
  %13 = load i8*, i8** %dir, align 4
  %call8 = call i8* @dupstring(i8* %13)
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call8, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %u10 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 1
  %str11 = bitcast %union.anon.1* %u10 to i8**
  store i8* %call9, i8** %str11, align 8
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %17 = load i32, i32* %flags13, align 8
  %or = or i32 %17, 37748736
  store i32 %or, i32* %flags13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.param*, %struct.param** %pm, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 0
  ret %struct.hashnode* %node14
}

; Function Attrs: noinline nounwind
define internal void @scanpmnameddirs(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmnamedir_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %8, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.nameddir*
  store %struct.nameddir* %10, %struct.nameddir** %nd, align 4
  %node4 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %10, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %11 = load i32, i32* %flags5, align 4
  %and = and i32 %11, 2
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end16, label %if.then

if.then:                                          ; preds = %for.body3
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  store i8* %13, i8** %nam8, align 4
  %14 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp9 = icmp ne void (%struct.hashnode*, i32)* %14, @scancountparams
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %15, 17
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %16, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %17, i32 0, i32 1
  %18 = load i8*, i8** %dir, align 4
  %call = call i8* @dupstring(i8* %18)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %lor.lhs.false, %if.then
  %19 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node15 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %20 = load i32, i32* %flags.addr, align 4
  call void %19(%struct.hashnode* %node15, i32 %20)
  br label %if.end16

if.end16:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %21 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %21, i32 0, i32 0
  %22 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %22, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmoption(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %n = alloca i32, align 4
  %ison = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 0, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmoption_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load i8*, i8** %name.addr, align 4
  %call3 = call i32 @optlookup(i8* %5)
  store i32 %call3, i32* %n, align 4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %7 = load i32, i32* %n, align 4
  %arrayidx = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %7
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %ison, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %n, align 4
  %sub = sub nsw i32 0, %9
  %arrayidx5 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %sub
  %10 = load i8, i8* %arrayidx5, align 1
  %tobool6 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %ison, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %11 = load i32, i32* %ison, align 4
  %tobool7 = icmp ne i32 %11, 0
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)
  %call8 = call i8* @dupstring(i8* %cond)
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call8, i8** %str, align 8
  br label %if.end15

if.else9:                                         ; preds = %entry
  %call10 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %u11 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 1
  %str12 = bitcast %union.anon.1* %u11 to i8**
  store i8* %call10, i8** %str12, align 8
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %node13 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 0
  %flags14 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node13, i32 0, i32 2
  %15 = load i32, i32* %flags14, align 8
  %or = or i32 %15, 37748736
  store i32 %or, i32* %flags14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.end
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 0
  ret %struct.hashnode* %node16
}

; Function Attrs: noinline nounwind
define internal void @scanpmoptions(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %optno = alloca i32, align 4
  %ison = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmoption_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @optiontab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %8, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.optname*
  %optno4 = getelementptr inbounds %struct.optname, %struct.optname* %10, i32 0, i32 1
  %11 = load i32, i32* %optno4, align 4
  store i32 %11, i32* %optno, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  store i8* %13, i8** %nam6, align 4
  %14 = load i32, i32* %optno, align 4
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %15 = load i32, i32* %optno, align 4
  %sub = sub nsw i32 0, %15
  %arrayidx8 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %sub
  %16 = load i8, i8* %arrayidx8, align 1
  %tobool9 = icmp ne i8 %16, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %17 = load i32, i32* %optno, align 4
  %arrayidx10 = getelementptr inbounds [181 x i8], [181 x i8]* @opts, i32 0, i32 %17
  %18 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %ison, align 4
  %19 = load i32, i32* %ison, align 4
  %tobool11 = icmp ne i32 %19, 0
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)
  %call = call i8* @dupstring(i8* %cond12)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  %20 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node13 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %21 = load i32, i32* %flags.addr, align 4
  call void %20(%struct.hashnode* %node13, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %22, i32 0, i32 0
  %23 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %23, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmparameter(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %rpm = alloca %struct.param*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 9
  %getnode3 = bitcast {}** %getnode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode3, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call4 to %struct.param*
  store %struct.param* %9, %struct.param** %rpm, align 4
  %tobool = icmp ne %struct.param* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.param*, %struct.param** %rpm, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %11 = load i32, i32* %flags6, align 8
  %and = and i32 %11, 33554432
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.param*, %struct.param** %rpm, align 4
  %call8 = call i8* @paramtypestr(%struct.param* %12)
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call8, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %u10 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 1
  %str11 = bitcast %union.anon.1* %u10 to i8**
  store i8* %call9, i8** %str11, align 8
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %16 = load i32, i32* %flags13, align 8
  %or = or i32 %16, 37748736
  store i32 %or, i32* %flags13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  ret %struct.hashnode* %node14
}

; Function Attrs: noinline nounwind
define internal void @scanpmparameters(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %8, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.param*
  %node4 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %11 = load i32, i32* %flags5, align 8
  %and = and i32 %11, 33554432
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 1
  %13 = load i8*, i8** %nam, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  store i8* %13, i8** %nam8, align 4
  %14 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp9 = icmp ne void (%struct.hashnode*, i32)* %14, @scancountparams
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %15, 17
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %16, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %18 = bitcast %struct.hashnode* %17 to %struct.param*
  %call = call i8* @paramtypestr(%struct.param* %18)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false, %if.end
  %19 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %20 = load i32, i32* %flags.addr, align 4
  call void %19(%struct.hashnode* %node16, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.then
  %21 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %21, i32 0, i32 0
  %22 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %22, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmsalias(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %struct.hashnode* @getalias(%struct.hashtable* %0, %struct.hashtable* %1, i8* %2, i32 4)
  ret %struct.hashnode* %call
}

; Function Attrs: noinline nounwind
define internal void @scanpmsaliases(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  call void @scanaliases(%struct.hashtable* %0, %struct.hashtable* %1, void (%struct.hashnode*, i32)* %2, i32 %3, i32 4)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmuserdir(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 6
  %1 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %filltable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  call void %1(%struct.hashtable* %2)
  %call = call i8* @hcalloc(i32 56)
  %3 = bitcast i8* %call to %struct.param*
  store %struct.param* %3, %struct.param** %pm, align 4
  %4 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %4)
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %6 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 9
  %getnode3 = bitcast {}** %getnode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %9 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode3, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %11 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %9(%struct.hashtable* %10, i8* %11)
  %12 = bitcast %struct.hashnode* %call4 to %struct.nameddir*
  store %struct.nameddir* %12, %struct.nameddir** %nd, align 4
  %tobool = icmp ne %struct.nameddir* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node5 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %13, i32 0, i32 0
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 2
  %14 = load i32, i32* %flags6, align 4
  %and = and i32 %14, 2
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %15, i32 0, i32 1
  %16 = load i8*, i8** %dir, align 4
  %call8 = call i8* @dupstring(i8* %16)
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call8, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %18 = load %struct.param*, %struct.param** %pm, align 4
  %u10 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 1
  %str11 = bitcast %union.anon.1* %u10 to i8**
  store i8* %call9, i8** %str11, align 8
  %19 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %20 = load i32, i32* %flags13, align 8
  %or = or i32 %20, 37748736
  store i32 %or, i32* %flags13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.param*, %struct.param** %pm, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  ret %struct.hashnode* %node14
}

; Function Attrs: noinline nounwind
define internal void @scanpmuserdirs(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %filltable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 6
  %1 = load void (%struct.hashtable*)*, void (%struct.hashtable*)** %filltable, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  call void %1(%struct.hashtable* %2)
  %3 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  %6 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %7 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 2
  %8 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %8, i32 %9
  %10 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %10, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %11, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %13 = bitcast %struct.hashnode* %12 to %struct.nameddir*
  store %struct.nameddir* %13, %struct.nameddir** %nd, align 4
  %node4 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %13, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %14 = load i32, i32* %flags5, align 4
  %and = and i32 %14, 2
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body3
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  store i8* %16, i8** %nam8, align 4
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp9 = icmp ne void (%struct.hashnode*, i32)* %17, @scancountparams
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %18, 17
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %19, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %20, i32 0, i32 1
  %21 = load i8*, i8** %dir, align 4
  %call = call i8* @dupstring(i8* %21)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %lor.lhs.false, %if.then
  %22 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node15 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %23 = load i32, i32* %flags.addr, align 4
  call void %22(%struct.hashnode* %node15, i32 %23)
  br label %if.end16

if.end16:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %24 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %24, i32 0, i32 0
  %25 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %25, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getpmusergroups(%struct.hashtable* %ht, i8* %name) #0 {
entry:
  %retval = alloca %struct.hashnode*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %pm = alloca %struct.param*, align 4
  %gs = alloca %struct.groupset*, align 4
  %gaptr = alloca %struct.groupmap*, align 4
  %buf = alloca [12 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call %struct.groupset* @get_all_groups()
  store %struct.groupset* %call, %struct.groupset** %gs, align 4
  %call1 = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call1 to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call2 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call2, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node3 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node3, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %tobool = icmp ne %struct.groupset* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32* @__errno_location()
  %6 = load i32, i32* %call4, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.89, i32 0, i32 0), i32 %6)
  %call5 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call5, i8** %str, align 8
  %8 = load %struct.param*, %struct.param** %pm, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %9 = load i32, i32* %flags7, align 8
  %or = or i32 %9, 37748736
  store i32 %or, i32* %flags7, align 8
  %10 = load %struct.param*, %struct.param** %pm, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  store %struct.hashnode* %node8, %struct.hashnode** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array = getelementptr inbounds %struct.groupset, %struct.groupset* %11, i32 0, i32 0
  %12 = load %struct.groupmap*, %struct.groupmap** %array, align 4
  store %struct.groupmap* %12, %struct.groupmap** %gaptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %14 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array9 = getelementptr inbounds %struct.groupset, %struct.groupset* %14, i32 0, i32 0
  %15 = load %struct.groupmap*, %struct.groupmap** %array9, align 4
  %16 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num = getelementptr inbounds %struct.groupset, %struct.groupset* %16, i32 0, i32 1
  %17 = load i32, i32* %num, align 4
  %add.ptr = getelementptr inbounds %struct.groupmap, %struct.groupmap* %15, i32 %17
  %cmp = icmp ult %struct.groupmap* %13, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %name.addr, align 4
  %19 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %name10 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %19, i32 0, i32 0
  %20 = load i8*, i8** %name10, align 4
  %call11 = call i32 @strcmp(i8* %18, i8* %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end20, label %if.then13

if.then13:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %21 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %gid = getelementptr inbounds %struct.groupmap, %struct.groupmap* %21, i32 0, i32 1
  %22 = load i32, i32* %gid, align 4
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 %22)
  %arraydecay15 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call16 = call i8* @dupstring(i8* %arraydecay15)
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %u17 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 1
  %str18 = bitcast %union.anon.1* %u17 to i8**
  store i8* %call16, i8** %str18, align 8
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 0
  store %struct.hashnode* %node19, %struct.hashnode** %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %25 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.groupmap, %struct.groupmap* %25, i32 1
  store %struct.groupmap* %incdec.ptr, %struct.groupmap** %gaptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call21 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %26 = load %struct.param*, %struct.param** %pm, align 4
  %u22 = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 1
  %str23 = bitcast %union.anon.1* %u22 to i8**
  store i8* %call21, i8** %str23, align 8
  %27 = load %struct.param*, %struct.param** %pm, align 4
  %node24 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 0
  %flags25 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node24, i32 0, i32 2
  %28 = load i32, i32* %flags25, align 8
  %or26 = or i32 %28, 37748736
  store i32 %or26, i32* %flags25, align 8
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %node27 = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 0
  store %struct.hashnode* %node27, %struct.hashnode** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  %30 = load %struct.hashnode*, %struct.hashnode** %retval, align 4
  ret %struct.hashnode* %30
}

; Function Attrs: noinline nounwind
define internal void @scanpmusergroups(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %gs = alloca %struct.groupset*, align 4
  %gaptr = alloca %struct.groupmap*, align 4
  %buf = alloca [12 x i8], align 1
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %struct.groupset* @get_all_groups()
  store %struct.groupset* %call, %struct.groupset** %gs, align 4
  %0 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %tobool = icmp ne %struct.groupset* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location()
  %1 = load i32, i32* %call1, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.89, i32 0, i32 0), i32 %1)
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags2, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %3 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array = getelementptr inbounds %struct.groupset, %struct.groupset* %3, i32 0, i32 0
  %4 = load %struct.groupmap*, %struct.groupmap** %array, align 4
  store %struct.groupmap* %4, %struct.groupmap** %gaptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %6 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array3 = getelementptr inbounds %struct.groupset, %struct.groupset* %6, i32 0, i32 0
  %7 = load %struct.groupmap*, %struct.groupmap** %array3, align 4
  %8 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num = getelementptr inbounds %struct.groupset, %struct.groupset* %8, i32 0, i32 1
  %9 = load i32, i32* %num, align 4
  %add.ptr = getelementptr inbounds %struct.groupmap, %struct.groupmap* %7, i32 %9
  %cmp = icmp ult %struct.groupmap* %5, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %name = getelementptr inbounds %struct.groupmap, %struct.groupmap* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 4
  %node4 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  store i8* %11, i8** %nam, align 4
  %12 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp5 = icmp ne void (%struct.hashnode*, i32)* %12, @scancountparams
  br i1 %cmp5, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, i32* %flags.addr, align 4
  %and = and i32 %13, 17
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %14, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %15 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %gid = getelementptr inbounds %struct.groupmap, %struct.groupmap* %15, i32 0, i32 1
  %16 = load i32, i32* %gid, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 %16)
  %arraydecay11 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call12 = call i8* @dupstring(i8* %arraydecay11)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call12, i8** %str, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %lor.lhs.false, %for.body
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node14 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %18 = load i32, i32* %flags.addr, align 4
  call void %17(%struct.hashnode* %node14, i32 %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %19 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %incdec.ptr = getelementptr inbounds %struct.groupmap, %struct.groupmap* %19, i32 1
  store %struct.groupmap* %incdec.ptr, %struct.groupmap** %gaptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare %struct.hashtable* @hashgetfn(%struct.param*) #1

; Function Attrs: noinline nounwind
define internal void @setpmraliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 0)
  ret void
}

declare void @stdunsetfn(%struct.param*, i32) #1

; Function Attrs: noinline nounwind
define internal void @setaliases(%struct.hashtable* %alht, %struct.param* %pm, %struct.hashtable* %ht, i32 %flags) #0 {
entry:
  %alht.addr = alloca %struct.hashtable*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %next = alloca %struct.hashnode*, align 4
  %hd = alloca %struct.hashnode*, align 4
  %v = alloca %struct.value, align 4
  %val = alloca i8*, align 4
  store %struct.hashtable* %alht, %struct.hashtable** %alht.addr, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end40

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool2 = icmp ne %struct.hashnode* %8, null
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %9, i32 0, i32 0
  %10 = load %struct.hashnode*, %struct.hashnode** %next4, align 4
  store %struct.hashnode* %10, %struct.hashnode** %next, align 4
  %11 = load i32, i32* %flags.addr, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %13 = bitcast %struct.hashnode* %12 to %struct.alias*
  %node = getelementptr inbounds %struct.alias, %struct.alias* %13, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %14 = load i32, i32* %flags5, align 4
  %cmp6 = icmp eq i32 %11, %14
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body3
  %15 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 11
  %removenode7 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %16 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode7, align 4
  %17 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %18 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %18, i32 0, i32 1
  %19 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %16(%struct.hashtable* %17, i8* %19)
  store %struct.hashnode* %call, %struct.hashnode** %hd, align 4
  %tobool8 = icmp ne %struct.hashnode* %call, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %20 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 14
  %21 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %22 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  call void %21(%struct.hashnode* %22)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %23 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %23, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc35, %for.end12
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 0
  %27 = load i32, i32* %hsize14, align 4
  %cmp15 = icmp slt i32 %25, %27
  br i1 %cmp15, label %for.body16, label %for.end37

for.body16:                                       ; preds = %for.cond13
  %28 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 2
  %29 = load %struct.hashnode**, %struct.hashnode*** %nodes17, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx18 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %29, i32 %30
  %31 = load %struct.hashnode*, %struct.hashnode** %arrayidx18, align 4
  store %struct.hashnode* %31, %struct.hashnode** %hn, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc32, %for.body16
  %32 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool20 = icmp ne %struct.hashnode* %32, null
  br i1 %tobool20, label %for.body21, label %for.end34

for.body21:                                       ; preds = %for.cond19
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags22 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags22, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %33 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %34 = bitcast %struct.hashnode* %33 to %struct.param*
  %pm23 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %34, %struct.param** %pm23, align 4
  %call24 = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call24, i8** %val, align 4
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body21
  %35 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %35, i32 0, i32 8
  %36 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %37 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %38 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %38, i32 0, i32 1
  %39 = load i8*, i8** %nam27, align 4
  %call28 = call i8* @ztrdup(i8* %39)
  %40 = load i8*, i8** %val, align 4
  %call29 = call i8* @ztrdup(i8* %40)
  %41 = load i32, i32* %flags.addr, align 4
  %call30 = call %struct.alias* @createaliasnode(i8* %call29, i32 %41)
  %42 = bitcast %struct.alias* %call30 to i8*
  call void %36(%struct.hashtable* %37, i8* %call28, i8* %42)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body21
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %43 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next33 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %43, i32 0, i32 0
  %44 = load %struct.hashnode*, %struct.hashnode** %next33, align 4
  store %struct.hashnode* %44, %struct.hashnode** %hn, align 4
  br label %for.cond19

for.end34:                                        ; preds = %for.cond19
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %45 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %45, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond13

for.end37:                                        ; preds = %for.cond13
  %46 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %47 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %47, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u to %struct.hashtable**
  %48 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp38 = icmp ne %struct.hashtable* %46, %48
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.end37
  %49 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %49)
  br label %if.end40

if.end40:                                         ; preds = %if.then, %if.then39, %for.end37
  ret void
}

declare i8* @getstrvalue(%struct.value*) #1

declare i8* @ztrdup(i8*) #1

declare %struct.alias* @createaliasnode(i8*, i32) #1

declare void @deleteparamtable(%struct.hashtable*) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getalias(%struct.hashtable* %alht, %struct.hashtable* %ht, i8* %name, i32 %flags) #0 {
entry:
  %alht.addr = alloca %struct.hashtable*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %al = alloca %struct.alias*, align 4
  store %struct.hashtable* %alht, %struct.hashtable** %alht.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %4 = load i32, i32* %flags.addr, align 4
  call void @assignaliasdefs(%struct.param* %3, i32 %4)
  %5 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 10
  %getnode22 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode22, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %call3 = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call3 to %struct.alias*
  store %struct.alias* %9, %struct.alias** %al, align 4
  %tobool = icmp ne %struct.alias* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %flags.addr, align 4
  %11 = load %struct.alias*, %struct.alias** %al, align 4
  %node4 = getelementptr inbounds %struct.alias, %struct.alias* %11, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 2
  %12 = load i32, i32* %flags5, align 4
  %cmp = icmp eq i32 %10, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.alias*, %struct.alias** %al, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %13, i32 0, i32 1
  %14 = load i8*, i8** %text, align 4
  %call6 = call i8* @dupstring(i8* %14)
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call6, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call7 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %u8 = getelementptr inbounds %struct.param, %struct.param* %16, i32 0, i32 1
  %str9 = bitcast %union.anon.1* %u8 to i8**
  store i8* %call7, i8** %str9, align 8
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %18 = load i32, i32* %flags11, align 8
  %or = or i32 %18, 37748736
  store i32 %or, i32* %flags11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  ret %struct.hashnode* %node12
}

declare i8* @hcalloc(i32) #1

declare i8* @dupstring(i8*) #1

; Function Attrs: noinline nounwind
define internal void @assignaliasdefs(%struct.param* %pm, i32 %flags) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %1 = load i32, i32* %flags.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb5
    i32 1, label %sw.bb8
    i32 3, label %sw.bb11
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmralias_gsu, %struct.gsu_scalar** %s, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu3 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 2
  %s4 = bitcast %union.anon.2* %gsu3 to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmgalias_gsu, %struct.gsu_scalar** %s4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu6 = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s7 = bitcast %union.anon.2* %gsu6 to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmsalias_gsu, %struct.gsu_scalar** %s7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu9 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 2
  %s10 = bitcast %union.anon.2* %gsu9 to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmdisralias_gsu, %struct.gsu_scalar** %s10, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu12 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 2
  %s13 = bitcast %union.anon.2* %gsu12 to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmdisgalias_gsu, %struct.gsu_scalar** %s13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu15 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %s16 = bitcast %union.anon.2* %gsu15 to %struct.gsu_scalar**
  store %struct.gsu_scalar* @pmdissalias_gsu, %struct.gsu_scalar** %s16, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  ret void
}

declare i8* @strgetfn(%struct.param*) #1

; Function Attrs: noinline nounwind
define internal void @setpmralias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmalias(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %hd = alloca %struct.hashnode*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  store %struct.hashnode* %call, %struct.hashnode** %hd, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  call void %7(%struct.hashnode* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setalias(%struct.hashtable* %ht, %struct.param* %pm, i8* %value, i32 %flags) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 8
  %1 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call i8* @ztrdup(i8* %4)
  %5 = load i8*, i8** %value.addr, align 4
  %6 = load i32, i32* %flags.addr, align 4
  %call1 = call %struct.alias* @createaliasnode(i8* %5, i32 %6)
  %7 = bitcast %struct.alias* %call1 to i8*
  call void %1(%struct.hashtable* %2, i8* %call, i8* %7)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmgalias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 2)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmsalias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 4)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmsalias(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %hd = alloca %struct.hashnode*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  store %struct.hashnode* %call, %struct.hashnode** %hd, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  call void %7(%struct.hashnode* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmdisralias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmdisgalias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 3)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmdissalias(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setalias(%struct.hashtable* %0, %struct.param* %1, i8* %2, i32 5)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @scanaliases(%struct.hashtable* %alht, %struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %pmflags, i32 %alflags) #0 {
entry:
  %alht.addr = alloca %struct.hashtable*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %pmflags.addr = alloca i32, align 4
  %alflags.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %al = alloca %struct.alias*, align 4
  store %struct.hashtable* %alht, %struct.hashtable** %alht.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %pmflags, i32* %pmflags.addr, align 4
  store i32 %alflags, i32* %alflags.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %1 = load i32, i32* %alflags.addr, align 4
  call void @assignaliasdefs(%struct.param* %pm, i32 %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hashtable*, %struct.hashtable** %alht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  %9 = bitcast %struct.hashnode* %8 to %struct.alias*
  store %struct.alias* %9, %struct.alias** %al, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load %struct.alias*, %struct.alias** %al, align 4
  %tobool = icmp ne %struct.alias* %10, null
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %11 = load i32, i32* %alflags.addr, align 4
  %12 = load %struct.alias*, %struct.alias** %al, align 4
  %node = getelementptr inbounds %struct.alias, %struct.alias* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %cmp3 = icmp eq i32 %11, %13
  br i1 %cmp3, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body2
  %14 = load %struct.alias*, %struct.alias** %al, align 4
  %node4 = getelementptr inbounds %struct.alias, %struct.alias* %14, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node4, i32 0, i32 1
  %15 = load i8*, i8** %nam, align 4
  %node5 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node5, i32 0, i32 1
  store i8* %15, i8** %nam6, align 4
  %16 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp7 = icmp ne void (%struct.hashnode*, i32)* %16, @scancountparams
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, i32* %pmflags.addr, align 4
  %and = and i32 %17, 17
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i32, i32* %pmflags.addr, align 4
  %and9 = and i32 %18, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct.alias*, %struct.alias** %al, align 4
  %text = getelementptr inbounds %struct.alias, %struct.alias* %19, i32 0, i32 1
  %20 = load i8*, i8** %text, align 4
  %call = call i8* @dupstring(i8* %20)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11, %lor.lhs.false, %if.then
  %21 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %22 = load i32, i32* %pmflags.addr, align 4
  call void %21(%struct.hashnode* %node12, i32 %22)
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body2
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %23 = load %struct.alias*, %struct.alias** %al, align 4
  %node14 = getelementptr inbounds %struct.alias, %struct.alias* %23, i32 0, i32 0
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 0
  %24 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  %25 = bitcast %struct.hashnode* %24 to %struct.alias*
  store %struct.alias* %25, %struct.alias** %al, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare void @scancountparams(%struct.hashnode*, i32) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getbuiltin(%struct.hashtable* %ht, i8* %name, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %dis.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %bn = alloca %struct.builtin*, align 4
  %t = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 10
  %getnode23 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode23, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %6(%struct.hashtable* %7, i8* %8)
  %9 = bitcast %struct.hashnode* %call4 to %struct.builtin*
  store %struct.builtin* %9, %struct.builtin** %bn, align 4
  %tobool = icmp ne %struct.builtin* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %dis.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node6 = getelementptr inbounds %struct.builtin, %struct.builtin* %11, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %12 = load i32, i32* %flags7, align 4
  %and = and i32 %12, 1
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then, label %if.else

cond.false:                                       ; preds = %land.lhs.true
  %13 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node9 = getelementptr inbounds %struct.builtin, %struct.builtin* %13, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %14 = load i32, i32* %flags10, align 4
  %and11 = and i32 %14, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.else, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %handlerfunc = getelementptr inbounds %struct.builtin, %struct.builtin* %15, i32 0, i32 1
  %16 = load i32 (i8*, i8**, %struct.options*, i32)*, i32 (i8*, i8**, %struct.options*, i32)** %handlerfunc, align 4
  %tobool13 = icmp ne i32 (i8*, i8**, %struct.options*, i32)* %16, null
  br i1 %tobool13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %17 = load %struct.builtin*, %struct.builtin** %bn, align 4
  %node14 = getelementptr inbounds %struct.builtin, %struct.builtin* %17, i32 0, i32 0
  %flags15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 2
  %18 = load i32, i32* %flags15, align 4
  %and16 = and i32 %18, 32
  %tobool17 = icmp ne i32 %and16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %19 = phi i1 [ true, %if.then ], [ %tobool17, %lor.rhs ]
  %cond = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)
  store i8* %cond, i8** %t, align 4
  %20 = load i8*, i8** %t, align 4
  %call18 = call i8* @dupstring(i8* %20)
  %21 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call18, i8** %str, align 8
  br label %if.end

if.else:                                          ; preds = %cond.false, %cond.true, %entry
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %u20 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 1
  %str21 = bitcast %union.anon.1* %u20 to i8**
  store i8* %call19, i8** %str21, align 8
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 0
  %flags23 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node22, i32 0, i32 2
  %24 = load i32, i32* %flags23, align 8
  %or = or i32 %24, 37748736
  store i32 %or, i32* %flags23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %25 = load %struct.param*, %struct.param** %pm, align 4
  %node24 = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 0
  ret %struct.hashnode* %node24
}

; Function Attrs: noinline nounwind
define internal void @scanbuiltins(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %dis.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %t = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* @nullsetscalar_gsu, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %8, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load i32, i32* %dis.addr, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %10 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %10, i32 0, i32 2
  %11 = load i32, i32* %flags5, align 4
  %and = and i32 %11, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.end23

cond.false:                                       ; preds = %for.body3
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 2
  %13 = load i32, i32* %flags7, align 4
  %and8 = and i32 %13, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.end23, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %14 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %14, i32 0, i32 1
  %15 = load i8*, i8** %nam, align 4
  %node10 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  store i8* %15, i8** %nam11, align 4
  %16 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp12 = icmp ne void (%struct.hashnode*, i32)* %16, @scancountparams
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %17, 17
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i32, i32* %flags.addr, align 4
  %and15 = and i32 %18, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %20 = bitcast %struct.hashnode* %19 to %struct.builtin*
  %handlerfunc = getelementptr inbounds %struct.builtin, %struct.builtin* %20, i32 0, i32 1
  %21 = load i32 (i8*, i8**, %struct.options*, i32)*, i32 (i8*, i8**, %struct.options*, i32)** %handlerfunc, align 4
  %tobool18 = icmp ne i32 (i8*, i8**, %struct.options*, i32)* %21, null
  br i1 %tobool18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then17
  %22 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags19 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %22, i32 0, i32 2
  %23 = load i32, i32* %flags19, align 4
  %and20 = and i32 %23, 32
  %tobool21 = icmp ne i32 %and20, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then17
  %24 = phi i1 [ true, %if.then17 ], [ %tobool21, %lor.rhs ]
  %cond = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)
  store i8* %cond, i8** %t, align 4
  %25 = load i8*, i8** %t, align 4
  %call = call i8* @dupstring(i8* %25)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %lor.end, %lor.lhs.false, %if.then
  %26 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node22 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %27 = load i32, i32* %flags.addr, align 4
  call void %26(%struct.hashnode* %node22, i32 %27)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %28 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %28, i32 0, i32 0
  %29 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %29, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmcommands(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %cn = alloca %struct.cmdnam*, align 4
  %v = alloca %struct.value, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end15

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool2 = icmp ne %struct.hashnode* %8, null
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i8* @zshcalloc(i32 16)
  %9 = bitcast i8* %call to %struct.cmdnam*
  store %struct.cmdnam* %9, %struct.cmdnam** %cn, align 4
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %10 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %11 = bitcast %struct.hashnode* %10 to %struct.param*
  %pm4 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %11, %struct.param** %pm4, align 4
  %12 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %12, i32 0, i32 0
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 2, i32* %flags5, align 4
  %call6 = call i8* @getstrvalue(%struct.value* %v)
  %call7 = call i8* @ztrdup(i8* %call6)
  %13 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %13, i32 0, i32 1
  %cmd = bitcast %union.anon.3* %u to i8**
  store i8* %call7, i8** %cmd, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 8
  %15 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %17, i32 0, i32 1
  %18 = load i8*, i8** %nam, align 4
  %call8 = call i8* @ztrdup(i8* %18)
  %19 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node9 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %19, i32 0, i32 0
  %20 = bitcast %struct.hashnode* %node9 to i8*
  call void %15(%struct.hashtable* %16, i8* %call8, i8* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %21, i32 0, i32 0
  %22 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %22, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %24 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %25 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u12 = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u12 to %struct.hashtable**
  %26 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp13 = icmp ne %struct.hashtable* %24, %26
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end11
  %27 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %27)
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then14, %for.end11
  ret void
}

declare i8* @zshcalloc(i32) #1

declare i8* @zhalloc(i32) #1

declare i32 @strlen(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @setpmcommand(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %cn = alloca %struct.cmdnam*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 155), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %value.addr, align 4
  call void @zsfree(i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @zshcalloc(i32 16)
  %3 = bitcast i8* %call to %struct.cmdnam*
  store %struct.cmdnam* %3, %struct.cmdnam** %cn, align 4
  %4 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %4, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 2, i32* %flags, align 4
  %5 = load i8*, i8** %value.addr, align 4
  %6 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %u = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %6, i32 0, i32 1
  %cmd = bitcast %union.anon.3* %u to i8**
  store i8* %5, i8** %cmd, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 8
  %8 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %10 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %11 = load i8*, i8** %nam, align 4
  %call2 = call i8* @ztrdup(i8* %11)
  %12 = load %struct.cmdnam*, %struct.cmdnam** %cn, align 4
  %node3 = getelementptr inbounds %struct.cmdnam, %struct.cmdnam* %12, i32 0, i32 0
  %13 = bitcast %struct.hashnode* %node3 to i8*
  call void %8(%struct.hashtable* %9, i8* %call2, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmcommand(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @cmdnamtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %7(%struct.hashnode* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @zwarn(i8*, ...) #1

declare void @zsfree(i8*) #1

; Function Attrs: noinline nounwind
define internal i8** @dirsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %call = call i8** @hlinklist2array(%union.linkroot* %0, i32 1)
  ret i8** %call
}

; Function Attrs: noinline nounwind
define internal void @dirssetfn(%struct.param* %pm, i8** %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8**, align 4
  %ox = alloca i8**, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  store i8** %0, i8*** %ox, align 4
  %1 = load i32, i32* @incleanup, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  call void @freelinklist(%union.linkroot* %2, void (i8*)* @freestr)
  %call = call %union.linkroot* @znewlinklist()
  store %union.linkroot* %call, %union.linkroot** @dirstack, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i8**, i8*** %x.addr, align 4
  %tobool1 = icmp ne i8** %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8**, i8*** %x.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %tobool2 = icmp ne i8* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %8 = load %union.linkroot*, %union.linkroot** @dirstack, align 4
  %list = bitcast %union.linkroot* %8 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %9 = load %struct.linknode*, %struct.linknode** %last, align 4
  %10 = load i8**, i8*** %x.addr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %x.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %call3 = call i8* @ztrdup(i8* %11)
  %call4 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %7, %struct.linknode* %9, i8* %call3)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %12 = load i8**, i8*** %ox, align 4
  %tobool5 = icmp ne i8** %12, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load i8**, i8*** %ox, align 4
  call void @freearray(i8** %13)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

declare i8** @hlinklist2array(%union.linkroot*, i32) #1

declare void @freelinklist(%union.linkroot*, void (i8*)*) #1

declare void @freestr(i8*) #1

declare %union.linkroot* @znewlinklist() #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare void @freearray(i8**) #1

; Function Attrs: noinline nounwind
define internal void @setpmdisraliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmdisfunctions(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setfunctions(%struct.param* %0, %struct.hashtable* %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setfunctions(%struct.param* %pm, %struct.hashtable* %ht, i32 %dis) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %dis.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %v = alloca %struct.value, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end10

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool2 = icmp ne %struct.hashnode* %8, null
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.param*
  %pm4 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %10, %struct.param** %pm4, align 4
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %11, i32 0, i32 1
  %12 = load i8*, i8** %nam, align 4
  %call = call i8* @getstrvalue(%struct.value* %v)
  %call5 = call i8* @ztrdup(i8* %call)
  %13 = load i32, i32* %dis.addr, align 4
  call void @setfunction(i8* %12, i8* %call5, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %14, i32 0, i32 0
  %15 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %15, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  %17 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u to %struct.hashtable**
  %19 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp8 = icmp ne %struct.hashtable* %17, %19
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end7
  %20 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %20)
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then9, %for.end7
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setfunction(i8* %name, i8* %val, i32 %dis) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %val.addr = alloca i8*, align 4
  %dis.addr = alloca i32, align 4
  %value = alloca i8*, align 4
  %shf = alloca %struct.shfunc*, align 4
  %prog = alloca %struct.eprog*, align 4
  %sn = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %val, i8** %val.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = load i8*, i8** %val.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  store i8* %call, i8** %value, align 4
  %1 = load i8*, i8** %val.addr, align 4
  %2 = load i8*, i8** %val.addr, align 4
  %call1 = call i32 @strlen(i8* %2)
  %call2 = call i8* @metafy(i8* %1, i32 %call1, i32 0)
  store i8* %call2, i8** %val.addr, align 4
  %3 = load i8*, i8** %val.addr, align 4
  %call3 = call %struct.eprog* @parse_string(i8* %3, i32 1)
  store %struct.eprog* %call3, %struct.eprog** %prog, align 4
  %4 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %tobool = icmp ne %struct.eprog* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %cmp = icmp eq %struct.eprog* %5, @dummy_eprog
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %value, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %7)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i8* @zshcalloc(i32 32)
  %8 = bitcast i8* %call4 to %struct.shfunc*
  store %struct.shfunc* %8, %struct.shfunc** %shf, align 4
  %9 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %call5 = call %struct.eprog* @dupeprog(%struct.eprog* %9, i32 0)
  %10 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %10, i32 0, i32 3
  store %struct.eprog* %call5, %struct.eprog** %funcdef, align 4
  %11 = load i32, i32* %dis.addr, align 4
  %12 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node = getelementptr inbounds %struct.shfunc, %struct.shfunc* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 %11, i32* %flags, align 4
  %13 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  call void @shfunc_set_sticky(%struct.shfunc* %13)
  %14 = load i8*, i8** %name.addr, align 4
  %call6 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 4)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %name.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %15, i32 4
  %call8 = call i32 @getsignum(i8* %add.ptr)
  store i32 %call8, i32* %sn, align 4
  %cmp9 = icmp ne i32 %call8, -1
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %sn, align 4
  %call11 = call i32 @settrap(i32 %16, %struct.eprog* null, i32 4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %17 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef14 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %17, i32 0, i32 3
  %18 = load %struct.eprog*, %struct.eprog** %funcdef14, align 4
  call void @freeeprog(%struct.eprog* %18)
  %19 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %20 = bitcast %struct.shfunc* %19 to i8*
  call void @zfree(i8* %20, i32 32)
  %21 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %21)
  br label %return

if.end15:                                         ; preds = %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end
  %22 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 8
  %23 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %24 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %25 = load i8*, i8** %name.addr, align 4
  %call17 = call i8* @ztrdup(i8* %25)
  %26 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %27 = bitcast %struct.shfunc* %26 to i8*
  call void %23(%struct.hashtable* %24, i8* %call17, i8* %27)
  %28 = load i8*, i8** %val.addr, align 4
  call void @zsfree(i8* %28)
  br label %return

return:                                           ; preds = %if.end16, %if.then13, %if.then
  ret void
}

declare i8* @metafy(i8*, i32, i32) #1

declare %struct.eprog* @parse_string(i8*, i32) #1

declare %struct.eprog* @dupeprog(%struct.eprog*, i32) #1

declare void @shfunc_set_sticky(%struct.shfunc*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

declare i32 @getsignum(i8*) #1

declare i32 @settrap(i32, %struct.eprog*, i32) #1

declare void @freeeprog(%struct.eprog*) #1

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getfunction(%struct.hashtable* %ht, i8* %name, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %dis.addr = alloca i32, align 4
  %shf = alloca %struct.shfunc*, align 4
  %pm = alloca %struct.param*, align 4
  %t = alloca i8*, align 4
  %n = alloca i8*, align 4
  %h = alloca i8*, align 4
  %start = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 0, i32* %flags, align 8
  %4 = load i32, i32* %dis.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, %struct.gsu_scalar* @pmdisfunction_gsu, %struct.gsu_scalar* @pmfunction_gsu
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* %cond, %struct.gsu_scalar** %s, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  %getnode23 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode23, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %9 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %7(%struct.hashtable* %8, i8* %9)
  %10 = bitcast %struct.hashnode* %call4 to %struct.shfunc*
  store %struct.shfunc* %10, %struct.shfunc** %shf, align 4
  %tobool5 = icmp ne %struct.shfunc* %10, null
  br i1 %tobool5, label %land.lhs.true, label %if.else71

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %dis.addr, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node7 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %12, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %13 = load i32, i32* %flags8, align 4
  %and = and i32 %13, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then, label %if.else71

cond.false:                                       ; preds = %land.lhs.true
  %14 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node10 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %15 = load i32, i32* %flags11, align 4
  %and12 = and i32 %15, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.else71, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %16 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node14 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %16, i32 0, i32 0
  %flags15 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node14, i32 0, i32 2
  %17 = load i32, i32* %flags15, align 4
  %and16 = and i32 %17, 512
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then
  %18 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node19 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %18, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %19 = load i32, i32* %flags20, align 4
  %and21 = and i32 %19, 8192
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false29

cond.true23:                                      ; preds = %if.then18
  %20 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node24 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %20, i32 0, i32 0
  %flags25 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node24, i32 0, i32 2
  %21 = load i32, i32* %flags25, align 4
  %and26 = and i32 %21, 2048
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)
  br label %cond.end

cond.false29:                                     ; preds = %if.then18
  %22 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node30 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %22, i32 0, i32 0
  %flags31 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node30, i32 0, i32 2
  %23 = load i32, i32* %flags31, align 4
  %and32 = and i32 %23, 2048
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false29, %cond.true23
  %cond35 = phi i8* [ %cond28, %cond.true23 ], [ %cond34, %cond.false29 ]
  %call36 = call i8* @dyncat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* %cond35)
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call36, i8** %str, align 8
  br label %if.end70

if.else:                                          ; preds = %if.then
  %25 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %25, i32 0, i32 3
  %26 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %call37 = call i8* @getpermtext(%struct.eprog* %26, i32* null, i32 1)
  store i8* %call37, i8** %t, align 4
  %27 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %redir = getelementptr inbounds %struct.shfunc, %struct.shfunc* %27, i32 0, i32 4
  %28 = load %struct.eprog*, %struct.eprog** %redir, align 4
  %tobool38 = icmp ne %struct.eprog* %28, null
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8** %start, align 4
  br label %if.end

if.else40:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8** %start, align 4
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then39
  %29 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %funcdef41 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %29, i32 0, i32 3
  %30 = load %struct.eprog*, %struct.eprog** %funcdef41, align 4
  %flags42 = getelementptr inbounds %struct.eprog, %struct.eprog* %30, i32 0, i32 0
  %31 = load i32, i32* %flags42, align 4
  %and43 = and i32 %31, 8
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then45, label %if.else58

if.then45:                                        ; preds = %if.end
  %32 = load i8*, i8** %name.addr, align 4
  %call46 = call i8* @nicedupstring(i8* %32)
  store i8* %call46, i8** %n, align 4
  %33 = load i8*, i8** %start, align 4
  %call47 = call i32 @strlen(i8* %33)
  %34 = load i8*, i8** %t, align 4
  %call48 = call i32 @strlen(i8* %34)
  %add = add i32 %call47, %call48
  %35 = load i8*, i8** %n, align 4
  %call49 = call i32 @strlen(i8* %35)
  %add50 = add i32 %add, %call49
  %add51 = add i32 %add50, 8
  %call52 = call i8* @zhalloc(i32 %add51)
  store i8* %call52, i8** %h, align 4
  %36 = load i8*, i8** %h, align 4
  %37 = load i8*, i8** %start, align 4
  %call53 = call i8* @strcpy(i8* %36, i8* %37)
  %38 = load i8*, i8** %h, align 4
  %39 = load i8*, i8** %t, align 4
  %call54 = call i8* @strcat(i8* %38, i8* %39)
  %40 = load i8*, i8** %h, align 4
  %call55 = call i8* @strcat(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0))
  %41 = load i8*, i8** %h, align 4
  %42 = load i8*, i8** %n, align 4
  %call56 = call i8* @strcat(i8* %41, i8* %42)
  %43 = load i8*, i8** %h, align 4
  %call57 = call i8* @strcat(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end60

if.else58:                                        ; preds = %if.end
  %44 = load i8*, i8** %start, align 4
  %45 = load i8*, i8** %t, align 4
  %call59 = call i8* @dyncat(i8* %44, i8* %45)
  store i8* %call59, i8** %h, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then45
  %46 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %46)
  %47 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %redir61 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %47, i32 0, i32 4
  %48 = load %struct.eprog*, %struct.eprog** %redir61, align 4
  %tobool62 = icmp ne %struct.eprog* %48, null
  br i1 %tobool62, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end60
  %49 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %redir64 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %49, i32 0, i32 4
  %50 = load %struct.eprog*, %struct.eprog** %redir64, align 4
  %call65 = call i8* @getpermtext(%struct.eprog* %50, i32* null, i32 1)
  store i8* %call65, i8** %t, align 4
  %51 = load i8*, i8** %h, align 4
  %52 = load i8*, i8** %t, align 4
  %call66 = call i8* @zhtricat(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* %52)
  store i8* %call66, i8** %h, align 4
  %53 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %53)
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end60
  %54 = load i8*, i8** %h, align 4
  %55 = load %struct.param*, %struct.param** %pm, align 4
  %u68 = getelementptr inbounds %struct.param, %struct.param* %55, i32 0, i32 1
  %str69 = bitcast %union.anon.1* %u68 to i8**
  store i8* %54, i8** %str69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %cond.end
  br label %if.end77

if.else71:                                        ; preds = %cond.false, %cond.true, %entry
  %call72 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %56 = load %struct.param*, %struct.param** %pm, align 4
  %u73 = getelementptr inbounds %struct.param, %struct.param* %56, i32 0, i32 1
  %str74 = bitcast %union.anon.1* %u73 to i8**
  store i8* %call72, i8** %str74, align 8
  %57 = load %struct.param*, %struct.param** %pm, align 4
  %node75 = getelementptr inbounds %struct.param, %struct.param* %57, i32 0, i32 0
  %flags76 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node75, i32 0, i32 2
  %58 = load i32, i32* %flags76, align 8
  %or = or i32 %58, 37748736
  store i32 %or, i32* %flags76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.end70
  %59 = load %struct.param*, %struct.param** %pm, align 4
  %node78 = getelementptr inbounds %struct.param, %struct.param* %59, i32 0, i32 0
  ret %struct.hashnode* %node78
}

declare i8* @dyncat(i8*, i8*) #1

declare i8* @getpermtext(%struct.eprog*, i32*, i32) #1

declare i8* @nicedupstring(i8*) #1

declare i8* @zhtricat(i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @setpmdisfunction(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setfunction(i8* %1, i8* %2, i32 1)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmfunction(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  call void %7(%struct.hashnode* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmfunction(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %2 = load i8*, i8** %value.addr, align 4
  call void @setfunction(i8* %1, i8* %2, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @scanfunctions(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %dis.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %shf = alloca %struct.shfunc*, align 4
  %shf41 = alloca %struct.shfunc*, align 4
  %t = alloca i8*, align 4
  %n = alloca i8*, align 4
  %start = alloca i8*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags1, align 8
  %1 = load i32, i32* %dis.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, %struct.gsu_scalar* @pmdisfunction_gsu, %struct.gsu_scalar* @pmfunction_gsu
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* %cond, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc96, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %8, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool3 = icmp ne %struct.hashnode* %9, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, i32* %dis.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body4
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %11, i32 0, i32 2
  %12 = load i32, i32* %flags6, align 4
  %and = and i32 %12, 1
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then, label %if.end95

cond.false:                                       ; preds = %for.body4
  %13 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %13, i32 0, i32 2
  %14 = load i32, i32* %flags8, align 4
  %and9 = and i32 %14, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end95, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %node11 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  store i8* %16, i8** %nam12, align 4
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp13 = icmp ne void (%struct.hashnode*, i32)* %17, @scancountparams
  br i1 %cmp13, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %if.then
  %18 = load i32, i32* %flags.addr, align 4
  %and14 = and i32 %18, 17
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %19, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end93, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %21 = bitcast %struct.hashnode* %20 to %struct.shfunc*
  %node19 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %21, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %22 = load i32, i32* %flags20, align 4
  %and21 = and i32 %22, 512
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then18
  %23 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %24 = bitcast %struct.hashnode* %23 to %struct.shfunc*
  store %struct.shfunc* %24, %struct.shfunc** %shf, align 4
  %25 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node24 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %25, i32 0, i32 0
  %flags25 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node24, i32 0, i32 2
  %26 = load i32, i32* %flags25, align 4
  %and26 = and i32 %26, 8192
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false34

cond.true28:                                      ; preds = %if.then23
  %27 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node29 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %27, i32 0, i32 0
  %flags30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node29, i32 0, i32 2
  %28 = load i32, i32* %flags30, align 4
  %and31 = and i32 %28, 2048
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)
  br label %cond.end

cond.false34:                                     ; preds = %if.then23
  %29 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node35 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %29, i32 0, i32 0
  %flags36 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node35, i32 0, i32 2
  %30 = load i32, i32* %flags36, align 4
  %and37 = and i32 %30, 2048
  %tobool38 = icmp ne i32 %and37, 0
  %cond39 = select i1 %tobool38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false34, %cond.true28
  %cond40 = phi i8* [ %cond33, %cond.true28 ], [ %cond39, %cond.false34 ]
  %call = call i8* @dyncat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* %cond40)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  br label %if.end92

if.else:                                          ; preds = %if.then18
  %31 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %32 = bitcast %struct.hashnode* %31 to %struct.shfunc*
  store %struct.shfunc* %32, %struct.shfunc** %shf41, align 4
  %33 = load %struct.shfunc*, %struct.shfunc** %shf41, align 4
  %funcdef = getelementptr inbounds %struct.shfunc, %struct.shfunc* %33, i32 0, i32 3
  %34 = load %struct.eprog*, %struct.eprog** %funcdef, align 4
  %call42 = call i8* @getpermtext(%struct.eprog* %34, i32* null, i32 1)
  store i8* %call42, i8** %t, align 4
  %35 = load %struct.shfunc*, %struct.shfunc** %shf41, align 4
  %redir = getelementptr inbounds %struct.shfunc, %struct.shfunc* %35, i32 0, i32 4
  %36 = load %struct.eprog*, %struct.eprog** %redir, align 4
  %tobool43 = icmp ne %struct.eprog* %36, null
  br i1 %tobool43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8** %start, align 4
  br label %if.end

if.else45:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8** %start, align 4
  br label %if.end

if.end:                                           ; preds = %if.else45, %if.then44
  %37 = load %struct.shfunc*, %struct.shfunc** %shf41, align 4
  %funcdef46 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %37, i32 0, i32 3
  %38 = load %struct.eprog*, %struct.eprog** %funcdef46, align 4
  %flags47 = getelementptr inbounds %struct.eprog, %struct.eprog* %38, i32 0, i32 0
  %39 = load i32, i32* %flags47, align 4
  %and48 = and i32 %39, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.end
  %40 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam51 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %40, i32 0, i32 1
  %41 = load i8*, i8** %nam51, align 4
  %call52 = call i8* @nicedupstring(i8* %41)
  store i8* %call52, i8** %n, align 4
  %42 = load i8*, i8** %start, align 4
  %call53 = call i32 @strlen(i8* %42)
  %43 = load i8*, i8** %t, align 4
  %call54 = call i32 @strlen(i8* %43)
  %add = add i32 %call53, %call54
  %44 = load i8*, i8** %n, align 4
  %call55 = call i32 @strlen(i8* %44)
  %add56 = add i32 %add, %call55
  %add57 = add i32 %add56, 8
  %call58 = call i8* @zhalloc(i32 %add57)
  %u59 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str60 = bitcast %union.anon.1* %u59 to i8**
  store i8* %call58, i8** %str60, align 8
  %u61 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str62 = bitcast %union.anon.1* %u61 to i8**
  %45 = load i8*, i8** %str62, align 8
  %46 = load i8*, i8** %start, align 4
  %call63 = call i8* @strcpy(i8* %45, i8* %46)
  %u64 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str65 = bitcast %union.anon.1* %u64 to i8**
  %47 = load i8*, i8** %str65, align 8
  %48 = load i8*, i8** %t, align 4
  %call66 = call i8* @strcat(i8* %47, i8* %48)
  %u67 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str68 = bitcast %union.anon.1* %u67 to i8**
  %49 = load i8*, i8** %str68, align 8
  %call69 = call i8* @strcat(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0))
  %u70 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str71 = bitcast %union.anon.1* %u70 to i8**
  %50 = load i8*, i8** %str71, align 8
  %51 = load i8*, i8** %n, align 4
  %call72 = call i8* @strcat(i8* %50, i8* %51)
  %u73 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str74 = bitcast %union.anon.1* %u73 to i8**
  %52 = load i8*, i8** %str74, align 8
  %call75 = call i8* @strcat(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end80

if.else76:                                        ; preds = %if.end
  %53 = load i8*, i8** %start, align 4
  %54 = load i8*, i8** %t, align 4
  %call77 = call i8* @dyncat(i8* %53, i8* %54)
  %u78 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str79 = bitcast %union.anon.1* %u78 to i8**
  store i8* %call77, i8** %str79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then50
  %55 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %55)
  %56 = load %struct.shfunc*, %struct.shfunc** %shf41, align 4
  %redir81 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %56, i32 0, i32 4
  %57 = load %struct.eprog*, %struct.eprog** %redir81, align 4
  %tobool82 = icmp ne %struct.eprog* %57, null
  br i1 %tobool82, label %if.then83, label %if.end91

if.then83:                                        ; preds = %if.end80
  %58 = load %struct.shfunc*, %struct.shfunc** %shf41, align 4
  %redir84 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %58, i32 0, i32 4
  %59 = load %struct.eprog*, %struct.eprog** %redir84, align 4
  %call85 = call i8* @getpermtext(%struct.eprog* %59, i32* null, i32 1)
  store i8* %call85, i8** %t, align 4
  %u86 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str87 = bitcast %union.anon.1* %u86 to i8**
  %60 = load i8*, i8** %str87, align 8
  %61 = load i8*, i8** %t, align 4
  %call88 = call i8* @zhtricat(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* %61)
  %u89 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str90 = bitcast %union.anon.1* %u89 to i8**
  store i8* %call88, i8** %str90, align 8
  %62 = load i8*, i8** %t, align 4
  call void @zsfree(i8* %62)
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %if.end80
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %cond.end
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %lor.lhs.false, %if.then
  %63 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node94 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %64 = load i32, i32* %flags.addr, align 4
  call void %63(%struct.hashnode* %node94, i32 %64)
  br label %if.end95

if.end95:                                         ; preds = %if.end93, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %65 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %65, i32 0, i32 0
  %66 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %66, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc96

for.inc96:                                        ; preds = %for.end
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end97:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getfunction_source(%struct.hashtable* %ht, i8* %name, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %name.addr = alloca i8*, align 4
  %dis.addr = alloca i32, align 4
  %shf = alloca %struct.shfunc*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  store %struct.param* null, %struct.param** %pm, align 4
  %call = call i8* @hcalloc(i32 56)
  %0 = bitcast i8* %call to %struct.param*
  store %struct.param* %0, %struct.param** %pm, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @dupstring(i8* %1)
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  store i8* %call1, i8** %nam, align 4
  %3 = load %struct.param*, %struct.param** %pm, align 4
  %node2 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node2, i32 0, i32 2
  store i32 1024, i32* %flags, align 8
  %4 = load i32, i32* %dis.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, %struct.gsu_scalar* @pmdisfunction_gsu, %struct.gsu_scalar* @pmfunction_gsu
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* %cond, %struct.gsu_scalar** %s, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 10
  %getnode23 = bitcast {}** %getnode2 to %struct.hashnode* (%struct.hashtable*, i8*)**
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode23, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %9 = load i8*, i8** %name.addr, align 4
  %call4 = call %struct.hashnode* %7(%struct.hashtable* %8, i8* %9)
  %10 = bitcast %struct.hashnode* %call4 to %struct.shfunc*
  store %struct.shfunc* %10, %struct.shfunc** %shf, align 4
  %tobool5 = icmp ne %struct.shfunc* %10, null
  br i1 %tobool5, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %dis.addr, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node7 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %12, i32 0, i32 0
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 2
  %13 = load i32, i32* %flags8, align 4
  %and = and i32 %13, 1
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then, label %if.end22

cond.false:                                       ; preds = %land.lhs.true
  %14 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %node10 = getelementptr inbounds %struct.shfunc, %struct.shfunc* %14, i32 0, i32 0
  %flags11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 2
  %15 = load i32, i32* %flags11, align 4
  %and12 = and i32 %15, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end22, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %16 = load %struct.shfunc*, %struct.shfunc** %shf, align 4
  %call14 = call i8* @getshfuncfile(%struct.shfunc* %16)
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call14, i8** %str, align 8
  %18 = load %struct.param*, %struct.param** %pm, align 4
  %u15 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 1
  %str16 = bitcast %union.anon.1* %u15 to i8**
  %19 = load i8*, i8** %str16, align 8
  %tobool17 = icmp ne i8* %19, null
  br i1 %tobool17, label %if.end, label %if.then18

if.then18:                                        ; preds = %if.then
  %call19 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %20 = load %struct.param*, %struct.param** %pm, align 4
  %u20 = getelementptr inbounds %struct.param, %struct.param* %20, i32 0, i32 1
  %str21 = bitcast %union.anon.1* %u20 to i8**
  store i8* %call19, i8** %str21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  br label %if.end22

if.end22:                                         ; preds = %if.end, %cond.false, %cond.true, %entry
  %21 = load %struct.param*, %struct.param** %pm, align 4
  %node23 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  ret %struct.hashnode* %node23
}

declare i8* @getshfuncfile(%struct.shfunc*) #1

; Function Attrs: noinline nounwind
define internal void @scanfunctions_source(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %func, i32 %flags, i32 %dis) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %func.addr = alloca void (%struct.hashnode*, i32)*, align 4
  %flags.addr = alloca i32, align 4
  %dis.addr = alloca i32, align 4
  %pm = alloca %struct.param, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store void (%struct.hashnode*, i32)* %func, void (%struct.hashnode*, i32)** %func.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = bitcast %struct.param* %pm to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 56, i32 8, i1 false)
  %node = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 1024, i32* %flags1, align 8
  %1 = load i32, i32* %dis.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, %struct.gsu_scalar* @pmdisfunction_gsu, %struct.gsu_scalar* @pmfunction_gsu
  %gsu = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  store %struct.gsu_scalar* %cond, %struct.gsu_scalar** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 0
  %4 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hashtable*, %struct.hashtable** @shfunctab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 2
  %6 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %6, i32 %7
  %8 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %8, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool3 = icmp ne %struct.hashnode* %9, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, i32* %dis.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body4
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags6 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %11, i32 0, i32 2
  %12 = load i32, i32* %flags6, align 4
  %and = and i32 %12, 1
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then, label %if.end28

cond.false:                                       ; preds = %for.body4
  %13 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %13, i32 0, i32 2
  %14 = load i32, i32* %flags8, align 4
  %and9 = and i32 %14, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end28, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %node11 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %nam12 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node11, i32 0, i32 1
  store i8* %16, i8** %nam12, align 4
  %17 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %cmp13 = icmp ne void (%struct.hashnode*, i32)* %17, @scancountparams
  br i1 %cmp13, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.then
  %18 = load i32, i32* %flags.addr, align 4
  %and14 = and i32 %18, 17
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %19, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end26, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %21 = bitcast %struct.hashnode* %20 to %struct.shfunc*
  %call = call i8* @getshfuncfile(%struct.shfunc* %21)
  %u = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon.1* %u to i8**
  store i8* %call, i8** %str, align 8
  %u19 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str20 = bitcast %union.anon.1* %u19 to i8**
  %22 = load i8*, i8** %str20, align 8
  %tobool21 = icmp ne i8* %22, null
  br i1 %tobool21, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.then18
  %call23 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  %u24 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 1
  %str25 = bitcast %union.anon.1* %u24 to i8**
  store i8* %call23, i8** %str25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end, %lor.lhs.false, %if.then
  %23 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %func.addr, align 4
  %node27 = getelementptr inbounds %struct.param, %struct.param* %pm, i32 0, i32 0
  %24 = load i32, i32* %flags.addr, align 4
  call void %23(%struct.hashnode* %node27, i32 %24)
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %25 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %25, i32 0, i32 0
  %26 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %26, %struct.hashnode** %hn, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmdisgaliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 3)
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @dispatcharsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8** @getpatchars(i32 1)
  ret i8** %call
}

declare void @arrsetfn(%struct.param*, i8**) #1

; Function Attrs: noinline nounwind
define internal i8** @getpatchars(i32 %dis) #0 {
entry:
  %dis.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %call = call i8* @zhalloc(i32 76)
  %0 = bitcast i8* %call to i8**
  store i8** %0, i8*** %ret, align 4
  store i8** %0, i8*** %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 %2
  %3 = load i8*, i8** %arrayidx, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %dis.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  %5 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 %5
  %6 = load i8, i8* %arrayidx2, align 1
  %tobool3 = icmp ne i8 %6, 0
  %lnot4 = xor i1 %tobool3, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %cmp6 = icmp eq i32 %lnot.ext, %lnot.ext5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 %7
  %8 = load i8*, i8** %arrayidx7, align 4
  %call8 = call i8* @dupstring(i8* %8)
  %9 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  store i8* %call8, i8** %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** %p, align 4
  store i8* null, i8** %11, align 4
  %12 = load i8**, i8*** %ret, align 4
  ret i8** %12
}

; Function Attrs: noinline nounwind
define internal i8** @disreswordsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8** @getreswords(i32 1)
  ret i8** %call
}

; Function Attrs: noinline nounwind
define internal i8** @getreswords(i32 %dis) #0 {
entry:
  %dis.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  store i32 %dis, i32* %dis.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %ct = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 1
  %1 = load i32, i32* %ct, align 4
  %add = add nsw i32 %1, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %ret, align 4
  store i8** %2, i8*** %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 0
  %5 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 2
  %7 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %8 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %7, i32 %8
  %9 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %9, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool = icmp ne %struct.hashnode* %10, null
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %11 = load i32, i32* %dis.addr, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body2
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %12, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.end

cond.false:                                       ; preds = %for.body2
  %14 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %flags5 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %14, i32 0, i32 2
  %15 = load i32, i32* %flags5, align 4
  %and6 = and i32 %15, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %16 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %16, i32 0, i32 1
  %17 = load i8*, i8** %nam, align 4
  %call8 = call i8* @dupstring(i8* %17)
  %18 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  store i8* %call8, i8** %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %19, i32 0, i32 0
  %20 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %20, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %22 = load i8**, i8*** %p, align 4
  store i8* null, i8** %22, align 4
  %23 = load i8**, i8*** %ret, align 4
  ret i8** %23
}

; Function Attrs: noinline nounwind
define internal void @setpmdissaliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 5)
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @funcfiletracegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %f = alloca %struct.funcstack*, align 4
  %num = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  %colonpair = alloca i8*, align 4
  %fname = alloca i8*, align 4
  %flineno = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %0, %struct.funcstack** %f, align 4
  store i32 0, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool = icmp ne %struct.funcstack* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %2, i32 0, i32 0
  %3 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %3, %struct.funcstack** %f, align 4
  %4 = load i32, i32* %num, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4
  %add = add nsw i32 %5, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ret, align 4
  %7 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %7, %struct.funcstack** %f, align 4
  %8 = load i8**, i8*** %ret, align 4
  store i8** %8, i8*** %p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc34, %for.end
  %9 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool2 = icmp ne %struct.funcstack* %9, null
  br i1 %tobool2, label %for.body3, label %for.end36

for.body3:                                        ; preds = %for.cond1
  %10 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev4 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %10, i32 0, i32 0
  %11 = load %struct.funcstack*, %struct.funcstack** %prev4, align 4
  %tobool5 = icmp ne %struct.funcstack* %11, null
  br i1 %tobool5, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body3
  %12 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev6 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %12, i32 0, i32 0
  %13 = load %struct.funcstack*, %struct.funcstack** %prev6, align 4
  %tp = getelementptr inbounds %struct.funcstack, %struct.funcstack* %13, i32 0, i32 6
  %14 = load i32, i32* %tp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body3
  %15 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %caller = getelementptr inbounds %struct.funcstack, %struct.funcstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %caller, align 4
  %call7 = call i32 @strlen(i8* %16)
  %17 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %lineno = getelementptr inbounds %struct.funcstack, %struct.funcstack* %17, i32 0, i32 5
  %18 = load i32, i32* %lineno, align 4
  %cmp8 = icmp sgt i32 %18, 9999
  %cond = select i1 %cmp8, i32 24, i32 6
  %add9 = add i32 %call7, %cond
  %call10 = call i8* @zhalloc(i32 %add9)
  store i8* %call10, i8** %colonpair, align 4
  %19 = load i8*, i8** %colonpair, align 4
  %20 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %caller11 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %caller11, align 4
  %22 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %lineno12 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %22, i32 0, i32 5
  %23 = load i32, i32* %lineno12, align 4
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %21, i32 %23)
  br label %if.end33

if.else:                                          ; preds = %lor.lhs.false
  %24 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev14 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %24, i32 0, i32 0
  %25 = load %struct.funcstack*, %struct.funcstack** %prev14, align 4
  %flineno15 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %25, i32 0, i32 4
  %26 = load i32, i32* %flineno15, align 4
  %27 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %lineno16 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %27, i32 0, i32 5
  %28 = load i32, i32* %lineno16, align 4
  %add17 = add nsw i32 %26, %28
  store i32 %add17, i32* %flineno, align 4
  %29 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev18 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %29, i32 0, i32 0
  %30 = load %struct.funcstack*, %struct.funcstack** %prev18, align 4
  %tp19 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %30, i32 0, i32 6
  %31 = load i32, i32* %tp19, align 4
  %cmp20 = icmp eq i32 %31, 2
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else
  %32 = load i32, i32* %flineno, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %flineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else
  %33 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev22 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %33, i32 0, i32 0
  %34 = load %struct.funcstack*, %struct.funcstack** %prev22, align 4
  %filename = getelementptr inbounds %struct.funcstack, %struct.funcstack* %34, i32 0, i32 2
  %35 = load i8*, i8** %filename, align 4
  %tobool23 = icmp ne i8* %35, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %36 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev24 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %36, i32 0, i32 0
  %37 = load %struct.funcstack*, %struct.funcstack** %prev24, align 4
  %filename25 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %37, i32 0, i32 2
  %38 = load i8*, i8** %filename25, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i8* [ %38, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), %cond.false ]
  store i8* %cond26, i8** %fname, align 4
  %39 = load i8*, i8** %fname, align 4
  %call27 = call i32 @strlen(i8* %39)
  %40 = load i32, i32* %flineno, align 4
  %cmp28 = icmp sgt i32 %40, 9999
  %cond29 = select i1 %cmp28, i32 24, i32 6
  %add30 = add i32 %call27, %cond29
  %call31 = call i8* @zhalloc(i32 %add30)
  store i8* %call31, i8** %colonpair, align 4
  %41 = load i8*, i8** %colonpair, align 4
  %42 = load i8*, i8** %fname, align 4
  %43 = load i32, i32* %flineno, align 4
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %42, i32 %43)
  br label %if.end33

if.end33:                                         ; preds = %cond.end, %if.then
  %44 = load i8*, i8** %colonpair, align 4
  %45 = load i8**, i8*** %p, align 4
  store i8* %44, i8** %45, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %46 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev35 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %46, i32 0, i32 0
  %47 = load %struct.funcstack*, %struct.funcstack** %prev35, align 4
  store %struct.funcstack* %47, %struct.funcstack** %f, align 4
  %48 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond1

for.end36:                                        ; preds = %for.cond1
  %49 = load i8**, i8*** %p, align 4
  store i8* null, i8** %49, align 4
  %50 = load i8**, i8*** %ret, align 4
  ret i8** %50
}

declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i8** @funcsourcetracegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %f = alloca %struct.funcstack*, align 4
  %num = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  %colonpair = alloca i8*, align 4
  %fname = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %0, %struct.funcstack** %f, align 4
  store i32 0, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool = icmp ne %struct.funcstack* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %2, i32 0, i32 0
  %3 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %3, %struct.funcstack** %f, align 4
  %4 = load i32, i32* %num, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4
  %add = add nsw i32 %5, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ret, align 4
  %7 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %7, %struct.funcstack** %f, align 4
  %8 = load i8**, i8*** %ret, align 4
  store i8** %8, i8*** %p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.end
  %9 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool2 = icmp ne %struct.funcstack* %9, null
  br i1 %tobool2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  %10 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %filename = getelementptr inbounds %struct.funcstack, %struct.funcstack* %10, i32 0, i32 2
  %11 = load i8*, i8** %filename, align 4
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %12 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %filename5 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %12, i32 0, i32 2
  %13 = load i8*, i8** %filename5, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %fname, align 4
  %14 = load i8*, i8** %fname, align 4
  %call6 = call i32 @strlen(i8* %14)
  %15 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %flineno = getelementptr inbounds %struct.funcstack, %struct.funcstack* %15, i32 0, i32 4
  %16 = load i32, i32* %flineno, align 4
  %cmp = icmp sgt i32 %16, 9999
  %cond7 = select i1 %cmp, i32 24, i32 6
  %add8 = add i32 %call6, %cond7
  %call9 = call i8* @zhalloc(i32 %add8)
  store i8* %call9, i8** %colonpair, align 4
  %17 = load i8*, i8** %colonpair, align 4
  %18 = load i8*, i8** %fname, align 4
  %19 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %flineno10 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %19, i32 0, i32 4
  %20 = load i32, i32* %flineno10, align 4
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %18, i32 %20)
  %21 = load i8*, i8** %colonpair, align 4
  %22 = load i8**, i8*** %p, align 4
  store i8* %21, i8** %22, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %cond.end
  %23 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev13 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %23, i32 0, i32 0
  %24 = load %struct.funcstack*, %struct.funcstack** %prev13, align 4
  store %struct.funcstack* %24, %struct.funcstack** %f, align 4
  %25 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond1

for.end14:                                        ; preds = %for.cond1
  %26 = load i8**, i8*** %p, align 4
  store i8* null, i8** %26, align 4
  %27 = load i8**, i8*** %ret, align 4
  ret i8** %27
}

; Function Attrs: noinline nounwind
define internal i8** @funcstackgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %f = alloca %struct.funcstack*, align 4
  %num = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %0, %struct.funcstack** %f, align 4
  store i32 0, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool = icmp ne %struct.funcstack* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %2, i32 0, i32 0
  %3 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %3, %struct.funcstack** %f, align 4
  %4 = load i32, i32* %num, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4
  %add = add nsw i32 %5, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ret, align 4
  %7 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %7, %struct.funcstack** %f, align 4
  %8 = load i8**, i8*** %ret, align 4
  store i8** %8, i8*** %p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc4, %for.end
  %9 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool2 = icmp ne %struct.funcstack* %9, null
  br i1 %tobool2, label %for.body3, label %for.end6

for.body3:                                        ; preds = %for.cond1
  %10 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %name = getelementptr inbounds %struct.funcstack, %struct.funcstack* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 4
  %12 = load i8**, i8*** %p, align 4
  store i8* %11, i8** %12, align 4
  br label %for.inc4

for.inc4:                                         ; preds = %for.body3
  %13 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev5 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %13, i32 0, i32 0
  %14 = load %struct.funcstack*, %struct.funcstack** %prev5, align 4
  store %struct.funcstack* %14, %struct.funcstack** %f, align 4
  %15 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond1

for.end6:                                         ; preds = %for.cond1
  %16 = load i8**, i8*** %p, align 4
  store i8* null, i8** %16, align 4
  %17 = load i8**, i8*** %ret, align 4
  ret i8** %17
}

; Function Attrs: noinline nounwind
define internal void @setpmfunctions(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setfunctions(%struct.param* %0, %struct.hashtable* %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @functracegetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %f = alloca %struct.funcstack*, align 4
  %num = alloca i32, align 4
  %ret = alloca i8**, align 4
  %p = alloca i8**, align 4
  %colonpair = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %0, %struct.funcstack** %f, align 4
  store i32 0, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool = icmp ne %struct.funcstack* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev = getelementptr inbounds %struct.funcstack, %struct.funcstack* %2, i32 0, i32 0
  %3 = load %struct.funcstack*, %struct.funcstack** %prev, align 4
  store %struct.funcstack* %3, %struct.funcstack** %f, align 4
  %4 = load i32, i32* %num, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4
  %add = add nsw i32 %5, 1
  %mul = mul i32 %add, 4
  %call = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call to i8**
  store i8** %6, i8*** %ret, align 4
  %7 = load %struct.funcstack*, %struct.funcstack** @funcstack, align 4
  store %struct.funcstack* %7, %struct.funcstack** %f, align 4
  %8 = load i8**, i8*** %ret, align 4
  store i8** %8, i8*** %p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %9 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %tobool2 = icmp ne %struct.funcstack* %9, null
  br i1 %tobool2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %10 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %caller = getelementptr inbounds %struct.funcstack, %struct.funcstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %caller, align 4
  %call4 = call i32 @strlen(i8* %11)
  %12 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %lineno = getelementptr inbounds %struct.funcstack, %struct.funcstack* %12, i32 0, i32 5
  %13 = load i32, i32* %lineno, align 4
  %cmp = icmp sgt i32 %13, 9999
  %cond = select i1 %cmp, i32 24, i32 6
  %add5 = add i32 %call4, %cond
  %call6 = call i8* @zhalloc(i32 %add5)
  store i8* %call6, i8** %colonpair, align 4
  %14 = load i8*, i8** %colonpair, align 4
  %15 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %caller7 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %caller7, align 4
  %17 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %lineno8 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %17, i32 0, i32 5
  %18 = load i32, i32* %lineno8, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %16, i32 %18)
  %19 = load i8*, i8** %colonpair, align 4
  %20 = load i8**, i8*** %p, align 4
  store i8* %19, i8** %20, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body3
  %21 = load %struct.funcstack*, %struct.funcstack** %f, align 4
  %prev11 = getelementptr inbounds %struct.funcstack, %struct.funcstack* %21, i32 0, i32 0
  %22 = load %struct.funcstack*, %struct.funcstack** %prev11, align 4
  store %struct.funcstack* %22, %struct.funcstack** %f, align 4
  %23 = load i8**, i8*** %p, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %incdec.ptr, i8*** %p, align 4
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %24 = load i8**, i8*** %p, align 4
  store i8* null, i8** %24, align 4
  %25 = load i8**, i8*** %ret, align 4
  ret i8** %25
}

; Function Attrs: noinline nounwind
define internal void @setpmgaliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @aliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 2)
  ret void
}

declare %struct.histent* @quietgethist(i32) #1

declare i32 @atoi(i8*) #1

declare i32 @addhistnum(i32, i32, i32) #1

declare %struct.histent* @gethistent(i32, i32) #1

declare void @convbase(i8*, i32, i32) #1

declare %struct.histent* @up_histent(%struct.histent*) #1

; Function Attrs: noinline nounwind
define internal i8** @histwgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %h = alloca i8*, align 4
  %e = alloca i8*, align 4
  %sav = alloca i8, align 1
  %l = alloca %union.linkroot*, align 4
  %ll = alloca %union.linkroot*, align 4
  %n = alloca %struct.linknode*, align 4
  %i = alloca i32, align 4
  %iw = alloca i32, align 4
  %he = alloca %struct.histent*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call, %union.linkroot** %l, align 4
  %0 = load i32, i32* @curhist, align 4
  %call1 = call i32 @addhistnum(i32 %0, i32 -1, i32 16)
  store i32 %call1, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %call2 = call %struct.histent* @gethistent(i32 %1, i32 -1)
  store %struct.histent* %call2, %struct.histent** %he, align 4
  %call3 = call %union.linkroot* @bufferwords(%union.linkroot* null, i8* null, i32* null, i32 0)
  store %union.linkroot* %call3, %union.linkroot** %ll, align 4
  %tobool = icmp ne %union.linkroot* %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.linkroot*, %union.linkroot** %ll, align 4
  %list = bitcast %union.linkroot* %2 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %3 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %3, %struct.linknode** %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool4 = icmp ne %struct.linknode* %4, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %union.linkroot*, %union.linkroot** %l, align 4
  %6 = load %union.linkroot*, %union.linkroot** %l, align 4
  %node = bitcast %union.linkroot* %6 to %struct.linknode*
  %7 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 2
  %8 = load i8*, i8** %dat, align 4
  %call5 = call %struct.linknode* @insertlinknode(%union.linkroot* %5, %struct.linknode* %node, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 0
  %10 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %10, %struct.linknode** %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end21, %if.end
  %11 = load %struct.histent*, %struct.histent** %he, align 4
  %tobool6 = icmp ne %struct.histent* %11, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.histent*, %struct.histent** %he, align 4
  %nwords = getelementptr inbounds %struct.histent, %struct.histent* %12, i32 0, i32 7
  %13 = load i32, i32* %nwords, align 4
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %iw, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %while.body
  %14 = load i32, i32* %iw, align 4
  %cmp = icmp sge i32 %14, 0
  br i1 %cmp, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond7
  %15 = load %struct.histent*, %struct.histent** %he, align 4
  %node9 = getelementptr inbounds %struct.histent, %struct.histent* %15, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %17 = load %struct.histent*, %struct.histent** %he, align 4
  %words = getelementptr inbounds %struct.histent, %struct.histent* %17, i32 0, i32 6
  %18 = load i16*, i16** %words, align 4
  %19 = load i32, i32* %iw, align 4
  %mul = mul nsw i32 %19, 2
  %arrayidx = getelementptr inbounds i16, i16* %18, i32 %mul
  %20 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %20 to i32
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %conv
  store i8* %add.ptr, i8** %h, align 4
  %21 = load %struct.histent*, %struct.histent** %he, align 4
  %node10 = getelementptr inbounds %struct.histent, %struct.histent* %21, i32 0, i32 0
  %nam11 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node10, i32 0, i32 1
  %22 = load i8*, i8** %nam11, align 4
  %23 = load %struct.histent*, %struct.histent** %he, align 4
  %words12 = getelementptr inbounds %struct.histent, %struct.histent* %23, i32 0, i32 6
  %24 = load i16*, i16** %words12, align 4
  %25 = load i32, i32* %iw, align 4
  %mul13 = mul nsw i32 %25, 2
  %add = add nsw i32 %mul13, 1
  %arrayidx14 = getelementptr inbounds i16, i16* %24, i32 %add
  %26 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %26 to i32
  %add.ptr16 = getelementptr inbounds i8, i8* %22, i32 %conv15
  store i8* %add.ptr16, i8** %e, align 4
  %27 = load i8*, i8** %e, align 4
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %sav, align 1
  %29 = load i8*, i8** %e, align 4
  store i8 0, i8* %29, align 1
  %30 = load %union.linkroot*, %union.linkroot** %l, align 4
  %31 = load %union.linkroot*, %union.linkroot** %l, align 4
  %list17 = bitcast %union.linkroot* %31 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list17, i32 0, i32 1
  %32 = load %struct.linknode*, %struct.linknode** %last, align 4
  %33 = load i8*, i8** %h, align 4
  %call18 = call i8* @dupstring(i8* %33)
  %call19 = call %struct.linknode* @insertlinknode(%union.linkroot* %30, %struct.linknode* %32, i8* %call18)
  %34 = load i8, i8* %sav, align 1
  %35 = load i8*, i8** %e, align 4
  store i8 %34, i8* %35, align 1
  br label %for.inc20

for.inc20:                                        ; preds = %for.body8
  %36 = load i32, i32* %iw, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %iw, align 4
  br label %for.cond7

for.end21:                                        ; preds = %for.cond7
  %37 = load %struct.histent*, %struct.histent** %he, align 4
  %call22 = call %struct.histent* @up_histent(%struct.histent* %37)
  store %struct.histent* %call22, %struct.histent** %he, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %union.linkroot*, %union.linkroot** %l, align 4
  %call23 = call i8** @hlinklist2array(%union.linkroot* %38, i32 0)
  ret i8** %call23
}

declare %union.linkroot* @newlinklist() #1

declare %union.linkroot* @bufferwords(%union.linkroot*, i8*, i32*, i32) #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare double @strtod(i8*, i8**) #1

declare i32 @getjob(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i8* @pmjobdir(i32 %job) #0 {
entry:
  %job.addr = alloca i32, align 4
  %ret = alloca i8*, align 4
  store i32 %job, i32* %job.addr, align 4
  %0 = load %struct.job*, %struct.job** @jobtab, align 4
  %1 = load i32, i32* %job.addr, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %0, i32 %1
  %pwd = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 3
  %2 = load i8*, i8** %pwd, align 4
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.job*, %struct.job** @jobtab, align 4
  %4 = load i32, i32* %job.addr, align 4
  %arrayidx1 = getelementptr inbounds %struct.job, %struct.job* %3, i32 %4
  %pwd2 = getelementptr inbounds %struct.job, %struct.job* %arrayidx1, i32 0, i32 3
  %5 = load i8*, i8** %pwd2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i8*, i8** @pwd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %6, %cond.false ]
  %call = call i8* @dupstring(i8* %cond)
  store i8* %call, i8** %ret, align 4
  %7 = load i8*, i8** %ret, align 4
  ret i8* %7
}

; Function Attrs: noinline nounwind
define internal i8* @pmjobstate(i32 %job) #0 {
entry:
  %job.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %buf = alloca [256 x i8], align 1
  %buf2 = alloca [128 x i8], align 1
  %ret = alloca i8*, align 4
  %state = alloca i8*, align 4
  %cp = alloca i8*, align 4
  store i32 %job, i32* %job.addr, align 4
  %0 = load i32, i32* %job.addr, align 4
  %1 = load i32, i32* @curjob, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8** %cp, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %job.addr, align 4
  %3 = load i32, i32* @prevjob, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8** %cp, align 4
  br label %if.end

if.else3:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8** %cp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load %struct.job*, %struct.job** @jobtab, align 4
  %5 = load i32, i32* %job.addr, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %4, i32 %5
  %stat = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %stat, align 4
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end4
  %7 = load i8*, i8** %cp, align 4
  %call = call i8* @dyncat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* %7)
  store i8* %call, i8** %ret, align 4
  br label %if.end16

if.else6:                                         ; preds = %if.end4
  %8 = load %struct.job*, %struct.job** @jobtab, align 4
  %9 = load i32, i32* %job.addr, align 4
  %arrayidx7 = getelementptr inbounds %struct.job, %struct.job* %8, i32 %9
  %stat8 = getelementptr inbounds %struct.job, %struct.job* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %stat8, align 4
  %and9 = and i32 %10, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else6
  %11 = load i8*, i8** %cp, align 4
  %call12 = call i8* @dyncat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* %11)
  store i8* %call12, i8** %ret, align 4
  br label %if.end15

if.else13:                                        ; preds = %if.else6
  %12 = load i8*, i8** %cp, align 4
  %call14 = call i8* @dyncat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* %12)
  store i8* %call14, i8** %ret, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  %13 = load %struct.job*, %struct.job** @jobtab, align 4
  %14 = load i32, i32* %job.addr, align 4
  %arrayidx17 = getelementptr inbounds %struct.job, %struct.job* %13, i32 %14
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx17, i32 0, i32 4
  %15 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %15, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %16 = load %struct.process*, %struct.process** %pn, align 4
  %tobool18 = icmp ne %struct.process* %16, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.process*, %struct.process** %pn, align 4
  %status = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 3
  %18 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %18, -1
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %for.body
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8** %state, align 4
  br label %if.end84

if.else21:                                        ; preds = %for.body
  %19 = load %struct.process*, %struct.process** %pn, align 4
  %status22 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 3
  %20 = load i32, i32* %status22, align 4
  %and23 = and i32 %20, 127
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.else21
  %21 = load %struct.process*, %struct.process** %pn, align 4
  %status26 = getelementptr inbounds %struct.process, %struct.process* %21, i32 0, i32 3
  %22 = load i32, i32* %status26, align 4
  %and27 = and i32 %22, 65280
  %shr = ashr i32 %and27, 8
  %tobool28 = icmp ne i32 %shr, 0
  br i1 %tobool28, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.then25
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0
  store i8* %arraydecay, i8** %state, align 4
  %23 = load %struct.process*, %struct.process** %pn, align 4
  %status30 = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 3
  %24 = load i32, i32* %status30, align 4
  %call31 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 %24)
  br label %if.end33

if.else32:                                        ; preds = %if.then25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8** %state, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then29
  br label %if.end83

if.else34:                                        ; preds = %if.else21
  %25 = load %struct.process*, %struct.process** %pn, align 4
  %status35 = getelementptr inbounds %struct.process, %struct.process* %25, i32 0, i32 3
  %26 = load i32, i32* %status35, align 4
  %and36 = and i32 %26, 65535
  %mul = mul nsw i32 %and36, 65537
  %shr37 = ashr i32 %mul, 8
  %conv = trunc i32 %shr37 to i16
  %conv38 = sext i16 %conv to i32
  %cmp39 = icmp sgt i32 %conv38, 32512
  br i1 %cmp39, label %if.then41, label %if.else51

if.then41:                                        ; preds = %if.else34
  %27 = load %struct.process*, %struct.process** %pn, align 4
  %status42 = getelementptr inbounds %struct.process, %struct.process* %27, i32 0, i32 3
  %28 = load i32, i32* %status42, align 4
  %and43 = and i32 %28, 65280
  %shr44 = ashr i32 %and43, 8
  %cmp45 = icmp sle i32 %shr44, 31
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then41
  %29 = load %struct.process*, %struct.process** %pn, align 4
  %status47 = getelementptr inbounds %struct.process, %struct.process* %29, i32 0, i32 3
  %30 = load i32, i32* %status47, align 4
  %and48 = and i32 %30, 65280
  %shr49 = ashr i32 %and48, 8
  %arrayidx50 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %shr49
  %31 = load i8*, i8** %arrayidx50, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %31, %cond.true ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %state, align 4
  br label %if.end82

if.else51:                                        ; preds = %if.else34
  %32 = load %struct.process*, %struct.process** %pn, align 4
  %status52 = getelementptr inbounds %struct.process, %struct.process* %32, i32 0, i32 3
  %33 = load i32, i32* %status52, align 4
  %and53 = and i32 %33, 128
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.else69

if.then55:                                        ; preds = %if.else51
  %arraydecay56 = getelementptr inbounds [128 x i8], [128 x i8]* %buf2, i32 0, i32 0
  store i8* %arraydecay56, i8** %state, align 4
  %34 = load %struct.process*, %struct.process** %pn, align 4
  %status57 = getelementptr inbounds %struct.process, %struct.process* %34, i32 0, i32 3
  %35 = load i32, i32* %status57, align 4
  %and58 = and i32 %35, 127
  %cmp59 = icmp sle i32 %and58, 31
  br i1 %cmp59, label %cond.true61, label %cond.false65

cond.true61:                                      ; preds = %if.then55
  %36 = load %struct.process*, %struct.process** %pn, align 4
  %status62 = getelementptr inbounds %struct.process, %struct.process* %36, i32 0, i32 3
  %37 = load i32, i32* %status62, align 4
  %and63 = and i32 %37, 127
  %arrayidx64 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %and63
  %38 = load i8*, i8** %arrayidx64, align 4
  br label %cond.end66

cond.false65:                                     ; preds = %if.then55
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true61
  %cond67 = phi i8* [ %38, %cond.true61 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), %cond.false65 ]
  %call68 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i8* %cond67)
  br label %if.end81

if.else69:                                        ; preds = %if.else51
  %39 = load %struct.process*, %struct.process** %pn, align 4
  %status70 = getelementptr inbounds %struct.process, %struct.process* %39, i32 0, i32 3
  %40 = load i32, i32* %status70, align 4
  %and71 = and i32 %40, 127
  %cmp72 = icmp sle i32 %and71, 31
  br i1 %cmp72, label %cond.true74, label %cond.false78

cond.true74:                                      ; preds = %if.else69
  %41 = load %struct.process*, %struct.process** %pn, align 4
  %status75 = getelementptr inbounds %struct.process, %struct.process* %41, i32 0, i32 3
  %42 = load i32, i32* %status75, align 4
  %and76 = and i32 %42, 127
  %arrayidx77 = getelementptr inbounds [33 x i8*], [33 x i8*]* @sig_msg, i32 0, i32 %and76
  %43 = load i8*, i8** %arrayidx77, align 4
  br label %cond.end79

cond.false78:                                     ; preds = %if.else69
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %cond.true74
  %cond80 = phi i8* [ %43, %cond.true74 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), %cond.false78 ]
  store i8* %cond80, i8** %state, align 4
  br label %if.end81

if.end81:                                         ; preds = %cond.end79, %cond.end66
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %cond.end
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end33
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then20
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %44 = load %struct.process*, %struct.process** %pn, align 4
  %pid = getelementptr inbounds %struct.process, %struct.process* %44, i32 0, i32 1
  %45 = load i32, i32* %pid, align 4
  %46 = load i8*, i8** %state, align 4
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %45, i8* %46)
  %47 = load i8*, i8** %ret, align 4
  %arraydecay87 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call88 = call i8* @dyncat(i8* %47, i8* %arraydecay87)
  store i8* %call88, i8** %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %48 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %48, i32 0, i32 0
  %49 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %49, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i8*, i8** %ret, align 4
  ret i8* %50
}

; Function Attrs: noinline nounwind
define internal i8* @pmjobtext(i32 %job) #0 {
entry:
  %job.addr = alloca i32, align 4
  %pn = alloca %struct.process*, align 4
  %len = alloca i32, align 4
  %ret = alloca i8*, align 4
  store i32 %job, i32* %job.addr, align 4
  store i32 1, i32* %len, align 4
  %0 = load %struct.job*, %struct.job** @jobtab, align 4
  %1 = load i32, i32* %job.addr, align 4
  %arrayidx = getelementptr inbounds %struct.job, %struct.job* %0, i32 %1
  %procs = getelementptr inbounds %struct.job, %struct.job* %arrayidx, i32 0, i32 4
  %2 = load %struct.process*, %struct.process** %procs, align 4
  store %struct.process* %2, %struct.process** %pn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.process*, %struct.process** %pn, align 4
  %tobool = icmp ne %struct.process* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.process*, %struct.process** %pn, align 4
  %text = getelementptr inbounds %struct.process, %struct.process* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %text, i32 0, i32 0
  %call = call i32 @strlen(i8* %arraydecay)
  %add = add i32 %call, 3
  %5 = load i32, i32* %len, align 4
  %add1 = add i32 %5, %add
  store i32 %add1, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.process*, %struct.process** %pn, align 4
  %next = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 0
  %7 = load %struct.process*, %struct.process** %next, align 4
  store %struct.process* %7, %struct.process** %pn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %len, align 4
  %call2 = call i8* @zhalloc(i32 %8)
  store i8* %call2, i8** %ret, align 4
  %9 = load i8*, i8** %ret, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i32 0
  store i8 0, i8* %arrayidx3, align 1
  %10 = load %struct.job*, %struct.job** @jobtab, align 4
  %11 = load i32, i32* %job.addr, align 4
  %arrayidx4 = getelementptr inbounds %struct.job, %struct.job* %10, i32 %11
  %procs5 = getelementptr inbounds %struct.job, %struct.job* %arrayidx4, i32 0, i32 4
  %12 = load %struct.process*, %struct.process** %procs5, align 4
  store %struct.process* %12, %struct.process** %pn, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %13 = load %struct.process*, %struct.process** %pn, align 4
  %tobool7 = icmp ne %struct.process* %13, null
  br i1 %tobool7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %14 = load i8*, i8** %ret, align 4
  %15 = load %struct.process*, %struct.process** %pn, align 4
  %text9 = getelementptr inbounds %struct.process, %struct.process* %15, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [80 x i8], [80 x i8]* %text9, i32 0, i32 0
  %call11 = call i8* @strcat(i8* %14, i8* %arraydecay10)
  %16 = load %struct.process*, %struct.process** %pn, align 4
  %next12 = getelementptr inbounds %struct.process, %struct.process* %16, i32 0, i32 0
  %17 = load %struct.process*, %struct.process** %next12, align 4
  %tobool13 = icmp ne %struct.process* %17, null
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %18 = load i8*, i8** %ret, align 4
  %call14 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %19 = load %struct.process*, %struct.process** %pn, align 4
  %next16 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 0
  %20 = load %struct.process*, %struct.process** %next16, align 4
  store %struct.process* %20, %struct.process** %pn, align 4
  br label %for.cond6

for.end17:                                        ; preds = %for.cond6
  %21 = load i8*, i8** %ret, align 4
  ret i8* %21
}

declare %struct.linknode* @linknodebystring(%union.linkroot*, i8*) #1

; Function Attrs: noinline nounwind
define internal void @setpmnameddirs(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %next = alloca %struct.hashnode*, align 4
  %hd = alloca %struct.hashnode*, align 4
  %v = alloca %struct.value, align 4
  %val = alloca i8*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool2 = icmp ne %struct.hashnode* %8, null
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next4 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %9, i32 0, i32 0
  %10 = load %struct.hashnode*, %struct.hashnode** %next4, align 4
  store %struct.hashnode* %10, %struct.hashnode** %next, align 4
  %11 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %12 = bitcast %struct.hashnode* %11 to %struct.nameddir*
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 2
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body3
  %14 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 11
  %removenode6 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %15 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode6, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %17 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %17, i32 0, i32 1
  %18 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %15(%struct.hashtable* %16, i8* %18)
  store %struct.hashnode* %call, %struct.hashnode** %hd, align 4
  %tobool7 = icmp ne %struct.hashnode* %call, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %19 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 14
  %20 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %21 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  call void %20(%struct.hashnode* %21)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %22 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %22, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc36, %for.end11
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize13 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 0
  %26 = load i32, i32* %hsize13, align 4
  %cmp14 = icmp slt i32 %24, %26
  br i1 %cmp14, label %for.body15, label %for.end38

for.body15:                                       ; preds = %for.cond12
  %27 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 2
  %28 = load %struct.hashnode**, %struct.hashnode*** %nodes16, align 4
  %29 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %28, i32 %29
  %30 = load %struct.hashnode*, %struct.hashnode** %arrayidx17, align 4
  store %struct.hashnode* %30, %struct.hashnode** %hn, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body15
  %31 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool19 = icmp ne %struct.hashnode* %31, null
  br i1 %tobool19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags21 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags21, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %32 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %33 = bitcast %struct.hashnode* %32 to %struct.param*
  %pm22 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %33, %struct.param** %pm22, align 4
  %call23 = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call23, i8** %val, align 4
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body20
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end32

if.else:                                          ; preds = %for.body20
  %call26 = call i8* @zshcalloc(i32 20)
  %34 = bitcast i8* %call26 to %struct.nameddir*
  store %struct.nameddir* %34, %struct.nameddir** %nd, align 4
  %35 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node27 = getelementptr inbounds %struct.nameddir, %struct.nameddir* %35, i32 0, i32 0
  %flags28 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node27, i32 0, i32 2
  store i32 0, i32* %flags28, align 4
  %36 = load i8*, i8** %val, align 4
  %call29 = call i8* @ztrdup(i8* %36)
  %37 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %37, i32 0, i32 1
  store i8* %call29, i8** %dir, align 4
  %38 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 8
  %39 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %40 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %41 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam30 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %41, i32 0, i32 1
  %42 = load i8*, i8** %nam30, align 4
  %call31 = call i8* @ztrdup(i8* %42)
  %43 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %44 = bitcast %struct.nameddir* %43 to i8*
  call void %39(%struct.hashtable* %40, i8* %call31, i8* %44)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %45 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next34 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %45, i32 0, i32 0
  %46 = load %struct.hashnode*, %struct.hashnode** %next34, align 4
  store %struct.hashnode* %46, %struct.hashnode** %hn, align 4
  br label %for.cond18

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %47 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %47, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond12

for.end38:                                        ; preds = %for.cond12
  %48 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %48 to i32
  store i32 %conv, i32* %i, align 4
  store i8 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %49 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %50 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %50, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u to %struct.hashtable**
  %51 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp39 = icmp ne %struct.hashtable* %49, %51
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end38
  %52 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %52)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for.end38
  %53 = load i32, i32* %i, align 4
  %conv43 = trunc i32 %53 to i8
  store i8 %conv43, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  br label %return

return:                                           ; preds = %if.end42, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmnameddir(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %nd = alloca %struct.nameddir*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load i8*, i8** %value.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @zshcalloc(i32 20)
  %1 = bitcast i8* %call to %struct.nameddir*
  store %struct.nameddir* %1, %struct.nameddir** %nd, align 4
  %2 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %node = getelementptr inbounds %struct.nameddir, %struct.nameddir* %2, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %3 = load i8*, i8** %value.addr, align 4
  %4 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %dir = getelementptr inbounds %struct.nameddir, %struct.nameddir* %4, i32 0, i32 1
  store i8* %3, i8** %dir, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 8
  %6 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %8 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %9 = load i8*, i8** %nam, align 4
  %call2 = call i8* @ztrdup(i8* %9)
  %10 = load %struct.nameddir*, %struct.nameddir** %nd, align 4
  %11 = bitcast %struct.nameddir* %10 to i8*
  call void %6(%struct.hashtable* %7, i8* %call2, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmnameddir(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %hd = alloca %struct.hashnode*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %removenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 11
  %removenode1 = bitcast {}** %removenode to %struct.hashnode* (%struct.hashtable*, i8*)**
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode1, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %4 = load i8*, i8** %nam, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* %4)
  store %struct.hashnode* %call, %struct.hashnode** %hd, align 4
  %5 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  %tobool = icmp ne %struct.hashnode* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.hashtable*, %struct.hashtable** @nameddirtab, align 4
  %freenode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 14
  %7 = load void (%struct.hashnode*)*, void (%struct.hashnode*)** %freenode, align 4
  %8 = load %struct.hashnode*, %struct.hashnode** %hd, align 4
  call void %7(%struct.hashnode* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind
define internal void @setpmoptions(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode*, align 4
  %v = alloca %struct.value, align 4
  %val = alloca i8*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end25

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %hsize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hsize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %5 = load %struct.hashnode**, %struct.hashnode*** %nodes, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds %struct.hashnode*, %struct.hashnode** %5, i32 %6
  %7 = load %struct.hashnode*, %struct.hashnode** %arrayidx, align 4
  store %struct.hashnode* %7, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %tobool2 = icmp ne %struct.hashnode* %8, null
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 0, i32* %isarr, align 4
  %end = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4
  %arr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 5
  store i8** null, i8*** %arr, align 4
  %9 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %10 = bitcast %struct.hashnode* %9 to %struct.param*
  %pm4 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* %10, %struct.param** %pm4, align 4
  %call = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call, i8** %val, align 4
  %11 = load i8*, i8** %val, align 4
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %for.body3
  %12 = load i8*, i8** %val, align 4
  %call6 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i8*, i8** %val, align 4
  %call8 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true, %for.body3
  %14 = load i8*, i8** %val, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* %14)
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %15, i32 0, i32 1
  %16 = load i8*, i8** %nam, align 4
  %call11 = call i32 @optlookup(i8* %16)
  %17 = load i8*, i8** %val, align 4
  %tobool12 = icmp ne i8* %17, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %18 = load i8*, i8** %val, align 4
  %call13 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %19 = phi i1 [ false, %if.else ], [ %tobool14, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %call15 = call i32 @dosetopt(i32 %call11, i32 %land.ext, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.end
  %20 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %nam18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %20, i32 0, i32 1
  %21 = load i8*, i8** %nam18, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0), i8* %21)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %22 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %next = getelementptr inbounds %struct.hashnode, %struct.hashnode* %22, i32 0, i32 0
  %23 = load %struct.hashnode*, %struct.hashnode** %next, align 4
  store %struct.hashnode* %23, %struct.hashnode** %hn, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  %25 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %26 = load %struct.param*, %struct.param** %pm.addr, align 4
  %u = getelementptr inbounds %struct.param, %struct.param* %26, i32 0, i32 1
  %hash = bitcast %union.anon.1* %u to %struct.hashtable**
  %27 = load %struct.hashtable*, %struct.hashtable** %hash, align 8
  %cmp23 = icmp ne %struct.hashtable* %25, %27
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end22
  %28 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @deleteparamtable(%struct.hashtable* %28)
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then24, %for.end22
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @dosetopt(i32, i32, i32, i8*) #1

declare i32 @optlookup(i8*) #1

; Function Attrs: noinline nounwind
define internal void @setpmoption(%struct.param* %pm, i8* %value) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %value.addr = alloca i8*, align 4
  %n = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %value, i8** %value.addr, align 4
  %0 = load i8*, i8** %value.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 4
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8*, i8** %value.addr, align 4
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %value.addr, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i8* %3)
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %5 = load i8*, i8** %nam, align 4
  %call4 = call i32 @optlookup(i8* %5)
  store i32 %call4, i32* %n, align 4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  %6 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node7 = getelementptr inbounds %struct.param, %struct.param* %6, i32 0, i32 0
  %nam8 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node7, i32 0, i32 1
  %7 = load i8*, i8** %nam8, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i8* %7)
  br label %if.end18

if.else9:                                         ; preds = %if.else
  %8 = load i32, i32* %n, align 4
  %9 = load i8*, i8** %value.addr, align 4
  %tobool10 = icmp ne i8* %9, null
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else9
  %10 = load i8*, i8** %value.addr, align 4
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else9
  %11 = phi i1 [ false, %if.else9 ], [ %tobool12, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %call13 = call i32 @dosetopt(i32 %8, i32 %land.ext, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.end
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node16 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %nam17 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node16, i32 0, i32 1
  %13 = load i8*, i8** %nam17, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.end
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %14 = load i8*, i8** %value.addr, align 4
  call void @zsfree(i8* %14)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @unsetpmoption(%struct.param* %pm, i32 %exp) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %exp.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 1
  %1 = load i8*, i8** %nam, align 4
  %call = call i32 @optlookup(i8* %1)
  store i32 %call, i32* %n, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %3 = load i8*, i8** %nam2, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i8* %3)
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %n, align 4
  %call3 = call i32 @dosetopt(i32 %4, i32 0, i32 0, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %5 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 0
  %nam7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 1
  %6 = load i8*, i8** %nam7, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal i8* @paramtypestr(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %val = alloca i8*, align 4
  %f = alloca i32, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* null, i8** %val, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  store i32 %1, i32* %f, align 4
  %2 = load i32, i32* %f, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %3, i32 0, i32 0
  %flags2 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 2
  %4 = load i32, i32* %flags2, align 8
  %and3 = and i32 %4, 134217728
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %call = call i8* @dupstring(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %f, align 4
  %and6 = and i32 %5, 31
  switch i32 %and6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
    i32 4, label %sw.bb9
    i32 8, label %sw.bb9
    i32 16, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end, %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8** %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %6 = load i8*, i8** %val, align 4
  %call11 = call i8* @dupstring(i8* %6)
  store i8* %call11, i8** %val, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.epilog
  %9 = load i8*, i8** %val, align 4
  %call14 = call i8* @dyncat(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0))
  store i8* %call14, i8** %val, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.epilog
  %10 = load i32, i32* %f, align 4
  %and16 = and i32 %10, 32
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %11 = load i8*, i8** %val, align 4
  %call19 = call i8* @dyncat(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0))
  store i8* %call19, i8** %val, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %12 = load i32, i32* %f, align 4
  %and21 = and i32 %12, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %13 = load i8*, i8** %val, align 4
  %call24 = call i8* @dyncat(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0))
  store i8* %call24, i8** %val, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %14 = load i32, i32* %f, align 4
  %and26 = and i32 %14, 128
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %15 = load i8*, i8** %val, align 4
  %call29 = call i8* @dyncat(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0))
  store i8* %call29, i8** %val, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %16 = load i32, i32* %f, align 4
  %and31 = and i32 %16, 256
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %17 = load i8*, i8** %val, align 4
  %call34 = call i8* @dyncat(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0))
  store i8* %call34, i8** %val, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %18 = load i32, i32* %f, align 4
  %and36 = and i32 %18, 512
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %19 = load i8*, i8** %val, align 4
  %call39 = call i8* @dyncat(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0))
  store i8* %call39, i8** %val, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35
  %20 = load i32, i32* %f, align 4
  %and41 = and i32 %20, 1024
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %21 = load i8*, i8** %val, align 4
  %call44 = call i8* @dyncat(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0))
  store i8* %call44, i8** %val, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %22 = load i32, i32* %f, align 4
  %and46 = and i32 %22, 2048
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  %23 = load i8*, i8** %val, align 4
  %call49 = call i8* @dyncat(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0))
  store i8* %call49, i8** %val, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45
  %24 = load i32, i32* %f, align 4
  %and51 = and i32 %24, 4096
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %25 = load i8*, i8** %val, align 4
  %call54 = call i8* @dyncat(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0))
  store i8* %call54, i8** %val, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  %26 = load i32, i32* %f, align 4
  %and56 = and i32 %26, 8192
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  %27 = load i8*, i8** %val, align 4
  %call59 = call i8* @dyncat(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  store i8* %call59, i8** %val, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55
  %28 = load i32, i32* %f, align 4
  %and61 = and i32 %28, 16384
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  %29 = load i8*, i8** %val, align 4
  %call64 = call i8* @dyncat(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0))
  store i8* %call64, i8** %val, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60
  %30 = load i32, i32* %f, align 4
  %and66 = and i32 %30, 32768
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  %31 = load i8*, i8** %val, align 4
  %call69 = call i8* @dyncat(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0))
  store i8* %call69, i8** %val, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65
  %32 = load i32, i32* %f, align 4
  %and71 = and i32 %32, 4194304
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end70
  %33 = load i8*, i8** %val, align 4
  %call74 = call i8* @dyncat(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0))
  store i8* %call74, i8** %val, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70
  br label %if.end77

if.else:                                          ; preds = %entry
  %call76 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0))
  store i8* %call76, i8** %val, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.end75
  %34 = load i8*, i8** %val, align 4
  store i8* %34, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end77, %if.then5
  %35 = load i8*, i8** %retval, align 4
  ret i8* %35
}

; Function Attrs: noinline nounwind
define internal i8** @patcharsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8** @getpatchars(i32 0)
  ret i8** %call
}

; Function Attrs: noinline nounwind
define internal i8** @reswordsgetfn(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %call = call i8** @getreswords(i32 0)
  ret i8** %call
}

; Function Attrs: noinline nounwind
define internal void @setpmsaliases(%struct.param* %pm, %struct.hashtable* %ht) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %ht.addr = alloca %struct.hashtable*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @sufaliastab, align 4
  %1 = load %struct.param*, %struct.param** %pm.addr, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  call void @setaliases(%struct.hashtable* %0, %struct.param* %1, %struct.hashtable* %2, i32 4)
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.groupset* @get_all_groups() #0 {
entry:
  %retval = alloca %struct.groupset*, align 4
  %gs = alloca %struct.groupset*, align 4
  %gaptr = alloca %struct.groupmap*, align 4
  %list = alloca i32*, align 4
  %lptr = alloca i32*, align 4
  %egid = alloca i32, align 4
  %add_egid = alloca i32, align 4
  %grptr = alloca %struct.group*, align 4
  %call = call i8* @zhalloc(i32 8)
  %0 = bitcast i8* %call to %struct.groupset*
  store %struct.groupset* %0, %struct.groupset** %gs, align 4
  %call1 = call i32 @getegid()
  store i32 %call1, i32* %egid, align 4
  store i32 1, i32* %add_egid, align 4
  %call2 = call i32 @getgroups(i32 0, i32* null)
  %1 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num = getelementptr inbounds %struct.groupset, %struct.groupset* %1, i32 0, i32 1
  store i32 %call2, i32* %num, align 4
  %2 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num3 = getelementptr inbounds %struct.groupset, %struct.groupset* %2, i32 0, i32 1
  %3 = load i32, i32* %num3, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num4 = getelementptr inbounds %struct.groupset, %struct.groupset* %4, i32 0, i32 1
  %5 = load i32, i32* %num4, align 4
  %mul = mul i32 %5, 4
  %call5 = call i8* @zhalloc(i32 %mul)
  %6 = bitcast i8* %call5 to i32*
  store i32* %6, i32** %list, align 4
  %7 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num6 = getelementptr inbounds %struct.groupset, %struct.groupset* %7, i32 0, i32 1
  %8 = load i32, i32* %num6, align 4
  %9 = load i32*, i32** %list, align 4
  %call7 = call i32 @getgroups(i32 %8, i32* %9)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store %struct.groupset* null, %struct.groupset** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i32*, i32** %list, align 4
  store i32* %10, i32** %lptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32*, i32** %lptr, align 4
  %12 = load i32*, i32** %list, align 4
  %13 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num10 = getelementptr inbounds %struct.groupset, %struct.groupset* %13, i32 0, i32 1
  %14 = load i32, i32* %num10, align 4
  %add.ptr = getelementptr inbounds i32, i32* %12, i32 %14
  %cmp11 = icmp ult i32* %11, %add.ptr
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %lptr, align 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %egid, align 4
  %cmp12 = icmp eq i32 %16, %17
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  store i32 0, i32* %add_egid, align 4
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %18 = load i32*, i32** %lptr, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %incdec.ptr, i32** %lptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then13, %for.cond
  %19 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num15 = getelementptr inbounds %struct.groupset, %struct.groupset* %19, i32 0, i32 1
  %20 = load i32, i32* %num15, align 4
  %21 = load i32, i32* %add_egid, align 4
  %add = add nsw i32 %20, %21
  %mul16 = mul i32 %add, 8
  %call17 = call i8* @zhalloc(i32 %mul16)
  %22 = bitcast i8* %call17 to %struct.groupmap*
  %23 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array = getelementptr inbounds %struct.groupset, %struct.groupset* %23, i32 0, i32 0
  store %struct.groupmap* %22, %struct.groupmap** %array, align 4
  %24 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array18 = getelementptr inbounds %struct.groupset, %struct.groupset* %24, i32 0, i32 0
  %25 = load %struct.groupmap*, %struct.groupmap** %array18, align 4
  %26 = load i32, i32* %add_egid, align 4
  %add.ptr19 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %25, i32 %26
  store %struct.groupmap* %add.ptr19, %struct.groupmap** %gaptr, align 4
  %27 = load i32*, i32** %list, align 4
  store i32* %27, i32** %lptr, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc26, %for.end
  %28 = load i32*, i32** %lptr, align 4
  %29 = load i32*, i32** %list, align 4
  %30 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num21 = getelementptr inbounds %struct.groupset, %struct.groupset* %30, i32 0, i32 1
  %31 = load i32, i32* %num21, align 4
  %add.ptr22 = getelementptr inbounds i32, i32* %29, i32 %31
  %cmp23 = icmp ult i32* %28, %add.ptr22
  br i1 %cmp23, label %for.body24, label %for.end28

for.body24:                                       ; preds = %for.cond20
  %32 = load i32*, i32** %lptr, align 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %gid = getelementptr inbounds %struct.groupmap, %struct.groupmap* %34, i32 0, i32 1
  store i32 %33, i32* %gid, align 4
  %35 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %incdec.ptr25 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %35, i32 1
  store %struct.groupmap* %incdec.ptr25, %struct.groupmap** %gaptr, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body24
  %36 = load i32*, i32** %lptr, align 4
  %incdec.ptr27 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %incdec.ptr27, i32** %lptr, align 4
  br label %for.cond20

for.end28:                                        ; preds = %for.cond20
  %37 = load i32, i32* %add_egid, align 4
  %38 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num29 = getelementptr inbounds %struct.groupset, %struct.groupset* %38, i32 0, i32 1
  %39 = load i32, i32* %num29, align 4
  %add30 = add nsw i32 %39, %37
  store i32 %add30, i32* %num29, align 4
  br label %if.end34

if.else:                                          ; preds = %entry
  %40 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num31 = getelementptr inbounds %struct.groupset, %struct.groupset* %40, i32 0, i32 1
  store i32 1, i32* %num31, align 4
  %call32 = call i8* @zhalloc(i32 8)
  %41 = bitcast i8* %call32 to %struct.groupmap*
  %42 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array33 = getelementptr inbounds %struct.groupset, %struct.groupset* %42, i32 0, i32 0
  store %struct.groupmap* %41, %struct.groupmap** %array33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end28
  %43 = load i32, i32* %add_egid, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end34
  %44 = load i32, i32* %egid, align 4
  %45 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array36 = getelementptr inbounds %struct.groupset, %struct.groupset* %45, i32 0, i32 0
  %46 = load %struct.groupmap*, %struct.groupmap** %array36, align 4
  %gid37 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %46, i32 0, i32 1
  store i32 %44, i32* %gid37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end34
  %47 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array39 = getelementptr inbounds %struct.groupset, %struct.groupset* %47, i32 0, i32 0
  %48 = load %struct.groupmap*, %struct.groupmap** %array39, align 4
  store %struct.groupmap* %48, %struct.groupmap** %gaptr, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc52, %if.end38
  %49 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %50 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %array41 = getelementptr inbounds %struct.groupset, %struct.groupset* %50, i32 0, i32 0
  %51 = load %struct.groupmap*, %struct.groupmap** %array41, align 4
  %52 = load %struct.groupset*, %struct.groupset** %gs, align 4
  %num42 = getelementptr inbounds %struct.groupset, %struct.groupset* %52, i32 0, i32 1
  %53 = load i32, i32* %num42, align 4
  %add.ptr43 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %51, i32 %53
  %cmp44 = icmp ult %struct.groupmap* %49, %add.ptr43
  br i1 %cmp44, label %for.body45, label %for.end54

for.body45:                                       ; preds = %for.cond40
  %54 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %gid46 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %54, i32 0, i32 1
  %55 = load i32, i32* %gid46, align 4
  %call47 = call %struct.group* @getgrgid(i32 %55)
  store %struct.group* %call47, %struct.group** %grptr, align 4
  %56 = load %struct.group*, %struct.group** %grptr, align 4
  %tobool48 = icmp ne %struct.group* %56, null
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %for.body45
  store %struct.groupset* null, %struct.groupset** %retval, align 4
  br label %return

if.end50:                                         ; preds = %for.body45
  %57 = load %struct.group*, %struct.group** %grptr, align 4
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %57, i32 0, i32 0
  %58 = load i8*, i8** %gr_name, align 4
  %call51 = call i8* @dupstring(i8* %58)
  %59 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %name = getelementptr inbounds %struct.groupmap, %struct.groupmap* %59, i32 0, i32 0
  store i8* %call51, i8** %name, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %if.end50
  %60 = load %struct.groupmap*, %struct.groupmap** %gaptr, align 4
  %incdec.ptr53 = getelementptr inbounds %struct.groupmap, %struct.groupmap* %60, i32 1
  store %struct.groupmap* %incdec.ptr53, %struct.groupmap** %gaptr, align 4
  br label %for.cond40

for.end54:                                        ; preds = %for.cond40
  %61 = load %struct.groupset*, %struct.groupset** %gs, align 4
  store %struct.groupset* %61, %struct.groupset** %retval, align 4
  br label %return

return:                                           ; preds = %for.end54, %if.then49, %if.then9
  %62 = load %struct.groupset*, %struct.groupset** %retval, align 4
  ret %struct.groupset* %62
}

declare void @zerr(i8*, ...) #1

declare i32* @__errno_location() #1

declare i32 @getegid() #1

declare i32 @getgroups(i32, i32*) #1

declare %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
