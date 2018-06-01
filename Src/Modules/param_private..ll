; ModuleID = 'param_private.c'
source_filename = "param_private.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.reswd = type { %struct.hashnode, i32 }
%struct.features = type { %struct.builtin*, i32, %struct.conddef*, i32, %struct.mathfunc*, i32, %struct.paramdef*, i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.mathfunc = type { %struct.mathfunc*, i8*, i32, void (%struct.mnumber*, i8*, i32, %struct.mnumber*, i32)*, void (%struct.mnumber*, i8*, i8*, i32)*, i8*, i32, i32, i32 }
%struct.mnumber = type { %union.anon.0, i32 }
%union.anon.0 = type { double }
%struct.paramdef = type { i8*, i32, i8*, i8*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.param* }
%struct.param = type { %struct.hashnode, %union.anon.1, %union.anon.2, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.1 = type { double }
%union.anon.2 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.gsu_integer = type { i32 (%struct.param*)*, void (%struct.param*, i32)*, void (%struct.param*, i32)* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.gsu_closure = type { %union.anon.3, i8* }
%union.anon.3 = type { %struct.gsu_scalar }

@builtintab = external global %struct.hashtable*, align 4
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@realparamtab = external global %struct.hashtable*, align 4
@getparamnode = internal global %struct.hashnode* (%struct.hashtable*, i8*)* null, align 4
@save_getnode2 = internal global %struct.hashnode* (%struct.hashtable*, i8*)* null, align 4
@save_printnode = internal global void (%struct.hashnode*, i32)* null, align 4
@save_local = internal global %struct.builtin zeroinitializer, align 4
@bintab = internal global [1 x %struct.builtin] [%struct.builtin { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 526354 }, i32 (i8*, i8**, %struct.options*, i32)* bitcast (i32 (i8*, i8**, %union.linkroot*, %struct.options*, i32)* @bin_private to i32 (i8*, i8**, %struct.options*, i32)*), i32 0, i32 -1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 4
@reswdtab = external global %struct.hashtable*, align 4
@reswd_private = internal global %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0 }, i32 63 }, align 4
@module_features = internal global %struct.features { %struct.builtin* getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0), i32 1, %struct.conddef* null, i32 0, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@emptytable = internal global %struct.hashtable* null, align 4
@wrapper = internal global [1 x %struct.funcwrap] [%struct.funcwrap { %struct.funcwrap* null, i32 0, i32 (%struct.eprog*, %struct.funcwrap*, i8*)* @wrap_private, %struct.module* null }], align 4
@fakelevel = internal global i32 0, align 4
@locallevel = external global i32, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: attempt to assign private in nested scope\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"AE:%F:%HL:%PR:%TUZ:%ahi:%lprtux\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@makeprivate_error = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"bad option: -T\00", align 1
@opts = external global [181 x i8], align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"invalid local scope, using globals\00", align 1
@queueing_enabled = external global i32, align 4
@paramtab = external global %struct.hashtable*, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"can't change scope of existing param: %s\00", align 1
@scalar_private_gsu = internal constant %struct.gsu_scalar { i8* (%struct.param*)* @pps_getfn, void (%struct.param*, i8*)* @pps_setfn, void (%struct.param*, i32)* @pps_unsetfn }, align 4
@integer_private_gsu = internal constant %struct.gsu_integer { i32 (%struct.param*)* @ppi_getfn, void (%struct.param*, i32)* @ppi_setfn, void (%struct.param*, i32)* @ppi_unsetfn }, align 4
@float_private_gsu = internal constant %struct.gsu_float { double (%struct.param*)* @ppf_getfn, void (%struct.param*, double)* @ppf_setfn, void (%struct.param*, i32)* @ppf_unsetfn }, align 4
@array_private_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @ppa_getfn, void (%struct.param*, i8**)* @ppa_setfn, void (%struct.param*, i32)* @ppa_unsetfn }, align 4
@hash_private_gsu = internal constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @pph_getfn, void (%struct.param*, %struct.hashtable*)* @pph_setfn, void (%struct.param*, i32)* @pph_unsetfn }, align 4
@ppa_getfn.nullarray = internal global i8* null, align 4
@wrap_private.wraplevel = internal global i32 0, align 4

; Function Attrs: noinline nounwind
define i32 @setup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %3 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 9
  %4 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode1, align 4
  store %struct.hashnode* (%struct.hashtable*, i8*)* %4, %struct.hashnode* (%struct.hashtable*, i8*)** @getparamnode, align 4
  %5 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 10
  %6 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  store %struct.hashnode* (%struct.hashtable*, i8*)* %6, %struct.hashnode* (%struct.hashtable*, i8*)** @save_getnode2, align 4
  %7 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 15
  %8 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** %printnode, align 4
  store void (%struct.hashnode*, i32)* %8, void (%struct.hashnode*, i32)** @save_printnode, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getprivatenode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode3, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode24 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getprivatenode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode24, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %printnode5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printprivatenode, void (%struct.hashnode*, i32)** %printnode5, align 4
  %12 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %13 = bitcast %struct.hashnode* %12 to %struct.builtin*
  %14 = bitcast %struct.builtin* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.builtin* @save_local to i8*), i8* %14, i32 36, i32 4, i1 false)
  %15 = load i32 (i8*, i8**, %struct.options*, i32)*, i32 (i8*, i8**, %struct.options*, i32)** getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0, i32 1), align 4
  %16 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %17 = bitcast %struct.hashnode* %16 to %struct.builtin*
  %handlerfunc = getelementptr inbounds %struct.builtin, %struct.builtin* %17, i32 0, i32 1
  store i32 (i8*, i8**, %struct.options*, i32)* %15, i32 (i8*, i8**, %struct.options*, i32)** %handlerfunc, align 4
  %18 = load i8*, i8** getelementptr inbounds ([1 x %struct.builtin], [1 x %struct.builtin]* @bintab, i32 0, i32 0, i32 5), align 4
  %19 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %20 = bitcast %struct.hashnode* %19 to %struct.builtin*
  %optstr = getelementptr inbounds %struct.builtin, %struct.builtin* %20, i32 0, i32 5
  store i8* %18, i8** %optstr, align 4
  %21 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %addnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 8
  %22 = load void (%struct.hashtable*, i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4
  %23 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %24 = load i8*, i8** getelementptr inbounds (%struct.reswd, %struct.reswd* @reswd_private, i32 0, i32 0, i32 1), align 4
  call void %22(%struct.hashtable* %23, i8* %24, i8* bitcast (%struct.reswd* @reswd_private to i8*))
  ret i32 0
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getprivatenode(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** @getparamnode, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %2 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* %0(%struct.hashtable* %1, i8* %2)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %3 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %4 = bitcast %struct.hashnode* %3 to %struct.param*
  store %struct.param* %4, %struct.param** %pm, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, i32* @fakelevel, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %6 = load %struct.param*, %struct.param** %pm, align 4
  %tobool1 = icmp ne %struct.param* %6, null
  br i1 %tobool1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load i32, i32* @locallevel, align 4
  %8 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %8, i32 0, i32 8
  %9 = load i32, i32* %level, align 8
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %10 = load %struct.param*, %struct.param** %pm, align 4
  %call3 = call i32 @is_private(%struct.param* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %13 = load i32, i32* %flags, align 8
  %and = and i32 %13, 33554432
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %14 = load %struct.param*, %struct.param** %pm, align 4
  call void @setfn_error(%struct.param* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 7
  %16 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %16, %struct.param** %pm, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %18 = bitcast %struct.param* %17 to %struct.hashnode*
  ret %struct.hashnode* %18
}

; Function Attrs: noinline nounwind
define internal %struct.hashnode* @getprivatenode2(%struct.hashtable* %ht, i8* %nam) #0 {
entry:
  %ht.addr = alloca %struct.hashtable*, align 4
  %nam.addr = alloca i8*, align 4
  %hn = alloca %struct.hashnode*, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashtable* %ht, %struct.hashtable** %ht.addr, align 4
  store i8* %nam, i8** %nam.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** %ht.addr, align 4
  %1 = load i8*, i8** %nam.addr, align 4
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %0, i8* %1)
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %2 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %3 = bitcast %struct.hashnode* %2 to %struct.param*
  store %struct.param* %3, %struct.param** %pm, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* @fakelevel, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %tobool1 = icmp ne %struct.param* %5, null
  br i1 %tobool1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sgt i32 %6, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %call3 = call i32 @is_private(%struct.param* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 7
  %12 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %12, %struct.param** %pm, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %14 = bitcast %struct.param* %13 to %struct.hashnode*
  ret %struct.hashnode* %14
}

; Function Attrs: noinline nounwind
define internal void @printprivatenode(%struct.hashnode* %hn, i32 %printflags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %printflags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %printflags, i32* %printflags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %tobool = icmp ne %struct.param* %2, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i32, i32* @fakelevel, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.lhs.false, label %land.lhs.true4

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* @fakelevel, align 4
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 8
  %6 = load i32, i32* %level, align 8
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %lor.lhs.false
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 33554432
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2, %land.lhs.true
  %9 = load i32, i32* @locallevel, align 4
  %10 = load %struct.param*, %struct.param** %pm, align 4
  %level5 = getelementptr inbounds %struct.param, %struct.param* %10, i32 0, i32 8
  %11 = load i32, i32* %level5, align 8
  %cmp6 = icmp sgt i32 %9, %11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %12 = load %struct.param*, %struct.param** %pm, align 4
  %call = call i32 @is_private(%struct.param* %12)
  %tobool7 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %lor.lhs.false, %while.cond
  %13 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %lor.lhs.false ], [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 7
  %15 = load %struct.param*, %struct.param** %old, align 4
  store %struct.param* %15, %struct.param** %pm, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.param*, %struct.param** %pm, align 4
  %tobool8 = icmp ne %struct.param* %16, null
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %18 = bitcast %struct.param* %17 to %struct.hashnode*
  %19 = load i32, i32* %printflags.addr, align 4
  call void @printparamnode(%struct.hashnode* %18, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

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

declare i8** @featuresarray(%struct.module*, %struct.features*) #2

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

declare i32 @handlefeatures(%struct.module*, %struct.features*, i32**) #2

; Function Attrs: noinline nounwind
define i32 @boot_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %call = call %struct.hashtable* @newparamtable(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  store %struct.hashtable* %call, %struct.hashtable** @emptytable, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call1 = call i32 @addwrapper(%struct.module* %0, %struct.funcwrap* getelementptr inbounds ([1 x %struct.funcwrap], [1 x %struct.funcwrap]* @wrapper, i32 0, i32 0))
  ret i32 %call1
}

declare %struct.hashtable* @newparamtable(i32, i8*) #2

declare i32 @addwrapper(%struct.module*, %struct.funcwrap*) #2

; Function Attrs: noinline nounwind
define i32 @cleanup_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  %hn = alloca %struct.hashnode*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %getnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** @builtintab, align 4
  %call = call %struct.hashnode* %1(%struct.hashtable* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store %struct.hashnode* %call, %struct.hashnode** %hn, align 4
  %3 = load %struct.hashnode*, %struct.hashnode** %hn, align 4
  %4 = bitcast %struct.hashnode* %3 to %struct.builtin*
  %5 = bitcast %struct.builtin* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast (%struct.builtin* @save_local to i8*), i32 36, i32 4, i1 false)
  %6 = load %struct.hashtable*, %struct.hashtable** @reswdtab, align 4
  %call1 = call %struct.hashnode* @removehashnode(%struct.hashtable* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** @getparamnode, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* %7, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4
  %9 = load %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)** @save_getnode2, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %getnode23 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* %9, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode23, align 4
  %11 = load void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)** @save_printnode, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** @realparamtab, align 4
  %printnode = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 15
  store void (%struct.hashnode*, i32)* %11, void (%struct.hashnode*, i32)** %printnode, align 4
  %13 = load %struct.module*, %struct.module** %m.addr, align 4
  %call4 = call i32 @deletewrapper(%struct.module* %13, %struct.funcwrap* getelementptr inbounds ([1 x %struct.funcwrap], [1 x %struct.funcwrap]* @wrapper, i32 0, i32 0))
  %14 = load %struct.module*, %struct.module** %m.addr, align 4
  %call5 = call i32 @setfeatureenables(%struct.module* %14, %struct.features* @module_features, i32* null)
  ret i32 %call5
}

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*) #2

declare i32 @deletewrapper(%struct.module*, %struct.funcwrap*) #2

declare i32 @setfeatureenables(%struct.module*, %struct.features*, i32*) #2

; Function Attrs: noinline nounwind
define i32 @finish_(%struct.module* %m) #0 {
entry:
  %m.addr = alloca %struct.module*, align 4
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.hashtable*, %struct.hashtable** @emptytable, align 4
  call void @deletehashtable(%struct.hashtable* %0)
  ret i32 0
}

declare void @deletehashtable(%struct.hashtable*) #2

; Function Attrs: noinline nounwind
define internal i32 @is_private(%struct.param* %pm) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 31
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb13
    i32 8, label %sw.bb13
    i32 1, label %sw.bb23
    i32 16, label %sw.bb33
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  %3 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %tobool = icmp ne %struct.gsu_scalar* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %4 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu1 = getelementptr inbounds %struct.param, %struct.param* %4, i32 0, i32 2
  %s2 = bitcast %union.anon.2* %gsu1 to %struct.gsu_scalar**
  %5 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s2, align 8
  %unsetfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %5, i32 0, i32 2
  %6 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %cmp = icmp ne void (%struct.param*, i32)* %6, @pps_unsetfn
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu4 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %i = bitcast %union.anon.2* %gsu4 to %struct.gsu_integer**
  %8 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %tobool5 = icmp ne %struct.gsu_integer* %8, null
  br i1 %tobool5, label %lor.lhs.false6, label %if.then11

lor.lhs.false6:                                   ; preds = %sw.bb3
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu7 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 2
  %i8 = bitcast %union.anon.2* %gsu7 to %struct.gsu_integer**
  %10 = load %struct.gsu_integer*, %struct.gsu_integer** %i8, align 8
  %unsetfn9 = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %10, i32 0, i32 2
  %11 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn9, align 4
  %cmp10 = icmp ne void (%struct.param*, i32)* %11, @ppi_unsetfn
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false6, %sw.bb3
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry, %entry
  %12 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu14 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 2
  %f = bitcast %union.anon.2* %gsu14 to %struct.gsu_float**
  %13 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %tobool15 = icmp ne %struct.gsu_float* %13, null
  br i1 %tobool15, label %lor.lhs.false16, label %if.then21

lor.lhs.false16:                                  ; preds = %sw.bb13
  %14 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu17 = getelementptr inbounds %struct.param, %struct.param* %14, i32 0, i32 2
  %f18 = bitcast %union.anon.2* %gsu17 to %struct.gsu_float**
  %15 = load %struct.gsu_float*, %struct.gsu_float** %f18, align 8
  %unsetfn19 = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %15, i32 0, i32 2
  %16 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn19, align 4
  %cmp20 = icmp ne void (%struct.param*, i32)* %16, @ppf_unsetfn
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %sw.bb13
  store i32 0, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false16
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %17 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu24 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 2
  %a = bitcast %union.anon.2* %gsu24 to %struct.gsu_array**
  %18 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %tobool25 = icmp ne %struct.gsu_array* %18, null
  br i1 %tobool25, label %lor.lhs.false26, label %if.then31

lor.lhs.false26:                                  ; preds = %sw.bb23
  %19 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu27 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 2
  %a28 = bitcast %union.anon.2* %gsu27 to %struct.gsu_array**
  %20 = load %struct.gsu_array*, %struct.gsu_array** %a28, align 8
  %unsetfn29 = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %20, i32 0, i32 2
  %21 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn29, align 4
  %cmp30 = icmp ne void (%struct.param*, i32)* %21, @ppa_unsetfn
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false26, %sw.bb23
  store i32 0, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false26
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %22 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu34 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 2
  %h = bitcast %union.anon.2* %gsu34 to %struct.gsu_hash**
  %23 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %tobool35 = icmp ne %struct.gsu_hash* %23, null
  br i1 %tobool35, label %lor.lhs.false36, label %if.then41

lor.lhs.false36:                                  ; preds = %sw.bb33
  %24 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu37 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 2
  %h38 = bitcast %union.anon.2* %gsu37 to %struct.gsu_hash**
  %25 = load %struct.gsu_hash*, %struct.gsu_hash** %h38, align 8
  %unsetfn39 = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %25, i32 0, i32 2
  %26 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn39, align 4
  %cmp40 = icmp ne void (%struct.param*, i32)* %26, @pph_unsetfn
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false36, %sw.bb33
  store i32 0, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false36
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end42, %if.end32, %if.end22, %if.end12, %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then41, %if.then31, %if.then21, %if.then11, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind
define internal void @setfn_error(%struct.param* %pm) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %1 = load i32, i32* %flags, align 8
  %or = or i32 %1, 33554432
  store i32 %or, i32* %flags, align 8
  %2 = load %struct.param*, %struct.param** %pm.addr, align 4
  %node1 = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node1, i32 0, i32 1
  %3 = load i8*, i8** %nam, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @pps_unsetfn(%struct.param* %pm, i32 %explicit) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %explicit.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_scalar*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %explicit, i32* %explicit.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  %1 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %2 = bitcast %struct.gsu_scalar* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_scalar*
  store %struct.gsu_scalar* %5, %struct.gsu_scalar** %gsu1, align 4
  %6 = load %struct.gsu_scalar*, %struct.gsu_scalar** %gsu1, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %s3 = bitcast %union.anon.2* %gsu2 to %struct.gsu_scalar**
  store %struct.gsu_scalar* %6, %struct.gsu_scalar** %s3, align 8
  %8 = load i32, i32* @locallevel, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gsu_scalar*, %struct.gsu_scalar** %gsu1, align 4
  %unsetfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %11, i32 0, i32 2
  %12 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %14 = load i32, i32* %explicit.addr, align 4
  call void %12(%struct.param* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %explicit.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %16 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %17 = bitcast %struct.gsu_closure* %16 to %struct.gsu_scalar*
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %s6 = bitcast %union.anon.2* %gsu5 to %struct.gsu_scalar**
  store %struct.gsu_scalar* %17, %struct.gsu_scalar** %s6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ppi_unsetfn(%struct.param* %pm, i32 %explicit) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %explicit.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_integer*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %explicit, i32* %explicit.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %i = bitcast %union.anon.2* %gsu to %struct.gsu_integer**
  %1 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %2 = bitcast %struct.gsu_integer* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_integer*
  store %struct.gsu_integer* %5, %struct.gsu_integer** %gsu1, align 4
  %6 = load %struct.gsu_integer*, %struct.gsu_integer** %gsu1, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %i3 = bitcast %union.anon.2* %gsu2 to %struct.gsu_integer**
  store %struct.gsu_integer* %6, %struct.gsu_integer** %i3, align 8
  %8 = load i32, i32* @locallevel, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gsu_integer*, %struct.gsu_integer** %gsu1, align 4
  %unsetfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %11, i32 0, i32 2
  %12 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %14 = load i32, i32* %explicit.addr, align 4
  call void %12(%struct.param* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %explicit.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %16 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %17 = bitcast %struct.gsu_closure* %16 to %struct.gsu_integer*
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %i6 = bitcast %union.anon.2* %gsu5 to %struct.gsu_integer**
  store %struct.gsu_integer* %17, %struct.gsu_integer** %i6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ppf_unsetfn(%struct.param* %pm, i32 %explicit) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %explicit.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_float*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %explicit, i32* %explicit.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %f = bitcast %union.anon.2* %gsu to %struct.gsu_float**
  %1 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %2 = bitcast %struct.gsu_float* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_float*
  store %struct.gsu_float* %5, %struct.gsu_float** %gsu1, align 4
  %6 = load %struct.gsu_float*, %struct.gsu_float** %gsu1, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %f3 = bitcast %union.anon.2* %gsu2 to %struct.gsu_float**
  store %struct.gsu_float* %6, %struct.gsu_float** %f3, align 8
  %8 = load i32, i32* @locallevel, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gsu_float*, %struct.gsu_float** %gsu1, align 4
  %unsetfn = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %11, i32 0, i32 2
  %12 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %14 = load i32, i32* %explicit.addr, align 4
  call void %12(%struct.param* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %explicit.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %16 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %17 = bitcast %struct.gsu_closure* %16 to %struct.gsu_float*
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %f6 = bitcast %union.anon.2* %gsu5 to %struct.gsu_float**
  store %struct.gsu_float* %17, %struct.gsu_float** %f6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ppa_unsetfn(%struct.param* %pm, i32 %explicit) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %explicit.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_array*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %explicit, i32* %explicit.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %a = bitcast %union.anon.2* %gsu to %struct.gsu_array**
  %1 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %2 = bitcast %struct.gsu_array* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_array*
  store %struct.gsu_array* %5, %struct.gsu_array** %gsu1, align 4
  %6 = load %struct.gsu_array*, %struct.gsu_array** %gsu1, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %a3 = bitcast %union.anon.2* %gsu2 to %struct.gsu_array**
  store %struct.gsu_array* %6, %struct.gsu_array** %a3, align 8
  %8 = load i32, i32* @locallevel, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gsu_array*, %struct.gsu_array** %gsu1, align 4
  %unsetfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %11, i32 0, i32 2
  %12 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %14 = load i32, i32* %explicit.addr, align 4
  call void %12(%struct.param* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %explicit.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %16 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %17 = bitcast %struct.gsu_closure* %16 to %struct.gsu_array*
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %a6 = bitcast %union.anon.2* %gsu5 to %struct.gsu_array**
  store %struct.gsu_array* %17, %struct.gsu_array** %a6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @pph_unsetfn(%struct.param* %pm, i32 %explicit) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %explicit.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_hash*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %explicit, i32* %explicit.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %h = bitcast %union.anon.2* %gsu to %struct.gsu_hash**
  %1 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %2 = bitcast %struct.gsu_hash* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_hash*
  store %struct.gsu_hash* %5, %struct.gsu_hash** %gsu1, align 4
  %6 = load %struct.gsu_hash*, %struct.gsu_hash** %gsu1, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu2 = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 2
  %h3 = bitcast %union.anon.2* %gsu2 to %struct.gsu_hash**
  store %struct.gsu_hash* %6, %struct.gsu_hash** %h3, align 8
  %8 = load i32, i32* @locallevel, align 4
  %9 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 8
  %10 = load i32, i32* %level, align 8
  %cmp = icmp sle i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gsu_hash*, %struct.gsu_hash** %gsu1, align 4
  %unsetfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %11, i32 0, i32 2
  %12 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %unsetfn, align 4
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  %14 = load i32, i32* %explicit.addr, align 4
  call void %12(%struct.param* %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %explicit.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %16 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %17 = bitcast %struct.gsu_closure* %16 to %struct.gsu_hash*
  %18 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu5 = getelementptr inbounds %struct.param, %struct.param* %18, i32 0, i32 2
  %h6 = bitcast %union.anon.2* %gsu5 to %struct.gsu_hash**
  store %struct.gsu_hash* %17, %struct.gsu_hash** %h6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

declare void @zerr(i8*, ...) #2

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*) #2

declare void @printparamnode(%struct.hashnode*, i32) #2

; Function Attrs: noinline nounwind
define internal i32 @bin_private(i8* %nam, i8** %args, %union.linkroot* %assigns, %struct.options* %ops, i32 %func) #0 {
entry:
  %retval = alloca i32, align 4
  %nam.addr = alloca i8*, align 4
  %args.addr = alloca i8**, align 4
  %assigns.addr = alloca %union.linkroot*, align 4
  %ops.addr = alloca %struct.options*, align 4
  %func.addr = alloca i32, align 4
  %from_typeset = alloca i32, align 4
  %ofake = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp27 = alloca %struct.__sigset_t, align 4
  store i8* %nam, i8** %nam.addr, align 4
  store i8** %args, i8*** %args.addr, align 4
  store %union.linkroot* %assigns, %union.linkroot** %assigns.addr, align 4
  store %struct.options* %ops, %struct.options** %ops.addr, align 4
  store i32 %func, i32* %func.addr, align 4
  store i32 1, i32* %from_typeset, align 4
  %0 = load i32, i32* @fakelevel, align 4
  store i32 %0, i32* %ofake, align 4
  store i32 0, i32* @makeprivate_error, align 4
  %1 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %ind, i32 0, i32 80
  %2 = load i8, i8* %arrayidx, align 4
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @fakelevel, align 4
  %3 = load i8*, i8** %nam.addr, align 4
  %4 = load i8**, i8*** %args.addr, align 4
  %5 = load %union.linkroot*, %union.linkroot** %assigns.addr, align 4
  %6 = load %struct.options*, %struct.options** %ops.addr, align 4
  %7 = load i32, i32* %func.addr, align 4
  %call = call i32 @bin_typeset(i8* %3, i8** %4, %union.linkroot* %5, %struct.options* %6, i32 %7)
  store i32 %call, i32* %from_typeset, align 4
  %8 = load i32, i32* %ofake, align 4
  store i32 %8, i32* @fakelevel, align 4
  %9 = load i32, i32* %from_typeset, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind2 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %ind2, i32 0, i32 84
  %11 = load i8, i8* %arrayidx3, align 4
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  %12 = load i32, i32* @locallevel, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %13 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 176), align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then11
  %14 = load i8*, i8** %nam.addr, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then11
  %15 = load i8**, i8*** %args.addr, align 4
  %16 = load %union.linkroot*, %union.linkroot** %assigns.addr, align 4
  %17 = load %struct.options*, %struct.options** %ops.addr, align 4
  %18 = load i32, i32* %func.addr, align 4
  %call14 = call i32 @bin_typeset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %15, %union.linkroot* %16, %struct.options* %17, i32 %18)
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end8
  %19 = load %struct.options*, %struct.options** %ops.addr, align 4
  %ind16 = getelementptr inbounds %struct.options, %struct.options* %19, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [128 x i8], [128 x i8]* %ind16, i32 0, i32 103
  store i8 2, i8* %arrayidx17, align 1
  %20 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %21 = load i32, i32* @locallevel, align 4
  store i32 %21, i32* @fakelevel, align 4
  call void @startparamscope()
  %22 = load i8**, i8*** %args.addr, align 4
  %23 = load %union.linkroot*, %union.linkroot** %assigns.addr, align 4
  %24 = load %struct.options*, %struct.options** %ops.addr, align 4
  %25 = load i32, i32* %func.addr, align 4
  %call18 = call i32 @bin_typeset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %22, %union.linkroot* %23, %struct.options* %24, i32 %25)
  store i32 %call18, i32* %from_typeset, align 4
  %26 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call19 = call i32 @scanhashtable(%struct.hashtable* %26, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @makeprivate, i32 0)
  call void @endparamscope()
  %27 = load i32, i32* %ofake, align 4
  store i32 %27, i32* @fakelevel, align 4
  br label %do.body

do.body:                                          ; preds = %if.end15
  %28 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool20 = icmp ne i32 %dec, 0
  br i1 %tobool20, label %if.end28, label %if.then21

if.then21:                                        ; preds = %do.body
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body22
  %29 = load i32, i32* @queue_front, align 4
  %30 = load i32, i32* @queue_rear, align 4
  %cmp23 = icmp ne i32 %29, %30
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %31, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %32 = load i32, i32* @queue_front, align 4
  %arrayidx25 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %32
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx25)
  %33 = bitcast %struct.__sigset_t* %oset to i8*
  %34 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 128, i32 4, i1 false)
  %35 = load i32, i32* @queue_front, align 4
  %arrayidx26 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %35
  %36 = load i32, i32* %arrayidx26, align 4
  call void @zhandler(i32 %36)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp27, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end28

if.end28:                                         ; preds = %do.end, %do.body
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %37 = load i32, i32* @makeprivate_error, align 4
  %38 = load i32, i32* %from_typeset, align 4
  %or = or i32 %37, %38
  store i32 %or, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end29, %if.end13, %if.then7, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare i32 @bin_typeset(i8*, i8**, %union.linkroot*, %struct.options*, i32) #2

declare void @zwarn(i8*, ...) #2

declare void @zwarnnam(i8*, i8*, ...) #2

declare void @startparamscope() #2

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32) #2

; Function Attrs: noinline nounwind
define internal void @makeprivate(%struct.hashnode* %hn, i32 %flags) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %flags.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  %gsu = alloca %struct.gsu_closure*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 8
  %3 = load i32, i32* %level, align 8
  %4 = load i32, i32* @locallevel, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %ename = getelementptr inbounds %struct.param, %struct.param* %5, i32 0, i32 6
  %6 = load i8*, i8** %ename, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags1 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags1, align 8
  %and = and i32 %8, 268435456
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then16, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %old = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 7
  %10 = load %struct.param*, %struct.param** %old, align 4
  %tobool4 = icmp ne %struct.param* %10, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %old5 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 7
  %12 = load %struct.param*, %struct.param** %old5, align 4
  %level6 = getelementptr inbounds %struct.param, %struct.param* %12, i32 0, i32 8
  %13 = load i32, i32* %level6, align 8
  %14 = load i32, i32* @locallevel, align 4
  %sub = sub nsw i32 %14, 1
  %cmp7 = icmp eq i32 %13, %sub
  br i1 %cmp7, label %if.then16, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node9 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags10 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node9, i32 0, i32 2
  %16 = load i32, i32* %flags10, align 8
  %and11 = and i32 %16, 71303168
  %cmp12 = icmp eq i32 %and11, 4194304
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false8
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %old14 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 7
  %18 = load %struct.param*, %struct.param** %old14, align 4
  %call = call i32 @is_private(%struct.param* %18)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13, %land.lhs.true, %lor.lhs.false, %if.then
  %19 = load %struct.param*, %struct.param** %pm, align 4
  %node17 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  %nam = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 1
  %20 = load i8*, i8** %nam, align 4
  call void (i8*, i8*, ...) @zwarnnam(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %20)
  store i32 1, i32* @makeprivate_error, align 4
  br label %if.end58

if.end:                                           ; preds = %land.lhs.true13, %lor.lhs.false8, %lor.lhs.false3
  %call18 = call i8* @zhalloc(i32 16)
  %21 = bitcast i8* %call18 to %struct.gsu_closure*
  store %struct.gsu_closure* %21, %struct.gsu_closure** %gsu, align 4
  %22 = load %struct.param*, %struct.param** %pm, align 4
  %node19 = getelementptr inbounds %struct.param, %struct.param* %22, i32 0, i32 0
  %flags20 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node19, i32 0, i32 2
  %23 = load i32, i32* %flags20, align 8
  %and21 = and i32 %23, 31
  switch i32 %and21, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb26
    i32 4, label %sw.bb33
    i32 8, label %sw.bb33
    i32 1, label %sw.bb40
    i32 16, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end
  %24 = load %struct.param*, %struct.param** %pm, align 4
  %gsu22 = getelementptr inbounds %struct.param, %struct.param* %24, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu22 to %struct.gsu_scalar**
  %25 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %26 = bitcast %struct.gsu_scalar* %25 to i8*
  %27 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %27, i32 0, i32 1
  store i8* %26, i8** %g, align 4
  %28 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %u = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %28, i32 0, i32 0
  %s23 = bitcast %union.anon.3* %u to %struct.gsu_scalar*
  %29 = bitcast %struct.gsu_scalar* %s23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* bitcast (%struct.gsu_scalar* @scalar_private_gsu to i8*), i32 12, i32 4, i1 false)
  %30 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %31 = bitcast %struct.gsu_closure* %30 to %struct.gsu_scalar*
  %32 = load %struct.param*, %struct.param** %pm, align 4
  %gsu24 = getelementptr inbounds %struct.param, %struct.param* %32, i32 0, i32 2
  %s25 = bitcast %union.anon.2* %gsu24 to %struct.gsu_scalar**
  store %struct.gsu_scalar* %31, %struct.gsu_scalar** %s25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %33 = load %struct.param*, %struct.param** %pm, align 4
  %gsu27 = getelementptr inbounds %struct.param, %struct.param* %33, i32 0, i32 2
  %i = bitcast %union.anon.2* %gsu27 to %struct.gsu_integer**
  %34 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %35 = bitcast %struct.gsu_integer* %34 to i8*
  %36 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %g28 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %36, i32 0, i32 1
  store i8* %35, i8** %g28, align 4
  %37 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %u29 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %37, i32 0, i32 0
  %i30 = bitcast %union.anon.3* %u29 to %struct.gsu_integer*
  %38 = bitcast %struct.gsu_integer* %i30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* bitcast (%struct.gsu_integer* @integer_private_gsu to i8*), i32 12, i32 4, i1 false)
  %39 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %40 = bitcast %struct.gsu_closure* %39 to %struct.gsu_integer*
  %41 = load %struct.param*, %struct.param** %pm, align 4
  %gsu31 = getelementptr inbounds %struct.param, %struct.param* %41, i32 0, i32 2
  %i32 = bitcast %union.anon.2* %gsu31 to %struct.gsu_integer**
  store %struct.gsu_integer* %40, %struct.gsu_integer** %i32, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end, %if.end
  %42 = load %struct.param*, %struct.param** %pm, align 4
  %gsu34 = getelementptr inbounds %struct.param, %struct.param* %42, i32 0, i32 2
  %f = bitcast %union.anon.2* %gsu34 to %struct.gsu_float**
  %43 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %44 = bitcast %struct.gsu_float* %43 to i8*
  %45 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %g35 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %45, i32 0, i32 1
  store i8* %44, i8** %g35, align 4
  %46 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %u36 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %46, i32 0, i32 0
  %f37 = bitcast %union.anon.3* %u36 to %struct.gsu_float*
  %47 = bitcast %struct.gsu_float* %f37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %47, i8* bitcast (%struct.gsu_float* @float_private_gsu to i8*), i32 12, i32 4, i1 false)
  %48 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %49 = bitcast %struct.gsu_closure* %48 to %struct.gsu_float*
  %50 = load %struct.param*, %struct.param** %pm, align 4
  %gsu38 = getelementptr inbounds %struct.param, %struct.param* %50, i32 0, i32 2
  %f39 = bitcast %union.anon.2* %gsu38 to %struct.gsu_float**
  store %struct.gsu_float* %49, %struct.gsu_float** %f39, align 8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  %51 = load %struct.param*, %struct.param** %pm, align 4
  %gsu41 = getelementptr inbounds %struct.param, %struct.param* %51, i32 0, i32 2
  %a = bitcast %union.anon.2* %gsu41 to %struct.gsu_array**
  %52 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %53 = bitcast %struct.gsu_array* %52 to i8*
  %54 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %g42 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %54, i32 0, i32 1
  store i8* %53, i8** %g42, align 4
  %55 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %u43 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %55, i32 0, i32 0
  %a44 = bitcast %union.anon.3* %u43 to %struct.gsu_array*
  %56 = bitcast %struct.gsu_array* %a44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* bitcast (%struct.gsu_array* @array_private_gsu to i8*), i32 12, i32 4, i1 false)
  %57 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %58 = bitcast %struct.gsu_closure* %57 to %struct.gsu_array*
  %59 = load %struct.param*, %struct.param** %pm, align 4
  %gsu45 = getelementptr inbounds %struct.param, %struct.param* %59, i32 0, i32 2
  %a46 = bitcast %union.anon.2* %gsu45 to %struct.gsu_array**
  store %struct.gsu_array* %58, %struct.gsu_array** %a46, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  %60 = load %struct.param*, %struct.param** %pm, align 4
  %gsu48 = getelementptr inbounds %struct.param, %struct.param* %60, i32 0, i32 2
  %h = bitcast %union.anon.2* %gsu48 to %struct.gsu_hash**
  %61 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %62 = bitcast %struct.gsu_hash* %61 to i8*
  %63 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %g49 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %63, i32 0, i32 1
  store i8* %62, i8** %g49, align 4
  %64 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %u50 = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %64, i32 0, i32 0
  %h51 = bitcast %union.anon.3* %u50 to %struct.gsu_hash*
  %65 = bitcast %struct.gsu_hash* %h51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* bitcast (%struct.gsu_hash* @hash_private_gsu to i8*), i32 12, i32 4, i1 false)
  %66 = load %struct.gsu_closure*, %struct.gsu_closure** %gsu, align 4
  %67 = bitcast %struct.gsu_closure* %66 to %struct.gsu_hash*
  %68 = load %struct.param*, %struct.param** %pm, align 4
  %gsu52 = getelementptr inbounds %struct.param, %struct.param* %68, i32 0, i32 2
  %h53 = bitcast %union.anon.2* %gsu52 to %struct.gsu_hash**
  store %struct.gsu_hash* %67, %struct.gsu_hash** %h53, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 1, i32* @makeprivate_error, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb40, %sw.bb33, %sw.bb26, %sw.bb
  %69 = load %struct.param*, %struct.param** %pm, align 4
  %node54 = getelementptr inbounds %struct.param, %struct.param* %69, i32 0, i32 0
  %flags55 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node54, i32 0, i32 2
  %70 = load i32, i32* %flags55, align 8
  %or = or i32 %70, 71319552
  store i32 %or, i32* %flags55, align 8
  %71 = load %struct.param*, %struct.param** %pm, align 4
  %level56 = getelementptr inbounds %struct.param, %struct.param* %71, i32 0, i32 8
  %72 = load i32, i32* %level56, align 8
  %sub57 = sub nsw i32 %72, 1
  store i32 %sub57, i32* %level56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then16, %sw.epilog, %entry
  ret void
}

declare void @endparamscope() #2

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #2

declare void @zhandler(i32) #2

declare i8* @zhalloc(i32) #2

; Function Attrs: noinline nounwind
define internal i8* @pps_getfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_scalar*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  %1 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %2 = bitcast %struct.gsu_scalar* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_scalar*
  store %struct.gsu_scalar* %5, %struct.gsu_scalar** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_scalar*, %struct.gsu_scalar** %gsu1, align 4
  %getfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %9, i32 0, i32 0
  %10 = load i8* (%struct.param*)*, i8* (%struct.param*)** %getfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call i8* %10(%struct.param* %11)
  store i8* %call, i8** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call i8* @hcalloc(i32 1)
  store i8* %call2, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i8*, i8** %retval, align 4
  ret i8* %12
}

; Function Attrs: noinline nounwind
define internal void @pps_setfn(%struct.param* %pm, i8* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_scalar*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8* %x, i8** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %s = bitcast %union.anon.2* %gsu to %struct.gsu_scalar**
  %1 = load %struct.gsu_scalar*, %struct.gsu_scalar** %s, align 8
  %2 = bitcast %struct.gsu_scalar* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_scalar*
  store %struct.gsu_scalar* %5, %struct.gsu_scalar** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_scalar*, %struct.gsu_scalar** %gsu1, align 4
  %setfn = getelementptr inbounds %struct.gsu_scalar, %struct.gsu_scalar* %9, i32 0, i32 1
  %10 = load void (%struct.param*, i8*)*, void (%struct.param*, i8*)** %setfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %12 = load i8*, i8** %x.addr, align 4
  call void %10(%struct.param* %11, i8* %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @setfn_error(%struct.param* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @hcalloc(i32) #2

; Function Attrs: noinline nounwind
define internal i32 @ppi_getfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i32, align 4
  %pm.addr = alloca %struct.param*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_integer*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %i = bitcast %union.anon.2* %gsu to %struct.gsu_integer**
  %1 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %2 = bitcast %struct.gsu_integer* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_integer*
  store %struct.gsu_integer* %5, %struct.gsu_integer** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_integer*, %struct.gsu_integer** %gsu1, align 4
  %getfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %9, i32 0, i32 0
  %10 = load i32 (%struct.param*)*, i32 (%struct.param*)** %getfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call i32 %10(%struct.param* %11)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind
define internal void @ppi_setfn(%struct.param* %pm, i32 %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i32, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_integer*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %i = bitcast %union.anon.2* %gsu to %struct.gsu_integer**
  %1 = load %struct.gsu_integer*, %struct.gsu_integer** %i, align 8
  %2 = bitcast %struct.gsu_integer* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_integer*
  store %struct.gsu_integer* %5, %struct.gsu_integer** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_integer*, %struct.gsu_integer** %gsu1, align 4
  %setfn = getelementptr inbounds %struct.gsu_integer, %struct.gsu_integer* %9, i32 0, i32 1
  %10 = load void (%struct.param*, i32)*, void (%struct.param*, i32)** %setfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %12 = load i32, i32* %x.addr, align 4
  call void %10(%struct.param* %11, i32 %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @setfn_error(%struct.param* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal double @ppf_getfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca double, align 8
  %pm.addr = alloca %struct.param*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_float*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %f = bitcast %union.anon.2* %gsu to %struct.gsu_float**
  %1 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %2 = bitcast %struct.gsu_float* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_float*
  store %struct.gsu_float* %5, %struct.gsu_float** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_float*, %struct.gsu_float** %gsu1, align 4
  %getfn = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %9, i32 0, i32 0
  %10 = load double (%struct.param*)*, double (%struct.param*)** %getfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call double %10(%struct.param* %11)
  store double %call, double* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load double, double* %retval, align 8
  ret double %12
}

; Function Attrs: noinline nounwind
define internal void @ppf_setfn(%struct.param* %pm, double %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca double, align 8
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_float*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store double %x, double* %x.addr, align 8
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %f = bitcast %union.anon.2* %gsu to %struct.gsu_float**
  %1 = load %struct.gsu_float*, %struct.gsu_float** %f, align 8
  %2 = bitcast %struct.gsu_float* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_float*
  store %struct.gsu_float* %5, %struct.gsu_float** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_float*, %struct.gsu_float** %gsu1, align 4
  %setfn = getelementptr inbounds %struct.gsu_float, %struct.gsu_float* %9, i32 0, i32 1
  %10 = load void (%struct.param*, double)*, void (%struct.param*, double)** %setfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %12 = load double, double* %x.addr, align 8
  call void %10(%struct.param* %11, double %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @setfn_error(%struct.param* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal i8** @ppa_getfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca i8**, align 4
  %pm.addr = alloca %struct.param*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_array*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %a = bitcast %union.anon.2* %gsu to %struct.gsu_array**
  %1 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %2 = bitcast %struct.gsu_array* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_array*
  store %struct.gsu_array* %5, %struct.gsu_array** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_array*, %struct.gsu_array** %gsu1, align 4
  %getfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %9, i32 0, i32 0
  %10 = load i8** (%struct.param*)*, i8** (%struct.param*)** %getfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call i8** %10(%struct.param* %11)
  store i8** %call, i8*** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i8** @ppa_getfn.nullarray, i8*** %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i8**, i8*** %retval, align 4
  ret i8** %12
}

; Function Attrs: noinline nounwind
define internal void @ppa_setfn(%struct.param* %pm, i8** %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca i8**, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_array*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %a = bitcast %union.anon.2* %gsu to %struct.gsu_array**
  %1 = load %struct.gsu_array*, %struct.gsu_array** %a, align 8
  %2 = bitcast %struct.gsu_array* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_array*
  store %struct.gsu_array* %5, %struct.gsu_array** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_array*, %struct.gsu_array** %gsu1, align 4
  %setfn = getelementptr inbounds %struct.gsu_array, %struct.gsu_array* %9, i32 0, i32 1
  %10 = load void (%struct.param*, i8**)*, void (%struct.param*, i8**)** %setfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %12 = load i8**, i8*** %x.addr, align 4
  call void %10(%struct.param* %11, i8** %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @setfn_error(%struct.param* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal %struct.hashtable* @pph_getfn(%struct.param* %pm) #0 {
entry:
  %retval = alloca %struct.hashtable*, align 4
  %pm.addr = alloca %struct.param*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_hash*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %h = bitcast %union.anon.2* %gsu to %struct.gsu_hash**
  %1 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %2 = bitcast %struct.gsu_hash* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_hash*
  store %struct.gsu_hash* %5, %struct.gsu_hash** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_hash*, %struct.gsu_hash** %gsu1, align 4
  %getfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %9, i32 0, i32 0
  %10 = load %struct.hashtable* (%struct.param*)*, %struct.hashtable* (%struct.param*)** %getfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %call = call %struct.hashtable* %10(%struct.param* %11)
  store %struct.hashtable* %call, %struct.hashtable** %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct.hashtable*, %struct.hashtable** @emptytable, align 4
  store %struct.hashtable* %12, %struct.hashtable** %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load %struct.hashtable*, %struct.hashtable** %retval, align 4
  ret %struct.hashtable* %13
}

; Function Attrs: noinline nounwind
define internal void @pph_setfn(%struct.param* %pm, %struct.hashtable* %x) #0 {
entry:
  %pm.addr = alloca %struct.param*, align 4
  %x.addr = alloca %struct.hashtable*, align 4
  %c = alloca %struct.gsu_closure*, align 4
  %gsu1 = alloca %struct.gsu_hash*, align 4
  store %struct.param* %pm, %struct.param** %pm.addr, align 4
  store %struct.hashtable* %x, %struct.hashtable** %x.addr, align 4
  %0 = load %struct.param*, %struct.param** %pm.addr, align 4
  %gsu = getelementptr inbounds %struct.param, %struct.param* %0, i32 0, i32 2
  %h = bitcast %union.anon.2* %gsu to %struct.gsu_hash**
  %1 = load %struct.gsu_hash*, %struct.gsu_hash** %h, align 8
  %2 = bitcast %struct.gsu_hash* %1 to %struct.gsu_closure*
  store %struct.gsu_closure* %2, %struct.gsu_closure** %c, align 4
  %3 = load %struct.gsu_closure*, %struct.gsu_closure** %c, align 4
  %g = getelementptr inbounds %struct.gsu_closure, %struct.gsu_closure* %3, i32 0, i32 1
  %4 = load i8*, i8** %g, align 4
  %5 = bitcast i8* %4 to %struct.gsu_hash*
  store %struct.gsu_hash* %5, %struct.gsu_hash** %gsu1, align 4
  %6 = load i32, i32* @locallevel, align 4
  %7 = load %struct.param*, %struct.param** %pm.addr, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 8
  %8 = load i32, i32* %level, align 8
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gsu_hash*, %struct.gsu_hash** %gsu1, align 4
  %setfn = getelementptr inbounds %struct.gsu_hash, %struct.gsu_hash* %9, i32 0, i32 1
  %10 = load void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, %struct.hashtable*)** %setfn, align 4
  %11 = load %struct.param*, %struct.param** %pm.addr, align 4
  %12 = load %struct.hashtable*, %struct.hashtable** %x.addr, align 4
  call void %10(%struct.param* %11, %struct.hashtable* %12)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.param*, %struct.param** %pm.addr, align 4
  call void @setfn_error(%struct.param* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @wrap_private(%struct.eprog* %prog, %struct.funcwrap* %w, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.eprog*, align 4
  %w.addr = alloca %struct.funcwrap*, align 4
  %name.addr = alloca i8*, align 4
  %owl = alloca i32, align 4
  store %struct.eprog* %prog, %struct.eprog** %prog.addr, align 4
  store %struct.funcwrap* %w, %struct.funcwrap** %w.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i32, i32* @wrap_private.wraplevel, align 4
  %1 = load i32, i32* @locallevel, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @wrap_private.wraplevel, align 4
  store i32 %2, i32* %owl, align 4
  %3 = load i32, i32* @locallevel, align 4
  store i32 %3, i32* @wrap_private.wraplevel, align 4
  %4 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call = call i32 @scanhashtable(%struct.hashtable* %4, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scopeprivate, i32 33554432)
  %5 = load %struct.eprog*, %struct.eprog** %prog.addr, align 4
  %6 = load %struct.funcwrap*, %struct.funcwrap** %w.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  call void @runshfunc(%struct.eprog* %5, %struct.funcwrap* %6, i8* %7)
  %8 = load %struct.hashtable*, %struct.hashtable** @paramtab, align 4
  %call1 = call i32 @scanhashtable(%struct.hashtable* %8, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scopeprivate, i32 0)
  %9 = load i32, i32* %owl, align 4
  store i32 %9, i32* @wrap_private.wraplevel, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind
define internal void @scopeprivate(%struct.hashnode* %hn, i32 %onoff) #0 {
entry:
  %hn.addr = alloca %struct.hashnode*, align 4
  %onoff.addr = alloca i32, align 4
  %pm = alloca %struct.param*, align 4
  store %struct.hashnode* %hn, %struct.hashnode** %hn.addr, align 4
  store i32 %onoff, i32* %onoff.addr, align 4
  %0 = load %struct.hashnode*, %struct.hashnode** %hn.addr, align 4
  %1 = bitcast %struct.hashnode* %0 to %struct.param*
  store %struct.param* %1, %struct.param** %pm, align 4
  %2 = load %struct.param*, %struct.param** %pm, align 4
  %level = getelementptr inbounds %struct.param, %struct.param* %2, i32 0, i32 8
  %3 = load i32, i32* %level, align 8
  %4 = load i32, i32* @locallevel, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end56

if.then:                                          ; preds = %entry
  %5 = load %struct.param*, %struct.param** %pm, align 4
  %call = call i32 @is_private(%struct.param* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  br label %if.end56

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %onoff.addr, align 4
  %cmp2 = icmp eq i32 %6, 33554432
  br i1 %cmp2, label %if.then3, label %if.else25

if.then3:                                         ; preds = %if.end
  %7 = load %struct.param*, %struct.param** %pm, align 4
  %node = getelementptr inbounds %struct.param, %struct.param* %7, i32 0, i32 0
  %flags = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node, i32 0, i32 2
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 33554432
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %9 = load %struct.param*, %struct.param** %pm, align 4
  %node6 = getelementptr inbounds %struct.param, %struct.param* %9, i32 0, i32 0
  %flags7 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node6, i32 0, i32 2
  %10 = load i32, i32* %flags7, align 8
  %or = or i32 %10, 268435456
  store i32 %or, i32* %flags7, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then3
  %11 = load %struct.param*, %struct.param** %pm, align 4
  %node8 = getelementptr inbounds %struct.param, %struct.param* %11, i32 0, i32 0
  %flags9 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node8, i32 0, i32 2
  %12 = load i32, i32* %flags9, align 8
  %or10 = or i32 %12, 33554432
  store i32 %or10, i32* %flags9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %13 = load %struct.param*, %struct.param** %pm, align 4
  %node12 = getelementptr inbounds %struct.param, %struct.param* %13, i32 0, i32 0
  %flags13 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node12, i32 0, i32 2
  %14 = load i32, i32* %flags13, align 8
  %and14 = and i32 %14, 1024
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.end11
  %15 = load %struct.param*, %struct.param** %pm, align 4
  %node17 = getelementptr inbounds %struct.param, %struct.param* %15, i32 0, i32 0
  %flags18 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node17, i32 0, i32 2
  %16 = load i32, i32* %flags18, align 8
  %or19 = or i32 %16, 16777216
  store i32 %or19, i32* %flags18, align 8
  br label %if.end24

if.else20:                                        ; preds = %if.end11
  %17 = load %struct.param*, %struct.param** %pm, align 4
  %node21 = getelementptr inbounds %struct.param, %struct.param* %17, i32 0, i32 0
  %flags22 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node21, i32 0, i32 2
  %18 = load i32, i32* %flags22, align 8
  %or23 = or i32 %18, 1024
  store i32 %or23, i32* %flags22, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then16
  br label %if.end55

if.else25:                                        ; preds = %if.end
  %19 = load %struct.param*, %struct.param** %pm, align 4
  %node26 = getelementptr inbounds %struct.param, %struct.param* %19, i32 0, i32 0
  %flags27 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node26, i32 0, i32 2
  %20 = load i32, i32* %flags27, align 8
  %and28 = and i32 %20, 268435456
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.else25
  %21 = load %struct.param*, %struct.param** %pm, align 4
  %node31 = getelementptr inbounds %struct.param, %struct.param* %21, i32 0, i32 0
  %flags32 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node31, i32 0, i32 2
  %22 = load i32, i32* %flags32, align 8
  %or33 = or i32 %22, 33554432
  store i32 %or33, i32* %flags32, align 8
  br label %if.end38

if.else34:                                        ; preds = %if.else25
  %23 = load %struct.param*, %struct.param** %pm, align 4
  %node35 = getelementptr inbounds %struct.param, %struct.param* %23, i32 0, i32 0
  %flags36 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node35, i32 0, i32 2
  %24 = load i32, i32* %flags36, align 8
  %and37 = and i32 %24, -33554433
  store i32 %and37, i32* %flags36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then30
  %25 = load %struct.param*, %struct.param** %pm, align 4
  %node39 = getelementptr inbounds %struct.param, %struct.param* %25, i32 0, i32 0
  %flags40 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node39, i32 0, i32 2
  %26 = load i32, i32* %flags40, align 8
  %and41 = and i32 %26, 16777216
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.end38
  %27 = load %struct.param*, %struct.param** %pm, align 4
  %node44 = getelementptr inbounds %struct.param, %struct.param* %27, i32 0, i32 0
  %flags45 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node44, i32 0, i32 2
  %28 = load i32, i32* %flags45, align 8
  %or46 = or i32 %28, 1024
  store i32 %or46, i32* %flags45, align 8
  br label %if.end51

if.else47:                                        ; preds = %if.end38
  %29 = load %struct.param*, %struct.param** %pm, align 4
  %node48 = getelementptr inbounds %struct.param, %struct.param* %29, i32 0, i32 0
  %flags49 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node48, i32 0, i32 2
  %30 = load i32, i32* %flags49, align 8
  %and50 = and i32 %30, -1025
  store i32 %and50, i32* %flags49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then43
  %31 = load %struct.param*, %struct.param** %pm, align 4
  %node52 = getelementptr inbounds %struct.param, %struct.param* %31, i32 0, i32 0
  %flags53 = getelementptr inbounds %struct.hashnode, %struct.hashnode* %node52, i32 0, i32 2
  %32 = load i32, i32* %flags53, align 8
  %and54 = and i32 %32, -285212673
  store i32 %and54, i32* %flags53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end24
  br label %if.end56

if.end56:                                         ; preds = %if.then1, %if.end55, %entry
  ret void
}

declare void @runshfunc(%struct.eprog*, %struct.funcwrap*, i8*) #2

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
