; ModuleID = 'pattern.c'
source_filename = "pattern.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.__sigset_t = type { [32 x i32] }
%struct.rpat = type { i8*, i8*, i8*, i8*, i32, [9 x i8*], [9 x i8*], i32, i32 }
%struct._IO_FILE = type opaque
%struct.zpc_disables_save = type { %struct.zpc_disables_save*, i32 }
%struct.__mbstate_t = type { i32, i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.upat = type { i32 }
%struct.patstralloc = type { i32, i32, i8*, i8*, i32 }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"?(\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"*(\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"+(\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"!(\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\5C!(\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"@(\00", align 1
@zpc_strings = global [19 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)], align 4
@opts = external global [181 x i8], align 1
@patglobflags = internal global i32 0, align 4
@queueing_enabled = external global i32, align 4
@patalloc = internal global i32 0, align 4
@patout = internal global i8* null, align 4
@patcode = internal global i8* null, align 4
@patsize = internal global i32 0, align 4
@patparse = internal global i8* null, align 4
@patstart = internal global i8* null, align 4
@patnpar = internal global i32 0, align 4
@patflags = internal global i32 0, align 4
@zpc_special = common global [19 x i8] zeroinitializer, align 1
@typtab = external global [256 x i16], align 2
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@rn_offs = internal global i32 0, align 4
@colon_stuffs = internal global [20 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* null], align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"[:\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c":]\00", align 1
@forceerrs = common global i32 0, align 4
@errsfound = common global i32 0, align 4
@pathpos = external global i32, align 4
@pathbuf = external global i8*, align 4
@pattrystate = internal global %struct.rpat zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"MATCH\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"MBEGIN\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"MEND\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"mbegin\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"mend\00", align 1
@zpc_disables = common global [19 x i8] zeroinitializer, align 1
@stdout = external constant %struct._IO_FILE*, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"invalid pattern: %s\00", align 1
@zpc_disables_stack = internal global %struct.zpc_disables_save* null, align 4
@zpc_chars = internal constant [19 x i8] c"/\00\8E\8A\98\88\97\87\91\94\86\84\A0\97\87+\9C!@", align 1
@ztokens = external global [0 x i8], align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"IDENT\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"IFSSPACE\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"INCOMPLETE\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@shiftstate = internal global %struct.__mbstate_t zeroinitializer, align 4
@exactpos = internal global i8* null, align 4
@exactend = internal global i8* null, align 4
@errflag = external global i32, align 4

; Function Attrs: noinline nounwind
define void @patcompstart() #0 {
entry:
  call void @patcompcharsset()
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 26), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @patglobflags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 512, i32* @patglobflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* @patglobflags, align 4
  %or = or i32 %2, 4096
  store i32 %or, i32* @patglobflags, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define internal void @patcompcharsset() #0 {
entry:
  %spp = alloca i8*, align 4
  %disp = alloca i8*, align 4
  %i = alloca i32, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_chars, i32 0, i32 0), i32 19, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i8** %spp, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8** %disp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %disp, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %spp, align 4
  store i8 -94, i8* %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i8*, i8** %spp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %spp, align 4
  %6 = load i8*, i8** %disp, align 4
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %disp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %tobool2 = icmp ne i8 %7, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.end
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 10), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 4), align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 98), align 1
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 17), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 16), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 15), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 14), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 13), align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %9 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %tobool8 = icmp ne i8 %9, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 9), align 1
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  ret void
}

; Function Attrs: noinline nounwind
define %struct.patprog* @patcompile(i8* %exp, i32 %inflags, i8** %endexp) #0 {
entry:
  %retval = alloca %struct.patprog*, align 4
  %exp.addr = alloca i8*, align 4
  %inflags.addr = alloca i32, align 4
  %endexp.addr = alloca i8**, align 4
  %flags = alloca i32, align 4
  %len = alloca i32, align 4
  %startoff = alloca i32, align 4
  %pscan = alloca %union.upat*, align 4
  %lng = alloca i8*, align 4
  %strp = alloca i8*, align 4
  %p = alloca %struct.patprog*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp55 = alloca %struct.__sigset_t, align 4
  %dst = alloca i8*, align 4
  %next = alloca %union.upat*, align 4
  %opnd = alloca i8*, align 4
  %mtest = alloca i8*, align 4
  %oplen = alloca i32, align 4
  %ilen = alloca i32, align 4
  %nmeta = alloca i32, align 4
  %newp = alloca %struct.patprog*, align 4
  %newp268 = alloca %struct.patprog*, align 4
  %oset285 = alloca %struct.__sigset_t, align 4
  %tmp289 = alloca %struct.__sigset_t, align 4
  %tmp291 = alloca %struct.__sigset_t, align 4
  store i8* %exp, i8** %exp.addr, align 4
  store i32 %inflags, i32* %inflags.addr, align 4
  store i8** %endexp, i8*** %endexp.addr, align 4
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %len, align 4
  store i8* null, i8** %strp, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  store i32 36, i32* %startoff, align 4
  %1 = load i32, i32* %startoff, align 4
  %add = add i32 %1, 4
  %sub = sub i32 %add, 1
  %and = and i32 %sub, -4
  store i32 %and, i32* %startoff, align 4
  %2 = load i32, i32* @patalloc, align 4
  %cmp = icmp ne i32 %2, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @patout, align 4
  store i32 256, i32* @patalloc, align 4
  %call = call i8* @zrealloc(i8* %3, i32 256)
  store i8* %call, i8** @patout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @patout, align 4
  %5 = load i32, i32* %startoff, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %5
  store i8* %add.ptr, i8** @patcode, align 4
  %6 = load i8*, i8** @patcode, align 4
  %7 = load i8*, i8** @patout, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* @patsize, align 4
  %8 = load i8*, i8** %exp.addr, align 4
  store i8* %8, i8** @patparse, align 4
  store i8* %8, i8** @patstart, align 4
  store i32 1, i32* @patnpar, align 4
  %9 = load i32, i32* %inflags.addr, align 4
  %and1 = and i32 %9, -2081
  store i32 %and1, i32* @patflags, align 4
  %10 = load i32, i32* @patflags, align 4
  %and2 = and i32 %10, 1
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @patcompcharsset()
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), align 1
  %11 = load i8*, i8** @patparse, align 4
  call void @remnulargs(i8* %11)
  %12 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  store i32 4096, i32* @patglobflags, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then3
  store i32 0, i32* @patglobflags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %13 = load i32, i32* @patflags, align 4
  %and8 = and i32 %13, 4096
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %14 = load i32, i32* @patglobflags, align 4
  %or = or i32 %14, 256
  store i32 %or, i32* @patglobflags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  %15 = load i32, i32* @patglobflags, align 4
  %16 = load i8*, i8** @patout, align 4
  %17 = bitcast i8* %16 to %struct.patprog*
  %globflags = getelementptr inbounds %struct.patprog, %struct.patprog* %17, i32 0, i32 4
  store i32 %15, i32* %globflags, align 4
  %18 = load i32, i32* @patflags, align 4
  %and12 = and i32 %18, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end68, label %if.then14

if.then14:                                        ; preds = %if.end11
  %19 = load i32, i32* @patglobflags, align 4
  %and15 = and i32 %19, -4097
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end33, label %if.then17

if.then17:                                        ; preds = %if.then14
  %20 = load i8*, i8** %exp.addr, align 4
  %21 = load i8, i8* %20, align 1
  %conv = sext i8 %21 to i32
  %cmp18 = icmp eq i32 %conv, -95
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %22 = load i8*, i8** %exp.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %exp.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %23 = load i8*, i8** %exp.addr, align 4
  store i8* %23, i8** %strp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %24 = load i8*, i8** %strp, align 4
  %25 = load i8, i8* %24, align 1
  %conv22 = sext i8 %25 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %26 = load i32, i32* @patflags, align 4
  %and24 = and i32 %26, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load i8*, i8** %strp, align 4
  %28 = load i8, i8* %27, align 1
  %conv26 = sext i8 %28 to i32
  %cmp27 = icmp ne i32 %conv26, 47
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %29 = load i8*, i8** %strp, align 4
  %30 = load i8, i8* %29, align 1
  %idxprom = zext i8 %30 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %31 = load i16, i16* %arrayidx, align 2
  %conv29 = sext i16 %31 to i32
  %and30 = and i32 %conv29, 16
  %tobool31 = icmp ne i32 %and30, 0
  %lnot = xor i1 %tobool31, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %for.cond
  %32 = phi i1 [ false, %lor.lhs.false ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %32, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i8*, i8** %strp, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr32, i8** %strp, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.then14
  %34 = load i8*, i8** %strp, align 4
  %tobool34 = icmp ne i8* %34, null
  br i1 %tobool34, label %lor.lhs.false35, label %if.then42

lor.lhs.false35:                                  ; preds = %if.end33
  %35 = load i8*, i8** %strp, align 4
  %36 = load i8, i8* %35, align 1
  %conv36 = sext i8 %36 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.else59

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %37 = load i8*, i8** %strp, align 4
  %38 = load i8, i8* %37, align 1
  %conv39 = sext i8 %38 to i32
  %cmp40 = icmp ne i32 %conv39, 47
  br i1 %cmp40, label %if.then42, label %if.else59

if.then42:                                        ; preds = %land.lhs.true38, %if.end33
  store i8* null, i8** %strp, align 4
  %call43 = call i32 @patcompswitch(i32 0, i32* %flags)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end58

if.then46:                                        ; preds = %if.then42
  br label %do.body

do.body:                                          ; preds = %if.then46
  %39 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool47 = icmp ne i32 %dec, 0
  br i1 %tobool47, label %if.end56, label %if.then48

if.then48:                                        ; preds = %do.body
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body49
  %40 = load i32, i32* @queue_front, align 4
  %41 = load i32, i32* @queue_rear, align 4
  %cmp50 = icmp ne i32 %40, %41
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i32, i32* @queue_front, align 4
  %add52 = add nsw i32 %42, 1
  %rem = srem i32 %add52, 128
  store i32 %rem, i32* @queue_front, align 4
  %43 = load i32, i32* @queue_front, align 4
  %arrayidx53 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %43
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx53)
  %44 = bitcast %struct.__sigset_t* %oset to i8*
  %45 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 128, i32 4, i1 false)
  %46 = load i32, i32* @queue_front, align 4
  %arrayidx54 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %46
  %47 = load i32, i32* %arrayidx54, align 4
  call void @zhandler(i32 %47)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp55, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end56

if.end56:                                         ; preds = %do.end, %do.body
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  store %struct.patprog* null, %struct.patprog** %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then42
  br label %if.end67

if.else59:                                        ; preds = %land.lhs.true38, %lor.lhs.false35
  %48 = load i8*, i8** %strp, align 4
  store i8* %48, i8** @patparse, align 4
  %49 = load i8*, i8** %strp, align 4
  %50 = load i8*, i8** %exp.addr, align 4
  %sub.ptr.lhs.cast60 = ptrtoint i8* %49 to i32
  %sub.ptr.rhs.cast61 = ptrtoint i8* %50 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  store i32 %sub.ptr.sub62, i32* %len, align 4
  %51 = load i8*, i8** %exp.addr, align 4
  %52 = load i32, i32* %len, align 4
  %add63 = add nsw i32 %52, 1
  call void @patadd(i8* %51, i32 0, i32 %add63, i32 0)
  %53 = load i8*, i8** @patout, align 4
  %54 = load i32, i32* %startoff, align 4
  %55 = load i32, i32* %len, align 4
  %add64 = add nsw i32 %54, %55
  %arrayidx65 = getelementptr inbounds i8, i8* %53, i32 %add64
  store i8 0, i8* %arrayidx65, align 1
  %56 = load i32, i32* @patflags, align 4
  %or66 = or i32 %56, 32
  store i32 %or66, i32* @patflags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else59, %if.end58
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end11
  %57 = load i8*, i8** @patout, align 4
  %58 = bitcast i8* %57 to %struct.patprog*
  store %struct.patprog* %58, %struct.patprog** %p, align 4
  %59 = load i32, i32* %startoff, align 4
  %60 = load %struct.patprog*, %struct.patprog** %p, align 4
  %startoff69 = getelementptr inbounds %struct.patprog, %struct.patprog* %60, i32 0, i32 0
  store i32 %59, i32* %startoff69, align 4
  %61 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patstartch = getelementptr inbounds %struct.patprog, %struct.patprog* %61, i32 0, i32 8
  store i8 0, i8* %patstartch, align 4
  %62 = load i32, i32* @patglobflags, align 4
  %63 = load %struct.patprog*, %struct.patprog** %p, align 4
  %globend = getelementptr inbounds %struct.patprog, %struct.patprog* %63, i32 0, i32 5
  store i32 %62, i32* %globend, align 4
  %64 = load i32, i32* @patflags, align 4
  %65 = load %struct.patprog*, %struct.patprog** %p, align 4
  %flags70 = getelementptr inbounds %struct.patprog, %struct.patprog* %65, i32 0, i32 6
  store i32 %64, i32* %flags70, align 4
  %66 = load %struct.patprog*, %struct.patprog** %p, align 4
  %mustoff = getelementptr inbounds %struct.patprog, %struct.patprog* %66, i32 0, i32 2
  store i32 0, i32* %mustoff, align 4
  %67 = load i32, i32* @patsize, align 4
  %68 = load %struct.patprog*, %struct.patprog** %p, align 4
  %size = getelementptr inbounds %struct.patprog, %struct.patprog* %68, i32 0, i32 1
  store i32 %67, i32* %size, align 4
  %69 = load i32, i32* %len, align 4
  %70 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patmlen = getelementptr inbounds %struct.patprog, %struct.patprog* %70, i32 0, i32 3
  store i32 %69, i32* %patmlen, align 4
  %71 = load i32, i32* @patnpar, align 4
  %sub71 = sub nsw i32 %71, 1
  %72 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patnpar = getelementptr inbounds %struct.patprog, %struct.patprog* %72, i32 0, i32 7
  store i32 %sub71, i32* %patnpar, align 4
  %73 = load i8*, i8** %strp, align 4
  %tobool72 = icmp ne i8* %73, null
  br i1 %tobool72, label %if.end257, label %if.then73

if.then73:                                        ; preds = %if.end68
  %74 = load i8*, i8** @patout, align 4
  %75 = load i32, i32* %startoff, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %74, i32 %75
  %76 = bitcast i8* %add.ptr74 to %union.upat*
  store %union.upat* %76, %union.upat** %pscan, align 4
  %77 = load i32, i32* @patflags, align 4
  %and75 = and i32 %77, 4
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.end256, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.then73
  %78 = load %union.upat*, %union.upat** %pscan, align 4
  %l = bitcast %union.upat* %78 to i32*
  %79 = load i32, i32* %l, align 4
  %shr = ashr i32 %79, 8
  store i32 %shr, i32* @rn_offs, align 4
  %tobool78 = icmp ne i32 %shr, 0
  br i1 %tobool78, label %cond.true, label %cond.false86

cond.true:                                        ; preds = %land.lhs.true77
  %80 = load %union.upat*, %union.upat** %pscan, align 4
  %l79 = bitcast %union.upat* %80 to i32*
  %81 = load i32, i32* %l79, align 4
  %and80 = and i32 %81, 255
  %cmp81 = icmp eq i32 %and80, 3
  br i1 %cmp81, label %cond.true83, label %cond.false

cond.true83:                                      ; preds = %cond.true
  %82 = load %union.upat*, %union.upat** %pscan, align 4
  %83 = load i32, i32* @rn_offs, align 4
  %idx.neg = sub i32 0, %83
  %add.ptr84 = getelementptr inbounds %union.upat, %union.upat* %82, i32 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %84 = load %union.upat*, %union.upat** %pscan, align 4
  %85 = load i32, i32* @rn_offs, align 4
  %add.ptr85 = getelementptr inbounds %union.upat, %union.upat* %84, i32 %85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true83
  %cond = phi %union.upat* [ %add.ptr84, %cond.true83 ], [ %add.ptr85, %cond.false ]
  br label %cond.end87

cond.false86:                                     ; preds = %land.lhs.true77
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.end
  %cond88 = phi %union.upat* [ %cond, %cond.end ], [ null, %cond.false86 ]
  %l89 = bitcast %union.upat* %cond88 to i32*
  %86 = load i32, i32* %l89, align 4
  %and90 = and i32 %86, 255
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.then93, label %if.end256

if.then93:                                        ; preds = %cond.end87
  %87 = load %union.upat*, %union.upat** %pscan, align 4
  %add.ptr94 = getelementptr inbounds %union.upat, %union.upat* %87, i32 1
  store %union.upat* %add.ptr94, %union.upat** %pscan, align 4
  %88 = load i32, i32* %flags, align 4
  %and95 = and i32 %88, 4
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.else187

if.then97:                                        ; preds = %if.then93
  %89 = load i8*, i8** @patout, align 4
  %90 = load i32, i32* %startoff, align 4
  %add.ptr99 = getelementptr inbounds i8, i8* %89, i32 %90
  store i8* %add.ptr99, i8** %dst, align 4
  %91 = load %struct.patprog*, %struct.patprog** %p, align 4
  %flags101 = getelementptr inbounds %struct.patprog, %struct.patprog* %91, i32 0, i32 6
  %92 = load i32, i32* %flags101, align 4
  %or102 = or i32 %92, 32
  store i32 %or102, i32* %flags101, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc178, %if.then97
  %93 = load %union.upat*, %union.upat** %pscan, align 4
  %tobool104 = icmp ne %union.upat* %93, null
  br i1 %tobool104, label %for.body105, label %for.end179

for.body105:                                      ; preds = %for.cond103
  %94 = load %union.upat*, %union.upat** %pscan, align 4
  %l106 = bitcast %union.upat* %94 to i32*
  %95 = load i32, i32* %l106, align 4
  %shr107 = ashr i32 %95, 8
  store i32 %shr107, i32* @rn_offs, align 4
  %tobool108 = icmp ne i32 %shr107, 0
  br i1 %tobool108, label %cond.true109, label %cond.false121

cond.true109:                                     ; preds = %for.body105
  %96 = load %union.upat*, %union.upat** %pscan, align 4
  %l110 = bitcast %union.upat* %96 to i32*
  %97 = load i32, i32* %l110, align 4
  %and111 = and i32 %97, 255
  %cmp112 = icmp eq i32 %and111, 3
  br i1 %cmp112, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %cond.true109
  %98 = load %union.upat*, %union.upat** %pscan, align 4
  %99 = load i32, i32* @rn_offs, align 4
  %idx.neg115 = sub i32 0, %99
  %add.ptr116 = getelementptr inbounds %union.upat, %union.upat* %98, i32 %idx.neg115
  br label %cond.end119

cond.false117:                                    ; preds = %cond.true109
  %100 = load %union.upat*, %union.upat** %pscan, align 4
  %101 = load i32, i32* @rn_offs, align 4
  %add.ptr118 = getelementptr inbounds %union.upat, %union.upat* %100, i32 %101
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false117, %cond.true114
  %cond120 = phi %union.upat* [ %add.ptr116, %cond.true114 ], [ %add.ptr118, %cond.false117 ]
  br label %cond.end122

cond.false121:                                    ; preds = %for.body105
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false121, %cond.end119
  %cond123 = phi %union.upat* [ %cond120, %cond.end119 ], [ null, %cond.false121 ]
  store %union.upat* %cond123, %union.upat** %next, align 4
  %102 = load %union.upat*, %union.upat** %pscan, align 4
  %l124 = bitcast %union.upat* %102 to i32*
  %103 = load i32, i32* %l124, align 4
  %and125 = and i32 %103, 255
  %cmp126 = icmp eq i32 %and125, 4
  br i1 %cmp126, label %if.then128, label %if.end177

if.then128:                                       ; preds = %cond.end122
  %104 = load %union.upat*, %union.upat** %pscan, align 4
  %add.ptr130 = getelementptr inbounds %union.upat, %union.upat* %104, i32 2
  %105 = bitcast %union.upat* %add.ptr130 to i8*
  store i8* %105, i8** %opnd, align 4
  %106 = load %union.upat*, %union.upat** %pscan, align 4
  %arrayidx133 = getelementptr inbounds %union.upat, %union.upat* %106, i32 1
  %l134 = bitcast %union.upat* %arrayidx133 to i32*
  %107 = load i32, i32* %l134, align 4
  store i32 %107, i32* %oplen, align 4
  store i32 0, i32* %nmeta, align 4
  %108 = load i8*, i8** %opnd, align 4
  store i8* %108, i8** %mtest, align 4
  %109 = load i32, i32* %oplen, align 4
  store i32 %109, i32* %ilen, align 4
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc148, %if.then128
  %110 = load i32, i32* %ilen, align 4
  %tobool138 = icmp ne i32 %110, 0
  br i1 %tobool138, label %for.body139, label %for.end151

for.body139:                                      ; preds = %for.cond137
  %111 = load i8*, i8** %mtest, align 4
  %112 = load i8, i8* %111, align 1
  %idxprom140 = zext i8 %112 to i32
  %arrayidx141 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom140
  %113 = load i16, i16* %arrayidx141, align 2
  %conv142 = sext i16 %113 to i32
  %and143 = and i32 %conv142, 4096
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.then145, label %if.end147

if.then145:                                       ; preds = %for.body139
  %114 = load i32, i32* %nmeta, align 4
  %inc146 = add nsw i32 %114, 1
  store i32 %inc146, i32* %nmeta, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %for.body139
  br label %for.inc148

for.inc148:                                       ; preds = %if.end147
  %115 = load i8*, i8** %mtest, align 4
  %incdec.ptr149 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr149, i8** %mtest, align 4
  %116 = load i32, i32* %ilen, align 4
  %dec150 = add nsw i32 %116, -1
  store i32 %dec150, i32* %ilen, align 4
  br label %for.cond137

for.end151:                                       ; preds = %for.cond137
  %117 = load i32, i32* %nmeta, align 4
  %tobool152 = icmp ne i32 %117, 0
  br i1 %tobool152, label %if.then153, label %if.end156

if.then153:                                       ; preds = %for.end151
  %118 = load i32, i32* %nmeta, align 4
  call void @patadd(i8* null, i32 0, i32 %118, i32 0)
  %119 = load i8*, i8** @patout, align 4
  %120 = bitcast i8* %119 to %struct.patprog*
  store %struct.patprog* %120, %struct.patprog** %p, align 4
  %121 = load i8*, i8** %opnd, align 4
  %122 = load i32, i32* %oplen, align 4
  %call154 = call i8* @dupstring_wlen(i8* %121, i32 %122)
  store i8* %call154, i8** %opnd, align 4
  %123 = load i8*, i8** @patout, align 4
  %124 = load i32, i32* %startoff, align 4
  %add.ptr155 = getelementptr inbounds i8, i8* %123, i32 %124
  store i8* %add.ptr155, i8** %dst, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %for.end151
  br label %while.cond157

while.cond157:                                    ; preds = %if.end175, %if.end156
  %125 = load i32, i32* %oplen, align 4
  %dec158 = add nsw i32 %125, -1
  store i32 %dec158, i32* %oplen, align 4
  %tobool159 = icmp ne i32 %125, 0
  br i1 %tobool159, label %while.body160, label %while.end176

while.body160:                                    ; preds = %while.cond157
  %126 = load i8*, i8** %opnd, align 4
  %127 = load i8, i8* %126, align 1
  %idxprom161 = zext i8 %127 to i32
  %arrayidx162 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom161
  %128 = load i16, i16* %arrayidx162, align 2
  %conv163 = sext i16 %128 to i32
  %and164 = and i32 %conv163, 4096
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.then166, label %if.else172

if.then166:                                       ; preds = %while.body160
  %129 = load i8*, i8** %dst, align 4
  %incdec.ptr167 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr167, i8** %dst, align 4
  store i8 -125, i8* %129, align 1
  %130 = load i8*, i8** %opnd, align 4
  %incdec.ptr168 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr168, i8** %opnd, align 4
  %131 = load i8, i8* %130, align 1
  %conv169 = sext i8 %131 to i32
  %xor = xor i32 %conv169, 32
  %conv170 = trunc i32 %xor to i8
  %132 = load i8*, i8** %dst, align 4
  %incdec.ptr171 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr171, i8** %dst, align 4
  store i8 %conv170, i8* %132, align 1
  br label %if.end175

if.else172:                                       ; preds = %while.body160
  %133 = load i8*, i8** %opnd, align 4
  %incdec.ptr173 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr173, i8** %opnd, align 4
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %dst, align 4
  %incdec.ptr174 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr174, i8** %dst, align 4
  store i8 %134, i8* %135, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.else172, %if.then166
  br label %while.cond157

while.end176:                                     ; preds = %while.cond157
  br label %for.end179

if.end177:                                        ; preds = %cond.end122
  br label %for.inc178

for.inc178:                                       ; preds = %if.end177
  %136 = load %union.upat*, %union.upat** %next, align 4
  store %union.upat* %136, %union.upat** %pscan, align 4
  br label %for.cond103

for.end179:                                       ; preds = %while.end176, %for.cond103
  %137 = load i8*, i8** %dst, align 4
  %138 = load i8*, i8** @patout, align 4
  %sub.ptr.lhs.cast180 = ptrtoint i8* %137 to i32
  %sub.ptr.rhs.cast181 = ptrtoint i8* %138 to i32
  %sub.ptr.sub182 = sub i32 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %139 = load %struct.patprog*, %struct.patprog** %p, align 4
  %size183 = getelementptr inbounds %struct.patprog, %struct.patprog* %139, i32 0, i32 1
  store i32 %sub.ptr.sub182, i32* %size183, align 4
  %140 = load %struct.patprog*, %struct.patprog** %p, align 4
  %size184 = getelementptr inbounds %struct.patprog, %struct.patprog* %140, i32 0, i32 1
  %141 = load i32, i32* %size184, align 4
  %142 = load i32, i32* %startoff, align 4
  %sub185 = sub nsw i32 %141, %142
  %143 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patmlen186 = getelementptr inbounds %struct.patprog, %struct.patprog* %143, i32 0, i32 3
  store i32 %sub185, i32* %patmlen186, align 4
  br label %if.end255

if.else187:                                       ; preds = %if.then93
  %144 = load %union.upat*, %union.upat** %pscan, align 4
  %l188 = bitcast %union.upat* %144 to i32*
  %145 = load i32, i32* %l188, align 4
  %and189 = and i32 %145, 255
  %cmp190 = icmp eq i32 %and189, 4
  br i1 %cmp190, label %land.lhs.true192, label %if.end202

land.lhs.true192:                                 ; preds = %if.else187
  %146 = load %struct.patprog*, %struct.patprog** %p, align 4
  %globflags193 = getelementptr inbounds %struct.patprog, %struct.patprog* %146, i32 0, i32 4
  %147 = load i32, i32* %globflags193, align 4
  %tobool194 = icmp ne i32 %147, 0
  br i1 %tobool194, label %if.end202, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %land.lhs.true192
  %148 = load %union.upat*, %union.upat** %pscan, align 4
  %arrayidx196 = getelementptr inbounds %union.upat, %union.upat* %148, i32 1
  %l197 = bitcast %union.upat* %arrayidx196 to i32*
  %149 = load i32, i32* %l197, align 4
  %tobool198 = icmp ne i32 %149, 0
  br i1 %tobool198, label %if.then199, label %if.end202

if.then199:                                       ; preds = %land.lhs.true195
  %150 = load %union.upat*, %union.upat** %pscan, align 4
  %add.ptr200 = getelementptr inbounds %union.upat, %union.upat* %150, i32 2
  %151 = bitcast %union.upat* %add.ptr200 to i8*
  %152 = load i8, i8* %151, align 1
  %153 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patstartch201 = getelementptr inbounds %struct.patprog, %struct.patprog* %153, i32 0, i32 8
  store i8 %152, i8* %patstartch201, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %land.lhs.true195, %land.lhs.true192, %if.else187
  %154 = load i32, i32* %flags, align 4
  %and203 = and i32 %154, 2
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %land.lhs.true205, label %if.end254

land.lhs.true205:                                 ; preds = %if.end202
  %155 = load %struct.patprog*, %struct.patprog** %p, align 4
  %globflags206 = getelementptr inbounds %struct.patprog, %struct.patprog* %155, i32 0, i32 4
  %156 = load i32, i32* %globflags206, align 4
  %tobool207 = icmp ne i32 %156, 0
  br i1 %tobool207, label %if.end254, label %if.then208

if.then208:                                       ; preds = %land.lhs.true205
  store i8* null, i8** %lng, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond209

for.cond209:                                      ; preds = %cond.end243, %if.then208
  %157 = load %union.upat*, %union.upat** %pscan, align 4
  %tobool210 = icmp ne %union.upat* %157, null
  br i1 %tobool210, label %for.body211, label %for.end245

for.body211:                                      ; preds = %for.cond209
  %158 = load %union.upat*, %union.upat** %pscan, align 4
  %l212 = bitcast %union.upat* %158 to i32*
  %159 = load i32, i32* %l212, align 4
  %and213 = and i32 %159, 255
  %cmp214 = icmp eq i32 %and213, 4
  br i1 %cmp214, label %land.lhs.true216, label %if.end225

land.lhs.true216:                                 ; preds = %for.body211
  %160 = load %union.upat*, %union.upat** %pscan, align 4
  %arrayidx217 = getelementptr inbounds %union.upat, %union.upat* %160, i32 1
  %l218 = bitcast %union.upat* %arrayidx217 to i32*
  %161 = load i32, i32* %l218, align 4
  %162 = load i32, i32* %len, align 4
  %cmp219 = icmp sge i32 %161, %162
  br i1 %cmp219, label %if.then221, label %if.end225

if.then221:                                       ; preds = %land.lhs.true216
  %163 = load %union.upat*, %union.upat** %pscan, align 4
  %add.ptr222 = getelementptr inbounds %union.upat, %union.upat* %163, i32 2
  %164 = bitcast %union.upat* %add.ptr222 to i8*
  store i8* %164, i8** %lng, align 4
  %165 = load %union.upat*, %union.upat** %pscan, align 4
  %arrayidx223 = getelementptr inbounds %union.upat, %union.upat* %165, i32 1
  %l224 = bitcast %union.upat* %arrayidx223 to i32*
  %166 = load i32, i32* %l224, align 4
  store i32 %166, i32* %len, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then221, %land.lhs.true216, %for.body211
  br label %for.inc226

for.inc226:                                       ; preds = %if.end225
  %167 = load %union.upat*, %union.upat** %pscan, align 4
  %l227 = bitcast %union.upat* %167 to i32*
  %168 = load i32, i32* %l227, align 4
  %shr228 = ashr i32 %168, 8
  store i32 %shr228, i32* @rn_offs, align 4
  %tobool229 = icmp ne i32 %shr228, 0
  br i1 %tobool229, label %cond.true230, label %cond.false242

cond.true230:                                     ; preds = %for.inc226
  %169 = load %union.upat*, %union.upat** %pscan, align 4
  %l231 = bitcast %union.upat* %169 to i32*
  %170 = load i32, i32* %l231, align 4
  %and232 = and i32 %170, 255
  %cmp233 = icmp eq i32 %and232, 3
  br i1 %cmp233, label %cond.true235, label %cond.false238

cond.true235:                                     ; preds = %cond.true230
  %171 = load %union.upat*, %union.upat** %pscan, align 4
  %172 = load i32, i32* @rn_offs, align 4
  %idx.neg236 = sub i32 0, %172
  %add.ptr237 = getelementptr inbounds %union.upat, %union.upat* %171, i32 %idx.neg236
  br label %cond.end240

cond.false238:                                    ; preds = %cond.true230
  %173 = load %union.upat*, %union.upat** %pscan, align 4
  %174 = load i32, i32* @rn_offs, align 4
  %add.ptr239 = getelementptr inbounds %union.upat, %union.upat* %173, i32 %174
  br label %cond.end240

cond.end240:                                      ; preds = %cond.false238, %cond.true235
  %cond241 = phi %union.upat* [ %add.ptr237, %cond.true235 ], [ %add.ptr239, %cond.false238 ]
  br label %cond.end243

cond.false242:                                    ; preds = %for.inc226
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false242, %cond.end240
  %cond244 = phi %union.upat* [ %cond241, %cond.end240 ], [ null, %cond.false242 ]
  store %union.upat* %cond244, %union.upat** %pscan, align 4
  br label %for.cond209

for.end245:                                       ; preds = %for.cond209
  %175 = load i8*, i8** %lng, align 4
  %tobool246 = icmp ne i8* %175, null
  br i1 %tobool246, label %if.then247, label %if.end253

if.then247:                                       ; preds = %for.end245
  %176 = load i8*, i8** %lng, align 4
  %177 = load i8*, i8** @patout, align 4
  %sub.ptr.lhs.cast248 = ptrtoint i8* %176 to i32
  %sub.ptr.rhs.cast249 = ptrtoint i8* %177 to i32
  %sub.ptr.sub250 = sub i32 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  %178 = load %struct.patprog*, %struct.patprog** %p, align 4
  %mustoff251 = getelementptr inbounds %struct.patprog, %struct.patprog* %178, i32 0, i32 2
  store i32 %sub.ptr.sub250, i32* %mustoff251, align 4
  %179 = load i32, i32* %len, align 4
  %180 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patmlen252 = getelementptr inbounds %struct.patprog, %struct.patprog* %180, i32 0, i32 3
  store i32 %179, i32* %patmlen252, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.then247, %for.end245
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %land.lhs.true205, %if.end202
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %for.end179
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %cond.end87, %if.then73
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.end68
  %181 = load i32, i32* @patflags, align 4
  %and258 = and i32 %181, 256
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %if.then260, label %if.else263

if.then260:                                       ; preds = %if.end257
  %182 = load i32, i32* @patsize, align 4
  %call262 = call i8* @zalloc(i32 %182)
  %183 = bitcast i8* %call262 to %struct.patprog*
  store %struct.patprog* %183, %struct.patprog** %newp, align 4
  %184 = load %struct.patprog*, %struct.patprog** %newp, align 4
  %185 = bitcast %struct.patprog* %184 to i8*
  %186 = load %struct.patprog*, %struct.patprog** %p, align 4
  %187 = bitcast %struct.patprog* %186 to i8*
  %188 = load i32, i32* @patsize, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %185, i8* %187, i32 %188, i32 1, i1 false)
  %189 = load %struct.patprog*, %struct.patprog** %newp, align 4
  store %struct.patprog* %189, %struct.patprog** %p, align 4
  br label %if.end271

if.else263:                                       ; preds = %if.end257
  %190 = load i32, i32* @patflags, align 4
  %and264 = and i32 %190, 64
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %if.end270, label %if.then266

if.then266:                                       ; preds = %if.else263
  %191 = load i32, i32* @patsize, align 4
  %call269 = call i8* @zhalloc(i32 %191)
  %192 = bitcast i8* %call269 to %struct.patprog*
  store %struct.patprog* %192, %struct.patprog** %newp268, align 4
  %193 = load %struct.patprog*, %struct.patprog** %newp268, align 4
  %194 = bitcast %struct.patprog* %193 to i8*
  %195 = load %struct.patprog*, %struct.patprog** %p, align 4
  %196 = bitcast %struct.patprog* %195 to i8*
  %197 = load i32, i32* @patsize, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %194, i8* %196, i32 %197, i32 1, i1 false)
  %198 = load %struct.patprog*, %struct.patprog** %newp268, align 4
  store %struct.patprog* %198, %struct.patprog** %p, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %if.else263
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.then260
  %199 = load i8**, i8*** %endexp.addr, align 4
  %tobool272 = icmp ne i8** %199, null
  br i1 %tobool272, label %if.then273, label %if.end274

if.then273:                                       ; preds = %if.end271
  %200 = load i8*, i8** @patparse, align 4
  %201 = load i8**, i8*** %endexp.addr, align 4
  store i8* %200, i8** %201, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %if.end271
  br label %do.body275

do.body275:                                       ; preds = %if.end274
  %202 = load i32, i32* @queueing_enabled, align 4
  %dec276 = add nsw i32 %202, -1
  store i32 %dec276, i32* @queueing_enabled, align 4
  %tobool277 = icmp ne i32 %dec276, 0
  br i1 %tobool277, label %if.end294, label %if.then278

if.then278:                                       ; preds = %do.body275
  br label %do.body279

do.body279:                                       ; preds = %if.then278
  br label %while.cond280

while.cond280:                                    ; preds = %while.body283, %do.body279
  %203 = load i32, i32* @queue_front, align 4
  %204 = load i32, i32* @queue_rear, align 4
  %cmp281 = icmp ne i32 %203, %204
  br i1 %cmp281, label %while.body283, label %while.end292

while.body283:                                    ; preds = %while.cond280
  %205 = load i32, i32* @queue_front, align 4
  %add286 = add nsw i32 %205, 1
  %rem287 = srem i32 %add286, 128
  store i32 %rem287, i32* @queue_front, align 4
  %206 = load i32, i32* @queue_front, align 4
  %arrayidx288 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %206
  call void @signal_setmask(%struct.__sigset_t* sret %tmp289, %struct.__sigset_t* byval align 4 %arrayidx288)
  %207 = bitcast %struct.__sigset_t* %oset285 to i8*
  %208 = bitcast %struct.__sigset_t* %tmp289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %207, i8* %208, i32 128, i32 4, i1 false)
  %209 = load i32, i32* @queue_front, align 4
  %arrayidx290 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %209
  %210 = load i32, i32* %arrayidx290, align 4
  call void @zhandler(i32 %210)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp291, %struct.__sigset_t* byval align 4 %oset285)
  br label %while.cond280

while.end292:                                     ; preds = %while.cond280
  br label %do.end293

do.end293:                                        ; preds = %while.end292
  br label %if.end294

if.end294:                                        ; preds = %do.end293, %do.body275
  br label %do.end295

do.end295:                                        ; preds = %if.end294
  %211 = load %struct.patprog*, %struct.patprog** %p, align 4
  store %struct.patprog* %211, %struct.patprog** %retval, align 4
  br label %return

return:                                           ; preds = %do.end295, %do.end57
  %212 = load %struct.patprog*, %struct.patprog** %retval, align 4
  ret %struct.patprog* %212
}

declare i8* @zrealloc(i8*, i32) #1

declare void @remnulargs(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @patcompswitch(i32 %paren, i32* %flagp) #0 {
entry:
  %retval = alloca i32, align 4
  %paren.addr = alloca i32, align 4
  %flagp.addr = alloca i32*, align 4
  %starter = alloca i32, align 4
  %br = alloca i32, align 4
  %ender = alloca i32, align 4
  %excsync = alloca i32, align 4
  %parno = alloca i32, align 4
  %flags = alloca i32, align 4
  %gfchanged = alloca i32, align 4
  %savglobflags = alloca i32, align 4
  %ptr = alloca %union.upat*, align 4
  %tilde = alloca i32, align 4
  %gfnode = alloca i32, align 4
  %newbr = alloca i32, align 4
  %up = alloca %union.upat, align 4
  %up68 = alloca %union.upat, align 4
  store i32 %paren, i32* %paren.addr, align 4
  store i32* %flagp, i32** %flagp.addr, align 4
  store i32 0, i32* %excsync, align 4
  store i32 0, i32* %parno, align 4
  store i32 0, i32* %gfchanged, align 4
  %0 = load i32, i32* @patglobflags, align 4
  store i32 %0, i32* %savglobflags, align 4
  %1 = load i32*, i32** %flagp.addr, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %paren.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @patglobflags, align 4
  %and = and i32 %3, 1024
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i32, i32* @patnpar, align 4
  %cmp = icmp sle i32 %4, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %5 = load i32, i32* @patnpar, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @patnpar, align 4
  store i32 %5, i32* %parno, align 4
  %6 = load i32, i32* %parno, align 4
  %add = add nsw i32 128, %6
  %call = call i32 @patnode(i32 %add)
  store i32 %call, i32* %starter, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, i32* %starter, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 @patnode(i32 32)
  store i32 %call3, i32* %br, align 4
  %7 = load i32, i32* %paren.addr, align 4
  %call4 = call i32 @patcompbranch(i32* %flags, i32 %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i32, i32* @patglobflags, align 4
  %9 = load i32, i32* %savglobflags, align 4
  %cmp8 = icmp ne i32 %8, %9
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %10 = load i32, i32* %gfchanged, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %gfchanged, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %11 = load i32, i32* %starter, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end11
  %12 = load i32, i32* %starter, align 4
  %13 = load i32, i32* %br, align 4
  call void @pattail(i32 %12, i32 %13)
  br label %if.end15

if.else14:                                        ; preds = %if.end11
  %14 = load i32, i32* %br, align 4
  store i32 %14, i32* %starter, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %15 = load i32, i32* %flags, align 4
  %and16 = and i32 %15, 6
  %16 = load i32*, i32** %flagp.addr, align 4
  %17 = load i32, i32* %16, align 4
  %or = or i32 %17, %and16
  store i32 %or, i32* %16, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end95, %if.end15
  %18 = load i8*, i8** @patparse, align 4
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_chars, i32 0, i32 2), align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv, %conv17
  br i1 %cmp18, label %lor.end32, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %21 = load i8*, i8** @patparse, align 4
  %22 = load i8, i8* %21, align 1
  %conv20 = sext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 4), align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv20, %conv21
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %24 = load i8*, i8** @patparse, align 4
  %arrayidx = getelementptr inbounds i8, i8* %24, i32 1
  %25 = load i8, i8* %arrayidx, align 1
  %conv24 = sext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %lor.end, label %lor.rhs27

lor.rhs27:                                        ; preds = %land.rhs
  %26 = load i8*, i8** @patparse, align 4
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i32 1
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %27 to i32
  %call30 = call i8* @memchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i32 %conv29, i32 5)
  %tobool31 = icmp ne i8* %call30, null
  %lnot = xor i1 %tobool31, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs27, %land.rhs
  %28 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs27 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %29 = phi i1 [ false, %lor.rhs ], [ %28, %lor.end ]
  br label %lor.end32

lor.end32:                                        ; preds = %land.end, %while.cond
  %30 = phi i1 [ true, %while.cond ], [ %29, %land.end ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end32
  %31 = load i8*, i8** @patparse, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** @patparse, align 4
  %32 = load i8, i8* %31, align 1
  %conv33 = sext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 4), align 1
  %conv34 = sext i8 %33 to i32
  %cmp35 = icmp eq i32 %conv33, %conv34
  %conv36 = zext i1 %cmp35 to i32
  store i32 %conv36, i32* %tilde, align 4
  store i32 0, i32* %gfnode, align 4
  %34 = load i32*, i32** %flagp.addr, align 4
  %35 = load i32, i32* %34, align 4
  %and37 = and i32 %35, -5
  store i32 %and37, i32* %34, align 4
  %36 = load i32, i32* %tilde, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %if.then39, label %if.else62

if.then39:                                        ; preds = %while.body
  %37 = load i32, i32* %excsync, align 4
  %tobool40 = icmp ne i32 %37, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.then39
  %call42 = call i32 @patnode(i32 1)
  store i32 %call42, i32* %excsync, align 4
  %38 = load i32, i32* %br, align 4
  %39 = load i32, i32* %excsync, align 4
  call void @patoptail(i32 %38, i32 %39)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then39
  %40 = load i32, i32* @patglobflags, align 4
  %and44 = and i32 %40, -256
  store i32 %and44, i32* @patglobflags, align 4
  %41 = load i32, i32* @patflags, align 4
  %and45 = and i32 %41, 2
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %lor.lhs.false, label %if.then48

lor.lhs.false:                                    ; preds = %if.end43
  %42 = load i32, i32* %paren.addr, align 4
  %tobool47 = icmp ne i32 %42, 0
  br i1 %tobool47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %call49 = call i32 @patnode(i32 48)
  store i32 %call49, i32* %br, align 4
  br label %if.end53

if.else50:                                        ; preds = %lor.lhs.false
  %call51 = call i32 @patnode(i32 49)
  store i32 %call51, i32* %br, align 4
  %43 = load i32, i32* @patflags, align 4
  %or52 = or i32 %43, 2048
  store i32 %or52, i32* @patflags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then48
  %p = bitcast %union.upat* %up to i8**
  store i8* null, i8** %p, align 4
  %44 = bitcast %union.upat* %up to i8*
  call void @patadd(i8* %44, i32 0, i32 4, i32 0)
  %45 = load i32, i32* %paren.addr, align 4
  %tobool54 = icmp ne i32 %45, 0
  br i1 %tobool54, label %if.end61, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end53
  %46 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), align 1
  %conv56 = sext i8 %46 to i32
  %cmp57 = icmp eq i32 %conv56, 47
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %land.lhs.true55
  %47 = load i32, i32* %tilde, align 4
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, i32* %tilde, align 4
  store i8 -94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true55, %if.end53
  br label %if.end73

if.else62:                                        ; preds = %while.body
  store i32 0, i32* %excsync, align 4
  %call63 = call i32 @patnode(i32 32)
  store i32 %call63, i32* %br, align 4
  %48 = load i32, i32* %paren.addr, align 4
  %tobool64 = icmp ne i32 %48, 0
  br i1 %tobool64, label %if.else71, label %if.then65

if.then65:                                        ; preds = %if.else62
  store i32 0, i32* @patglobflags, align 4
  %49 = load i8*, i8** @patout, align 4
  %50 = bitcast i8* %49 to %struct.patprog*
  %globflags = getelementptr inbounds %struct.patprog, %struct.patprog* %50, i32 0, i32 4
  %51 = load i32, i32* %globflags, align 4
  %tobool66 = icmp ne i32 %51, 0
  br i1 %tobool66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.then65
  %call69 = call i32 @patnode(i32 8)
  store i32 %call69, i32* %gfnode, align 4
  %52 = load i32, i32* @patglobflags, align 4
  %l = bitcast %union.upat* %up68 to i32*
  store i32 %52, i32* %l, align 4
  %53 = bitcast %union.upat* %up68 to i8*
  call void @patadd(i8* %53, i32 0, i32 4, i32 0)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then65
  br label %if.end72

if.else71:                                        ; preds = %if.else62
  %54 = load i32, i32* %savglobflags, align 4
  store i32 %54, i32* @patglobflags, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.end70
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end61
  %55 = load i32, i32* %paren.addr, align 4
  %call74 = call i32 @patcompbranch(i32* %flags, i32 %55)
  store i32 %call74, i32* %newbr, align 4
  %56 = load i32, i32* %tilde, align 4
  %cmp75 = icmp eq i32 %56, 2
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  store i8 47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73
  %57 = load i32, i32* %newbr, align 4
  %tobool79 = icmp ne i32 %57, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end78
  store i32 0, i32* %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end78
  %58 = load i32, i32* %gfnode, align 4
  %tobool82 = icmp ne i32 %58, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  %59 = load i32, i32* %gfnode, align 4
  %60 = load i32, i32* %newbr, align 4
  call void @pattail(i32 %59, i32 %60)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81
  %61 = load i32, i32* %tilde, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %if.end91, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.end84
  %62 = load i32, i32* @patglobflags, align 4
  %63 = load i32, i32* %savglobflags, align 4
  %cmp87 = icmp ne i32 %62, %63
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true86
  %64 = load i32, i32* %gfchanged, align 4
  %inc90 = add nsw i32 %64, 1
  store i32 %inc90, i32* %gfchanged, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true86, %if.end84
  %65 = load i32, i32* %starter, align 4
  %66 = load i32, i32* %br, align 4
  call void @pattail(i32 %65, i32 %66)
  %67 = load i32, i32* %excsync, align 4
  %tobool92 = icmp ne i32 %67, 0
  br i1 %tobool92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end91
  %68 = load i32, i32* %br, align 4
  %call94 = call i32 @patnode(i32 2)
  call void @patoptail(i32 %68, i32 %call94)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91
  %69 = load i32, i32* %flags, align 4
  %and96 = and i32 %69, 2
  %70 = load i32*, i32** %flagp.addr, align 4
  %71 = load i32, i32* %70, align 4
  %or97 = or i32 %71, %and96
  store i32 %or97, i32* %70, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end32
  %72 = load i32, i32* %paren.addr, align 4
  %tobool98 = icmp ne i32 %72, 0
  br i1 %tobool98, label %cond.true, label %cond.false102

cond.true:                                        ; preds = %while.end
  %73 = load i32, i32* %parno, align 4
  %tobool99 = icmp ne i32 %73, 0
  br i1 %tobool99, label %cond.true100, label %cond.false

cond.true100:                                     ; preds = %cond.true
  %74 = load i32, i32* %parno, align 4
  %add101 = add nsw i32 144, %74
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true100
  %cond = phi i32 [ %add101, %cond.true100 ], [ 5, %cond.false ]
  br label %cond.end103

cond.false102:                                    ; preds = %while.end
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %cond.end
  %cond104 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false102 ]
  %call105 = call i32 @patnode(i32 %cond104)
  store i32 %call105, i32* %ender, align 4
  %75 = load i32, i32* %starter, align 4
  %76 = load i32, i32* %ender, align 4
  call void @pattail(i32 %75, i32 %76)
  %77 = load i8*, i8** @patout, align 4
  %78 = bitcast i8* %77 to %union.upat*
  %79 = load i32, i32* %starter, align 4
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %78, i32 %79
  store %union.upat* %add.ptr, %union.upat** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end127, %cond.end103
  %80 = load %union.upat*, %union.upat** %ptr, align 4
  %tobool106 = icmp ne %union.upat* %80, null
  br i1 %tobool106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load %union.upat*, %union.upat** %ptr, align 4
  %l107 = bitcast %union.upat* %81 to i32*
  %82 = load i32, i32* %l107, align 4
  %and108 = and i32 %82, 48
  %cmp109 = icmp eq i32 %and108, 48
  br i1 %cmp109, label %if.end112, label %if.then111

if.then111:                                       ; preds = %for.body
  %83 = load %union.upat*, %union.upat** %ptr, align 4
  %84 = load i8*, i8** @patout, align 4
  %85 = bitcast i8* %84 to %union.upat*
  %sub.ptr.lhs.cast = ptrtoint %union.upat* %83 to i32
  %sub.ptr.rhs.cast = ptrtoint %union.upat* %85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %86 = load i32, i32* %ender, align 4
  call void @patoptail(i32 %sub.ptr.div, i32 %86)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end112
  %87 = load %union.upat*, %union.upat** %ptr, align 4
  %l113 = bitcast %union.upat* %87 to i32*
  %88 = load i32, i32* %l113, align 4
  %shr = ashr i32 %88, 8
  store i32 %shr, i32* @rn_offs, align 4
  %tobool114 = icmp ne i32 %shr, 0
  br i1 %tobool114, label %cond.true115, label %cond.false126

cond.true115:                                     ; preds = %for.inc
  %89 = load %union.upat*, %union.upat** %ptr, align 4
  %l116 = bitcast %union.upat* %89 to i32*
  %90 = load i32, i32* %l116, align 4
  %and117 = and i32 %90, 255
  %cmp118 = icmp eq i32 %and117, 3
  br i1 %cmp118, label %cond.true120, label %cond.false122

cond.true120:                                     ; preds = %cond.true115
  %91 = load %union.upat*, %union.upat** %ptr, align 4
  %92 = load i32, i32* @rn_offs, align 4
  %idx.neg = sub i32 0, %92
  %add.ptr121 = getelementptr inbounds %union.upat, %union.upat* %91, i32 %idx.neg
  br label %cond.end124

cond.false122:                                    ; preds = %cond.true115
  %93 = load %union.upat*, %union.upat** %ptr, align 4
  %94 = load i32, i32* @rn_offs, align 4
  %add.ptr123 = getelementptr inbounds %union.upat, %union.upat* %93, i32 %94
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false122, %cond.true120
  %cond125 = phi %union.upat* [ %add.ptr121, %cond.true120 ], [ %add.ptr123, %cond.false122 ]
  br label %cond.end127

cond.false126:                                    ; preds = %for.inc
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false126, %cond.end124
  %cond128 = phi %union.upat* [ %cond125, %cond.end124 ], [ null, %cond.false126 ]
  store %union.upat* %cond128, %union.upat** %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load i32, i32* %paren.addr, align 4
  %tobool129 = icmp ne i32 %95, 0
  br i1 %tobool129, label %land.lhs.true130, label %lor.lhs.false135

land.lhs.true130:                                 ; preds = %for.end
  %96 = load i8*, i8** @patparse, align 4
  %incdec.ptr131 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr131, i8** @patparse, align 4
  %97 = load i8, i8* %96, align 1
  %conv132 = sext i8 %97 to i32
  %cmp133 = icmp ne i32 %conv132, -118
  br i1 %cmp133, label %if.then147, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %land.lhs.true130, %for.end
  %98 = load i32, i32* %paren.addr, align 4
  %tobool136 = icmp ne i32 %98, 0
  br i1 %tobool136, label %if.end148, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %lor.lhs.false135
  %99 = load i8*, i8** @patparse, align 4
  %100 = load i8, i8* %99, align 1
  %conv138 = sext i8 %100 to i32
  %tobool139 = icmp ne i32 %conv138, 0
  br i1 %tobool139, label %land.lhs.true140, label %if.end148

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %101 = load i32, i32* @patflags, align 4
  %and141 = and i32 %101, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %land.lhs.true143, label %if.then147

land.lhs.true143:                                 ; preds = %land.lhs.true140
  %102 = load i8*, i8** @patparse, align 4
  %103 = load i8, i8* %102, align 1
  %conv144 = sext i8 %103 to i32
  %cmp145 = icmp eq i32 %conv144, 47
  br i1 %cmp145, label %if.end148, label %if.then147

if.then147:                                       ; preds = %land.lhs.true143, %land.lhs.true140, %land.lhs.true130
  store i32 0, i32* %retval, align 4
  br label %return

if.end148:                                        ; preds = %land.lhs.true143, %land.lhs.true137, %lor.lhs.false135
  %104 = load i32, i32* %paren.addr, align 4
  %tobool149 = icmp ne i32 %104, 0
  br i1 %tobool149, label %land.lhs.true150, label %if.end154

land.lhs.true150:                                 ; preds = %if.end148
  %105 = load i32, i32* %gfchanged, align 4
  %tobool151 = icmp ne i32 %105, 0
  br i1 %tobool151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %land.lhs.true150
  %106 = load i32, i32* %ender, align 4
  %call153 = call i32 @patnode(i32 8)
  call void @pattail(i32 %106, i32 %call153)
  %107 = load i32, i32* %savglobflags, align 4
  store i32 %107, i32* @patglobflags, align 4
  %108 = bitcast i32* %savglobflags to i8*
  call void @patadd(i8* %108, i32 0, i32 4, i32 0)
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %land.lhs.true150, %if.end148
  %109 = load i32, i32* %starter, align 4
  store i32 %109, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end154, %if.then147, %if.then80, %if.then6
  %110 = load i32, i32* %retval, align 4
  ret i32 %110
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define internal void @patadd(i8* %add, i32 %ch, i32 %n, i32 %paflags) #0 {
entry:
  %add.addr = alloca i8*, align 4
  %ch.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %paflags.addr = alloca i32, align 4
  %newpatsize = alloca i32, align 4
  %newpatalloc = alloca i32, align 4
  store i8* %add, i8** %add.addr, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %paflags, i32* %paflags.addr, align 4
  %0 = load i32, i32* @patsize, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %0, %1
  store i32 %add1, i32* %newpatsize, align 4
  %2 = load i32, i32* %paflags.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %newpatsize, align 4
  %add2 = add i32 %3, 4
  %sub = sub i32 %add2, 1
  %and3 = and i32 %sub, -4
  store i32 %and3, i32* %newpatsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @patalloc, align 4
  %5 = load i32, i32* %newpatsize, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %newpatsize, align 4
  %7 = load i32, i32* @patalloc, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %8 = load i32, i32* %newpatsize, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  %9 = load i32, i32* @patalloc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  %mul = mul nsw i32 2, %cond
  store i32 %mul, i32* %newpatalloc, align 4
  %10 = load i8*, i8** @patout, align 4
  %11 = load i32, i32* %newpatalloc, align 4
  %call = call i8* @zrealloc(i8* %10, i32 %11)
  store i8* %call, i8** @patout, align 4
  %12 = load i8*, i8** @patout, align 4
  %13 = load i32, i32* @patsize, align 4
  %add.ptr = getelementptr inbounds i8, i8* %12, i32 %13
  store i8* %add.ptr, i8** @patcode, align 4
  %14 = load i32, i32* %newpatalloc, align 4
  store i32 %14, i32* @patalloc, align 4
  br label %if.end6

if.end6:                                          ; preds = %cond.end, %if.end
  %15 = load i32, i32* %newpatsize, align 4
  store i32 %15, i32* @patsize, align 4
  %16 = load i8*, i8** %add.addr, align 4
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then8, label %if.else43

if.then8:                                         ; preds = %if.end6
  %17 = load i32, i32* %paflags.addr, align 4
  %and9 = and i32 %17, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else34

if.then11:                                        ; preds = %if.then8
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.then11
  %18 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %add.addr, align 4
  %20 = load i8, i8* %19, align 1
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %21 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %21 to i32
  %and13 = and i32 %conv, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body
  %22 = load i8*, i8** %add.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %add.addr, align 4
  %23 = load i8, i8* %22, align 1
  %conv16 = sext i8 %23 to i32
  %sub17 = sub nsw i32 %conv16, -124
  %arrayidx18 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub17
  %24 = load i8, i8* %arrayidx18, align 1
  %25 = load i8*, i8** @patcode, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr19, i8** @patcode, align 4
  store i8 %24, i8* %25, align 1
  br label %if.end33

if.else:                                          ; preds = %while.body
  %26 = load i8*, i8** %add.addr, align 4
  %27 = load i8, i8* %26, align 1
  %conv20 = sext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, -125
  br i1 %cmp21, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.else
  %28 = load i8*, i8** %add.addr, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr24, i8** %add.addr, align 4
  %29 = load i8*, i8** %add.addr, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr25, i8** %add.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv26 = sext i8 %30 to i32
  %xor = xor i32 %conv26, 32
  %conv27 = trunc i32 %xor to i8
  %31 = load i8*, i8** @patcode, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** @patcode, align 4
  store i8 %conv27, i8* %31, align 1
  br label %if.end32

if.else29:                                        ; preds = %if.else
  %32 = load i8*, i8** %add.addr, align 4
  %incdec.ptr30 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr30, i8** %add.addr, align 4
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** @patcode, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr31, i8** @patcode, align 4
  store i8 %33, i8* %34, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end42

if.else34:                                        ; preds = %if.then8
  br label %while.cond35

while.cond35:                                     ; preds = %while.body38, %if.else34
  %35 = load i32, i32* %n.addr, align 4
  %dec36 = add nsw i32 %35, -1
  store i32 %dec36, i32* %n.addr, align 4
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %while.body38, label %while.end41

while.body38:                                     ; preds = %while.cond35
  %36 = load i8*, i8** %add.addr, align 4
  %incdec.ptr39 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr39, i8** %add.addr, align 4
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** @patcode, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr40, i8** @patcode, align 4
  store i8 %37, i8* %38, align 1
  br label %while.cond35

while.end41:                                      ; preds = %while.cond35
  br label %if.end42

if.end42:                                         ; preds = %while.end41, %while.end
  br label %if.end46

if.else43:                                        ; preds = %if.end6
  %39 = load i32, i32* %ch.addr, align 4
  %conv44 = trunc i32 %39 to i8
  %40 = load i8*, i8** @patcode, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr45, i8** @patcode, align 4
  store i8 %conv44, i8* %40, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.end42
  %41 = load i8*, i8** @patout, align 4
  %42 = load i32, i32* @patsize, align 4
  %add.ptr47 = getelementptr inbounds i8, i8* %41, i32 %42
  store i8* %add.ptr47, i8** @patcode, align 4
  ret void
}

declare i8* @dupstring_wlen(i8*, i32) #1

declare i8* @zalloc(i32) #1

declare i8* @zhalloc(i32) #1

; Function Attrs: noinline nounwind
define i32 @patgetglobflags(i8** %strp, i32* %assertp, i32* %ignore) #0 {
entry:
  %retval = alloca i32, align 4
  %strp.addr = alloca i8**, align 4
  %assertp.addr = alloca i32*, align 4
  %ignore.addr = alloca i32*, align 4
  %nptr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %ret = alloca i32, align 4
  store i8** %strp, i8*** %strp.addr, align 4
  store i32* %assertp, i32** %assertp.addr, align 4
  store i32* %ignore, i32** %ignore.addr, align 4
  %0 = load i8**, i8*** %strp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %ptr, align 4
  %2 = load i32*, i32** %assertp.addr, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** %ignore.addr, align 4
  store i32 1, i32* %3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %ptr, align 4
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i8*, i8** %ptr, align 4
  %7 = load i8, i8* %6, align 1
  %conv1 = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv1, -118
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i8*, i8** %ptr, align 4
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 113
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i8*, i8** %ptr, align 4
  %12 = load i8, i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs8, label %land.end12

land.rhs8:                                        ; preds = %while.cond
  %13 = load i8*, i8** %ptr, align 4
  %14 = load i8, i8* %13, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp ne i32 %conv9, -118
  br label %land.end12

land.end12:                                       ; preds = %land.rhs8, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs8 ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end12
  %16 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end12
  br label %for.end

if.else:                                          ; preds = %for.body
  %17 = load i32*, i32** %ignore.addr, align 4
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %ptr, align 4
  %19 = load i8, i8* %18, align 1
  %conv13 = sext i8 %19 to i32
  switch i32 %conv13, label %sw.default [
    i32 97, label %sw.bb
    i32 108, label %sw.bb24
    i32 105, label %sw.bb27
    i32 73, label %sw.bb30
    i32 98, label %sw.bb32
    i32 66, label %sw.bb34
    i32 109, label %sw.bb36
    i32 77, label %sw.bb38
    i32 115, label %sw.bb40
    i32 101, label %sw.bb41
    i32 117, label %sw.bb42
    i32 85, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.else
  %20 = load i8*, i8** %ptr, align 4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr14, i8** %ptr, align 4
  %call = call i32 @zstrtol(i8* %incdec.ptr14, i8** %nptr, i32 10)
  store i32 %call, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp15 = icmp slt i32 %21, 0
  br i1 %cmp15, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %22 = load i32, i32* %ret, align 4
  %cmp17 = icmp sgt i32 %22, 254
  br i1 %cmp17, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %23 = load i8*, i8** %ptr, align 4
  %24 = load i8*, i8** %nptr, align 4
  %cmp20 = icmp eq i8* %23, %24
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false19
  %25 = load i32, i32* @patglobflags, align 4
  %and = and i32 %25, -256
  %26 = load i32, i32* %ret, align 4
  %and23 = and i32 %26, 255
  %or = or i32 %and, %and23
  store i32 %or, i32* @patglobflags, align 4
  %27 = load i8*, i8** %nptr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %add.ptr, i8** %ptr, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.else
  %28 = load i32, i32* @patglobflags, align 4
  %and25 = and i32 %28, -513
  %or26 = or i32 %and25, 256
  store i32 %or26, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.else
  %29 = load i32, i32* @patglobflags, align 4
  %and28 = and i32 %29, -257
  %or29 = or i32 %and28, 512
  store i32 %or29, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.else
  %30 = load i32, i32* @patglobflags, align 4
  %and31 = and i32 %30, -769
  store i32 %and31, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.else
  %31 = load i32, i32* @patglobflags, align 4
  %or33 = or i32 %31, 1024
  store i32 %or33, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.else
  %32 = load i32, i32* @patglobflags, align 4
  %and35 = and i32 %32, -1025
  store i32 %and35, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.else
  %33 = load i32, i32* @patglobflags, align 4
  %or37 = or i32 %33, 2048
  store i32 %or37, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.else
  %34 = load i32, i32* @patglobflags, align 4
  %and39 = and i32 %34, -2049
  store i32 %and39, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.else
  %35 = load i32*, i32** %assertp.addr, align 4
  store i32 9, i32* %35, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %36 = load i32*, i32** %assertp.addr, align 4
  store i32 10, i32* %36, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.else
  %37 = load i32, i32* @patglobflags, align 4
  %or43 = or i32 %37, 4096
  store i32 %or43, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.else
  %38 = load i32, i32* @patglobflags, align 4
  %and45 = and i32 %38, -4097
  store i32 %and45, i32* @patglobflags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb27, %sw.bb24, %if.end
  br label %if.end46

if.end46:                                         ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %39 = load i8*, i8** %ptr, align 4
  %incdec.ptr47 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr47, i8** %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %while.end, %land.end
  %40 = load i8*, i8** %ptr, align 4
  %41 = load i8, i8* %40, align 1
  %conv48 = sext i8 %41 to i32
  %cmp49 = icmp ne i32 %conv48, -118
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %for.end
  %42 = load i32*, i32** %assertp.addr, align 4
  %43 = load i32, i32* %42, align 4
  %tobool53 = icmp ne i32 %43, 0
  br i1 %tobool53, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.end52
  %44 = load i8**, i8*** %strp.addr, align 4
  %45 = load i8*, i8** %44, align 4
  %arrayidx = getelementptr inbounds i8, i8* %45, i32 1
  %46 = load i8, i8* %arrayidx, align 1
  %conv54 = sext i8 %46 to i32
  %cmp55 = icmp ne i32 %conv54, -118
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %land.lhs.true, %if.end52
  %47 = load i8*, i8** %ptr, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %47, i32 1
  %48 = load i8**, i8*** %strp.addr, align 4
  store i8* %add.ptr59, i8** %48, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then57, %if.then51, %sw.default, %if.then22
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

declare i32 @zstrtol(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind
define i32 @range_type(i8* %start, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %csp = alloca i8**, align 4
  store i8* %start, i8** %start.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @colon_stuffs, i32 0, i32 0), i8*** %csp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %csp, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %csp, align 4
  %3 = load i8*, i8** %2, align 4
  %call = call i32 @strlen(i8* %3)
  %4 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %call, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %start.addr, align 4
  %6 = load i8**, i8*** %csp, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = load i32, i32* %len.addr, align 4
  %call1 = call i32 @strncmp(i8* %5, i8* %7, i32 %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8**, i8*** %csp, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([20 x i8*]* @colon_stuffs to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %add = add nsw i32 %sub.ptr.div, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8**, i8*** %csp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %csp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare i32 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @pattern_range_to_string(i8* %rangestr, i8* %outstr) #0 {
entry:
  %rangestr.addr = alloca i8*, align 4
  %outstr.addr = alloca i8*, align 4
  %len = alloca i32, align 4
  %swtype = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca i8*, align 4
  %newlen = alloca i32, align 4
  store i8* %rangestr, i8** %rangestr.addr, align 4
  store i8* %outstr, i8** %outstr.addr, align 4
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %entry
  %0 = load i8*, i8** %rangestr.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %rangestr.addr, align 4
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 4096
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.else69

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %rangestr.addr, align 4
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv2, 131
  store i32 %sub, i32* %swtype, align 4
  %7 = load i32, i32* %swtype, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %8 = load i8*, i8** %outstr.addr, align 4
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %9 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %outstr.addr, align 4
  store i8 -125, i8* %9, align 1
  %10 = load i8*, i8** %rangestr.addr, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i32 1
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %xor = xor i32 %conv8, 32
  %conv9 = trunc i32 %xor to i8
  %12 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %outstr.addr, align 4
  store i8 %conv9, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  %13 = load i32, i32* %len, align 4
  %add = add nsw i32 %13, 2
  store i32 %add, i32* %len, align 4
  %14 = load i8*, i8** %rangestr.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 2
  store i8* %add.ptr, i8** %rangestr.addr, align 4
  br label %if.end68

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %swtype, align 4
  %cmp11 = icmp eq i32 %15, 21
  br i1 %cmp11, label %if.then13, label %if.else45

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %16 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %16, 2
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %rangestr.addr, align 4
  %18 = load i8, i8* %17, align 1
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, -125
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %for.body
  %19 = load i8*, i8** %outstr.addr, align 4
  %tobool20 = icmp ne i8* %19, null
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.then19
  %20 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %outstr.addr, align 4
  store i8 -125, i8* %20, align 1
  %21 = load i8*, i8** %rangestr.addr, align 4
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx23, align 1
  %23 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr24, i8** %outstr.addr, align 4
  store i8 %22, i8* %23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then19
  %24 = load i32, i32* %len, align 4
  %add26 = add nsw i32 %24, 2
  store i32 %add26, i32* %len, align 4
  %25 = load i8*, i8** %rangestr.addr, align 4
  %add.ptr27 = getelementptr inbounds i8, i8* %25, i32 2
  store i8* %add.ptr27, i8** %rangestr.addr, align 4
  br label %if.end34

if.else28:                                        ; preds = %for.body
  %26 = load i8*, i8** %outstr.addr, align 4
  %tobool29 = icmp ne i8* %26, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else28
  %27 = load i8*, i8** %rangestr.addr, align 4
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr31, i8** %outstr.addr, align 4
  store i8 %28, i8* %29, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else28
  %30 = load i32, i32* %len, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %len, align 4
  %31 = load i8*, i8** %rangestr.addr, align 4
  %incdec.ptr33 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr33, i8** %rangestr.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end25
  %32 = load i32, i32* %i, align 4
  %cmp35 = icmp eq i32 %32, 0
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.end34
  %33 = load i8*, i8** %outstr.addr, align 4
  %tobool38 = icmp ne i8* %33, null
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then37
  %34 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr40, i8** %outstr.addr, align 4
  store i8 45, i8* %34, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then37
  %35 = load i32, i32* %len, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %len, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %36 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end67

if.else45:                                        ; preds = %if.else
  %37 = load i32, i32* %swtype, align 4
  %cmp46 = icmp sge i32 %37, 1
  br i1 %cmp46, label %land.lhs.true, label %if.else64

land.lhs.true:                                    ; preds = %if.else45
  %38 = load i32, i32* %swtype, align 4
  %cmp48 = icmp sle i32 %38, 19
  br i1 %cmp48, label %if.then50, label %if.else64

if.then50:                                        ; preds = %land.lhs.true
  %39 = load i32, i32* %swtype, align 4
  %sub51 = sub nsw i32 %39, 1
  %arrayidx52 = getelementptr inbounds [20 x i8*], [20 x i8*]* @colon_stuffs, i32 0, i32 %sub51
  %40 = load i8*, i8** %arrayidx52, align 4
  store i8* %40, i8** %found, align 4
  %41 = load i8*, i8** %found, align 4
  %call = call i32 @strlen(i8* %41)
  store i32 %call, i32* %newlen, align 4
  %42 = load i8*, i8** %outstr.addr, align 4
  %tobool53 = icmp ne i8* %42, null
  br i1 %tobool53, label %if.then54, label %if.end60

if.then54:                                        ; preds = %if.then50
  %43 = load i8*, i8** %outstr.addr, align 4
  %call55 = call i8* @strcpy(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  %44 = load i8*, i8** %outstr.addr, align 4
  %add.ptr56 = getelementptr inbounds i8, i8* %44, i32 2
  store i8* %add.ptr56, i8** %outstr.addr, align 4
  %45 = load i8*, i8** %outstr.addr, align 4
  %46 = load i8*, i8** %found, align 4
  %47 = load i32, i32* %newlen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %45, i8* %46, i32 %47, i32 1, i1 false)
  %48 = load i32, i32* %newlen, align 4
  %49 = load i8*, i8** %outstr.addr, align 4
  %add.ptr57 = getelementptr inbounds i8, i8* %49, i32 %48
  store i8* %add.ptr57, i8** %outstr.addr, align 4
  %50 = load i8*, i8** %outstr.addr, align 4
  %call58 = call i8* @strcpy(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %51 = load i8*, i8** %outstr.addr, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %51, i32 2
  store i8* %add.ptr59, i8** %outstr.addr, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.then50
  %52 = load i32, i32* %newlen, align 4
  %add61 = add nsw i32 %52, 4
  %53 = load i32, i32* %len, align 4
  %add62 = add nsw i32 %53, %add61
  store i32 %add62, i32* %len, align 4
  %54 = load i8*, i8** %rangestr.addr, align 4
  %incdec.ptr63 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr63, i8** %rangestr.addr, align 4
  br label %if.end66

if.else64:                                        ; preds = %land.lhs.true, %if.else45
  %55 = load i8*, i8** %rangestr.addr, align 4
  %incdec.ptr65 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr65, i8** %rangestr.addr, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.end60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %for.end
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end
  br label %if.end76

if.else69:                                        ; preds = %while.body
  %56 = load i8*, i8** %outstr.addr, align 4
  %tobool70 = icmp ne i8* %56, null
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.else69
  %57 = load i8*, i8** %rangestr.addr, align 4
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %outstr.addr, align 4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr72, i8** %outstr.addr, align 4
  store i8 %58, i8* %59, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.else69
  %60 = load i32, i32* %len, align 4
  %inc74 = add nsw i32 %60, 1
  store i32 %inc74, i32* %len, align 4
  %61 = load i8*, i8** %rangestr.addr, align 4
  %incdec.ptr75 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr75, i8** %rangestr.addr, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %if.end68
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i8*, i8** %outstr.addr, align 4
  %tobool77 = icmp ne i8* %62, null
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %while.end
  %63 = load i8*, i8** %outstr.addr, align 4
  store i8 0, i8* %63, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %while.end
  %64 = load i32, i32* %len, align 4
  ret i32 %64
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind
define void @pattrystart() #0 {
entry:
  store i32 -1, i32* @forceerrs, align 4
  store i32 0, i32* @errsfound, align 4
  ret void
}

; Function Attrs: noinline nounwind
define i8* @patallocstr(%struct.patprog* %prog, i8* %string, i32 %stringlen, i32 %unmetalen, i32 %force, %struct.patstralloc* %patstralloc) #0 {
entry:
  %prog.addr = alloca %struct.patprog*, align 4
  %string.addr = alloca i8*, align 4
  %stringlen.addr = alloca i32, align 4
  %unmetalen.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %patstralloc.addr = alloca %struct.patstralloc*, align 4
  %needfullpath = alloca i32, align 4
  %dst = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %i = alloca i32, align 4
  %icopy = alloca i32, align 4
  %ncopy = alloca i32, align 4
  store %struct.patprog* %prog, %struct.patprog** %prog.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  store i32 %stringlen, i32* %stringlen.addr, align 4
  store i32 %unmetalen, i32* %unmetalen.addr, align 4
  store i32 %force, i32* %force.addr, align 4
  store %struct.patstralloc* %patstralloc, %struct.patstralloc** %patstralloc.addr, align 4
  %0 = load i32, i32* %force.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @patmungestring(i8** %string.addr, i32* %stringlen.addr, i32* %unmetalen.addr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags = getelementptr inbounds %struct.patprog, %struct.patprog* %1, i32 0, i32 6
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2048
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, i32* @pathpos, align 4
  %tobool2 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %needfullpath, align 4
  %5 = load i32, i32* %unmetalen.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.end
  %6 = load i8*, i8** %string.addr, align 4
  %7 = load i32, i32* %stringlen.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %7
  %8 = load i8*, i8** %string.addr, align 4
  %call = call i32 @ztrsub(i8* %add.ptr, i8* %8)
  %9 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen4 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %9, i32 0, i32 0
  store i32 %call, i32* %unmetalen4, align 4
  br label %if.end6

if.else:                                          ; preds = %land.end
  %10 = load i32, i32* %unmetalen.addr, align 4
  %11 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen5 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %11, i32 0, i32 0
  store i32 %10, i32* %unmetalen5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %12 = load i32, i32* %needfullpath, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.else15

if.then8:                                         ; preds = %if.end6
  %13 = load i8*, i8** @pathbuf, align 4
  %14 = load i32, i32* @pathpos, align 4
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i32 %14
  %15 = load i8*, i8** @pathbuf, align 4
  %call10 = call i32 @ztrsub(i8* %add.ptr9, i8* %15)
  %16 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %16, i32 0, i32 1
  store i32 %call10, i32* %unmetalenp, align 4
  %17 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp11 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %17, i32 0, i32 1
  %18 = load i32, i32* %unmetalenp11, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then8
  store i32 0, i32* %needfullpath, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then8
  br label %if.end17

if.else15:                                        ; preds = %if.end6
  %19 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp16 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %19, i32 0, i32 1
  store i32 0, i32* %unmetalenp16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  %20 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmeta = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %20, i32 0, i32 3
  store i8* null, i8** %progstrunmeta, align 4
  %21 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmetalen = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %21, i32 0, i32 4
  store i32 0, i32* %progstrunmetalen, align 4
  %22 = load i32, i32* %force.addr, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %23 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags19 = getelementptr inbounds %struct.patprog, %struct.patprog* %23, i32 0, i32 6
  %24 = load i32, i32* %flags19, align 4
  %and20 = and i32 %24, 36
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.else58, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %25 = load i32, i32* %needfullpath, align 4
  %tobool22 = icmp ne i32 %25, 0
  br i1 %tobool22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %26 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen24 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %26, i32 0, i32 0
  %27 = load i32, i32* %unmetalen24, align 4
  %28 = load i32, i32* %stringlen.addr, align 4
  %cmp25 = icmp ne i32 %27, %28
  br i1 %cmp25, label %if.then26, label %if.else58

if.then26:                                        ; preds = %lor.lhs.false23, %land.lhs.true, %if.end17
  %29 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen27 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %29, i32 0, i32 0
  %30 = load i32, i32* %unmetalen27, align 4
  %31 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp28 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %31, i32 0, i32 1
  %32 = load i32, i32* %unmetalenp28, align 4
  %add = add nsw i32 %30, %32
  %call29 = call i8* @zhalloc(i32 %add)
  %33 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %33, i32 0, i32 2
  store i8* %call29, i8** %alloced, align 4
  store i8* %call29, i8** %dst, align 4
  %34 = load i32, i32* %needfullpath, align 4
  %tobool30 = icmp ne i32 %34, 0
  br i1 %tobool30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then26
  %35 = load i8*, i8** @pathbuf, align 4
  store i8* %35, i8** %ptr, align 4
  %36 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp32 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %36, i32 0, i32 1
  %37 = load i32, i32* %unmetalenp32, align 4
  store i32 %37, i32* %ncopy, align 4
  br label %if.end35

if.else33:                                        ; preds = %if.then26
  %38 = load i8*, i8** %string.addr, align 4
  store i8* %38, i8** %ptr, align 4
  %39 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen34 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %39, i32 0, i32 0
  %40 = load i32, i32* %unmetalen34, align 4
  store i32 %40, i32* %ncopy, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  store i32 0, i32* %icopy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.end35
  %41 = load i32, i32* %icopy, align 4
  %cmp36 = icmp slt i32 %41, 2
  br i1 %cmp36, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %for.body
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %ncopy, align 4
  %cmp38 = icmp slt i32 %42, %43
  br i1 %cmp38, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond37
  %44 = load i8*, i8** %ptr, align 4
  %45 = load i8, i8* %44, align 1
  %conv = sext i8 %45 to i32
  %cmp40 = icmp eq i32 %conv, -125
  br i1 %cmp40, label %if.then42, label %if.else47

if.then42:                                        ; preds = %for.body39
  %46 = load i8*, i8** %ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4
  %47 = load i8*, i8** %ptr, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr43, i8** %ptr, align 4
  %48 = load i8, i8* %47, align 1
  %conv44 = sext i8 %48 to i32
  %xor = xor i32 %conv44, 32
  %conv45 = trunc i32 %xor to i8
  %49 = load i8*, i8** %dst, align 4
  %incdec.ptr46 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr46, i8** %dst, align 4
  store i8 %conv45, i8* %49, align 1
  br label %if.end50

if.else47:                                        ; preds = %for.body39
  %50 = load i8*, i8** %ptr, align 4
  %incdec.ptr48 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr48, i8** %ptr, align 4
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %dst, align 4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr49, i8** %dst, align 4
  store i8 %51, i8* %52, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then42
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond37

for.end:                                          ; preds = %for.cond37
  %54 = load i32, i32* %needfullpath, align 4
  %tobool51 = icmp ne i32 %54, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %for.end
  br label %for.end57

if.end53:                                         ; preds = %for.end
  %55 = load i8*, i8** %string.addr, align 4
  store i8* %55, i8** %ptr, align 4
  %56 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen54 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %56, i32 0, i32 0
  %57 = load i32, i32* %unmetalen54, align 4
  store i32 %57, i32* %ncopy, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %if.end53
  %58 = load i32, i32* %icopy, align 4
  %inc56 = add nsw i32 %58, 1
  store i32 %inc56, i32* %icopy, align 4
  br label %for.cond

for.end57:                                        ; preds = %if.then52, %for.cond
  br label %if.end60

if.else58:                                        ; preds = %lor.lhs.false23, %lor.lhs.false
  %59 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced59 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %59, i32 0, i32 2
  store i8* null, i8** %alloced59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %for.end57
  %60 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced61 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %60, i32 0, i32 2
  %61 = load i8*, i8** %alloced61, align 4
  ret i8* %61
}

; Function Attrs: noinline nounwind
define internal void @patmungestring(i8** %string, i32* %stringlen, i32* %unmetalenin) #0 {
entry:
  %string.addr = alloca i8**, align 4
  %stringlen.addr = alloca i32*, align 4
  %unmetalenin.addr = alloca i32*, align 4
  store i8** %string, i8*** %string.addr, align 4
  store i32* %stringlen, i32** %stringlen.addr, align 4
  store i32* %unmetalenin, i32** %unmetalenin.addr, align 4
  %0 = load i32*, i32** %stringlen.addr, align 4
  %1 = load i32, i32* %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %2 = load i8**, i8*** %string.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, -95
  br i1 %cmp1, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8**, i8*** %string.addr, align 4
  %6 = load i8*, i8** %5, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %5, align 4
  %7 = load i32*, i32** %unmetalenin.addr, align 4
  %8 = load i32, i32* %7, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load i32*, i32** %unmetalenin.addr, align 4
  %10 = load i32, i32* %9, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %11 = load i32*, i32** %stringlen.addr, align 4
  %12 = load i32, i32* %11, align 4
  %cmp6 = icmp sgt i32 %12, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %13 = load i32*, i32** %stringlen.addr, align 4
  %14 = load i32, i32* %13, align 4
  %dec9 = add nsw i32 %14, -1
  store i32 %dec9, i32* %13, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %entry
  %15 = load i32*, i32** %stringlen.addr, align 4
  %16 = load i32, i32* %15, align 4
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %17 = load i8**, i8*** %string.addr, align 4
  %18 = load i8*, i8** %17, align 4
  %call = call i32 @strlen(i8* %18)
  %19 = load i32*, i32** %stringlen.addr, align 4
  store i32 %call, i32* %19, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  ret void
}

declare i32 @ztrsub(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @pattry(%struct.patprog* %prog, i8* %string) #0 {
entry:
  %prog.addr = alloca %struct.patprog*, align 4
  %string.addr = alloca i8*, align 4
  store %struct.patprog* %prog, %struct.patprog** %prog.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  %0 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %1 = load i8*, i8** %string.addr, align 4
  %call = call i32 @pattryrefs(%struct.patprog* %0, i8* %1, i32 -1, i32 -1, %struct.patstralloc* null, i32 0, i32* null, i32* null, i32* null)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define i32 @pattryrefs(%struct.patprog* %prog, i8* %string, i32 %stringlen, i32 %unmetalenin, %struct.patstralloc* %patstralloc, i32 %patoffset, i32* %nump, i32* %begp, i32* %endp) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.patprog*, align 4
  %string.addr = alloca i8*, align 4
  %stringlen.addr = alloca i32, align 4
  %unmetalenin.addr = alloca i32, align 4
  %patstralloc.addr = alloca %struct.patstralloc*, align 4
  %patoffset.addr = alloca i32, align 4
  %nump.addr = alloca i32*, align 4
  %begp.addr = alloca i32*, align 4
  %endp.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %maxnpos = alloca i32, align 4
  %ret = alloca i32, align 4
  %origlen = alloca i32, align 4
  %sp = alloca i8**, align 4
  %ep = alloca i8**, align 4
  %ptr = alloca i8*, align 4
  %progstr = alloca i8*, align 4
  %patstralloc_struct = alloca %struct.patstralloc, align 4
  %pstrlen = alloca i32, align 4
  %pstr = alloca i8*, align 4
  %lendiff = alloca i32, align 4
  %str = alloca i8*, align 4
  %mlen = alloca i32, align 4
  %testptr = alloca i8*, align 4
  %teststop = alloca i8*, align 4
  %patptr = alloca i8*, align 4
  %patlen = alloca i32, align 4
  %found = alloca i32, align 4
  %str161 = alloca i8*, align 4
  %mlen162 = alloca i32, align 4
  %palen = alloca i32, align 4
  %matcharr = alloca i8**, align 4
  %mbeginarr = alloca i8**, align 4
  %mendarr = alloca i8**, align 4
  %numbuf = alloca [12 x i8], align 1
  store %struct.patprog* %prog, %struct.patprog** %prog.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  store i32 %stringlen, i32* %stringlen.addr, align 4
  store i32 %unmetalenin, i32* %unmetalenin.addr, align 4
  store %struct.patstralloc* %patstralloc, %struct.patstralloc** %patstralloc.addr, align 4
  store i32 %patoffset, i32* %patoffset.addr, align 4
  store i32* %nump, i32** %nump.addr, align 4
  store i32* %begp, i32** %begp.addr, align 4
  store i32* %endp, i32** %endp.addr, align 4
  store i32 0, i32* %maxnpos, align 4
  %0 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %1 = bitcast %struct.patprog* %0 to i8*
  %2 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %startoff = getelementptr inbounds %struct.patprog, %struct.patprog* %2, i32 0, i32 0
  %3 = load i32, i32* %startoff, align 4
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %3
  store i8* %add.ptr, i8** %progstr, align 4
  %4 = load i32*, i32** %nump.addr, align 4
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %nump.addr, align 4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %maxnpos, align 4
  %7 = load i32*, i32** %nump.addr, align 4
  store i32 0, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %tobool1 = icmp ne %struct.patstralloc* %8, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @patmungestring(i8** %string.addr, i32* %stringlen.addr, i32* %unmetalenin.addr)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load i32, i32* %stringlen.addr, align 4
  store i32 %9, i32* %origlen, align 4
  %10 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %tobool4 = icmp ne %struct.patstralloc* %10, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store i8* null, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  %11 = load i8*, i8** %string.addr, align 4
  store i8* %11, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  br label %if.end17

if.else:                                          ; preds = %if.end3
  store %struct.patstralloc* %patstralloc_struct, %struct.patstralloc** %patstralloc.addr, align 4
  %12 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %13 = load i8*, i8** %string.addr, align 4
  %14 = load i32, i32* %stringlen.addr, align 4
  %15 = load i32, i32* %unmetalenin.addr, align 4
  %16 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %call = call i8* @patallocstr(%struct.patprog* %12, i8* %13, i32 %14, i32 %15, i32 0, %struct.patstralloc* %16)
  %tobool6 = icmp ne i8* %call, null
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  %17 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %17, i32 0, i32 2
  %18 = load i8*, i8** %alloced, align 4
  %19 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %19, i32 0, i32 1
  %20 = load i32, i32* %unmetalenp, align 4
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i32 %20
  store i8* %add.ptr8, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %21 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %21, i32 0, i32 0
  %22 = load i32, i32* %unmetalen, align 4
  store i32 %22, i32* %stringlen.addr, align 4
  br label %if.end10

if.else9:                                         ; preds = %if.else
  %23 = load i8*, i8** %string.addr, align 4
  store i8* %23, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then7
  %24 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalenp11 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %24, i32 0, i32 1
  %25 = load i32, i32* %unmetalenp11, align 4
  %tobool12 = icmp ne i32 %25, 0
  br i1 %tobool12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end10
  %26 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced14 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %26, i32 0, i32 2
  %27 = load i8*, i8** %alloced14, align 4
  store i8* %27, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  br label %if.end16

if.else15:                                        ; preds = %if.end10
  store i8* null, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  %28 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags = getelementptr inbounds %struct.patprog, %struct.patprog* %28, i32 0, i32 6
  %29 = load i32, i32* %flags, align 4
  store i32 %29, i32* @patflags, align 4
  %30 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %31 = load i32, i32* %stringlen.addr, align 4
  %add.ptr18 = getelementptr inbounds i8, i8* %30, i32 %31
  store i8* %add.ptr18, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %32 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags19 = getelementptr inbounds %struct.patprog, %struct.patprog* %32, i32 0, i32 6
  %33 = load i32, i32* %flags19, align 4
  %and = and i32 %33, 36
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.else94

if.then21:                                        ; preds = %if.end17
  %34 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced22 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %34, i32 0, i32 2
  %35 = load i8*, i8** %alloced22, align 4
  %tobool23 = icmp ne i8* %35, null
  br i1 %tobool23, label %if.then24, label %if.else34

if.then24:                                        ; preds = %if.then21
  %36 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmeta = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %36, i32 0, i32 3
  %37 = load i8*, i8** %progstrunmeta, align 4
  %tobool25 = icmp ne i8* %37, null
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.then24
  %38 = load i8*, i8** %progstr, align 4
  %39 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patmlen = getelementptr inbounds %struct.patprog, %struct.patprog* %39, i32 0, i32 3
  %40 = load i32, i32* %patmlen, align 4
  %call27 = call i8* @dupstrpfx(i8* %38, i32 %40)
  %41 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmeta28 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %41, i32 0, i32 3
  store i8* %call27, i8** %progstrunmeta28, align 4
  %42 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmeta29 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %42, i32 0, i32 3
  %43 = load i8*, i8** %progstrunmeta29, align 4
  %44 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmetalen = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %44, i32 0, i32 4
  %call30 = call i8* @unmetafy(i8* %43, i32* %progstrunmetalen)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then24
  %45 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmeta32 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %45, i32 0, i32 3
  %46 = load i8*, i8** %progstrunmeta32, align 4
  store i8* %46, i8** %pstr, align 4
  %47 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %progstrunmetalen33 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %47, i32 0, i32 4
  %48 = load i32, i32* %progstrunmetalen33, align 4
  store i32 %48, i32* %pstrlen, align 4
  br label %if.end36

if.else34:                                        ; preds = %if.then21
  %49 = load i8*, i8** %progstr, align 4
  store i8* %49, i8** %pstr, align 4
  %50 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patmlen35 = getelementptr inbounds %struct.patprog, %struct.patprog* %50, i32 0, i32 3
  %51 = load i32, i32* %patmlen35, align 4
  store i32 %51, i32* %pstrlen, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end31
  %52 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags37 = getelementptr inbounds %struct.patprog, %struct.patprog* %52, i32 0, i32 6
  %53 = load i32, i32* %flags37, align 4
  %and38 = and i32 %53, 4
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end36
  store i32 1, i32* %ret, align 4
  br label %if.end54

if.else41:                                        ; preds = %if.end36
  %54 = load i32, i32* %stringlen.addr, align 4
  %55 = load i32, i32* %pstrlen, align 4
  %sub = sub nsw i32 %54, %55
  store i32 %sub, i32* %lendiff, align 4
  %56 = load i32, i32* %lendiff, align 4
  %cmp = icmp slt i32 %56, 0
  br i1 %cmp, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else41
  store i32 0, i32* %ret, align 4
  br label %if.end53

if.else43:                                        ; preds = %if.else41
  %57 = load i8*, i8** %pstr, align 4
  %58 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %59 = load i32, i32* %pstrlen, align 4
  %call44 = call i32 @memcmp(i8* %57, i8* %58, i32 %59)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else51, label %if.then46

if.then46:                                        ; preds = %if.else43
  %60 = load i32, i32* %lendiff, align 4
  %tobool47 = icmp ne i32 %60, 0
  br i1 %tobool47, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then46
  %61 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags48 = getelementptr inbounds %struct.patprog, %struct.patprog* %61, i32 0, i32 6
  %62 = load i32, i32* %flags48, align 4
  %and49 = and i32 %62, 8
  %tobool50 = icmp ne i32 %and49, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then46
  %63 = phi i1 [ true, %if.then46 ], [ %tobool50, %lor.rhs ]
  %lor.ext = zext i1 %63 to i32
  store i32 %lor.ext, i32* %ret, align 4
  br label %if.end52

if.else51:                                        ; preds = %if.else43
  store i32 0, i32* %ret, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %lor.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then42
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then40
  %64 = load i32, i32* %ret, align 4
  %tobool55 = icmp ne i32 %64, 0
  br i1 %tobool55, label %if.then56, label %if.end93

if.then56:                                        ; preds = %if.end54
  %65 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags57 = getelementptr inbounds %struct.patprog, %struct.patprog* %65, i32 0, i32 6
  %66 = load i32, i32* %flags57, align 4
  %and58 = and i32 %66, 16
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %if.then56
  %67 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %68 = load i8, i8* %67, align 1
  %conv = sext i8 %68 to i32
  %cmp60 = icmp eq i32 %conv, 46
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true
  store i32 0, i32* %ret, align 4
  br label %if.end92

if.else63:                                        ; preds = %land.lhs.true, %if.then56
  %69 = load i32, i32* %pstrlen, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  %70 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %globend = getelementptr inbounds %struct.patprog, %struct.patprog* %70, i32 0, i32 5
  %71 = load i32, i32* %globend, align 4
  store i32 %71, i32* @patglobflags, align 4
  %72 = load i32, i32* @patglobflags, align 4
  %and64 = and i32 %72, 2048
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end91

land.lhs.true66:                                  ; preds = %if.else63
  %73 = load i32, i32* @patflags, align 4
  %and67 = and i32 %73, 1
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.end91, label %if.then69

if.then69:                                        ; preds = %land.lhs.true66
  %74 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %alloced70 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %74, i32 0, i32 2
  %75 = load i8*, i8** %alloced70, align 4
  %tobool71 = icmp ne i8* %75, null
  br i1 %tobool71, label %if.then72, label %if.else76

if.then72:                                        ; preds = %if.then69
  %76 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %77 = load i32, i32* %pstrlen, align 4
  %call73 = call i8* @metafy(i8* %76, i32 %77, i32 3)
  store i8* %call73, i8** %str, align 4
  %78 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %79 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %80 = load i32, i32* %pstrlen, align 4
  %add.ptr74 = getelementptr inbounds i8, i8* %79, i32 %80
  %call75 = call i32 @charsub(i8* %78, i8* %add.ptr74)
  store i32 %call75, i32* %mlen, align 4
  br label %if.end80

if.else76:                                        ; preds = %if.then69
  %81 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  %call77 = call i8* @ztrduppfx(i8* %81, i32 %82)
  store i8* %call77, i8** %str, align 4
  call void @mb_charinit()
  %83 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %84 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  %add.ptr78 = getelementptr inbounds i8, i8* %84, i32 %85
  %call79 = call i32 @mb_metastrlenend(i8* %83, i32 0, i8* %add.ptr78)
  store i32 %call79, i32* %mlen, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then72
  %86 = load i8*, i8** %str, align 4
  %call81 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %86)
  %87 = load i32, i32* %patoffset.addr, align 4
  %88 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool82 = icmp ne i8 %88, 0
  %lnot = xor i1 %tobool82, true
  %lnot.ext = zext i1 %lnot to i32
  %add = add nsw i32 %87, %lnot.ext
  %call83 = call %struct.param* @setiparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 %add)
  %89 = load i32, i32* %mlen, align 4
  %90 = load i32, i32* %patoffset.addr, align 4
  %add84 = add nsw i32 %89, %90
  %91 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool85 = icmp ne i8 %91, 0
  %lnot86 = xor i1 %tobool85, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  %add88 = add nsw i32 %add84, %lnot.ext87
  %sub89 = sub nsw i32 %add88, 1
  %call90 = call %struct.param* @setiparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %sub89)
  br label %if.end91

if.end91:                                         ; preds = %if.end80, %land.lhs.true66, %if.else63
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then62
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end54
  br label %if.end302

if.else94:                                        ; preds = %if.end17
  store i32 1, i32* %ret, align 4
  %92 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %flags95 = getelementptr inbounds %struct.patprog, %struct.patprog* %92, i32 0, i32 6
  %93 = load i32, i32* %flags95, align 4
  %and96 = and i32 %93, 128
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end119, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.else94
  %94 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %mustoff = getelementptr inbounds %struct.patprog, %struct.patprog* %94, i32 0, i32 2
  %95 = load i32, i32* %mustoff, align 4
  %tobool99 = icmp ne i32 %95, 0
  br i1 %tobool99, label %if.then100, label %if.end119

if.then100:                                       ; preds = %land.lhs.true98
  %96 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %97 = bitcast %struct.patprog* %96 to i8*
  %98 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %mustoff101 = getelementptr inbounds %struct.patprog, %struct.patprog* %98, i32 0, i32 2
  %99 = load i32, i32* %mustoff101, align 4
  %add.ptr102 = getelementptr inbounds i8, i8* %97, i32 %99
  store i8* %add.ptr102, i8** %patptr, align 4
  %100 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patmlen103 = getelementptr inbounds %struct.patprog, %struct.patprog* %100, i32 0, i32 3
  %101 = load i32, i32* %patmlen103, align 4
  store i32 %101, i32* %patlen, align 4
  store i32 0, i32* %found, align 4
  %102 = load i32, i32* %patlen, align 4
  %103 = load i32, i32* %stringlen.addr, align 4
  %cmp104 = icmp sgt i32 %102, %103
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.then100
  store i32 0, i32* %ret, align 4
  br label %if.end118

if.else107:                                       ; preds = %if.then100
  %104 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %105 = load i32, i32* %patlen, align 4
  %idx.neg = sub i32 0, %105
  %add.ptr108 = getelementptr inbounds i8, i8* %104, i32 %idx.neg
  store i8* %add.ptr108, i8** %teststop, align 4
  %106 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  store i8* %106, i8** %testptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else107
  %107 = load i8*, i8** %testptr, align 4
  %108 = load i8*, i8** %teststop, align 4
  %cmp109 = icmp ule i8* %107, %108
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load i8*, i8** %testptr, align 4
  %110 = load i8*, i8** %patptr, align 4
  %111 = load i32, i32* %patlen, align 4
  %call111 = call i32 @memcmp(i8* %109, i8* %110, i32 %111)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %for.end

if.end114:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end114
  %112 = load i8*, i8** %testptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr, i8** %testptr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then113, %for.cond
  %113 = load i32, i32* %found, align 4
  %tobool115 = icmp ne i32 %113, 0
  br i1 %tobool115, label %if.end117, label %if.then116

if.then116:                                       ; preds = %for.end
  store i32 0, i32* %ret, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %for.end
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then106
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %land.lhs.true98, %if.else94
  %114 = load i32, i32* %ret, align 4
  %tobool120 = icmp ne i32 %114, 0
  br i1 %tobool120, label %if.end122, label %if.then121

if.then121:                                       ; preds = %if.end119
  store i32 0, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.end119
  %115 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %globflags = getelementptr inbounds %struct.patprog, %struct.patprog* %115, i32 0, i32 4
  %116 = load i32, i32* %globflags, align 4
  store i32 %116, i32* @patglobflags, align 4
  %117 = load i32, i32* @patflags, align 4
  %and123 = and i32 %117, 1
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.end122
  store i32 -1, i32* @forceerrs, align 4
  store i32 0, i32* @errsfound, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end122
  %118 = load i32, i32* @patflags, align 4
  %and127 = and i32 %118, 16
  %tobool128 = icmp ne i32 %and127, 0
  %lnot129 = xor i1 %tobool128, true
  %lnot.ext130 = zext i1 %lnot129 to i32
  store i32 %lnot.ext130, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  store i32 0, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %119 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  store i8* %119, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %120 = load i8*, i8** %progstr, align 4
  %121 = bitcast i8* %120 to %union.upat*
  %call131 = call i32 @patmatch(%union.upat* %121)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.else300

if.then133:                                       ; preds = %if.end126
  %122 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %globend134 = getelementptr inbounds %struct.patprog, %struct.patprog* %122, i32 0, i32 5
  %123 = load i32, i32* %globend134, align 4
  store i32 %123, i32* @patglobflags, align 4
  %124 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %125 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %124 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %125 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  %126 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %cmp135 = icmp eq %struct.patstralloc* %126, %patstralloc_struct
  br i1 %cmp135, label %land.lhs.true137, label %if.end154

land.lhs.true137:                                 ; preds = %if.then133
  %127 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %unmetalen138 = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %127, i32 0, i32 0
  %128 = load i32, i32* %unmetalen138, align 4
  %129 = load i32, i32* %origlen, align 4
  %cmp139 = icmp ne i32 %128, %129
  br i1 %cmp139, label %if.then141, label %if.end154

if.then141:                                       ; preds = %land.lhs.true137
  %130 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  store i8* %130, i8** %ptr, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc151, %if.then141
  %131 = load i8*, i8** %ptr, align 4
  %132 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %cmp143 = icmp ult i8* %131, %132
  br i1 %cmp143, label %for.body145, label %for.end153

for.body145:                                      ; preds = %for.cond142
  %133 = load i8*, i8** %ptr, align 4
  %134 = load i8, i8* %133, align 1
  %idxprom = zext i8 %134 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %135 = load i16, i16* %arrayidx, align 2
  %conv146 = sext i16 %135 to i32
  %and147 = and i32 %conv146, 4096
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %for.body145
  %136 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %for.body145
  br label %for.inc151

for.inc151:                                       ; preds = %if.end150
  %137 = load i8*, i8** %ptr, align 4
  %incdec.ptr152 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr152, i8** %ptr, align 4
  br label %for.cond142

for.end153:                                       ; preds = %for.cond142
  br label %if.end154

if.end154:                                        ; preds = %for.end153, %land.lhs.true137, %if.then133
  %138 = load i32, i32* @patglobflags, align 4
  %and155 = and i32 %138, 2048
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true157, label %if.end181

land.lhs.true157:                                 ; preds = %if.end154
  %139 = load i32, i32* @patflags, align 4
  %and158 = and i32 %139, 1
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.end181, label %if.then160

if.then160:                                       ; preds = %land.lhs.true157
  %140 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %141 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %call163 = call i32 @charsub(i8* %140, i8* %141)
  store i32 %call163, i32* %mlen162, align 4
  %142 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %143 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %144 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast164 = ptrtoint i8* %143 to i32
  %sub.ptr.rhs.cast165 = ptrtoint i8* %144 to i32
  %sub.ptr.sub166 = sub i32 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %call167 = call i8* @metafy(i8* %142, i32 %sub.ptr.sub166, i32 3)
  store i8* %call167, i8** %str161, align 4
  %145 = load i8*, i8** %str161, align 4
  %call168 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %145)
  %146 = load i32, i32* %patoffset.addr, align 4
  %147 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool169 = icmp ne i8 %147, 0
  %lnot170 = xor i1 %tobool169, true
  %lnot.ext171 = zext i1 %lnot170 to i32
  %add172 = add nsw i32 %146, %lnot.ext171
  %call173 = call %struct.param* @setiparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 %add172)
  %148 = load i32, i32* %mlen162, align 4
  %149 = load i32, i32* %patoffset.addr, align 4
  %add174 = add nsw i32 %148, %149
  %150 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool175 = icmp ne i8 %150, 0
  %lnot176 = xor i1 %tobool175, true
  %lnot.ext177 = zext i1 %lnot176 to i32
  %add178 = add nsw i32 %add174, %lnot.ext177
  %sub179 = sub nsw i32 %add178, 1
  %call180 = call %struct.param* @setiparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %sub179)
  br label %if.end181

if.end181:                                        ; preds = %if.then160, %land.lhs.true157, %if.end154
  %151 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar = getelementptr inbounds %struct.patprog, %struct.patprog* %151, i32 0, i32 7
  %152 = load i32, i32* %patnpar, align 4
  %tobool182 = icmp ne i32 %152, 0
  br i1 %tobool182, label %land.lhs.true183, label %if.else225

land.lhs.true183:                                 ; preds = %if.end181
  %153 = load i32*, i32** %nump.addr, align 4
  %tobool184 = icmp ne i32* %153, null
  br i1 %tobool184, label %if.then185, label %if.else225

if.then185:                                       ; preds = %land.lhs.true183
  %154 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar186 = getelementptr inbounds %struct.patprog, %struct.patprog* %154, i32 0, i32 7
  %155 = load i32, i32* %patnpar186, align 4
  %156 = load i32*, i32** %nump.addr, align 4
  store i32 %155, i32* %156, align 4
  store i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 5, i32 0), i8*** %sp, align 4
  store i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 6, i32 0), i8*** %ep, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc222, %if.then185
  %157 = load i32, i32* %i, align 4
  %158 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar188 = getelementptr inbounds %struct.patprog, %struct.patprog* %158, i32 0, i32 7
  %159 = load i32, i32* %patnpar188, align 4
  %cmp189 = icmp slt i32 %157, %159
  br i1 %cmp189, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond187
  %160 = load i32, i32* %i, align 4
  %161 = load i32, i32* %maxnpos, align 4
  %cmp191 = icmp slt i32 %160, %161
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond187
  %162 = phi i1 [ false, %for.cond187 ], [ %cmp191, %land.rhs ]
  br i1 %162, label %for.body193, label %for.end224

for.body193:                                      ; preds = %land.end
  %163 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %164 = load i32, i32* %i, align 4
  %shl = shl i32 1, %164
  %and194 = and i32 %163, %shl
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then196, label %if.else210

if.then196:                                       ; preds = %for.body193
  %165 = load i32*, i32** %begp.addr, align 4
  %tobool197 = icmp ne i32* %165, null
  br i1 %tobool197, label %if.then198, label %if.end202

if.then198:                                       ; preds = %if.then196
  %166 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %167 = load i8**, i8*** %sp, align 4
  %168 = load i8*, i8** %167, align 4
  %call199 = call i32 @charsub(i8* %166, i8* %168)
  %169 = load i32, i32* %patoffset.addr, align 4
  %add200 = add nsw i32 %call199, %169
  %170 = load i32*, i32** %begp.addr, align 4
  %incdec.ptr201 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %incdec.ptr201, i32** %begp.addr, align 4
  store i32 %add200, i32* %170, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.then196
  %171 = load i32*, i32** %endp.addr, align 4
  %tobool203 = icmp ne i32* %171, null
  br i1 %tobool203, label %if.then204, label %if.end209

if.then204:                                       ; preds = %if.end202
  %172 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %173 = load i8**, i8*** %ep, align 4
  %174 = load i8*, i8** %173, align 4
  %call205 = call i32 @charsub(i8* %172, i8* %174)
  %175 = load i32, i32* %patoffset.addr, align 4
  %add206 = add nsw i32 %call205, %175
  %sub207 = sub nsw i32 %add206, 1
  %176 = load i32*, i32** %endp.addr, align 4
  %incdec.ptr208 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %incdec.ptr208, i32** %endp.addr, align 4
  store i32 %sub207, i32* %176, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %if.end202
  br label %if.end219

if.else210:                                       ; preds = %for.body193
  %177 = load i32*, i32** %begp.addr, align 4
  %tobool211 = icmp ne i32* %177, null
  br i1 %tobool211, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.else210
  %178 = load i32*, i32** %begp.addr, align 4
  %incdec.ptr213 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %incdec.ptr213, i32** %begp.addr, align 4
  store i32 -1, i32* %178, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.else210
  %179 = load i32*, i32** %endp.addr, align 4
  %tobool215 = icmp ne i32* %179, null
  br i1 %tobool215, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.end214
  %180 = load i32*, i32** %endp.addr, align 4
  %incdec.ptr217 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr217, i32** %endp.addr, align 4
  store i32 -1, i32* %180, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end214
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end209
  %181 = load i8**, i8*** %sp, align 4
  %incdec.ptr220 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %incdec.ptr220, i8*** %sp, align 4
  %182 = load i8**, i8*** %ep, align 4
  %incdec.ptr221 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %incdec.ptr221, i8*** %ep, align 4
  br label %for.inc222

for.inc222:                                       ; preds = %if.end219
  %183 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %183, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond187

for.end224:                                       ; preds = %land.end
  br label %if.end292

if.else225:                                       ; preds = %land.lhs.true183, %if.end181
  %184 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar226 = getelementptr inbounds %struct.patprog, %struct.patprog* %184, i32 0, i32 7
  %185 = load i32, i32* %patnpar226, align 4
  %tobool227 = icmp ne i32 %185, 0
  br i1 %tobool227, label %land.lhs.true228, label %if.end291

land.lhs.true228:                                 ; preds = %if.else225
  %186 = load i32, i32* @patflags, align 4
  %and229 = and i32 %186, 1
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %if.end291, label %if.then231

if.then231:                                       ; preds = %land.lhs.true228
  %187 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar232 = getelementptr inbounds %struct.patprog, %struct.patprog* %187, i32 0, i32 7
  %188 = load i32, i32* %patnpar232, align 4
  %add233 = add nsw i32 %188, 1
  store i32 %add233, i32* %palen, align 4
  %189 = load i32, i32* %palen, align 4
  %mul = mul i32 %189, 4
  %call234 = call i8* @zshcalloc(i32 %mul)
  %190 = bitcast i8* %call234 to i8**
  store i8** %190, i8*** %matcharr, align 4
  %191 = load i32, i32* %palen, align 4
  %mul235 = mul i32 %191, 4
  %call236 = call i8* @zshcalloc(i32 %mul235)
  %192 = bitcast i8* %call236 to i8**
  store i8** %192, i8*** %mbeginarr, align 4
  %193 = load i32, i32* %palen, align 4
  %mul237 = mul i32 %193, 4
  %call238 = call i8* @zshcalloc(i32 %mul237)
  %194 = bitcast i8* %call238 to i8**
  store i8** %194, i8*** %mendarr, align 4
  store i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 5, i32 0), i8*** %sp, align 4
  store i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 6, i32 0), i8*** %ep, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond239

for.cond239:                                      ; preds = %for.inc285, %if.then231
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %patnpar240 = getelementptr inbounds %struct.patprog, %struct.patprog* %196, i32 0, i32 7
  %197 = load i32, i32* %patnpar240, align 4
  %cmp241 = icmp slt i32 %195, %197
  br i1 %cmp241, label %for.body243, label %for.end287

for.body243:                                      ; preds = %for.cond239
  %198 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %199 = load i32, i32* %i, align 4
  %shl244 = shl i32 1, %199
  %and245 = and i32 %198, %shl244
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then247, label %if.else275

if.then247:                                       ; preds = %for.body243
  %200 = load i8**, i8*** %sp, align 4
  %201 = load i8*, i8** %200, align 4
  %202 = load i8**, i8*** %ep, align 4
  %203 = load i8*, i8** %202, align 4
  %204 = load i8**, i8*** %sp, align 4
  %205 = load i8*, i8** %204, align 4
  %sub.ptr.lhs.cast248 = ptrtoint i8* %203 to i32
  %sub.ptr.rhs.cast249 = ptrtoint i8* %205 to i32
  %sub.ptr.sub250 = sub i32 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  %call251 = call i8* @metafy(i8* %201, i32 %sub.ptr.sub250, i32 3)
  %206 = load i8**, i8*** %matcharr, align 4
  %207 = load i32, i32* %i, align 4
  %arrayidx252 = getelementptr inbounds i8*, i8** %206, i32 %207
  store i8* %call251, i8** %arrayidx252, align 4
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %numbuf, i32 0, i32 0
  %208 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %209 = load i8**, i8*** %sp, align 4
  %210 = load i8*, i8** %209, align 4
  %call253 = call i32 @charsub(i8* %208, i8* %210)
  %211 = load i32, i32* %patoffset.addr, align 4
  %add254 = add nsw i32 %call253, %211
  %212 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool255 = icmp ne i8 %212, 0
  %lnot256 = xor i1 %tobool255, true
  %lnot.ext257 = zext i1 %lnot256 to i32
  %add258 = add nsw i32 %add254, %lnot.ext257
  %call259 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %add258)
  %arraydecay260 = getelementptr inbounds [12 x i8], [12 x i8]* %numbuf, i32 0, i32 0
  %call261 = call i8* @ztrdup(i8* %arraydecay260)
  %213 = load i8**, i8*** %mbeginarr, align 4
  %214 = load i32, i32* %i, align 4
  %arrayidx262 = getelementptr inbounds i8*, i8** %213, i32 %214
  store i8* %call261, i8** %arrayidx262, align 4
  %arraydecay263 = getelementptr inbounds [12 x i8], [12 x i8]* %numbuf, i32 0, i32 0
  %215 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %216 = load i8**, i8*** %ep, align 4
  %217 = load i8*, i8** %216, align 4
  %call264 = call i32 @charsub(i8* %215, i8* %217)
  %218 = load i32, i32* %patoffset.addr, align 4
  %add265 = add nsw i32 %call264, %218
  %219 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool266 = icmp ne i8 %219, 0
  %lnot267 = xor i1 %tobool266, true
  %lnot.ext268 = zext i1 %lnot267 to i32
  %add269 = add nsw i32 %add265, %lnot.ext268
  %sub270 = sub nsw i32 %add269, 1
  %call271 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %sub270)
  %arraydecay272 = getelementptr inbounds [12 x i8], [12 x i8]* %numbuf, i32 0, i32 0
  %call273 = call i8* @ztrdup(i8* %arraydecay272)
  %220 = load i8**, i8*** %mendarr, align 4
  %221 = load i32, i32* %i, align 4
  %arrayidx274 = getelementptr inbounds i8*, i8** %220, i32 %221
  store i8* %call273, i8** %arrayidx274, align 4
  br label %if.end282

if.else275:                                       ; preds = %for.body243
  %call276 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %222 = load i8**, i8*** %matcharr, align 4
  %223 = load i32, i32* %i, align 4
  %arrayidx277 = getelementptr inbounds i8*, i8** %222, i32 %223
  store i8* %call276, i8** %arrayidx277, align 4
  %call278 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %224 = load i8**, i8*** %mbeginarr, align 4
  %225 = load i32, i32* %i, align 4
  %arrayidx279 = getelementptr inbounds i8*, i8** %224, i32 %225
  store i8* %call278, i8** %arrayidx279, align 4
  %call280 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %226 = load i8**, i8*** %mendarr, align 4
  %227 = load i32, i32* %i, align 4
  %arrayidx281 = getelementptr inbounds i8*, i8** %226, i32 %227
  store i8* %call280, i8** %arrayidx281, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.else275, %if.then247
  %228 = load i8**, i8*** %sp, align 4
  %incdec.ptr283 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %incdec.ptr283, i8*** %sp, align 4
  %229 = load i8**, i8*** %ep, align 4
  %incdec.ptr284 = getelementptr inbounds i8*, i8** %229, i32 1
  store i8** %incdec.ptr284, i8*** %ep, align 4
  br label %for.inc285

for.inc285:                                       ; preds = %if.end282
  %230 = load i32, i32* %i, align 4
  %inc286 = add nsw i32 %230, 1
  store i32 %inc286, i32* %i, align 4
  br label %for.cond239

for.end287:                                       ; preds = %for.cond239
  %231 = load i8**, i8*** %matcharr, align 4
  %call288 = call %struct.param* @setaparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8** %231)
  %232 = load i8**, i8*** %mbeginarr, align 4
  %call289 = call %struct.param* @setaparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8** %232)
  %233 = load i8**, i8*** %mendarr, align 4
  %call290 = call %struct.param* @setaparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %233)
  br label %if.end291

if.end291:                                        ; preds = %for.end287, %land.lhs.true228, %if.else225
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %for.end224
  %234 = load i32*, i32** %nump.addr, align 4
  %tobool293 = icmp ne i32* %234, null
  br i1 %tobool293, label %if.end299, label %land.lhs.true294

land.lhs.true294:                                 ; preds = %if.end292
  %235 = load i32*, i32** %endp.addr, align 4
  %tobool295 = icmp ne i32* %235, null
  br i1 %tobool295, label %if.then296, label %if.end299

if.then296:                                       ; preds = %land.lhs.true294
  %236 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %237 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %call297 = call i32 @charsub(i8* %236, i8* %237)
  %238 = load i32, i32* %patoffset.addr, align 4
  %add298 = add nsw i32 %call297, %238
  %239 = load i32*, i32** %endp.addr, align 4
  store i32 %add298, i32* %239, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %land.lhs.true294, %if.end292
  store i32 1, i32* %ret, align 4
  br label %if.end301

if.else300:                                       ; preds = %if.end126
  store i32 0, i32* %ret, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.else300, %if.end299
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.end93
  %240 = load i32, i32* %ret, align 4
  store i32 %240, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end302, %if.then121
  %241 = load i32, i32* %retval, align 4
  ret i32 %241
}

; Function Attrs: noinline nounwind
define i32 @pattrylen(%struct.patprog* %prog, i8* %string, i32 %len, i32 %unmetalen, %struct.patstralloc* %patstralloc, i32 %offset) #0 {
entry:
  %prog.addr = alloca %struct.patprog*, align 4
  %string.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %unmetalen.addr = alloca i32, align 4
  %patstralloc.addr = alloca %struct.patstralloc*, align 4
  %offset.addr = alloca i32, align 4
  store %struct.patprog* %prog, %struct.patprog** %prog.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %unmetalen, i32* %unmetalen.addr, align 4
  store %struct.patstralloc* %patstralloc, %struct.patstralloc** %patstralloc.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %1 = load i8*, i8** %string.addr, align 4
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %unmetalen.addr, align 4
  %4 = load %struct.patstralloc*, %struct.patstralloc** %patstralloc.addr, align 4
  %5 = load i32, i32* %offset.addr, align 4
  %call = call i32 @pattryrefs(%struct.patprog* %0, i8* %1, i32 %2, i32 %3, %struct.patstralloc* %4, i32 %5, i32* null, i32* null, i32* null)
  ret i32 %call
}

declare i8* @dupstrpfx(i8*, i32) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @memcmp(i8*, i8*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @charsub(i8* %x, i8* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i8*, align 4
  %y.addr = alloca i8*, align 4
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %wc = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 4
  store i8* %y, i8** %y.addr, align 4
  store i32 0, i32* %res, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %y.addr, align 4
  %2 = load i8*, i8** %x.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %3 = load i8*, i8** %x.addr, align 4
  %4 = load i8*, i8** %y.addr, align 4
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load i8*, i8** %y.addr, align 4
  %7 = load i8*, i8** %x.addr, align 4
  %sub.ptr.lhs.cast1 = ptrtoint i8* %6 to i32
  %sub.ptr.rhs.cast2 = ptrtoint i8* %7 to i32
  %sub.ptr.sub3 = sub i32 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %call = call i32 @mbrtowc(i32* %wc, i8* %5, i32 %sub.ptr.sub3, %struct.__mbstate_t* @shiftstate)
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %8, -1
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i32, i32* %ret, align 4
  %cmp5 = icmp eq i32 %9, -2
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %lor.lhs.false, %while.body
  %10 = load i32, i32* %res, align 4
  %11 = load i8*, i8** %y.addr, align 4
  %12 = load i8*, i8** %x.addr, align 4
  %sub.ptr.lhs.cast7 = ptrtoint i8* %11 to i32
  %sub.ptr.rhs.cast8 = ptrtoint i8* %12 to i32
  %sub.ptr.sub9 = sub i32 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %add = add nsw i32 %10, %sub.ptr.sub9
  store i32 %add, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %ret, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  store i32 1, i32* %ret, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %14 = load i32, i32* %res, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %res, align 4
  %15 = load i32, i32* %ret, align 4
  %16 = load i8*, i8** %x.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %15
  store i8* %add.ptr, i8** %x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %res, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i8* @ztrduppfx(i8*, i32) #1

declare void @mb_charinit() #1

declare i32 @mb_metastrlenend(i8*, i32, i8*) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare %struct.param* @setiparam(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @patmatch(%union.upat* %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %union.upat*, align 4
  %scan = alloca %union.upat*, align 4
  %next = alloca %union.upat*, align 4
  %opnd = alloca %union.upat*, align 4
  %start = alloca i8*, align 4
  %save = alloca i8*, align 4
  %chrop = alloca i8*, align 4
  %chrend = alloca i8*, align 4
  %compend = alloca i8*, align 4
  %savglobflags = alloca i32, align 4
  %op = alloca i32, align 4
  %no = alloca i32, align 4
  %min = alloca i32, align 4
  %fail = alloca i32, align 4
  %saverrsfound = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %comp = alloca i32, align 4
  %nextch = alloca i32, align 4
  %q = alloca i32, align 4
  %savpatflags = alloca i32, align 4
  %savpatglobflags = alloca i32, align 4
  %savexactpos = alloca i8*, align 4
  %savexactend = alloca i8*, align 4
  %savpattrystate = alloca %struct.rpat, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp5 = alloca %struct.__sigset_t, align 4
  %savpatinput = alloca i8*, align 4
  %savchrop = alloca i8*, align 4
  %badin = alloca i32, align 4
  %badpa = alloca i32, align 4
  %chin = alloca i32, align 4
  %chpa = alloca i32, align 4
  %zmb_ind = alloca i32, align 4
  %cr = alloca i32, align 4
  %scanop = alloca i8*, align 4
  %out_of_range = alloca i32, align 4
  %digit = alloca i32, align 4
  %c10 = alloca i32, align 4
  %syncptr = alloca i8*, align 4
  %after = alloca %union.upat*, align 4
  %syncstrp = alloca %union.upat*, align 4
  %origpatinend = alloca i8*, align 4
  %oldsyncstr = alloca i8*, align 4
  %matchpt = alloca i8*, align 4
  %ret = alloca i32, align 4
  %savglobdots = alloca i32, align 4
  %matchederrs = alloca i32, align 4
  %savparsfound = alloca i32, align 4
  %syncpt = alloca i8*, align 4
  %savpatinstart = alloca i8*, align 4
  %savforce = alloca i32, align 4
  %savpatflags412 = alloca i32, align 4
  %synclen = alloca i32, align 4
  %ret543 = alloca i32, align 4
  %pfree = alloca i32, align 4
  %ptrp = alloca %union.upat*, align 4
  %ptr = alloca i8*, align 4
  %lastcharstart = alloca i8*, align 4
  %charstart = alloca i8*, align 4
  %nextop = alloca i8*, align 4
  %nextlen = alloca i32, align 4
  %ptlen = alloca i32, align 4
  %lenmatch = alloca i32, align 4
  %charmatch_cache = alloca i32, align 4
  %curptr = alloca i32*, align 4
  %savecount = alloca i32, align 4
  %saveptr = alloca i8*, align 4
  %ret908 = alloca i32, align 4
  %cur = alloca i32, align 4
  %min918 = alloca i32, align 4
  %max = alloca i32, align 4
  %patinput_thistime = alloca i8*, align 4
  %savexact = alloca i8*, align 4
  %nextexact = alloca i8*, align 4
  %nextin = alloca i8*, align 4
  %cin0 = alloca i32, align 4
  %cpa0 = alloca i32, align 4
  %cin1 = alloca i32, align 4
  %cpa1 = alloca i32, align 4
  %savpatflags1120 = alloca i32, align 4
  %savpatglobflags1122 = alloca i32, align 4
  %savexactpos1124 = alloca i8*, align 4
  %savexactend1126 = alloca i8*, align 4
  %savpattrystate1128 = alloca %struct.rpat, align 4
  %oset1136 = alloca %struct.__sigset_t, align 4
  %tmp1140 = alloca %struct.__sigset_t, align 4
  %tmp1142 = alloca %struct.__sigset_t, align 4
  store %union.upat* %prog, %union.upat** %prog.addr, align 4
  %0 = load %union.upat*, %union.upat** %prog.addr, align 4
  store %union.upat* %0, %union.upat** %scan, align 4
  store i32 0, i32* %fail, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  store i32 %1, i32* %q, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @queue_front, align 4
  %3 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* @patflags, align 4
  store i32 %4, i32* %savpatflags, align 4
  %5 = load i32, i32* @patglobflags, align 4
  store i32 %5, i32* %savpatglobflags, align 4
  %6 = load i8*, i8** @exactpos, align 4
  store i8* %6, i8** %savexactpos, align 4
  %7 = load i8*, i8** @exactend, align 4
  store i8* %7, i8** %savexactend, align 4
  %8 = bitcast %struct.rpat* %savpattrystate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* bitcast (%struct.rpat* @pattrystate to i8*), i32 100, i32 4, i1 false)
  br label %do.body1

do.body1:                                         ; preds = %if.then
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body2
  %9 = load i32, i32* @queue_front, align 4
  %10 = load i32, i32* @queue_rear, align 4
  %cmp3 = icmp ne i32 %9, %10
  br i1 %cmp3, label %while.body, label %while.end

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
  %arrayidx4 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %15
  %16 = load i32, i32* %arrayidx4, align 4
  call void @zhandler(i32 %16)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp5, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %do.end6

do.end6:                                          ; preds = %do.end
  %17 = load i32, i32* %q, align 4
  store i32 %17, i32* @queueing_enabled, align 4
  %18 = load i8*, i8** %savexactpos, align 4
  store i8* %18, i8** @exactpos, align 4
  %19 = load i8*, i8** %savexactend, align 4
  store i8* %19, i8** @exactend, align 4
  %20 = load i32, i32* %savpatflags, align 4
  store i32 %20, i32* @patflags, align 4
  %21 = load i32, i32* %savpatglobflags, align 4
  store i32 %21, i32* @patglobflags, align 4
  %22 = bitcast %struct.rpat* %savpattrystate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.rpat* @pattrystate to i8*), i8* %22, i32 100, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7

do.end7:                                          ; preds = %if.end
  br label %while.cond8

while.cond8:                                      ; preds = %do.end1150, %if.end1110, %if.then994, %do.end7
  %23 = load %union.upat*, %union.upat** %scan, align 4
  %tobool = icmp ne %union.upat* %23, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond8
  %24 = load i32, i32* @errflag, align 4
  %tobool9 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %25 = phi i1 [ false, %while.cond8 ], [ %lnot, %land.rhs ]
  br i1 %25, label %while.body10, label %while.end1151

while.body10:                                     ; preds = %land.end
  %26 = load %union.upat*, %union.upat** %scan, align 4
  %l = bitcast %union.upat* %26 to i32*
  %27 = load i32, i32* %l, align 4
  %shr = ashr i32 %27, 8
  store i32 %shr, i32* @rn_offs, align 4
  %tobool11 = icmp ne i32 %shr, 0
  br i1 %tobool11, label %cond.true, label %cond.false16

cond.true:                                        ; preds = %while.body10
  %28 = load %union.upat*, %union.upat** %scan, align 4
  %l12 = bitcast %union.upat* %28 to i32*
  %29 = load i32, i32* %l12, align 4
  %and = and i32 %29, 255
  %cmp13 = icmp eq i32 %and, 3
  br i1 %cmp13, label %cond.true14, label %cond.false

cond.true14:                                      ; preds = %cond.true
  %30 = load %union.upat*, %union.upat** %scan, align 4
  %31 = load i32, i32* @rn_offs, align 4
  %idx.neg = sub i32 0, %31
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %30, i32 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %32 = load %union.upat*, %union.upat** %scan, align 4
  %33 = load i32, i32* @rn_offs, align 4
  %add.ptr15 = getelementptr inbounds %union.upat, %union.upat* %32, i32 %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true14
  %cond = phi %union.upat* [ %add.ptr, %cond.true14 ], [ %add.ptr15, %cond.false ]
  br label %cond.end17

cond.false16:                                     ; preds = %while.body10
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.end
  %cond18 = phi %union.upat* [ %cond, %cond.end ], [ null, %cond.false16 ]
  store %union.upat* %cond18, %union.upat** %next, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end17
  %35 = load %union.upat*, %union.upat** %scan, align 4
  %l20 = bitcast %union.upat* %35 to i32*
  %36 = load i32, i32* %l20, align 4
  %and21 = and i32 %36, 64
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end31

land.lhs.true23:                                  ; preds = %land.lhs.true
  %37 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %38 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %cmp24 = icmp eq i8* %37, %38
  br i1 %cmp24, label %land.lhs.true25, label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %39 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %40 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp26 = icmp ult i8* %39, %40
  br i1 %cmp26, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %41 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %42 = load i8, i8* %41, align 1
  %conv = sext i8 %42 to i32
  %cmp28 = icmp eq i32 %conv, 46
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  store i32 0, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true27, %land.lhs.true25, %land.lhs.true23, %land.lhs.true, %cond.end17
  %43 = load %union.upat*, %union.upat** %scan, align 4
  %l32 = bitcast %union.upat* %43 to i32*
  %44 = load i32, i32* %l32, align 4
  %and33 = and i32 %44, 255
  switch i32 %and33, label %sw.epilog [
    i32 64, label %sw.bb
    i32 4, label %sw.bb38
    i32 65, label %sw.bb105
    i32 66, label %sw.bb105
    i32 68, label %sw.bb142
    i32 69, label %sw.bb142
    i32 70, label %sw.bb142
    i32 71, label %sw.bb260
    i32 5, label %sw.bb307
    i32 3, label %sw.bb308
    i32 8, label %sw.bb309
    i32 128, label %sw.bb312
    i32 129, label %sw.bb312
    i32 130, label %sw.bb312
    i32 131, label %sw.bb312
    i32 132, label %sw.bb312
    i32 133, label %sw.bb312
    i32 134, label %sw.bb312
    i32 135, label %sw.bb312
    i32 136, label %sw.bb312
    i32 137, label %sw.bb312
    i32 144, label %sw.bb331
    i32 145, label %sw.bb331
    i32 146, label %sw.bb331
    i32 147, label %sw.bb331
    i32 148, label %sw.bb331
    i32 149, label %sw.bb331
    i32 150, label %sw.bb331
    i32 151, label %sw.bb331
    i32 152, label %sw.bb331
    i32 153, label %sw.bb331
    i32 1, label %sw.bb352
    i32 2, label %sw.bb369
    i32 32, label %sw.bb374
    i32 33, label %sw.bb374
    i32 67, label %sw.bb644
    i32 6, label %sw.bb670
    i32 7, label %sw.bb670
    i32 9, label %sw.bb882
    i32 10, label %sw.bb890
    i32 11, label %sw.bb898
    i32 12, label %sw.bb913
    i32 0, label %sw.bb961
  ]

sw.bb:                                            ; preds = %if.end31
  %45 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %46 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp34 = icmp eq i8* %45, %46
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.bb
  store i32 1, i32* %fail, align 4
  br label %if.end37

if.else:                                          ; preds = %sw.bb
  %47 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %48 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call = call i8* @charnext(i8* %47, i8* %48)
  store i8* %call, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end31
  %49 = load i8*, i8** @exactpos, align 4
  %tobool39 = icmp ne i8* %49, null
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %sw.bb38
  %50 = load i8*, i8** @exactpos, align 4
  store i8* %50, i8** %chrop, align 4
  %51 = load i8*, i8** @exactend, align 4
  store i8* %51, i8** %chrend, align 4
  br label %if.end46

if.else41:                                        ; preds = %sw.bb38
  %52 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr42 = getelementptr inbounds %union.upat, %union.upat* %52, i32 2
  %53 = bitcast %union.upat* %add.ptr42 to i8*
  store i8* %53, i8** %chrop, align 4
  %54 = load i8*, i8** %chrop, align 4
  %55 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx43 = getelementptr inbounds %union.upat, %union.upat* %55, i32 1
  %l44 = bitcast %union.upat* %arrayidx43 to i32*
  %56 = load i32, i32* %l44, align 4
  %add.ptr45 = getelementptr inbounds i8, i8* %54, i32 %56
  store i8* %add.ptr45, i8** %chrend, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else41, %if.then40
  store i8* null, i8** @exactpos, align 4
  br label %while.cond47

while.cond47:                                     ; preds = %if.end99, %if.end46
  %57 = load i8*, i8** %chrop, align 4
  %58 = load i8*, i8** %chrend, align 4
  %cmp48 = icmp ult i8* %57, %58
  br i1 %cmp48, label %land.rhs50, label %land.end53

land.rhs50:                                       ; preds = %while.cond47
  %59 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %60 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp51 = icmp ult i8* %59, %60
  br label %land.end53

land.end53:                                       ; preds = %land.rhs50, %while.cond47
  %61 = phi i1 [ false, %while.cond47 ], [ %cmp51, %land.rhs50 ]
  br i1 %61, label %while.body54, label %while.end100

while.body54:                                     ; preds = %land.end53
  %62 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %62, i8** %savpatinput, align 4
  %63 = load i8*, i8** %chrop, align 4
  store i8* %63, i8** %savchrop, align 4
  store i32 0, i32* %badin, align 4
  store i32 0, i32* %badpa, align 4
  %64 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call60 = call i32 @charrefinc(i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), i8* %64, i32* %badin)
  store i32 %call60, i32* %chin, align 4
  %65 = load i8*, i8** %chrend, align 4
  %call62 = call i32 @charrefinc(i8** %chrop, i8* %65, i32* %badpa)
  store i32 %call62, i32* %chpa, align 4
  %66 = load i32, i32* %chin, align 4
  %67 = load i32, i32* %chpa, align 4
  %cmp63 = icmp eq i32 %66, %67
  br i1 %cmp63, label %lor.lhs.false95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body54
  %68 = load i32, i32* @patglobflags, align 4
  %and65 = and i32 %68, 512
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %cond.true67, label %cond.false84

cond.true67:                                      ; preds = %lor.lhs.false
  %69 = load i32, i32* %chin, align 4
  %call68 = call i32 @iswupper(i32 %69)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %cond.true70, label %cond.false72

cond.true70:                                      ; preds = %cond.true67
  %70 = load i32, i32* %chin, align 4
  %call71 = call i32 @towlower(i32 %70)
  br label %cond.end73

cond.false72:                                     ; preds = %cond.true67
  %71 = load i32, i32* %chin, align 4
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true70
  %cond74 = phi i32 [ %call71, %cond.true70 ], [ %71, %cond.false72 ]
  %72 = load i32, i32* %chpa, align 4
  %call75 = call i32 @iswupper(i32 %72)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %cond.true77, label %cond.false79

cond.true77:                                      ; preds = %cond.end73
  %73 = load i32, i32* %chpa, align 4
  %call78 = call i32 @towlower(i32 %73)
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end73
  %74 = load i32, i32* %chpa, align 4
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true77
  %cond81 = phi i32 [ %call78, %cond.true77 ], [ %74, %cond.false79 ]
  %cmp82 = icmp eq i32 %cond74, %cond81
  br i1 %cmp82, label %lor.lhs.false95, label %if.then98

cond.false84:                                     ; preds = %lor.lhs.false
  %75 = load i32, i32* @patglobflags, align 4
  %and85 = and i32 %75, 256
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %cond.true87, label %cond.false94

cond.true87:                                      ; preds = %cond.false84
  %76 = load i32, i32* %chpa, align 4
  %call88 = call i32 @iswlower(i32 %76)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %land.lhs.true90, label %if.then98

land.lhs.true90:                                  ; preds = %cond.true87
  %77 = load i32, i32* %chpa, align 4
  %call91 = call i32 @towupper(i32 %77)
  %78 = load i32, i32* %chin, align 4
  %cmp92 = icmp eq i32 %call91, %78
  br i1 %cmp92, label %lor.lhs.false95, label %if.then98

cond.false94:                                     ; preds = %cond.false84
  br i1 false, label %lor.lhs.false95, label %if.then98

lor.lhs.false95:                                  ; preds = %cond.false94, %land.lhs.true90, %cond.end80, %while.body54
  %79 = load i32, i32* %badin, align 4
  %80 = load i32, i32* %badpa, align 4
  %cmp96 = icmp ne i32 %79, %80
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false95, %cond.false94, %land.lhs.true90, %cond.true87, %cond.end80
  store i32 1, i32* %fail, align 4
  %81 = load i8*, i8** %savpatinput, align 4
  store i8* %81, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %82 = load i8*, i8** %savchrop, align 4
  store i8* %82, i8** %chrop, align 4
  br label %while.end100

if.end99:                                         ; preds = %lor.lhs.false95
  br label %while.cond47

while.end100:                                     ; preds = %if.then98, %land.end53
  %83 = load i8*, i8** %chrop, align 4
  %84 = load i8*, i8** %chrend, align 4
  %cmp101 = icmp ult i8* %83, %84
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %while.end100
  %85 = load i8*, i8** %chrop, align 4
  store i8* %85, i8** @exactpos, align 4
  %86 = load i8*, i8** %chrend, align 4
  store i8* %86, i8** @exactend, align 4
  store i32 1, i32* %fail, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %while.end100
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end31, %if.end31
  %87 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %88 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp106 = icmp eq i8* %87, %88
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %sw.bb105
  store i32 1, i32* %fail, align 4
  br label %if.end141

if.else109:                                       ; preds = %sw.bb105
  %89 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %90 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call112 = call i32 @charref(i8* %89, i8* %90, i32* %zmb_ind)
  store i32 %call112, i32* %cr, align 4
  %91 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr114 = getelementptr inbounds %union.upat, %union.upat* %91, i32 1
  %92 = bitcast %union.upat* %add.ptr114 to i8*
  store i8* %92, i8** %scanop, align 4
  %93 = load i32, i32* @patglobflags, align 4
  %and115 = and i32 %93, 4096
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.else128

if.then117:                                       ; preds = %if.else109
  %94 = load i8*, i8** %scanop, align 4
  %95 = load i32, i32* %cr, align 4
  %96 = load i32, i32* %zmb_ind, align 4
  %call118 = call i32 @mb_patmatchrange(i8* %94, i32 %95, i32 %96, i32* null, i32* null)
  %97 = load %union.upat*, %union.upat** %scan, align 4
  %l119 = bitcast %union.upat* %97 to i32*
  %98 = load i32, i32* %l119, align 4
  %and120 = and i32 %98, 255
  %cmp121 = icmp eq i32 %and120, 65
  %conv122 = zext i1 %cmp121 to i32
  %xor = xor i32 %call118, %conv122
  %tobool123 = icmp ne i32 %xor, 0
  br i1 %tobool123, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.then117
  store i32 1, i32* %fail, align 4
  br label %if.end127

if.else125:                                       ; preds = %if.then117
  %99 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %100 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call126 = call i8* @charnext(i8* %99, i8* %100)
  store i8* %call126, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then124
  br label %if.end140

if.else128:                                       ; preds = %if.else109
  %101 = load i8*, i8** %scanop, align 4
  %102 = load i32, i32* %cr, align 4
  %call129 = call i32 @patmatchrange(i8* %101, i32 %102, i32* null, i32* null)
  %103 = load %union.upat*, %union.upat** %scan, align 4
  %l130 = bitcast %union.upat* %103 to i32*
  %104 = load i32, i32* %l130, align 4
  %and131 = and i32 %104, 255
  %cmp132 = icmp eq i32 %and131, 65
  %conv133 = zext i1 %cmp132 to i32
  %xor134 = xor i32 %call129, %conv133
  %tobool135 = icmp ne i32 %xor134, 0
  br i1 %tobool135, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.else128
  store i32 1, i32* %fail, align 4
  br label %if.end139

if.else137:                                       ; preds = %if.else128
  %105 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %106 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call138 = call i8* @charnext(i8* %105, i8* %106)
  store i8* %call138, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then136
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end127
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then108
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end31, %if.end31, %if.end31
  %107 = load %union.upat*, %union.upat** %scan, align 4
  %l143 = bitcast %union.upat* %107 to i32*
  %108 = load i32, i32* %l143, align 4
  %and144 = and i32 %108, 255
  store i32 %and144, i32* %op, align 4
  %109 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr145 = getelementptr inbounds %union.upat, %union.upat* %109, i32 1
  %110 = bitcast %union.upat* %add.ptr145 to i8*
  store i8* %110, i8** %start, align 4
  store i32 0, i32* %to, align 4
  store i32 0, i32* %from, align 4
  %111 = load i32, i32* %op, align 4
  %cmp146 = icmp ne i32 %111, 70
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %sw.bb142
  %112 = load i8*, i8** %start, align 4
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %from, align 4
  %115 = load i8*, i8** %start, align 4
  %add.ptr149 = getelementptr inbounds i8, i8* %115, i32 4
  store i8* %add.ptr149, i8** %start, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %sw.bb142
  %116 = load i32, i32* %op, align 4
  %cmp151 = icmp ne i32 %116, 69
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.end150
  %117 = load i8*, i8** %start, align 4
  %118 = bitcast i8* %117 to i32*
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %to, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.end150
  %120 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %120, i8** %compend, align 4
  store i8* %120, i8** %start, align 4
  store i32 0, i32* %comp, align 4
  br label %while.cond155

while.cond155:                                    ; preds = %if.end209, %if.end154
  %121 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %122 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp156 = icmp ult i8* %121, %122
  br i1 %cmp156, label %land.rhs158, label %land.end163

land.rhs158:                                      ; preds = %while.cond155
  %123 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %124 = load i8, i8* %123, align 1
  %idxprom = zext i8 %124 to i32
  %arrayidx159 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %125 = load i16, i16* %arrayidx159, align 2
  %conv160 = sext i16 %125 to i32
  %and161 = and i32 %conv160, 1
  %tobool162 = icmp ne i32 %and161, 0
  br label %land.end163

land.end163:                                      ; preds = %land.rhs158, %while.cond155
  %126 = phi i1 [ false, %while.cond155 ], [ %tobool162, %land.rhs158 ]
  br i1 %126, label %while.body164, label %while.end210

while.body164:                                    ; preds = %land.end163
  store i32 0, i32* %out_of_range, align 4
  %127 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %128 = load i8, i8* %127, align 1
  %conv167 = sext i8 %128 to i32
  %sub = sub nsw i32 %conv167, 48
  store i32 %sub, i32* %digit, align 4
  %129 = load i32, i32* %comp, align 4
  %cmp168 = icmp sgt i32 %129, 214748364
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %while.body164
  store i32 1, i32* %out_of_range, align 4
  br label %if.end185

if.else171:                                       ; preds = %while.body164
  %130 = load i32, i32* %comp, align 4
  %tobool173 = icmp ne i32 %130, 0
  br i1 %tobool173, label %cond.true174, label %cond.false175

cond.true174:                                     ; preds = %if.else171
  %131 = load i32, i32* %comp, align 4
  %mul = mul nsw i32 %131, 10
  br label %cond.end176

cond.false175:                                    ; preds = %if.else171
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false175, %cond.true174
  %cond177 = phi i32 [ %mul, %cond.true174 ], [ 0, %cond.false175 ]
  store i32 %cond177, i32* %c10, align 4
  %132 = load i32, i32* %c10, align 4
  %sub178 = sub nsw i32 2147483647, %132
  %133 = load i32, i32* %digit, align 4
  %cmp179 = icmp slt i32 %sub178, %133
  br i1 %cmp179, label %if.then181, label %if.else182

if.then181:                                       ; preds = %cond.end176
  store i32 1, i32* %out_of_range, align 4
  br label %if.end184

if.else182:                                       ; preds = %cond.end176
  %134 = load i32, i32* %c10, align 4
  store i32 %134, i32* %comp, align 4
  %135 = load i32, i32* %digit, align 4
  %136 = load i32, i32* %comp, align 4
  %add183 = add nsw i32 %136, %135
  store i32 %add183, i32* %comp, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.else182, %if.then181
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then170
  %137 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %138 = load i8*, i8** %compend, align 4
  %incdec.ptr186 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr186, i8** %compend, align 4
  %139 = load i32, i32* %out_of_range, align 4
  %tobool187 = icmp ne i32 %139, 0
  br i1 %tobool187, label %if.then191, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %if.end185
  %140 = load i32, i32* %comp, align 4
  %and189 = and i32 %140, 1073741824
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then191, label %if.end209

if.then191:                                       ; preds = %lor.lhs.false188, %if.end185
  %141 = load i32, i32* %op, align 4
  %cmp192 = icmp eq i32 %141, 69
  br i1 %cmp192, label %if.then194, label %if.end208

if.then194:                                       ; preds = %if.then191
  br label %while.cond195

while.cond195:                                    ; preds = %while.body205, %if.then194
  %142 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %143 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp196 = icmp ult i8* %142, %143
  br i1 %cmp196, label %land.rhs198, label %land.end204

land.rhs198:                                      ; preds = %while.cond195
  %144 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %145 = load i8, i8* %144, align 1
  %idxprom199 = zext i8 %145 to i32
  %arrayidx200 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom199
  %146 = load i16, i16* %arrayidx200, align 2
  %conv201 = sext i16 %146 to i32
  %and202 = and i32 %conv201, 1
  %tobool203 = icmp ne i32 %and202, 0
  br label %land.end204

land.end204:                                      ; preds = %land.rhs198, %while.cond195
  %147 = phi i1 [ false, %while.cond195 ], [ %tobool203, %land.rhs198 ]
  br i1 %147, label %while.body205, label %while.end207

while.body205:                                    ; preds = %land.end204
  %148 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %incdec.ptr206 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr206, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %while.cond195

while.end207:                                     ; preds = %land.end204
  br label %if.end208

if.end208:                                        ; preds = %while.end207, %if.then191
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %lor.lhs.false188
  br label %while.cond155

while.end210:                                     ; preds = %land.end163
  %149 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %149, i8** %save, align 4
  store i32 0, i32* %no, align 4
  br label %while.cond211

while.cond211:                                    ; preds = %if.end258, %while.end210
  %150 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %151 = load i8*, i8** %start, align 4
  %cmp212 = icmp ugt i8* %150, %151
  br i1 %cmp212, label %while.body214, label %while.end259

while.body214:                                    ; preds = %while.cond211
  %152 = load i32, i32* %comp, align 4
  %153 = load i32, i32* %from, align 4
  %cmp215 = icmp slt i32 %152, %153
  br i1 %cmp215, label %land.lhs.true217, label %if.end221

land.lhs.true217:                                 ; preds = %while.body214
  %154 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %155 = load i8*, i8** %compend, align 4
  %cmp218 = icmp ule i8* %154, %155
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %land.lhs.true217
  br label %while.end259

if.end221:                                        ; preds = %land.lhs.true217, %while.body214
  %156 = load i32, i32* %op, align 4
  %cmp222 = icmp eq i32 %156, 69
  br i1 %cmp222, label %land.lhs.true227, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end221
  %157 = load i32, i32* %comp, align 4
  %158 = load i32, i32* %to, align 4
  %cmp225 = icmp sle i32 %157, %158
  br i1 %cmp225, label %land.lhs.true227, label %if.end231

land.lhs.true227:                                 ; preds = %lor.lhs.false224, %if.end221
  %159 = load %union.upat*, %union.upat** %next, align 4
  %call228 = call i32 @patmatch(%union.upat* %159)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %land.lhs.true227
  store i32 1, i32* %retval, align 4
  br label %return

if.end231:                                        ; preds = %land.lhs.true227, %lor.lhs.false224
  %160 = load i32, i32* %no, align 4
  %tobool232 = icmp ne i32 %160, 0
  br i1 %tobool232, label %if.end253, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %if.end231
  %161 = load %union.upat*, %union.upat** %next, align 4
  %l234 = bitcast %union.upat* %161 to i32*
  %162 = load i32, i32* %l234, align 4
  %and235 = and i32 %162, 255
  %cmp236 = icmp eq i32 %and235, 4
  br i1 %cmp236, label %land.lhs.true238, label %if.end253

land.lhs.true238:                                 ; preds = %land.lhs.true233
  %163 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx239 = getelementptr inbounds %union.upat, %union.upat* %163, i32 1
  %l240 = bitcast %union.upat* %arrayidx239 to i32*
  %164 = load i32, i32* %l240, align 4
  %tobool241 = icmp ne i32 %164, 0
  br i1 %tobool241, label %lor.lhs.false242, label %land.lhs.true249

lor.lhs.false242:                                 ; preds = %land.lhs.true238
  %165 = load %union.upat*, %union.upat** %next, align 4
  %add.ptr243 = getelementptr inbounds %union.upat, %union.upat* %165, i32 2
  %166 = bitcast %union.upat* %add.ptr243 to i8*
  %167 = load i8, i8* %166, align 1
  %idxprom244 = zext i8 %167 to i32
  %arrayidx245 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom244
  %168 = load i16, i16* %arrayidx245, align 2
  %conv246 = sext i16 %168 to i32
  %and247 = and i32 %conv246, 1
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %if.end253, label %land.lhs.true249

land.lhs.true249:                                 ; preds = %lor.lhs.false242, %land.lhs.true238
  %169 = load i32, i32* @patglobflags, align 4
  %and250 = and i32 %169, 255
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %if.end253, label %if.then252

if.then252:                                       ; preds = %land.lhs.true249
  store i32 0, i32* %retval, align 4
  br label %return

if.end253:                                        ; preds = %land.lhs.true249, %lor.lhs.false242, %land.lhs.true233, %if.end231
  %170 = load i8*, i8** %save, align 4
  %incdec.ptr254 = getelementptr inbounds i8, i8* %170, i32 -1
  store i8* %incdec.ptr254, i8** %save, align 4
  store i8* %incdec.ptr254, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %171 = load i32, i32* %no, align 4
  %inc = add nsw i32 %171, 1
  store i32 %inc, i32* %no, align 4
  %172 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %173 = load i8*, i8** %compend, align 4
  %cmp255 = icmp ult i8* %172, %173
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end253
  %174 = load i32, i32* %comp, align 4
  %div = sdiv i32 %174, 10
  store i32 %div, i32* %comp, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.end253
  br label %while.cond211

while.end259:                                     ; preds = %if.then220, %while.cond211
  %175 = load i8*, i8** %start, align 4
  store i8* %175, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i32 1, i32* %fail, align 4
  br label %sw.epilog

sw.bb260:                                         ; preds = %if.end31
  %176 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %176, i8** %start, align 4
  br label %while.cond261

while.cond261:                                    ; preds = %while.body271, %sw.bb260
  %177 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %178 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp262 = icmp ult i8* %177, %178
  br i1 %cmp262, label %land.rhs264, label %land.end270

land.rhs264:                                      ; preds = %while.cond261
  %179 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %180 = load i8, i8* %179, align 1
  %idxprom265 = zext i8 %180 to i32
  %arrayidx266 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom265
  %181 = load i16, i16* %arrayidx266, align 2
  %conv267 = sext i16 %181 to i32
  %and268 = and i32 %conv267, 1
  %tobool269 = icmp ne i32 %and268, 0
  br label %land.end270

land.end270:                                      ; preds = %land.rhs264, %while.cond261
  %182 = phi i1 [ false, %while.cond261 ], [ %tobool269, %land.rhs264 ]
  br i1 %182, label %while.body271, label %while.end273

while.body271:                                    ; preds = %land.end270
  %183 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %incdec.ptr272 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr272, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %while.cond261

while.end273:                                     ; preds = %land.end270
  %184 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %184, i8** %save, align 4
  store i32 0, i32* %no, align 4
  br label %while.cond274

while.cond274:                                    ; preds = %if.end303, %while.end273
  %185 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %186 = load i8*, i8** %start, align 4
  %cmp275 = icmp ugt i8* %185, %186
  br i1 %cmp275, label %while.body277, label %while.end306

while.body277:                                    ; preds = %while.cond274
  %187 = load %union.upat*, %union.upat** %next, align 4
  %call278 = call i32 @patmatch(%union.upat* %187)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then280, label %if.end281

if.then280:                                       ; preds = %while.body277
  store i32 1, i32* %retval, align 4
  br label %return

if.end281:                                        ; preds = %while.body277
  %188 = load i32, i32* %no, align 4
  %tobool282 = icmp ne i32 %188, 0
  br i1 %tobool282, label %if.end303, label %land.lhs.true283

land.lhs.true283:                                 ; preds = %if.end281
  %189 = load %union.upat*, %union.upat** %next, align 4
  %l284 = bitcast %union.upat* %189 to i32*
  %190 = load i32, i32* %l284, align 4
  %and285 = and i32 %190, 255
  %cmp286 = icmp eq i32 %and285, 4
  br i1 %cmp286, label %land.lhs.true288, label %if.end303

land.lhs.true288:                                 ; preds = %land.lhs.true283
  %191 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx289 = getelementptr inbounds %union.upat, %union.upat* %191, i32 1
  %l290 = bitcast %union.upat* %arrayidx289 to i32*
  %192 = load i32, i32* %l290, align 4
  %tobool291 = icmp ne i32 %192, 0
  br i1 %tobool291, label %lor.lhs.false292, label %land.lhs.true299

lor.lhs.false292:                                 ; preds = %land.lhs.true288
  %193 = load %union.upat*, %union.upat** %next, align 4
  %add.ptr293 = getelementptr inbounds %union.upat, %union.upat* %193, i32 2
  %194 = bitcast %union.upat* %add.ptr293 to i8*
  %195 = load i8, i8* %194, align 1
  %idxprom294 = zext i8 %195 to i32
  %arrayidx295 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom294
  %196 = load i16, i16* %arrayidx295, align 2
  %conv296 = sext i16 %196 to i32
  %and297 = and i32 %conv296, 1
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %if.end303, label %land.lhs.true299

land.lhs.true299:                                 ; preds = %lor.lhs.false292, %land.lhs.true288
  %197 = load i32, i32* @patglobflags, align 4
  %and300 = and i32 %197, 255
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.end303, label %if.then302

if.then302:                                       ; preds = %land.lhs.true299
  store i32 0, i32* %retval, align 4
  br label %return

if.end303:                                        ; preds = %land.lhs.true299, %lor.lhs.false292, %land.lhs.true283, %if.end281
  %198 = load i8*, i8** %save, align 4
  %incdec.ptr304 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %incdec.ptr304, i8** %save, align 4
  store i8* %incdec.ptr304, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %199 = load i32, i32* %no, align 4
  %inc305 = add nsw i32 %199, 1
  store i32 %inc305, i32* %no, align 4
  br label %while.cond274

while.end306:                                     ; preds = %while.cond274
  %200 = load i8*, i8** %start, align 4
  store i8* %200, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i32 1, i32* %fail, align 4
  br label %sw.epilog

sw.bb307:                                         ; preds = %if.end31
  br label %sw.epilog

sw.bb308:                                         ; preds = %if.end31
  br label %sw.epilog

sw.bb309:                                         ; preds = %if.end31
  %201 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr310 = getelementptr inbounds %union.upat, %union.upat* %201, i32 1
  %l311 = bitcast %union.upat* %add.ptr310 to i32*
  %202 = load i32, i32* %l311, align 4
  store i32 %202, i32* @patglobflags, align 4
  br label %sw.epilog

sw.bb312:                                         ; preds = %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31
  %203 = load %union.upat*, %union.upat** %scan, align 4
  %l313 = bitcast %union.upat* %203 to i32*
  %204 = load i32, i32* %l313, align 4
  %and314 = and i32 %204, 255
  %sub315 = sub nsw i32 %and314, 128
  store i32 %sub315, i32* %no, align 4
  %205 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %205, i8** %save, align 4
  %206 = load %union.upat*, %union.upat** %next, align 4
  %call316 = call i32 @patmatch(%union.upat* %206)
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.then318, label %if.else330

if.then318:                                       ; preds = %sw.bb312
  %207 = load i32, i32* %no, align 4
  %tobool319 = icmp ne i32 %207, 0
  br i1 %tobool319, label %land.lhs.true320, label %if.end329

land.lhs.true320:                                 ; preds = %if.then318
  %208 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %209 = load i32, i32* %no, align 4
  %sub321 = sub nsw i32 %209, 1
  %shl = shl i32 1, %sub321
  %and322 = and i32 %208, %shl
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %if.end329, label %if.then324

if.then324:                                       ; preds = %land.lhs.true320
  %210 = load i8*, i8** %save, align 4
  %211 = load i32, i32* %no, align 4
  %sub325 = sub nsw i32 %211, 1
  %arrayidx326 = getelementptr inbounds [9 x i8*], [9 x i8*]* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 5), i32 0, i32 %sub325
  store i8* %210, i8** %arrayidx326, align 4
  %212 = load i32, i32* %no, align 4
  %sub327 = sub nsw i32 %212, 1
  %shl328 = shl i32 1, %sub327
  %213 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %or = or i32 %213, %shl328
  store i32 %or, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  br label %if.end329

if.end329:                                        ; preds = %if.then324, %land.lhs.true320, %if.then318
  store i32 1, i32* %retval, align 4
  br label %return

if.else330:                                       ; preds = %sw.bb312
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb331:                                         ; preds = %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31, %if.end31
  %214 = load %union.upat*, %union.upat** %scan, align 4
  %l332 = bitcast %union.upat* %214 to i32*
  %215 = load i32, i32* %l332, align 4
  %and333 = and i32 %215, 255
  %sub334 = sub nsw i32 %and333, 144
  store i32 %sub334, i32* %no, align 4
  %216 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %216, i8** %save, align 4
  %217 = load %union.upat*, %union.upat** %next, align 4
  %call335 = call i32 @patmatch(%union.upat* %217)
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.then337, label %if.else351

if.then337:                                       ; preds = %sw.bb331
  %218 = load i32, i32* %no, align 4
  %tobool338 = icmp ne i32 %218, 0
  br i1 %tobool338, label %land.lhs.true339, label %if.end350

land.lhs.true339:                                 ; preds = %if.then337
  %219 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %220 = load i32, i32* %no, align 4
  %add340 = add nsw i32 %220, 15
  %shl341 = shl i32 1, %add340
  %and342 = and i32 %219, %shl341
  %tobool343 = icmp ne i32 %and342, 0
  br i1 %tobool343, label %if.end350, label %if.then344

if.then344:                                       ; preds = %land.lhs.true339
  %221 = load i8*, i8** %save, align 4
  %222 = load i32, i32* %no, align 4
  %sub345 = sub nsw i32 %222, 1
  %arrayidx346 = getelementptr inbounds [9 x i8*], [9 x i8*]* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 6), i32 0, i32 %sub345
  store i8* %221, i8** %arrayidx346, align 4
  %223 = load i32, i32* %no, align 4
  %add347 = add nsw i32 %223, 15
  %shl348 = shl i32 1, %add347
  %224 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  %or349 = or i32 %224, %shl348
  store i32 %or349, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  br label %if.end350

if.end350:                                        ; preds = %if.then344, %land.lhs.true339, %if.then337
  store i32 1, i32* %retval, align 4
  br label %return

if.else351:                                       ; preds = %sw.bb331
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb352:                                         ; preds = %if.end31
  %225 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr355 = getelementptr inbounds %union.upat, %union.upat* %225, i32 1
  store %union.upat* %add.ptr355, %union.upat** %after, align 4
  %226 = load %union.upat*, %union.upat** %after, align 4
  %add.ptr356 = getelementptr inbounds %union.upat, %union.upat* %226, i32 1
  %p = bitcast %union.upat* %add.ptr356 to i8**
  %227 = load i8*, i8** %p, align 4
  %228 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %229 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %228 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %229 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr357 = getelementptr inbounds i8, i8* %227, i32 %sub.ptr.sub
  store i8* %add.ptr357, i8** %syncptr, align 4
  %230 = load i8*, i8** %syncptr, align 4
  %231 = load i8, i8* %230, align 1
  %conv358 = zext i8 %231 to i32
  %tobool359 = icmp ne i32 %conv358, 0
  br i1 %tobool359, label %land.lhs.true360, label %if.end366

land.lhs.true360:                                 ; preds = %sw.bb352
  %232 = load i32, i32* @errsfound, align 4
  %add361 = add nsw i32 %232, 1
  %233 = load i8*, i8** %syncptr, align 4
  %234 = load i8, i8* %233, align 1
  %conv362 = zext i8 %234 to i32
  %cmp363 = icmp sge i32 %add361, %conv362
  br i1 %cmp363, label %if.then365, label %if.end366

if.then365:                                       ; preds = %land.lhs.true360
  store i32 0, i32* %retval, align 4
  br label %return

if.end366:                                        ; preds = %land.lhs.true360, %sw.bb352
  %235 = load i32, i32* @errsfound, align 4
  %add367 = add nsw i32 %235, 1
  %conv368 = trunc i32 %add367 to i8
  %236 = load i8*, i8** %syncptr, align 4
  store i8 %conv368, i8* %236, align 1
  br label %sw.epilog

sw.bb369:                                         ; preds = %if.end31
  %237 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %238 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp370 = icmp ult i8* %237, %238
  %conv371 = zext i1 %cmp370 to i32
  store i32 %conv371, i32* %fail, align 4
  br i1 %cmp370, label %if.end373, label %if.then372

if.then372:                                       ; preds = %sw.bb369
  store i32 1, i32* %retval, align 4
  br label %return

if.end373:                                        ; preds = %sw.bb369
  br label %sw.epilog

sw.bb374:                                         ; preds = %if.end31, %if.end31
  %239 = load %union.upat*, %union.upat** %next, align 4
  %l375 = bitcast %union.upat* %239 to i32*
  %240 = load i32, i32* %l375, align 4
  %and376 = and i32 %240, 32
  %tobool377 = icmp ne i32 %and376, 0
  br i1 %tobool377, label %if.else380, label %if.then378

if.then378:                                       ; preds = %sw.bb374
  %241 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr379 = getelementptr inbounds %union.upat, %union.upat* %241, i32 1
  store %union.upat* %add.ptr379, %union.upat** %next, align 4
  br label %if.end643

if.else380:                                       ; preds = %sw.bb374
  br label %do.body381

do.body381:                                       ; preds = %land.end641, %if.else380
  %242 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %242, i8** %save, align 4
  %243 = load i32, i32* @patglobflags, align 4
  store i32 %243, i32* %savglobflags, align 4
  %244 = load i32, i32* @errsfound, align 4
  store i32 %244, i32* %saverrsfound, align 4
  %245 = load %union.upat*, %union.upat** %next, align 4
  %l382 = bitcast %union.upat* %245 to i32*
  %246 = load i32, i32* %l382, align 4
  %and383 = and i32 %246, 48
  %cmp384 = icmp eq i32 %and383, 48
  br i1 %cmp384, label %if.then386, label %if.else541

if.then386:                                       ; preds = %do.body381
  store i8* null, i8** %matchpt, align 4
  store i32 0, i32* %matchederrs, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  store i32 %247, i32* %savparsfound, align 4
  %248 = load %union.upat*, %union.upat** %next, align 4
  %add.ptr395 = getelementptr inbounds %union.upat, %union.upat* %248, i32 1
  store %union.upat* %add.ptr395, %union.upat** %syncstrp, align 4
  %249 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p396 = bitcast %union.upat* %249 to i8**
  %250 = load i8*, i8** %p396, align 4
  store i8* %250, i8** %oldsyncstr, align 4
  %251 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %252 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast397 = ptrtoint i8* %251 to i32
  %sub.ptr.rhs.cast398 = ptrtoint i8* %252 to i32
  %sub.ptr.sub399 = sub i32 %sub.ptr.lhs.cast397, %sub.ptr.rhs.cast398
  %add400 = add nsw i32 %sub.ptr.sub399, 1
  %call401 = call i8* @zshcalloc(i32 %add400)
  %253 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p402 = bitcast %union.upat* %253 to i8**
  store i8* %call401, i8** %p402, align 4
  %254 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  store i8* %254, i8** %origpatinend, align 4
  br label %while.cond403

while.cond403:                                    ; preds = %if.end502, %if.then386
  %255 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr404 = getelementptr inbounds %union.upat, %union.upat* %255, i32 1
  %call405 = call i32 @patmatch(%union.upat* %add.ptr404)
  store i32 %call405, i32* %ret, align 4
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %while.body407, label %while.end503

while.body407:                                    ; preds = %while.cond403
  %256 = load i32, i32* @forceerrs, align 4
  store i32 %256, i32* %savforce, align 4
  %257 = load i32, i32* @patflags, align 4
  store i32 %257, i32* %savpatflags412, align 4
  store i32 -1, i32* @forceerrs, align 4
  %258 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  store i32 %258, i32* %savglobdots, align 4
  %259 = load i32, i32* @errsfound, align 4
  store i32 %259, i32* %matchederrs, align 4
  %260 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %260, i8** %matchpt, align 4
  store i32 1, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  %261 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p414 = bitcast %union.upat* %261 to i8**
  %262 = load i8*, i8** %p414, align 4
  store i8* %262, i8** %syncpt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body407
  %263 = load i8*, i8** %syncpt, align 4
  %264 = load i8, i8* %263, align 1
  %tobool415 = icmp ne i8 %264, 0
  %lnot416 = xor i1 %tobool415, true
  br i1 %lnot416, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %265 = load i8*, i8** %syncpt, align 4
  %incdec.ptr417 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr417, i8** %syncpt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %266 = load i8*, i8** %syncpt, align 4
  %267 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p418 = bitcast %union.upat* %267 to i8**
  %268 = load i8*, i8** %p418, align 4
  %sub.ptr.lhs.cast419 = ptrtoint i8* %266 to i32
  %sub.ptr.rhs.cast420 = ptrtoint i8* %268 to i32
  %sub.ptr.sub421 = sub i32 %sub.ptr.lhs.cast419, %sub.ptr.rhs.cast420
  store i32 %sub.ptr.sub421, i32* %synclen, align 4
  %269 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %270 = load i32, i32* %synclen, align 4
  %add.ptr422 = getelementptr inbounds i8, i8* %269, i32 %270
  %271 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp423 = icmp ne i8* %add.ptr422, %271
  br i1 %cmp423, label %if.then425, label %if.end428

if.then425:                                       ; preds = %for.end
  %272 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %273 = load i32, i32* %synclen, align 4
  %add.ptr426 = getelementptr inbounds i8, i8* %272, i32 %273
  store i8* %add.ptr426, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %274 = load i32, i32* @patflags, align 4
  %or427 = or i32 %274, 1024
  store i32 %or427, i32* @patflags, align 4
  br label %if.end428

if.end428:                                        ; preds = %if.then425, %for.end
  %275 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  store i8* %275, i8** %savpatinstart, align 4
  %276 = load %union.upat*, %union.upat** %scan, align 4
  %l429 = bitcast %union.upat* %276 to i32*
  %277 = load i32, i32* %l429, align 4
  %shr430 = ashr i32 %277, 8
  store i32 %shr430, i32* @rn_offs, align 4
  %tobool431 = icmp ne i32 %shr430, 0
  br i1 %tobool431, label %cond.true432, label %cond.false444

cond.true432:                                     ; preds = %if.end428
  %278 = load %union.upat*, %union.upat** %scan, align 4
  %l433 = bitcast %union.upat* %278 to i32*
  %279 = load i32, i32* %l433, align 4
  %and434 = and i32 %279, 255
  %cmp435 = icmp eq i32 %and434, 3
  br i1 %cmp435, label %cond.true437, label %cond.false440

cond.true437:                                     ; preds = %cond.true432
  %280 = load %union.upat*, %union.upat** %scan, align 4
  %281 = load i32, i32* @rn_offs, align 4
  %idx.neg438 = sub i32 0, %281
  %add.ptr439 = getelementptr inbounds %union.upat, %union.upat* %280, i32 %idx.neg438
  br label %cond.end442

cond.false440:                                    ; preds = %cond.true432
  %282 = load %union.upat*, %union.upat** %scan, align 4
  %283 = load i32, i32* @rn_offs, align 4
  %add.ptr441 = getelementptr inbounds %union.upat, %union.upat* %282, i32 %283
  br label %cond.end442

cond.end442:                                      ; preds = %cond.false440, %cond.true437
  %cond443 = phi %union.upat* [ %add.ptr439, %cond.true437 ], [ %add.ptr441, %cond.false440 ]
  br label %cond.end445

cond.false444:                                    ; preds = %if.end428
  br label %cond.end445

cond.end445:                                      ; preds = %cond.false444, %cond.end442
  %cond446 = phi %union.upat* [ %cond443, %cond.end442 ], [ null, %cond.false444 ]
  store %union.upat* %cond446, %union.upat** %next, align 4
  br label %while.cond447

while.cond447:                                    ; preds = %cond.end497, %cond.end445
  %284 = load %union.upat*, %union.upat** %next, align 4
  %tobool448 = icmp ne %union.upat* %284, null
  br i1 %tobool448, label %land.rhs449, label %land.end454

land.rhs449:                                      ; preds = %while.cond447
  %285 = load %union.upat*, %union.upat** %next, align 4
  %l450 = bitcast %union.upat* %285 to i32*
  %286 = load i32, i32* %l450, align 4
  %and451 = and i32 %286, 48
  %cmp452 = icmp eq i32 %and451, 48
  br label %land.end454

land.end454:                                      ; preds = %land.rhs449, %while.cond447
  %287 = phi i1 [ false, %while.cond447 ], [ %cmp452, %land.rhs449 ]
  br i1 %287, label %while.body455, label %while.end499

while.body455:                                    ; preds = %land.end454
  %288 = load i8*, i8** %save, align 4
  store i8* %288, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %289 = load i32, i32* @patglobflags, align 4
  %and456 = and i32 %289, -256
  store i32 %and456, i32* @patglobflags, align 4
  store i32 0, i32* @errsfound, align 4
  %290 = load %union.upat*, %union.upat** %next, align 4
  %add.ptr457 = getelementptr inbounds %union.upat, %union.upat* %290, i32 1
  %add.ptr458 = getelementptr inbounds %union.upat, %union.upat* %add.ptr457, i32 1
  store %union.upat* %add.ptr458, %union.upat** %opnd, align 4
  %291 = load %union.upat*, %union.upat** %next, align 4
  %l459 = bitcast %union.upat* %291 to i32*
  %292 = load i32, i32* %l459, align 4
  %and460 = and i32 %292, 255
  %cmp461 = icmp eq i32 %and460, 49
  br i1 %cmp461, label %land.lhs.true463, label %if.end466

land.lhs.true463:                                 ; preds = %while.body455
  %293 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  %tobool464 = icmp ne i8* %293, null
  br i1 %tobool464, label %if.then465, label %if.end466

if.then465:                                       ; preds = %land.lhs.true463
  %294 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  store i8* %294, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  store i8* %294, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %if.end466

if.end466:                                        ; preds = %if.then465, %land.lhs.true463, %while.body455
  %295 = load %union.upat*, %union.upat** %opnd, align 4
  %call467 = call i32 @patmatch(%union.upat* %295)
  %tobool468 = icmp ne i32 %call467, 0
  br i1 %tobool468, label %if.then469, label %if.end470

if.then469:                                       ; preds = %if.end466
  store i32 0, i32* %ret, align 4
  %296 = load i32, i32* %savparsfound, align 4
  store i32 %296, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 7), align 4
  br label %if.end470

if.end470:                                        ; preds = %if.then469, %if.end466
  %297 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 3), align 4
  %tobool471 = icmp ne i8* %297, null
  br i1 %tobool471, label %if.then472, label %if.end477

if.then472:                                       ; preds = %if.end470
  %298 = load i8*, i8** %savpatinstart, align 4
  %299 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %300 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast473 = ptrtoint i8* %299 to i32
  %sub.ptr.rhs.cast474 = ptrtoint i8* %300 to i32
  %sub.ptr.sub475 = sub i32 %sub.ptr.lhs.cast473, %sub.ptr.rhs.cast474
  %add.ptr476 = getelementptr inbounds i8, i8* %298, i32 %sub.ptr.sub475
  store i8* %add.ptr476, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %301 = load i8*, i8** %savpatinstart, align 4
  store i8* %301, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  br label %if.end477

if.end477:                                        ; preds = %if.then472, %if.end470
  %302 = load i32, i32* %ret, align 4
  %tobool478 = icmp ne i32 %302, 0
  br i1 %tobool478, label %if.end480, label %if.then479

if.then479:                                       ; preds = %if.end477
  br label %while.end499

if.end480:                                        ; preds = %if.end477
  %303 = load %union.upat*, %union.upat** %next, align 4
  %l481 = bitcast %union.upat* %303 to i32*
  %304 = load i32, i32* %l481, align 4
  %shr482 = ashr i32 %304, 8
  store i32 %shr482, i32* @rn_offs, align 4
  %tobool483 = icmp ne i32 %shr482, 0
  br i1 %tobool483, label %cond.true484, label %cond.false496

cond.true484:                                     ; preds = %if.end480
  %305 = load %union.upat*, %union.upat** %next, align 4
  %l485 = bitcast %union.upat* %305 to i32*
  %306 = load i32, i32* %l485, align 4
  %and486 = and i32 %306, 255
  %cmp487 = icmp eq i32 %and486, 3
  br i1 %cmp487, label %cond.true489, label %cond.false492

cond.true489:                                     ; preds = %cond.true484
  %307 = load %union.upat*, %union.upat** %next, align 4
  %308 = load i32, i32* @rn_offs, align 4
  %idx.neg490 = sub i32 0, %308
  %add.ptr491 = getelementptr inbounds %union.upat, %union.upat* %307, i32 %idx.neg490
  br label %cond.end494

cond.false492:                                    ; preds = %cond.true484
  %309 = load %union.upat*, %union.upat** %next, align 4
  %310 = load i32, i32* @rn_offs, align 4
  %add.ptr493 = getelementptr inbounds %union.upat, %union.upat* %309, i32 %310
  br label %cond.end494

cond.end494:                                      ; preds = %cond.false492, %cond.true489
  %cond495 = phi %union.upat* [ %add.ptr491, %cond.true489 ], [ %add.ptr493, %cond.false492 ]
  br label %cond.end497

cond.false496:                                    ; preds = %if.end480
  br label %cond.end497

cond.end497:                                      ; preds = %cond.false496, %cond.end494
  %cond498 = phi %union.upat* [ %cond495, %cond.end494 ], [ null, %cond.false496 ]
  store %union.upat* %cond498, %union.upat** %next, align 4
  br label %while.cond447

while.end499:                                     ; preds = %if.then479, %land.end454
  %311 = load i8*, i8** %origpatinend, align 4
  store i8* %311, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %312 = load i32, i32* %savpatflags412, align 4
  store i32 %312, i32* @patflags, align 4
  %313 = load i32, i32* %savglobdots, align 4
  store i32 %313, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  %314 = load i32, i32* %savforce, align 4
  store i32 %314, i32* @forceerrs, align 4
  %315 = load i32, i32* %ret, align 4
  %tobool500 = icmp ne i32 %315, 0
  br i1 %tobool500, label %if.then501, label %if.end502

if.then501:                                       ; preds = %while.end499
  br label %while.end503

if.end502:                                        ; preds = %while.end499
  %316 = load i8*, i8** %save, align 4
  store i8* %316, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %317 = load i32, i32* %savglobflags, align 4
  store i32 %317, i32* @patglobflags, align 4
  %318 = load i32, i32* %saverrsfound, align 4
  store i32 %318, i32* @errsfound, align 4
  br label %while.cond403

while.end503:                                     ; preds = %if.then501, %while.cond403
  %319 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p504 = bitcast %union.upat* %319 to i8**
  %320 = load i8*, i8** %p504, align 4
  %321 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %322 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast505 = ptrtoint i8* %321 to i32
  %sub.ptr.rhs.cast506 = ptrtoint i8* %322 to i32
  %sub.ptr.sub507 = sub i32 %sub.ptr.lhs.cast505, %sub.ptr.rhs.cast506
  %add508 = add nsw i32 %sub.ptr.sub507, 1
  call void @zfree(i8* %320, i32 %add508)
  %323 = load i8*, i8** %oldsyncstr, align 4
  %324 = load %union.upat*, %union.upat** %syncstrp, align 4
  %p509 = bitcast %union.upat* %324 to i8**
  store i8* %323, i8** %p509, align 4
  %325 = load i32, i32* %ret, align 4
  %tobool510 = icmp ne i32 %325, 0
  br i1 %tobool510, label %if.then511, label %if.end512

if.then511:                                       ; preds = %while.end503
  %326 = load i8*, i8** %matchpt, align 4
  store i8* %326, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %327 = load i32, i32* %matchederrs, align 4
  store i32 %327, i32* @errsfound, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end512:                                        ; preds = %while.end503
  br label %while.cond513

while.cond513:                                    ; preds = %while.body539, %if.end512
  %328 = load %union.upat*, %union.upat** %scan, align 4
  %l514 = bitcast %union.upat* %328 to i32*
  %329 = load i32, i32* %l514, align 4
  %shr515 = ashr i32 %329, 8
  store i32 %shr515, i32* @rn_offs, align 4
  %tobool516 = icmp ne i32 %shr515, 0
  br i1 %tobool516, label %cond.true517, label %cond.false529

cond.true517:                                     ; preds = %while.cond513
  %330 = load %union.upat*, %union.upat** %scan, align 4
  %l518 = bitcast %union.upat* %330 to i32*
  %331 = load i32, i32* %l518, align 4
  %and519 = and i32 %331, 255
  %cmp520 = icmp eq i32 %and519, 3
  br i1 %cmp520, label %cond.true522, label %cond.false525

cond.true522:                                     ; preds = %cond.true517
  %332 = load %union.upat*, %union.upat** %scan, align 4
  %333 = load i32, i32* @rn_offs, align 4
  %idx.neg523 = sub i32 0, %333
  %add.ptr524 = getelementptr inbounds %union.upat, %union.upat* %332, i32 %idx.neg523
  br label %cond.end527

cond.false525:                                    ; preds = %cond.true517
  %334 = load %union.upat*, %union.upat** %scan, align 4
  %335 = load i32, i32* @rn_offs, align 4
  %add.ptr526 = getelementptr inbounds %union.upat, %union.upat* %334, i32 %335
  br label %cond.end527

cond.end527:                                      ; preds = %cond.false525, %cond.true522
  %cond528 = phi %union.upat* [ %add.ptr524, %cond.true522 ], [ %add.ptr526, %cond.false525 ]
  br label %cond.end530

cond.false529:                                    ; preds = %while.cond513
  br label %cond.end530

cond.end530:                                      ; preds = %cond.false529, %cond.end527
  %cond531 = phi %union.upat* [ %cond528, %cond.end527 ], [ null, %cond.false529 ]
  store %union.upat* %cond531, %union.upat** %scan, align 4
  %tobool532 = icmp ne %union.upat* %cond531, null
  br i1 %tobool532, label %land.rhs533, label %land.end538

land.rhs533:                                      ; preds = %cond.end530
  %336 = load %union.upat*, %union.upat** %scan, align 4
  %l534 = bitcast %union.upat* %336 to i32*
  %337 = load i32, i32* %l534, align 4
  %and535 = and i32 %337, 48
  %cmp536 = icmp eq i32 %and535, 48
  br label %land.end538

land.end538:                                      ; preds = %land.rhs533, %cond.end530
  %338 = phi i1 [ false, %cond.end530 ], [ %cmp536, %land.rhs533 ]
  br i1 %338, label %while.body539, label %while.end540

while.body539:                                    ; preds = %land.end538
  br label %while.cond513

while.end540:                                     ; preds = %land.end538
  br label %if.end617

if.else541:                                       ; preds = %do.body381
  store i32 1, i32* %ret543, align 4
  store i32 0, i32* %pfree, align 4
  store %union.upat* null, %union.upat** %ptrp, align 4
  %339 = load %union.upat*, %union.upat** %scan, align 4
  %l547 = bitcast %union.upat* %339 to i32*
  %340 = load i32, i32* %l547, align 4
  %and548 = and i32 %340, 255
  %cmp549 = icmp eq i32 %and548, 33
  br i1 %cmp549, label %if.then551, label %if.else580

if.then551:                                       ; preds = %if.else541
  %341 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr552 = getelementptr inbounds %union.upat, %union.upat* %341, i32 1
  store %union.upat* %add.ptr552, %union.upat** %opnd, align 4
  %342 = load %union.upat*, %union.upat** %opnd, align 4
  %incdec.ptr553 = getelementptr inbounds %union.upat, %union.upat* %342, i32 1
  store %union.upat* %incdec.ptr553, %union.upat** %opnd, align 4
  store %union.upat* %342, %union.upat** %ptrp, align 4
  %343 = load %union.upat*, %union.upat** %ptrp, align 4
  %p554 = bitcast %union.upat* %343 to i8**
  %344 = load i8*, i8** %p554, align 4
  %tobool555 = icmp ne i8* %344, null
  br i1 %tobool555, label %if.end563, label %if.then556

if.then556:                                       ; preds = %if.then551
  %345 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %346 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast557 = ptrtoint i8* %345 to i32
  %sub.ptr.rhs.cast558 = ptrtoint i8* %346 to i32
  %sub.ptr.sub559 = sub i32 %sub.ptr.lhs.cast557, %sub.ptr.rhs.cast558
  %add560 = add nsw i32 %sub.ptr.sub559, 1
  %call561 = call i8* @zshcalloc(i32 %add560)
  %347 = load %union.upat*, %union.upat** %ptrp, align 4
  %p562 = bitcast %union.upat* %347 to i8**
  store i8* %call561, i8** %p562, align 4
  store i32 1, i32* %pfree, align 4
  br label %if.end563

if.end563:                                        ; preds = %if.then556, %if.then551
  %348 = load %union.upat*, %union.upat** %ptrp, align 4
  %p564 = bitcast %union.upat* %348 to i8**
  %349 = load i8*, i8** %p564, align 4
  %350 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %351 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast565 = ptrtoint i8* %350 to i32
  %sub.ptr.rhs.cast566 = ptrtoint i8* %351 to i32
  %sub.ptr.sub567 = sub i32 %sub.ptr.lhs.cast565, %sub.ptr.rhs.cast566
  %add.ptr568 = getelementptr inbounds i8, i8* %349, i32 %sub.ptr.sub567
  store i8* %add.ptr568, i8** %ptr, align 4
  %352 = load i8*, i8** %ptr, align 4
  %353 = load i8, i8* %352, align 1
  %conv569 = zext i8 %353 to i32
  %tobool570 = icmp ne i32 %conv569, 0
  br i1 %tobool570, label %land.lhs.true571, label %if.end577

land.lhs.true571:                                 ; preds = %if.end563
  %354 = load i32, i32* @errsfound, align 4
  %add572 = add nsw i32 %354, 1
  %355 = load i8*, i8** %ptr, align 4
  %356 = load i8, i8* %355, align 1
  %conv573 = zext i8 %356 to i32
  %cmp574 = icmp sge i32 %add572, %conv573
  br i1 %cmp574, label %if.then576, label %if.end577

if.then576:                                       ; preds = %land.lhs.true571
  store i32 0, i32* %ret543, align 4
  br label %if.end577

if.end577:                                        ; preds = %if.then576, %land.lhs.true571, %if.end563
  %357 = load i32, i32* @errsfound, align 4
  %add578 = add nsw i32 %357, 1
  %conv579 = trunc i32 %add578 to i8
  %358 = load i8*, i8** %ptr, align 4
  store i8 %conv579, i8* %358, align 1
  br label %if.end582

if.else580:                                       ; preds = %if.else541
  %359 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr581 = getelementptr inbounds %union.upat, %union.upat* %359, i32 1
  store %union.upat* %add.ptr581, %union.upat** %opnd, align 4
  br label %if.end582

if.end582:                                        ; preds = %if.else580, %if.end577
  %360 = load i32, i32* %ret543, align 4
  %tobool583 = icmp ne i32 %360, 0
  br i1 %tobool583, label %if.then584, label %if.end586

if.then584:                                       ; preds = %if.end582
  %361 = load %union.upat*, %union.upat** %opnd, align 4
  %call585 = call i32 @patmatch(%union.upat* %361)
  store i32 %call585, i32* %ret543, align 4
  br label %if.end586

if.end586:                                        ; preds = %if.then584, %if.end582
  %362 = load i32, i32* %pfree, align 4
  %tobool587 = icmp ne i32 %362, 0
  br i1 %tobool587, label %if.then588, label %if.end595

if.then588:                                       ; preds = %if.end586
  %363 = load %union.upat*, %union.upat** %ptrp, align 4
  %p589 = bitcast %union.upat* %363 to i8**
  %364 = load i8*, i8** %p589, align 4
  %365 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %366 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %sub.ptr.lhs.cast590 = ptrtoint i8* %365 to i32
  %sub.ptr.rhs.cast591 = ptrtoint i8* %366 to i32
  %sub.ptr.sub592 = sub i32 %sub.ptr.lhs.cast590, %sub.ptr.rhs.cast591
  %add593 = add nsw i32 %sub.ptr.sub592, 1
  call void @zfree(i8* %364, i32 %add593)
  %367 = load %union.upat*, %union.upat** %ptrp, align 4
  %p594 = bitcast %union.upat* %367 to i8**
  store i8* null, i8** %p594, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.then588, %if.end586
  %368 = load i32, i32* %ret543, align 4
  %tobool596 = icmp ne i32 %368, 0
  br i1 %tobool596, label %if.then597, label %if.end598

if.then597:                                       ; preds = %if.end595
  store i32 1, i32* %retval, align 4
  br label %return

if.end598:                                        ; preds = %if.end595
  %369 = load %union.upat*, %union.upat** %scan, align 4
  %l599 = bitcast %union.upat* %369 to i32*
  %370 = load i32, i32* %l599, align 4
  %shr600 = ashr i32 %370, 8
  store i32 %shr600, i32* @rn_offs, align 4
  %tobool601 = icmp ne i32 %shr600, 0
  br i1 %tobool601, label %cond.true602, label %cond.false614

cond.true602:                                     ; preds = %if.end598
  %371 = load %union.upat*, %union.upat** %scan, align 4
  %l603 = bitcast %union.upat* %371 to i32*
  %372 = load i32, i32* %l603, align 4
  %and604 = and i32 %372, 255
  %cmp605 = icmp eq i32 %and604, 3
  br i1 %cmp605, label %cond.true607, label %cond.false610

cond.true607:                                     ; preds = %cond.true602
  %373 = load %union.upat*, %union.upat** %scan, align 4
  %374 = load i32, i32* @rn_offs, align 4
  %idx.neg608 = sub i32 0, %374
  %add.ptr609 = getelementptr inbounds %union.upat, %union.upat* %373, i32 %idx.neg608
  br label %cond.end612

cond.false610:                                    ; preds = %cond.true602
  %375 = load %union.upat*, %union.upat** %scan, align 4
  %376 = load i32, i32* @rn_offs, align 4
  %add.ptr611 = getelementptr inbounds %union.upat, %union.upat* %375, i32 %376
  br label %cond.end612

cond.end612:                                      ; preds = %cond.false610, %cond.true607
  %cond613 = phi %union.upat* [ %add.ptr609, %cond.true607 ], [ %add.ptr611, %cond.false610 ]
  br label %cond.end615

cond.false614:                                    ; preds = %if.end598
  br label %cond.end615

cond.end615:                                      ; preds = %cond.false614, %cond.end612
  %cond616 = phi %union.upat* [ %cond613, %cond.end612 ], [ null, %cond.false614 ]
  store %union.upat* %cond616, %union.upat** %scan, align 4
  br label %if.end617

if.end617:                                        ; preds = %cond.end615, %while.end540
  %377 = load i8*, i8** %save, align 4
  store i8* %377, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %378 = load i32, i32* %savglobflags, align 4
  store i32 %378, i32* @patglobflags, align 4
  %379 = load i32, i32* %saverrsfound, align 4
  store i32 %379, i32* @errsfound, align 4
  %380 = load %union.upat*, %union.upat** %scan, align 4
  %l618 = bitcast %union.upat* %380 to i32*
  %381 = load i32, i32* %l618, align 4
  %shr619 = ashr i32 %381, 8
  store i32 %shr619, i32* @rn_offs, align 4
  %tobool620 = icmp ne i32 %shr619, 0
  br i1 %tobool620, label %cond.true621, label %cond.false633

cond.true621:                                     ; preds = %if.end617
  %382 = load %union.upat*, %union.upat** %scan, align 4
  %l622 = bitcast %union.upat* %382 to i32*
  %383 = load i32, i32* %l622, align 4
  %and623 = and i32 %383, 255
  %cmp624 = icmp eq i32 %and623, 3
  br i1 %cmp624, label %cond.true626, label %cond.false629

cond.true626:                                     ; preds = %cond.true621
  %384 = load %union.upat*, %union.upat** %scan, align 4
  %385 = load i32, i32* @rn_offs, align 4
  %idx.neg627 = sub i32 0, %385
  %add.ptr628 = getelementptr inbounds %union.upat, %union.upat* %384, i32 %idx.neg627
  br label %cond.end631

cond.false629:                                    ; preds = %cond.true621
  %386 = load %union.upat*, %union.upat** %scan, align 4
  %387 = load i32, i32* @rn_offs, align 4
  %add.ptr630 = getelementptr inbounds %union.upat, %union.upat* %386, i32 %387
  br label %cond.end631

cond.end631:                                      ; preds = %cond.false629, %cond.true626
  %cond632 = phi %union.upat* [ %add.ptr628, %cond.true626 ], [ %add.ptr630, %cond.false629 ]
  br label %cond.end634

cond.false633:                                    ; preds = %if.end617
  br label %cond.end634

cond.end634:                                      ; preds = %cond.false633, %cond.end631
  %cond635 = phi %union.upat* [ %cond632, %cond.end631 ], [ null, %cond.false633 ]
  store %union.upat* %cond635, %union.upat** %next, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end634
  %388 = load %union.upat*, %union.upat** %scan, align 4
  %tobool636 = icmp ne %union.upat* %388, null
  br i1 %tobool636, label %land.rhs637, label %land.end641

land.rhs637:                                      ; preds = %do.cond
  %389 = load %union.upat*, %union.upat** %scan, align 4
  %l638 = bitcast %union.upat* %389 to i32*
  %390 = load i32, i32* %l638, align 4
  %and639 = and i32 %390, 32
  %tobool640 = icmp ne i32 %and639, 0
  br label %land.end641

land.end641:                                      ; preds = %land.rhs637, %do.cond
  %391 = phi i1 [ false, %do.cond ], [ %tobool640, %land.rhs637 ]
  br i1 %391, label %do.body381, label %do.end642

do.end642:                                        ; preds = %land.end641
  store i32 0, i32* %retval, align 4
  br label %return

if.end643:                                        ; preds = %if.then378
  br label %sw.epilog

sw.bb644:                                         ; preds = %if.end31
  br label %while.cond645

while.cond645:                                    ; preds = %cond.end667, %sw.bb644
  %392 = load %union.upat*, %union.upat** %next, align 4
  %l646 = bitcast %union.upat* %392 to i32*
  %393 = load i32, i32* %l646, align 4
  %and647 = and i32 %393, 255
  %cmp648 = icmp eq i32 %and647, 67
  br i1 %cmp648, label %while.body650, label %while.end669

while.body650:                                    ; preds = %while.cond645
  %394 = load %union.upat*, %union.upat** %next, align 4
  store %union.upat* %394, %union.upat** %scan, align 4
  %395 = load %union.upat*, %union.upat** %scan, align 4
  %l651 = bitcast %union.upat* %395 to i32*
  %396 = load i32, i32* %l651, align 4
  %shr652 = ashr i32 %396, 8
  store i32 %shr652, i32* @rn_offs, align 4
  %tobool653 = icmp ne i32 %shr652, 0
  br i1 %tobool653, label %cond.true654, label %cond.false666

cond.true654:                                     ; preds = %while.body650
  %397 = load %union.upat*, %union.upat** %scan, align 4
  %l655 = bitcast %union.upat* %397 to i32*
  %398 = load i32, i32* %l655, align 4
  %and656 = and i32 %398, 255
  %cmp657 = icmp eq i32 %and656, 3
  br i1 %cmp657, label %cond.true659, label %cond.false662

cond.true659:                                     ; preds = %cond.true654
  %399 = load %union.upat*, %union.upat** %scan, align 4
  %400 = load i32, i32* @rn_offs, align 4
  %idx.neg660 = sub i32 0, %400
  %add.ptr661 = getelementptr inbounds %union.upat, %union.upat* %399, i32 %idx.neg660
  br label %cond.end664

cond.false662:                                    ; preds = %cond.true654
  %401 = load %union.upat*, %union.upat** %scan, align 4
  %402 = load i32, i32* @rn_offs, align 4
  %add.ptr663 = getelementptr inbounds %union.upat, %union.upat* %401, i32 %402
  br label %cond.end664

cond.end664:                                      ; preds = %cond.false662, %cond.true659
  %cond665 = phi %union.upat* [ %add.ptr661, %cond.true659 ], [ %add.ptr663, %cond.false662 ]
  br label %cond.end667

cond.false666:                                    ; preds = %while.body650
  br label %cond.end667

cond.end667:                                      ; preds = %cond.false666, %cond.end664
  %cond668 = phi %union.upat* [ %cond665, %cond.end664 ], [ null, %cond.false666 ]
  store %union.upat* %cond668, %union.upat** %next, align 4
  br label %while.cond645

while.end669:                                     ; preds = %while.cond645
  br label %sw.bb670

sw.bb670:                                         ; preds = %if.end31, %if.end31, %while.end669
  %403 = load %union.upat*, %union.upat** %scan, align 4
  %l671 = bitcast %union.upat* %403 to i32*
  %404 = load i32, i32* %l671, align 4
  %and672 = and i32 %404, 255
  store i32 %and672, i32* %op, align 4
  %405 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %405, i8** %start, align 4
  %406 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %407 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast675 = ptrtoint i8* %406 to i32
  %sub.ptr.rhs.cast676 = ptrtoint i8* %407 to i32
  %sub.ptr.sub677 = sub i32 %sub.ptr.lhs.cast675, %sub.ptr.rhs.cast676
  %mul678 = mul i32 1, %sub.ptr.sub677
  %call679 = call i8* @zhalloc(i32 %mul678)
  store i8* %call679, i8** %charstart, align 4
  %408 = load i8*, i8** %charstart, align 4
  %409 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %410 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast680 = ptrtoint i8* %409 to i32
  %sub.ptr.rhs.cast681 = ptrtoint i8* %410 to i32
  %sub.ptr.sub682 = sub i32 %sub.ptr.lhs.cast680, %sub.ptr.rhs.cast681
  call void @llvm.memset.p0i8.i32(i8* %408, i8 0, i32 %sub.ptr.sub682, i32 1, i1 false)
  %411 = load i32, i32* %op, align 4
  %cmp683 = icmp eq i32 %411, 67
  br i1 %cmp683, label %if.then685, label %if.else704

if.then685:                                       ; preds = %sw.bb670
  store i32 0, i32* %no, align 4
  br label %for.cond686

for.cond686:                                      ; preds = %for.inc695, %if.then685
  %412 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %413 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp687 = icmp ult i8* %412, %413
  br i1 %cmp687, label %for.body689, label %for.end697

for.body689:                                      ; preds = %for.cond686
  %414 = load i8*, i8** %charstart, align 4
  %415 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %416 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast690 = ptrtoint i8* %415 to i32
  %sub.ptr.rhs.cast691 = ptrtoint i8* %416 to i32
  %sub.ptr.sub692 = sub i32 %sub.ptr.lhs.cast690, %sub.ptr.rhs.cast691
  %arrayidx693 = getelementptr inbounds i8, i8* %414, i32 %sub.ptr.sub692
  store i8 1, i8* %arrayidx693, align 1
  %417 = load i32, i32* %no, align 4
  %inc694 = add nsw i32 %417, 1
  store i32 %inc694, i32* %no, align 4
  br label %for.inc695

for.inc695:                                       ; preds = %for.body689
  %418 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %419 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call696 = call i8* @charnext(i8* %418, i8* %419)
  store i8* %call696, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %for.cond686

for.end697:                                       ; preds = %for.cond686
  %420 = load %union.upat*, %union.upat** %next, align 4
  %l698 = bitcast %union.upat* %420 to i32*
  %421 = load i32, i32* %l698, align 4
  %and699 = and i32 %421, 255
  %cmp700 = icmp eq i32 %and699, 0
  br i1 %cmp700, label %if.then702, label %if.end703

if.then702:                                       ; preds = %for.end697
  store i32 1, i32* %retval, align 4
  br label %return

if.end703:                                        ; preds = %for.end697
  br label %if.end725

if.else704:                                       ; preds = %sw.bb670
  %422 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 8), align 4
  %tobool705 = icmp ne i32 %422, 0
  br i1 %tobool705, label %if.end722, label %land.lhs.true706

land.lhs.true706:                                 ; preds = %if.else704
  %423 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr707 = getelementptr inbounds %union.upat, %union.upat* %423, i32 1
  %l708 = bitcast %union.upat* %add.ptr707 to i32*
  %424 = load i32, i32* %l708, align 4
  %and709 = and i32 %424, 64
  %tobool710 = icmp ne i32 %and709, 0
  br i1 %tobool710, label %land.lhs.true711, label %if.end722

land.lhs.true711:                                 ; preds = %land.lhs.true706
  %425 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %426 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %cmp712 = icmp eq i8* %425, %426
  br i1 %cmp712, label %land.lhs.true714, label %if.end722

land.lhs.true714:                                 ; preds = %land.lhs.true711
  %427 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %428 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp715 = icmp ult i8* %427, %428
  br i1 %cmp715, label %land.lhs.true717, label %if.end722

land.lhs.true717:                                 ; preds = %land.lhs.true714
  %429 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %430 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call718 = call i32 @charref(i8* %429, i8* %430, i32* null)
  %cmp719 = icmp eq i32 %call718, 46
  br i1 %cmp719, label %if.then721, label %if.end722

if.then721:                                       ; preds = %land.lhs.true717
  store i32 0, i32* %retval, align 4
  br label %return

if.end722:                                        ; preds = %land.lhs.true717, %land.lhs.true714, %land.lhs.true711, %land.lhs.true706, %if.else704
  %431 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr723 = getelementptr inbounds %union.upat, %union.upat* %431, i32 1
  %432 = load i8*, i8** %charstart, align 4
  %call724 = call i32 @patrepeat(%union.upat* %add.ptr723, i8* %432)
  store i32 %call724, i32* %no, align 4
  br label %if.end725

if.end725:                                        ; preds = %if.end722, %if.end703
  %433 = load i32, i32* %op, align 4
  %cmp726 = icmp eq i32 %433, 7
  %cond728 = select i1 %cmp726, i32 1, i32 0
  store i32 %cond728, i32* %min, align 4
  %434 = load %union.upat*, %union.upat** %next, align 4
  %l729 = bitcast %union.upat* %434 to i32*
  %435 = load i32, i32* %l729, align 4
  %and730 = and i32 %435, 255
  %cmp731 = icmp eq i32 %and730, 4
  br i1 %cmp731, label %land.lhs.true733, label %if.else804

land.lhs.true733:                                 ; preds = %if.end725
  %436 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx734 = getelementptr inbounds %union.upat, %union.upat* %436, i32 1
  %l735 = bitcast %union.upat* %arrayidx734 to i32*
  %437 = load i32, i32* %l735, align 4
  %tobool736 = icmp ne i32 %437, 0
  br i1 %tobool736, label %land.lhs.true737, label %if.else804

land.lhs.true737:                                 ; preds = %land.lhs.true733
  %438 = load i32, i32* @patglobflags, align 4
  %and738 = and i32 %438, 255
  %tobool739 = icmp ne i32 %and738, 0
  br i1 %tobool739, label %if.else804, label %if.then740

if.then740:                                       ; preds = %land.lhs.true737
  %439 = load %union.upat*, %union.upat** %next, align 4
  %add.ptr742 = getelementptr inbounds %union.upat, %union.upat* %439, i32 2
  %440 = bitcast %union.upat* %add.ptr742 to i8*
  store i8* %440, i8** %nextop, align 4
  %441 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx744 = getelementptr inbounds %union.upat, %union.upat* %441, i32 1
  %l745 = bitcast %union.upat* %arrayidx744 to i32*
  %442 = load i32, i32* %l745, align 4
  store i32 %442, i32* %nextlen, align 4
  %443 = load %union.upat*, %union.upat** %next, align 4
  %l746 = bitcast %union.upat* %443 to i32*
  %444 = load i32, i32* %l746, align 4
  %shr747 = ashr i32 %444, 8
  store i32 %shr747, i32* @rn_offs, align 4
  %tobool748 = icmp ne i32 %shr747, 0
  br i1 %tobool748, label %cond.true749, label %cond.false761

cond.true749:                                     ; preds = %if.then740
  %445 = load %union.upat*, %union.upat** %next, align 4
  %l750 = bitcast %union.upat* %445 to i32*
  %446 = load i32, i32* %l750, align 4
  %and751 = and i32 %446, 255
  %cmp752 = icmp eq i32 %and751, 3
  br i1 %cmp752, label %cond.true754, label %cond.false757

cond.true754:                                     ; preds = %cond.true749
  %447 = load %union.upat*, %union.upat** %next, align 4
  %448 = load i32, i32* @rn_offs, align 4
  %idx.neg755 = sub i32 0, %448
  %add.ptr756 = getelementptr inbounds %union.upat, %union.upat* %447, i32 %idx.neg755
  br label %cond.end759

cond.false757:                                    ; preds = %cond.true749
  %449 = load %union.upat*, %union.upat** %next, align 4
  %450 = load i32, i32* @rn_offs, align 4
  %add.ptr758 = getelementptr inbounds %union.upat, %union.upat* %449, i32 %450
  br label %cond.end759

cond.end759:                                      ; preds = %cond.false757, %cond.true754
  %cond760 = phi %union.upat* [ %add.ptr756, %cond.true754 ], [ %add.ptr758, %cond.false757 ]
  br label %cond.end762

cond.false761:                                    ; preds = %if.then740
  br label %cond.end762

cond.end762:                                      ; preds = %cond.false761, %cond.end759
  %cond763 = phi %union.upat* [ %cond760, %cond.end759 ], [ null, %cond.false761 ]
  %l764 = bitcast %union.upat* %cond763 to i32*
  %451 = load i32, i32* %l764, align 4
  %and765 = and i32 %451, 255
  %cmp766 = icmp eq i32 %and765, 0
  br i1 %cmp766, label %land.lhs.true768, label %if.end801

land.lhs.true768:                                 ; preds = %cond.end762
  %452 = load i32, i32* @patflags, align 4
  %and769 = and i32 %452, 8
  %tobool770 = icmp ne i32 %and769, 0
  br i1 %tobool770, label %if.end801, label %if.then771

if.then771:                                       ; preds = %land.lhs.true768
  %453 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %454 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast773 = ptrtoint i8* %453 to i32
  %sub.ptr.rhs.cast774 = ptrtoint i8* %454 to i32
  %sub.ptr.sub775 = sub i32 %sub.ptr.lhs.cast773, %sub.ptr.rhs.cast774
  store i32 %sub.ptr.sub775, i32* %ptlen, align 4
  %455 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %456 = load i32, i32* %min, align 4
  %tobool777 = icmp ne i32 %456, 0
  br i1 %tobool777, label %cond.true778, label %cond.false780

cond.true778:                                     ; preds = %if.then771
  %457 = load i8*, i8** %start, align 4
  %458 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call779 = call i8* @charnext(i8* %457, i8* %458)
  br label %cond.end781

cond.false780:                                    ; preds = %if.then771
  %459 = load i8*, i8** %start, align 4
  br label %cond.end781

cond.end781:                                      ; preds = %cond.false780, %cond.true778
  %cond782 = phi i8* [ %call779, %cond.true778 ], [ %459, %cond.false780 ]
  %sub.ptr.lhs.cast783 = ptrtoint i8* %455 to i32
  %sub.ptr.rhs.cast784 = ptrtoint i8* %cond782 to i32
  %sub.ptr.sub785 = sub i32 %sub.ptr.lhs.cast783, %sub.ptr.rhs.cast784
  store i32 %sub.ptr.sub785, i32* %lenmatch, align 4
  %460 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx786 = getelementptr inbounds %union.upat, %union.upat* %460, i32 1
  %l787 = bitcast %union.upat* %arrayidx786 to i32*
  %461 = load i32, i32* %l787, align 4
  %462 = load i32, i32* %lenmatch, align 4
  %cmp788 = icmp sgt i32 %461, %462
  br i1 %cmp788, label %if.then795, label %lor.lhs.false790

lor.lhs.false790:                                 ; preds = %cond.end781
  %463 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx791 = getelementptr inbounds %union.upat, %union.upat* %463, i32 1
  %l792 = bitcast %union.upat* %arrayidx791 to i32*
  %464 = load i32, i32* %l792, align 4
  %465 = load i32, i32* %ptlen, align 4
  %cmp793 = icmp slt i32 %464, %465
  br i1 %cmp793, label %if.then795, label %if.end796

if.then795:                                       ; preds = %lor.lhs.false790, %cond.end781
  store i32 0, i32* %retval, align 4
  br label %return

if.end796:                                        ; preds = %lor.lhs.false790
  %466 = load i32, i32* %ptlen, align 4
  %467 = load %union.upat*, %union.upat** %next, align 4
  %arrayidx797 = getelementptr inbounds %union.upat, %union.upat* %467, i32 1
  %l798 = bitcast %union.upat* %arrayidx797 to i32*
  %468 = load i32, i32* %l798, align 4
  %sub799 = sub nsw i32 %466, %468
  %469 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %add.ptr800 = getelementptr inbounds i8, i8* %469, i32 %sub799
  store i8* %add.ptr800, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %sw.epilog

if.end801:                                        ; preds = %land.lhs.true768, %cond.end762
  %470 = load i8*, i8** %nextop, align 4
  %471 = load i8*, i8** %nextop, align 4
  %472 = load i32, i32* %nextlen, align 4
  %add.ptr802 = getelementptr inbounds i8, i8* %471, i32 %472
  %call803 = call i32 @charref(i8* %470, i8* %add.ptr802, i32* null)
  store i32 %call803, i32* %nextch, align 4
  br label %if.end805

if.else804:                                       ; preds = %land.lhs.true737, %land.lhs.true733, %if.end725
  store i32 -1, i32* %nextch, align 4
  br label %if.end805

if.end805:                                        ; preds = %if.else804, %if.end801
  %473 = load i32, i32* @patglobflags, align 4
  store i32 %473, i32* %savglobflags, align 4
  %474 = load i32, i32* @errsfound, align 4
  store i32 %474, i32* %saverrsfound, align 4
  %475 = load i8*, i8** %charstart, align 4
  %476 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %477 = load i8*, i8** %start, align 4
  %sub.ptr.lhs.cast806 = ptrtoint i8* %476 to i32
  %sub.ptr.rhs.cast807 = ptrtoint i8* %477 to i32
  %sub.ptr.sub808 = sub i32 %sub.ptr.lhs.cast806, %sub.ptr.rhs.cast807
  %add.ptr809 = getelementptr inbounds i8, i8* %475, i32 %sub.ptr.sub808
  store i8* %add.ptr809, i8** %lastcharstart, align 4
  %478 = load i32, i32* %no, align 4
  %479 = load i32, i32* %min, align 4
  %cmp810 = icmp sge i32 %478, %479
  br i1 %cmp810, label %if.then812, label %if.end881

if.then812:                                       ; preds = %if.end805
  br label %for.cond813

for.cond813:                                      ; preds = %while.end875, %if.then812
  %480 = load i32, i32* %nextch, align 4
  %cmp815 = icmp eq i32 %480, -1
  br i1 %cmp815, label %if.then860, label %lor.lhs.false817

lor.lhs.false817:                                 ; preds = %for.cond813
  %481 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %482 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp818 = icmp ult i8* %481, %482
  br i1 %cmp818, label %land.lhs.true820, label %if.end865

land.lhs.true820:                                 ; preds = %lor.lhs.false817
  %483 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %484 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call821 = call i32 @charref(i8* %483, i8* %484, i32* null)
  store i32 %call821, i32* %charmatch_cache, align 4
  %485 = load i32, i32* %charmatch_cache, align 4
  %486 = load i32, i32* %nextch, align 4
  %cmp822 = icmp eq i32 %485, %486
  br i1 %cmp822, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true820
  %487 = load i32, i32* @patglobflags, align 4
  %and824 = and i32 %487, 512
  %tobool825 = icmp ne i32 %and824, 0
  br i1 %tobool825, label %cond.true826, label %cond.false843

cond.true826:                                     ; preds = %lor.rhs
  %488 = load i32, i32* %charmatch_cache, align 4
  %call827 = call i32 @iswupper(i32 %488)
  %tobool828 = icmp ne i32 %call827, 0
  br i1 %tobool828, label %cond.true829, label %cond.false831

cond.true829:                                     ; preds = %cond.true826
  %489 = load i32, i32* %charmatch_cache, align 4
  %call830 = call i32 @towlower(i32 %489)
  br label %cond.end832

cond.false831:                                    ; preds = %cond.true826
  %490 = load i32, i32* %charmatch_cache, align 4
  br label %cond.end832

cond.end832:                                      ; preds = %cond.false831, %cond.true829
  %cond833 = phi i32 [ %call830, %cond.true829 ], [ %490, %cond.false831 ]
  %491 = load i32, i32* %nextch, align 4
  %call834 = call i32 @iswupper(i32 %491)
  %tobool835 = icmp ne i32 %call834, 0
  br i1 %tobool835, label %cond.true836, label %cond.false838

cond.true836:                                     ; preds = %cond.end832
  %492 = load i32, i32* %nextch, align 4
  %call837 = call i32 @towlower(i32 %492)
  br label %cond.end839

cond.false838:                                    ; preds = %cond.end832
  %493 = load i32, i32* %nextch, align 4
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false838, %cond.true836
  %cond840 = phi i32 [ %call837, %cond.true836 ], [ %493, %cond.false838 ]
  %cmp841 = icmp eq i32 %cond833, %cond840
  %conv842 = zext i1 %cmp841 to i32
  br label %cond.end857

cond.false843:                                    ; preds = %lor.rhs
  %494 = load i32, i32* @patglobflags, align 4
  %and844 = and i32 %494, 256
  %tobool845 = icmp ne i32 %and844, 0
  br i1 %tobool845, label %cond.true846, label %cond.false854

cond.true846:                                     ; preds = %cond.false843
  %495 = load i32, i32* %nextch, align 4
  %call847 = call i32 @iswlower(i32 %495)
  %tobool848 = icmp ne i32 %call847, 0
  br i1 %tobool848, label %land.rhs849, label %land.end853

land.rhs849:                                      ; preds = %cond.true846
  %496 = load i32, i32* %nextch, align 4
  %call850 = call i32 @towupper(i32 %496)
  %497 = load i32, i32* %charmatch_cache, align 4
  %cmp851 = icmp eq i32 %call850, %497
  br label %land.end853

land.end853:                                      ; preds = %land.rhs849, %cond.true846
  %498 = phi i1 [ false, %cond.true846 ], [ %cmp851, %land.rhs849 ]
  %land.ext = zext i1 %498 to i32
  br label %cond.end855

cond.false854:                                    ; preds = %cond.false843
  br label %cond.end855

cond.end855:                                      ; preds = %cond.false854, %land.end853
  %cond856 = phi i32 [ %land.ext, %land.end853 ], [ 0, %cond.false854 ]
  br label %cond.end857

cond.end857:                                      ; preds = %cond.end855, %cond.end839
  %cond858 = phi i32 [ %conv842, %cond.end839 ], [ %cond856, %cond.end855 ]
  %tobool859 = icmp ne i32 %cond858, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end857, %land.lhs.true820
  %499 = phi i1 [ true, %land.lhs.true820 ], [ %tobool859, %cond.end857 ]
  br i1 %499, label %if.then860, label %if.end865

if.then860:                                       ; preds = %lor.end, %for.cond813
  %500 = load %union.upat*, %union.upat** %next, align 4
  %call861 = call i32 @patmatch(%union.upat* %500)
  %tobool862 = icmp ne i32 %call861, 0
  br i1 %tobool862, label %if.then863, label %if.end864

if.then863:                                       ; preds = %if.then860
  store i32 1, i32* %retval, align 4
  br label %return

if.end864:                                        ; preds = %if.then860
  br label %if.end865

if.end865:                                        ; preds = %if.end864, %lor.end, %lor.lhs.false817
  %501 = load i32, i32* %no, align 4
  %dec = add nsw i32 %501, -1
  store i32 %dec, i32* %no, align 4
  %502 = load i32, i32* %min, align 4
  %cmp866 = icmp slt i32 %dec, %502
  br i1 %cmp866, label %if.then868, label %if.end869

if.then868:                                       ; preds = %if.end865
  br label %for.end880

if.end869:                                        ; preds = %if.end865
  br label %while.cond870

while.cond870:                                    ; preds = %while.body874, %if.end869
  %503 = load i8*, i8** %lastcharstart, align 4
  %incdec.ptr871 = getelementptr inbounds i8, i8* %503, i32 -1
  store i8* %incdec.ptr871, i8** %lastcharstart, align 4
  %504 = load i8, i8* %incdec.ptr871, align 1
  %tobool872 = icmp ne i8 %504, 0
  %lnot873 = xor i1 %tobool872, true
  br i1 %lnot873, label %while.body874, label %while.end875

while.body874:                                    ; preds = %while.cond870
  br label %while.cond870

while.end875:                                     ; preds = %while.cond870
  %505 = load i8*, i8** %start, align 4
  %506 = load i8*, i8** %lastcharstart, align 4
  %507 = load i8*, i8** %charstart, align 4
  %sub.ptr.lhs.cast876 = ptrtoint i8* %506 to i32
  %sub.ptr.rhs.cast877 = ptrtoint i8* %507 to i32
  %sub.ptr.sub878 = sub i32 %sub.ptr.lhs.cast876, %sub.ptr.rhs.cast877
  %add.ptr879 = getelementptr inbounds i8, i8* %505, i32 %sub.ptr.sub878
  store i8* %add.ptr879, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %508 = load i32, i32* %savglobflags, align 4
  store i32 %508, i32* @patglobflags, align 4
  %509 = load i32, i32* %saverrsfound, align 4
  store i32 %509, i32* @errsfound, align 4
  br label %for.cond813

for.end880:                                       ; preds = %if.then868
  br label %if.end881

if.end881:                                        ; preds = %for.end880, %if.end805
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb882:                                         ; preds = %if.end31
  %510 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %511 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 0), align 4
  %cmp883 = icmp ne i8* %510, %511
  br i1 %cmp883, label %if.then888, label %lor.lhs.false885

lor.lhs.false885:                                 ; preds = %sw.bb882
  %512 = load i32, i32* @patflags, align 4
  %and886 = and i32 %512, 512
  %tobool887 = icmp ne i32 %and886, 0
  br i1 %tobool887, label %if.then888, label %if.end889

if.then888:                                       ; preds = %lor.lhs.false885, %sw.bb882
  store i32 1, i32* %fail, align 4
  br label %if.end889

if.end889:                                        ; preds = %if.then888, %lor.lhs.false885
  br label %sw.epilog

sw.bb890:                                         ; preds = %if.end31
  %513 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %514 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp891 = icmp ult i8* %513, %514
  br i1 %cmp891, label %if.then896, label %lor.lhs.false893

lor.lhs.false893:                                 ; preds = %sw.bb890
  %515 = load i32, i32* @patflags, align 4
  %and894 = and i32 %515, 1024
  %tobool895 = icmp ne i32 %and894, 0
  br i1 %tobool895, label %if.then896, label %if.end897

if.then896:                                       ; preds = %lor.lhs.false893, %sw.bb890
  store i32 1, i32* %fail, align 4
  br label %if.end897

if.end897:                                        ; preds = %if.then896, %lor.lhs.false893
  br label %sw.epilog

sw.bb898:                                         ; preds = %if.end31
  %516 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr900 = getelementptr inbounds %union.upat, %union.upat* %516, i32 1
  %arrayidx901 = getelementptr inbounds %union.upat, %union.upat* %add.ptr900, i32 1
  %l902 = bitcast %union.upat* %arrayidx901 to i32*
  store i32* %l902, i32** %curptr, align 4
  %517 = load i32*, i32** %curptr, align 4
  %518 = load i32, i32* %517, align 4
  store i32 %518, i32* %savecount, align 4
  %519 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx905 = getelementptr inbounds %union.upat, %union.upat* %519, i32 4
  %p906 = bitcast %union.upat* %arrayidx905 to i8**
  %520 = load i8*, i8** %p906, align 4
  store i8* %520, i8** %saveptr, align 4
  %521 = load i32*, i32** %curptr, align 4
  store i32 0, i32* %521, align 4
  %522 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr909 = getelementptr inbounds %union.upat, %union.upat* %522, i32 1
  %call910 = call i32 @patmatch(%union.upat* %add.ptr909)
  store i32 %call910, i32* %ret908, align 4
  %523 = load i32, i32* %savecount, align 4
  %524 = load i32*, i32** %curptr, align 4
  store i32 %523, i32* %524, align 4
  %525 = load i8*, i8** %saveptr, align 4
  %526 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx911 = getelementptr inbounds %union.upat, %union.upat* %526, i32 4
  %p912 = bitcast %union.upat* %arrayidx911 to i8**
  store i8* %525, i8** %p912, align 4
  %527 = load i32, i32* %ret908, align 4
  store i32 %527, i32* %retval, align 4
  br label %return

sw.bb913:                                         ; preds = %if.end31
  %528 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx915 = getelementptr inbounds %union.upat, %union.upat* %528, i32 1
  %l916 = bitcast %union.upat* %arrayidx915 to i32*
  %529 = load i32, i32* %l916, align 4
  store i32 %529, i32* %cur, align 4
  %530 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx919 = getelementptr inbounds %union.upat, %union.upat* %530, i32 2
  %l920 = bitcast %union.upat* %arrayidx919 to i32*
  %531 = load i32, i32* %l920, align 4
  store i32 %531, i32* %min918, align 4
  %532 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx922 = getelementptr inbounds %union.upat, %union.upat* %532, i32 3
  %l923 = bitcast %union.upat* %arrayidx922 to i32*
  %533 = load i32, i32* %l923, align 4
  store i32 %533, i32* %max, align 4
  %534 = load i32, i32* %cur, align 4
  %tobool924 = icmp ne i32 %534, 0
  br i1 %tobool924, label %land.lhs.true925, label %if.end935

land.lhs.true925:                                 ; preds = %sw.bb913
  %535 = load i32, i32* %cur, align 4
  %536 = load i32, i32* %min918, align 4
  %cmp926 = icmp sge i32 %535, %536
  br i1 %cmp926, label %land.lhs.true928, label %if.end935

land.lhs.true928:                                 ; preds = %land.lhs.true925
  %537 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %538 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx929 = getelementptr inbounds %union.upat, %union.upat* %538, i32 4
  %p930 = bitcast %union.upat* %arrayidx929 to i8**
  %539 = load i8*, i8** %p930, align 4
  %cmp931 = icmp eq i8* %537, %539
  br i1 %cmp931, label %if.then933, label %if.end935

if.then933:                                       ; preds = %land.lhs.true928
  %540 = load %union.upat*, %union.upat** %next, align 4
  %call934 = call i32 @patmatch(%union.upat* %540)
  store i32 %call934, i32* %retval, align 4
  br label %return

if.end935:                                        ; preds = %land.lhs.true928, %land.lhs.true925, %sw.bb913
  %541 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %542 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx936 = getelementptr inbounds %union.upat, %union.upat* %542, i32 4
  %p937 = bitcast %union.upat* %arrayidx936 to i8**
  store i8* %541, i8** %p937, align 4
  %543 = load i32, i32* %max, align 4
  %cmp938 = icmp slt i32 %543, 0
  br i1 %cmp938, label %if.then943, label %lor.lhs.false940

lor.lhs.false940:                                 ; preds = %if.end935
  %544 = load i32, i32* %cur, align 4
  %545 = load i32, i32* %max, align 4
  %cmp941 = icmp slt i32 %544, %545
  br i1 %cmp941, label %if.then943, label %if.end955

if.then943:                                       ; preds = %lor.lhs.false940, %if.end935
  %546 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %546, i8** %patinput_thistime, align 4
  %547 = load i32, i32* %cur, align 4
  %add945 = add nsw i32 %547, 1
  %548 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx946 = getelementptr inbounds %union.upat, %union.upat* %548, i32 1
  %l947 = bitcast %union.upat* %arrayidx946 to i32*
  store i32 %add945, i32* %l947, align 4
  %549 = load %union.upat*, %union.upat** %scan, align 4
  %add.ptr948 = getelementptr inbounds %union.upat, %union.upat* %549, i32 5
  %call949 = call i32 @patmatch(%union.upat* %add.ptr948)
  %tobool950 = icmp ne i32 %call949, 0
  br i1 %tobool950, label %if.then951, label %if.end952

if.then951:                                       ; preds = %if.then943
  store i32 1, i32* %retval, align 4
  br label %return

if.end952:                                        ; preds = %if.then943
  %550 = load i32, i32* %cur, align 4
  %551 = load %union.upat*, %union.upat** %scan, align 4
  %arrayidx953 = getelementptr inbounds %union.upat, %union.upat* %551, i32 1
  %l954 = bitcast %union.upat* %arrayidx953 to i32*
  store i32 %550, i32* %l954, align 4
  %552 = load i8*, i8** %patinput_thistime, align 4
  store i8* %552, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  br label %if.end955

if.end955:                                        ; preds = %if.end952, %lor.lhs.false940
  %553 = load i32, i32* %cur, align 4
  %554 = load i32, i32* %min918, align 4
  %cmp956 = icmp slt i32 %553, %554
  br i1 %cmp956, label %if.then958, label %if.end959

if.then958:                                       ; preds = %if.end955
  store i32 0, i32* %retval, align 4
  br label %return

if.end959:                                        ; preds = %if.end955
  %555 = load %union.upat*, %union.upat** %next, align 4
  %call960 = call i32 @patmatch(%union.upat* %555)
  store i32 %call960, i32* %retval, align 4
  br label %return

sw.bb961:                                         ; preds = %if.end31
  %556 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %557 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp962 = icmp ult i8* %556, %557
  br i1 %cmp962, label %land.rhs964, label %land.end968

land.rhs964:                                      ; preds = %sw.bb961
  %558 = load i32, i32* @patflags, align 4
  %and965 = and i32 %558, 8
  %tobool966 = icmp ne i32 %and965, 0
  %lnot967 = xor i1 %tobool966, true
  br label %land.end968

land.end968:                                      ; preds = %land.rhs964, %sw.bb961
  %559 = phi i1 [ false, %sw.bb961 ], [ %lnot967, %land.rhs964 ]
  %land.ext969 = zext i1 %559 to i32
  store i32 %land.ext969, i32* %fail, align 4
  br i1 %559, label %if.end971, label %if.then970

if.then970:                                       ; preds = %land.end968
  store i32 1, i32* %retval, align 4
  br label %return

if.end971:                                        ; preds = %land.end968
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end31, %if.end971, %if.end897, %if.end889, %if.end796, %if.end643, %if.end373, %if.end366, %sw.bb309, %sw.bb308, %sw.bb307, %while.end306, %while.end259, %if.end141, %if.end104, %if.end37
  %560 = load i32, i32* %fail, align 4
  %tobool972 = icmp ne i32 %560, 0
  br i1 %tobool972, label %if.then973, label %if.end1114

if.then973:                                       ; preds = %sw.epilog
  %561 = load i32, i32* @errsfound, align 4
  %562 = load i32, i32* @patglobflags, align 4
  %and974 = and i32 %562, 255
  %cmp975 = icmp slt i32 %561, %and974
  br i1 %cmp975, label %land.lhs.true977, label %if.end1113

land.lhs.true977:                                 ; preds = %if.then973
  %563 = load i32, i32* @forceerrs, align 4
  %cmp978 = icmp eq i32 %563, -1
  br i1 %cmp978, label %if.then983, label %lor.lhs.false980

lor.lhs.false980:                                 ; preds = %land.lhs.true977
  %564 = load i32, i32* @errsfound, align 4
  %565 = load i32, i32* @forceerrs, align 4
  %cmp981 = icmp slt i32 %564, %565
  br i1 %cmp981, label %if.then983, label %if.end1113

if.then983:                                       ; preds = %lor.lhs.false980, %land.lhs.true977
  %566 = load i8*, i8** @exactpos, align 4
  store i8* %566, i8** %savexact, align 4
  %567 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %567, i8** %save, align 4
  %568 = load i32, i32* @patglobflags, align 4
  store i32 %568, i32* %savglobflags, align 4
  %569 = load i32, i32* @errsfound, align 4
  %inc985 = add nsw i32 %569, 1
  store i32 %inc985, i32* @errsfound, align 4
  store i32 %inc985, i32* %saverrsfound, align 4
  store i32 0, i32* %fail, align 4
  %570 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %571 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp986 = icmp ult i8* %570, %571
  br i1 %cmp986, label %if.then988, label %if.end1000

if.then988:                                       ; preds = %if.then983
  %572 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %573 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call989 = call i8* @charnext(i8* %572, i8* %573)
  store i8* %call989, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %574 = load %union.upat*, %union.upat** %scan, align 4
  %l990 = bitcast %union.upat* %574 to i32*
  %575 = load i32, i32* %l990, align 4
  %and991 = and i32 %575, 255
  %cmp992 = icmp ne i32 %and991, 4
  br i1 %cmp992, label %if.then994, label %if.end995

if.then994:                                       ; preds = %if.then988
  br label %while.cond8

if.end995:                                        ; preds = %if.then988
  %576 = load %union.upat*, %union.upat** %scan, align 4
  %call996 = call i32 @patmatch(%union.upat* %576)
  %tobool997 = icmp ne i32 %call996, 0
  br i1 %tobool997, label %if.then998, label %if.end999

if.then998:                                       ; preds = %if.end995
  store i32 1, i32* %retval, align 4
  br label %return

if.end999:                                        ; preds = %if.end995
  br label %if.end1000

if.end1000:                                       ; preds = %if.end999, %if.then983
  %577 = load %union.upat*, %union.upat** %scan, align 4
  %l1001 = bitcast %union.upat* %577 to i32*
  %578 = load i32, i32* %l1001, align 4
  %and1002 = and i32 %578, 255
  %cmp1003 = icmp eq i32 %and1002, 4
  br i1 %cmp1003, label %if.then1005, label %if.end1112

if.then1005:                                      ; preds = %if.end1000
  %579 = load i8*, i8** %savexact, align 4
  store i8* %579, i8** %nextexact, align 4
  %580 = load i8*, i8** %nextexact, align 4
  %581 = load i8*, i8** @exactend, align 4
  %call1007 = call i8* @charnext(i8* %580, i8* %581)
  store i8* %call1007, i8** %nextexact, align 4
  %582 = load i8*, i8** %save, align 4
  %583 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp1008 = icmp ult i8* %582, %583
  br i1 %cmp1008, label %if.then1010, label %if.end1110

if.then1010:                                      ; preds = %if.then1005
  %584 = load i8*, i8** %save, align 4
  store i8* %584, i8** %nextin, align 4
  %585 = load i8*, i8** %nextin, align 4
  %586 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call1012 = call i8* @charnext(i8* %585, i8* %586)
  store i8* %call1012, i8** %nextin, align 4
  %587 = load i32, i32* %savglobflags, align 4
  store i32 %587, i32* @patglobflags, align 4
  %588 = load i32, i32* %saverrsfound, align 4
  store i32 %588, i32* @errsfound, align 4
  %589 = load i8*, i8** %savexact, align 4
  store i8* %589, i8** @exactpos, align 4
  %590 = load i8*, i8** %save, align 4
  %591 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp1013 = icmp ult i8* %590, %591
  br i1 %cmp1013, label %land.lhs.true1015, label %if.end1105

land.lhs.true1015:                                ; preds = %if.then1010
  %592 = load i8*, i8** %nextin, align 4
  %593 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp1016 = icmp ult i8* %592, %593
  br i1 %cmp1016, label %land.lhs.true1018, label %if.end1105

land.lhs.true1018:                                ; preds = %land.lhs.true1015
  %594 = load i8*, i8** %nextexact, align 4
  %595 = load i8*, i8** @exactend, align 4
  %cmp1019 = icmp ult i8* %594, %595
  br i1 %cmp1019, label %if.then1021, label %if.end1105

if.then1021:                                      ; preds = %land.lhs.true1018
  %596 = load i8*, i8** %save, align 4
  %597 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call1023 = call i32 @charref(i8* %596, i8* %597, i32* null)
  store i32 %call1023, i32* %cin0, align 4
  %598 = load i8*, i8** @exactpos, align 4
  %599 = load i8*, i8** @exactend, align 4
  %call1025 = call i32 @charref(i8* %598, i8* %599, i32* null)
  store i32 %call1025, i32* %cpa0, align 4
  %600 = load i8*, i8** %nextin, align 4
  %601 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call1027 = call i32 @charref(i8* %600, i8* %601, i32* null)
  store i32 %call1027, i32* %cin1, align 4
  %602 = load i8*, i8** %nextexact, align 4
  %603 = load i8*, i8** @exactend, align 4
  %call1029 = call i32 @charref(i8* %602, i8* %603, i32* null)
  store i32 %call1029, i32* %cpa1, align 4
  %604 = load i32, i32* %cin0, align 4
  %605 = load i32, i32* %cpa1, align 4
  %cmp1030 = icmp eq i32 %604, %605
  br i1 %cmp1030, label %land.lhs.true1063, label %lor.lhs.false1032

lor.lhs.false1032:                                ; preds = %if.then1021
  %606 = load i32, i32* @patglobflags, align 4
  %and1033 = and i32 %606, 512
  %tobool1034 = icmp ne i32 %and1033, 0
  br i1 %tobool1034, label %cond.true1035, label %cond.false1052

cond.true1035:                                    ; preds = %lor.lhs.false1032
  %607 = load i32, i32* %cin0, align 4
  %call1036 = call i32 @iswupper(i32 %607)
  %tobool1037 = icmp ne i32 %call1036, 0
  br i1 %tobool1037, label %cond.true1038, label %cond.false1040

cond.true1038:                                    ; preds = %cond.true1035
  %608 = load i32, i32* %cin0, align 4
  %call1039 = call i32 @towlower(i32 %608)
  br label %cond.end1041

cond.false1040:                                   ; preds = %cond.true1035
  %609 = load i32, i32* %cin0, align 4
  br label %cond.end1041

cond.end1041:                                     ; preds = %cond.false1040, %cond.true1038
  %cond1042 = phi i32 [ %call1039, %cond.true1038 ], [ %609, %cond.false1040 ]
  %610 = load i32, i32* %cpa1, align 4
  %call1043 = call i32 @iswupper(i32 %610)
  %tobool1044 = icmp ne i32 %call1043, 0
  br i1 %tobool1044, label %cond.true1045, label %cond.false1047

cond.true1045:                                    ; preds = %cond.end1041
  %611 = load i32, i32* %cpa1, align 4
  %call1046 = call i32 @towlower(i32 %611)
  br label %cond.end1048

cond.false1047:                                   ; preds = %cond.end1041
  %612 = load i32, i32* %cpa1, align 4
  br label %cond.end1048

cond.end1048:                                     ; preds = %cond.false1047, %cond.true1045
  %cond1049 = phi i32 [ %call1046, %cond.true1045 ], [ %612, %cond.false1047 ]
  %cmp1050 = icmp eq i32 %cond1042, %cond1049
  br i1 %cmp1050, label %land.lhs.true1063, label %if.end1104

cond.false1052:                                   ; preds = %lor.lhs.false1032
  %613 = load i32, i32* @patglobflags, align 4
  %and1053 = and i32 %613, 256
  %tobool1054 = icmp ne i32 %and1053, 0
  br i1 %tobool1054, label %cond.true1055, label %cond.false1062

cond.true1055:                                    ; preds = %cond.false1052
  %614 = load i32, i32* %cpa1, align 4
  %call1056 = call i32 @iswlower(i32 %614)
  %tobool1057 = icmp ne i32 %call1056, 0
  br i1 %tobool1057, label %land.lhs.true1058, label %if.end1104

land.lhs.true1058:                                ; preds = %cond.true1055
  %615 = load i32, i32* %cpa1, align 4
  %call1059 = call i32 @towupper(i32 %615)
  %616 = load i32, i32* %cin0, align 4
  %cmp1060 = icmp eq i32 %call1059, %616
  br i1 %cmp1060, label %land.lhs.true1063, label %if.end1104

cond.false1062:                                   ; preds = %cond.false1052
  br i1 false, label %land.lhs.true1063, label %if.end1104

land.lhs.true1063:                                ; preds = %cond.false1062, %land.lhs.true1058, %cond.end1048, %if.then1021
  %617 = load i32, i32* %cin1, align 4
  %618 = load i32, i32* %cpa0, align 4
  %cmp1064 = icmp eq i32 %617, %618
  br i1 %cmp1064, label %if.then1097, label %lor.lhs.false1066

lor.lhs.false1066:                                ; preds = %land.lhs.true1063
  %619 = load i32, i32* @patglobflags, align 4
  %and1067 = and i32 %619, 512
  %tobool1068 = icmp ne i32 %and1067, 0
  br i1 %tobool1068, label %cond.true1069, label %cond.false1086

cond.true1069:                                    ; preds = %lor.lhs.false1066
  %620 = load i32, i32* %cin1, align 4
  %call1070 = call i32 @iswupper(i32 %620)
  %tobool1071 = icmp ne i32 %call1070, 0
  br i1 %tobool1071, label %cond.true1072, label %cond.false1074

cond.true1072:                                    ; preds = %cond.true1069
  %621 = load i32, i32* %cin1, align 4
  %call1073 = call i32 @towlower(i32 %621)
  br label %cond.end1075

cond.false1074:                                   ; preds = %cond.true1069
  %622 = load i32, i32* %cin1, align 4
  br label %cond.end1075

cond.end1075:                                     ; preds = %cond.false1074, %cond.true1072
  %cond1076 = phi i32 [ %call1073, %cond.true1072 ], [ %622, %cond.false1074 ]
  %623 = load i32, i32* %cpa0, align 4
  %call1077 = call i32 @iswupper(i32 %623)
  %tobool1078 = icmp ne i32 %call1077, 0
  br i1 %tobool1078, label %cond.true1079, label %cond.false1081

cond.true1079:                                    ; preds = %cond.end1075
  %624 = load i32, i32* %cpa0, align 4
  %call1080 = call i32 @towlower(i32 %624)
  br label %cond.end1082

cond.false1081:                                   ; preds = %cond.end1075
  %625 = load i32, i32* %cpa0, align 4
  br label %cond.end1082

cond.end1082:                                     ; preds = %cond.false1081, %cond.true1079
  %cond1083 = phi i32 [ %call1080, %cond.true1079 ], [ %625, %cond.false1081 ]
  %cmp1084 = icmp eq i32 %cond1076, %cond1083
  br i1 %cmp1084, label %if.then1097, label %if.end1104

cond.false1086:                                   ; preds = %lor.lhs.false1066
  %626 = load i32, i32* @patglobflags, align 4
  %and1087 = and i32 %626, 256
  %tobool1088 = icmp ne i32 %and1087, 0
  br i1 %tobool1088, label %cond.true1089, label %cond.false1096

cond.true1089:                                    ; preds = %cond.false1086
  %627 = load i32, i32* %cpa0, align 4
  %call1090 = call i32 @iswlower(i32 %627)
  %tobool1091 = icmp ne i32 %call1090, 0
  br i1 %tobool1091, label %land.lhs.true1092, label %if.end1104

land.lhs.true1092:                                ; preds = %cond.true1089
  %628 = load i32, i32* %cpa0, align 4
  %call1093 = call i32 @towupper(i32 %628)
  %629 = load i32, i32* %cin1, align 4
  %cmp1094 = icmp eq i32 %call1093, %629
  br i1 %cmp1094, label %if.then1097, label %if.end1104

cond.false1096:                                   ; preds = %cond.false1086
  br i1 false, label %if.then1097, label %if.end1104

if.then1097:                                      ; preds = %cond.false1096, %land.lhs.true1092, %cond.end1082, %land.lhs.true1063
  %630 = load i8*, i8** %nextin, align 4
  store i8* %630, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %631 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %632 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call1098 = call i8* @charnext(i8* %631, i8* %632)
  store i8* %call1098, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %633 = load i8*, i8** %nextexact, align 4
  store i8* %633, i8** @exactpos, align 4
  %634 = load i8*, i8** @exactpos, align 4
  %635 = load i8*, i8** @exactend, align 4
  %call1099 = call i8* @charnext(i8* %634, i8* %635)
  store i8* %call1099, i8** @exactpos, align 4
  %636 = load %union.upat*, %union.upat** %scan, align 4
  %call1100 = call i32 @patmatch(%union.upat* %636)
  %tobool1101 = icmp ne i32 %call1100, 0
  br i1 %tobool1101, label %if.then1102, label %if.end1103

if.then1102:                                      ; preds = %if.then1097
  store i32 1, i32* %retval, align 4
  br label %return

if.end1103:                                       ; preds = %if.then1097
  %637 = load i32, i32* %savglobflags, align 4
  store i32 %637, i32* @patglobflags, align 4
  %638 = load i32, i32* %saverrsfound, align 4
  store i32 %638, i32* @errsfound, align 4
  br label %if.end1104

if.end1104:                                       ; preds = %if.end1103, %cond.false1096, %land.lhs.true1092, %cond.true1089, %cond.end1082, %cond.false1062, %land.lhs.true1058, %cond.true1055, %cond.end1048
  br label %if.end1105

if.end1105:                                       ; preds = %if.end1104, %land.lhs.true1018, %land.lhs.true1015, %if.then1010
  %639 = load i8*, i8** %nextin, align 4
  store i8* %639, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %640 = load i8*, i8** %nextexact, align 4
  store i8* %640, i8** @exactpos, align 4
  %641 = load %union.upat*, %union.upat** %scan, align 4
  %call1106 = call i32 @patmatch(%union.upat* %641)
  %tobool1107 = icmp ne i32 %call1106, 0
  br i1 %tobool1107, label %if.then1108, label %if.end1109

if.then1108:                                      ; preds = %if.end1105
  store i32 1, i32* %retval, align 4
  br label %return

if.end1109:                                       ; preds = %if.end1105
  %642 = load i8*, i8** %save, align 4
  store i8* %642, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %643 = load i32, i32* %savglobflags, align 4
  store i32 %643, i32* @patglobflags, align 4
  %644 = load i32, i32* %saverrsfound, align 4
  store i32 %644, i32* @errsfound, align 4
  %645 = load i8*, i8** %savexact, align 4
  store i8* %645, i8** @exactpos, align 4
  br label %if.end1110

if.end1110:                                       ; preds = %if.end1109, %if.then1005
  %646 = load i8*, i8** @exactpos, align 4
  %647 = load i8*, i8** @exactend, align 4
  %call1111 = call i8* @charnext(i8* %646, i8* %647)
  store i8* %call1111, i8** @exactpos, align 4
  br label %while.cond8

if.end1112:                                       ; preds = %if.end1000
  br label %if.end1113

if.end1113:                                       ; preds = %if.end1112, %lor.lhs.false980, %if.then973
  store i8* null, i8** @exactpos, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end1114:                                       ; preds = %sw.epilog
  %648 = load %union.upat*, %union.upat** %next, align 4
  store %union.upat* %648, %union.upat** %scan, align 4
  br label %do.body1115

do.body1115:                                      ; preds = %if.end1114
  %649 = load i32, i32* @queue_front, align 4
  %650 = load i32, i32* @queue_rear, align 4
  %cmp1116 = icmp ne i32 %649, %650
  br i1 %cmp1116, label %if.then1118, label %if.end1148

if.then1118:                                      ; preds = %do.body1115
  %651 = load i32, i32* @patflags, align 4
  store i32 %651, i32* %savpatflags1120, align 4
  %652 = load i32, i32* @patglobflags, align 4
  store i32 %652, i32* %savpatglobflags1122, align 4
  %653 = load i8*, i8** @exactpos, align 4
  store i8* %653, i8** %savexactpos1124, align 4
  %654 = load i8*, i8** @exactend, align 4
  store i8* %654, i8** %savexactend1126, align 4
  %655 = bitcast %struct.rpat* %savpattrystate1128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %655, i8* bitcast (%struct.rpat* @pattrystate to i8*), i32 100, i32 4, i1 false)
  br label %do.body1129

do.body1129:                                      ; preds = %if.then1118
  store i32 0, i32* @queueing_enabled, align 4
  br label %do.body1130

do.body1130:                                      ; preds = %do.body1129
  br label %while.cond1131

while.cond1131:                                   ; preds = %while.body1134, %do.body1130
  %656 = load i32, i32* @queue_front, align 4
  %657 = load i32, i32* @queue_rear, align 4
  %cmp1132 = icmp ne i32 %656, %657
  br i1 %cmp1132, label %while.body1134, label %while.end1143

while.body1134:                                   ; preds = %while.cond1131
  %658 = load i32, i32* @queue_front, align 4
  %add1137 = add nsw i32 %658, 1
  %rem1138 = srem i32 %add1137, 128
  store i32 %rem1138, i32* @queue_front, align 4
  %659 = load i32, i32* @queue_front, align 4
  %arrayidx1139 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %659
  call void @signal_setmask(%struct.__sigset_t* sret %tmp1140, %struct.__sigset_t* byval align 4 %arrayidx1139)
  %660 = bitcast %struct.__sigset_t* %oset1136 to i8*
  %661 = bitcast %struct.__sigset_t* %tmp1140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %660, i8* %661, i32 128, i32 4, i1 false)
  %662 = load i32, i32* @queue_front, align 4
  %arrayidx1141 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %662
  %663 = load i32, i32* %arrayidx1141, align 4
  call void @zhandler(i32 %663)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp1142, %struct.__sigset_t* byval align 4 %oset1136)
  br label %while.cond1131

while.end1143:                                    ; preds = %while.cond1131
  br label %do.end1145

do.end1145:                                       ; preds = %while.end1143
  br label %do.end1147

do.end1147:                                       ; preds = %do.end1145
  %664 = load i32, i32* %q, align 4
  store i32 %664, i32* @queueing_enabled, align 4
  %665 = load i8*, i8** %savexactpos1124, align 4
  store i8* %665, i8** @exactpos, align 4
  %666 = load i8*, i8** %savexactend1126, align 4
  store i8* %666, i8** @exactend, align 4
  %667 = load i32, i32* %savpatflags1120, align 4
  store i32 %667, i32* @patflags, align 4
  %668 = load i32, i32* %savpatglobflags1122, align 4
  store i32 %668, i32* @patglobflags, align 4
  %669 = bitcast %struct.rpat* %savpattrystate1128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.rpat* @pattrystate to i8*), i8* %669, i32 100, i32 4, i1 false)
  br label %if.end1148

if.end1148:                                       ; preds = %do.end1147, %do.body1115
  br label %do.end1150

do.end1150:                                       ; preds = %if.end1148
  br label %while.cond8

while.end1151:                                    ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end1151, %if.end1113, %if.then1108, %if.then1102, %if.then998, %if.then970, %if.end959, %if.then958, %if.then951, %if.then933, %sw.bb898, %if.end881, %if.then863, %if.then795, %if.then721, %if.then702, %do.end642, %if.then597, %if.then511, %if.then372, %if.then365, %if.else351, %if.end350, %if.else330, %if.end329, %if.then302, %if.then280, %if.then252, %if.then230, %if.then30
  %670 = load i32, i32* %retval, align 4
  ret i32 %670
}

declare i8* @zshcalloc(i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @ztrdup(i8*) #1

declare %struct.param* @setaparam(i8*, i8**) #1

; Function Attrs: noinline nounwind
define i32 @patmatchlen() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 4), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind
define i32 @mb_patmatchrange(i8* %range, i32 %ch, i32 %zmb_ind, i32* %indptr, i32* %mtp) #0 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca i8*, align 4
  %ch.addr = alloca i32, align 4
  %zmb_ind.addr = alloca i32, align 4
  %indptr.addr = alloca i32*, align 4
  %mtp.addr = alloca i32*, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %swtype = alloca i32, align 4
  store i8* %range, i8** %range.addr, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store i32 %zmb_ind, i32* %zmb_ind.addr, align 4
  store i32* %indptr, i32** %indptr.addr, align 4
  store i32* %mtp, i32** %mtp.addr, align 4
  %0 = load i32*, i32** %indptr.addr, align 4
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %indptr.addr, align 4
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end148, %if.end
  %2 = load i8*, i8** %range.addr, align 4
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %range.addr, align 4
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 4096
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %7 = load i8*, i8** %range.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv4, 131
  store i32 %sub, i32* %swtype, align 4
  %9 = load i32*, i32** %mtp.addr, align 4
  %tobool5 = icmp ne i32* %9, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %10 = load i32, i32* %swtype, align 4
  %11 = load i32*, i32** %mtp.addr, align 4
  store i32 %10, i32* %11, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  %12 = load i32, i32* %swtype, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb17
    i32 3, label %sw.bb22
    i32 4, label %sw.bb28
    i32 5, label %sw.bb33
    i32 6, label %sw.bb38
    i32 7, label %sw.bb43
    i32 8, label %sw.bb48
    i32 9, label %sw.bb53
    i32 10, label %sw.bb58
    i32 11, label %sw.bb63
    i32 12, label %sw.bb68
    i32 13, label %sw.bb73
    i32 14, label %sw.bb78
    i32 15, label %sw.bb83
    i32 16, label %sw.bb88
    i32 17, label %sw.bb99
    i32 21, label %sw.bb104
    i32 18, label %sw.bb126
    i32 19, label %sw.bb131
    i32 20, label %sw.bb136
  ]

sw.bb:                                            ; preds = %if.end7
  %13 = load i8*, i8** %range.addr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr8, i8** %range.addr, align 4
  %call = call i32 @metacharinc(i8** %range.addr)
  %14 = load i32, i32* %ch.addr, align 4
  %cmp = icmp eq i32 %call, %14
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %sw.bb
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  %15 = load i32, i32* %ch.addr, align 4
  %call13 = call i32 @iswalpha(i32 %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb12
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %sw.bb12
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  %16 = load i32, i32* %ch.addr, align 4
  %call18 = call i32 @iswalnum(i32 %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb17
  store i32 1, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %sw.bb17
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end7
  %17 = load i32, i32* %ch.addr, align 4
  %and23 = and i32 %17, -128
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb22
  store i32 1, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb22
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end7
  %18 = load i32, i32* %ch.addr, align 4
  %call29 = call i32 @iswblank(i32 %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb28
  store i32 1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %sw.bb28
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end7
  %19 = load i32, i32* %ch.addr, align 4
  %call34 = call i32 @iswcntrl(i32 %19)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.bb33
  store i32 1, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %sw.bb33
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end7
  %20 = load i32, i32* %ch.addr, align 4
  %call39 = call i32 @iswdigit(i32 %20)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %sw.bb38
  store i32 1, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %sw.bb38
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end7
  %21 = load i32, i32* %ch.addr, align 4
  %call44 = call i32 @iswgraph(i32 %21)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %sw.bb43
  store i32 1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %sw.bb43
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end7
  %22 = load i32, i32* %ch.addr, align 4
  %call49 = call i32 @iswlower(i32 %22)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %sw.bb48
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %sw.bb48
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end7
  %23 = load i32, i32* %ch.addr, align 4
  %call54 = call i32 @iswprint(i32 %23)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %sw.bb53
  store i32 1, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %sw.bb53
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end7
  %24 = load i32, i32* %ch.addr, align 4
  %call59 = call i32 @iswpunct(i32 %24)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.bb58
  store i32 1, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %sw.bb58
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end7
  %25 = load i32, i32* %ch.addr, align 4
  %call64 = call i32 @iswspace(i32 %25)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %sw.bb63
  store i32 1, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %sw.bb63
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end7
  %26 = load i32, i32* %ch.addr, align 4
  %call69 = call i32 @iswupper(i32 %26)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %sw.bb68
  store i32 1, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %sw.bb68
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end7
  %27 = load i32, i32* %ch.addr, align 4
  %call74 = call i32 @iswxdigit(i32 %27)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb73
  store i32 1, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %sw.bb73
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end7
  %28 = load i32, i32* %ch.addr, align 4
  %call79 = call i32 @wcsitype(i32 %28, i32 128)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %sw.bb78
  store i32 1, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %sw.bb78
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end7
  %29 = load i32, i32* %ch.addr, align 4
  %call84 = call i32 @wcsitype(i32 %29, i32 32)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %sw.bb83
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %sw.bb83
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end7
  %30 = load i32, i32* %ch.addr, align 4
  %cmp89 = icmp slt i32 %30, 128
  br i1 %cmp89, label %land.lhs.true, label %if.end98

land.lhs.true:                                    ; preds = %sw.bb88
  %31 = load i32, i32* %ch.addr, align 4
  %conv91 = trunc i32 %31 to i8
  %idxprom92 = zext i8 %conv91 to i32
  %arrayidx93 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom92
  %32 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %32 to i32
  %and95 = and i32 %conv94, 8192
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %land.lhs.true, %sw.bb88
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end7
  %33 = load i32, i32* %ch.addr, align 4
  %call100 = call i32 @wcsitype(i32 %33, i32 1024)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %sw.bb99
  store i32 1, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %sw.bb99
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end7
  %call105 = call i32 @metacharinc(i8** %range.addr)
  store i32 %call105, i32* %r1, align 4
  %call106 = call i32 @metacharinc(i8** %range.addr)
  store i32 %call106, i32* %r2, align 4
  %34 = load i32, i32* %r1, align 4
  %35 = load i32, i32* %ch.addr, align 4
  %cmp107 = icmp sle i32 %34, %35
  br i1 %cmp107, label %land.lhs.true109, label %if.end117

land.lhs.true109:                                 ; preds = %sw.bb104
  %36 = load i32, i32* %ch.addr, align 4
  %37 = load i32, i32* %r2, align 4
  %cmp110 = icmp sle i32 %36, %37
  br i1 %cmp110, label %if.then112, label %if.end117

if.then112:                                       ; preds = %land.lhs.true109
  %38 = load i32*, i32** %indptr.addr, align 4
  %tobool113 = icmp ne i32* %38, null
  br i1 %tobool113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.then112
  %39 = load i32, i32* %ch.addr, align 4
  %40 = load i32, i32* %r1, align 4
  %sub115 = sub nsw i32 %39, %40
  %41 = load i32*, i32** %indptr.addr, align 4
  %42 = load i32, i32* %41, align 4
  %add = add i32 %42, %sub115
  store i32 %add, i32* %41, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.then112
  store i32 1, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %land.lhs.true109, %sw.bb104
  %43 = load i32*, i32** %indptr.addr, align 4
  %tobool118 = icmp ne i32* %43, null
  br i1 %tobool118, label %land.lhs.true119, label %if.end125

land.lhs.true119:                                 ; preds = %if.end117
  %44 = load i32, i32* %r1, align 4
  %45 = load i32, i32* %r2, align 4
  %cmp120 = icmp slt i32 %44, %45
  br i1 %cmp120, label %if.then122, label %if.end125

if.then122:                                       ; preds = %land.lhs.true119
  %46 = load i32, i32* %r2, align 4
  %47 = load i32, i32* %r1, align 4
  %sub123 = sub nsw i32 %46, %47
  %48 = load i32*, i32** %indptr.addr, align 4
  %49 = load i32, i32* %48, align 4
  %add124 = add i32 %49, %sub123
  store i32 %add124, i32* %48, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %land.lhs.true119, %if.end117
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end7
  %50 = load i32, i32* %zmb_ind.addr, align 4
  %cmp127 = icmp eq i32 %50, 1
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %sw.bb126
  store i32 1, i32* %retval, align 4
  br label %return

if.end130:                                        ; preds = %sw.bb126
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end7
  %51 = load i32, i32* %zmb_ind.addr, align 4
  %cmp132 = icmp eq i32 %51, 2
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %sw.bb131
  store i32 1, i32* %retval, align 4
  br label %return

if.end135:                                        ; preds = %sw.bb131
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb136, %if.end135, %if.end130, %if.end125, %if.end103, %if.end98, %if.end87, %if.end82, %if.end77, %if.end72, %if.end67, %if.end62, %if.end57, %if.end52, %if.end47, %if.end42, %if.end37, %if.end32, %if.end27, %if.end21, %if.end16, %if.end11
  br label %if.end145

if.else:                                          ; preds = %while.body
  %call137 = call i32 @metacharinc(i8** %range.addr)
  %52 = load i32, i32* %ch.addr, align 4
  %cmp138 = icmp eq i32 %call137, %52
  br i1 %cmp138, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.else
  %53 = load i32*, i32** %mtp.addr, align 4
  %tobool141 = icmp ne i32* %53, null
  br i1 %tobool141, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.then140
  %54 = load i32*, i32** %mtp.addr, align 4
  store i32 0, i32* %54, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %if.then140
  store i32 1, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.else
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %sw.epilog
  %55 = load i32*, i32** %indptr.addr, align 4
  %tobool146 = icmp ne i32* %55, null
  br i1 %tobool146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end145
  %56 = load i32*, i32** %indptr.addr, align 4
  %57 = load i32, i32* %56, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %56, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end145
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end143, %if.then134, %if.then129, %if.end116, %if.then102, %if.then97, %if.then86, %if.then81, %if.then76, %if.then71, %if.then66, %if.then61, %if.then56, %if.then51, %if.then46, %if.then41, %if.then36, %if.then31, %if.then26, %if.then20, %if.then15, %if.then10
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind
define internal i32 @metacharinc(i8** %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i8**, align 4
  %inptr = alloca i8*, align 4
  %inchar = alloca i8, align 1
  %ret = alloca i32, align 4
  %wc = alloca i32, align 4
  store i8** %x, i8*** %x.addr, align 4
  %0 = load i8**, i8*** %x.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %inptr, align 4
  store i32 -1, i32* %ret, align 4
  %2 = load i32, i32* @patglobflags, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %inptr, align 4
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %and1 = and i32 %conv, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end20, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8*, i8** %inptr, align 4
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv3 = sext i16 %7 to i32
  %and4 = and i32 %conv3, 16
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %inptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 4
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv7, -124
  %arrayidx8 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub
  %10 = load i8, i8* %arrayidx8, align 1
  store i8 %10, i8* %inchar, align 1
  br label %if.end18

if.else:                                          ; preds = %if.then
  %11 = load i8*, i8** %inptr, align 4
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv9, -125
  br i1 %cmp, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else
  %13 = load i8*, i8** %inptr, align 4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr12, i8** %inptr, align 4
  %14 = load i8*, i8** %inptr, align 4
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %inptr, align 4
  %15 = load i8, i8* %14, align 1
  %conv14 = sext i8 %15 to i32
  %xor = xor i32 %conv14, 32
  %conv15 = trunc i32 %xor to i8
  store i8 %conv15, i8* %inchar, align 1
  br label %if.end

if.else16:                                        ; preds = %if.else
  %16 = load i8*, i8** %inptr, align 4
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %inptr, align 4
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %inchar, align 1
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then6
  %18 = load i8*, i8** %inptr, align 4
  %19 = load i8**, i8*** %x.addr, align 4
  store i8* %18, i8** %19, align 4
  %20 = load i8, i8* %inchar, align 1
  %conv19 = zext i8 %20 to i32
  store i32 %conv19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.then52, %if.end20
  %21 = load i8*, i8** %inptr, align 4
  %22 = load i8, i8* %21, align 1
  %tobool21 = icmp ne i8 %22, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %inptr, align 4
  %24 = load i8, i8* %23, align 1
  %idxprom22 = zext i8 %24 to i32
  %arrayidx23 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom22
  %25 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %25 to i32
  %and25 = and i32 %conv24, 16
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.else32

if.then27:                                        ; preds = %while.body
  %26 = load i8*, i8** %inptr, align 4
  %incdec.ptr28 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr28, i8** %inptr, align 4
  %27 = load i8, i8* %26, align 1
  %conv29 = sext i8 %27 to i32
  %sub30 = sub nsw i32 %conv29, -124
  %arrayidx31 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub30
  %28 = load i8, i8* %arrayidx31, align 1
  store i8 %28, i8* %inchar, align 1
  br label %if.end45

if.else32:                                        ; preds = %while.body
  %29 = load i8*, i8** %inptr, align 4
  %30 = load i8, i8* %29, align 1
  %conv33 = sext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, -125
  br i1 %cmp34, label %if.then36, label %if.else42

if.then36:                                        ; preds = %if.else32
  %31 = load i8*, i8** %inptr, align 4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr37, i8** %inptr, align 4
  %32 = load i8*, i8** %inptr, align 4
  %incdec.ptr38 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr38, i8** %inptr, align 4
  %33 = load i8, i8* %32, align 1
  %conv39 = sext i8 %33 to i32
  %xor40 = xor i32 %conv39, 32
  %conv41 = trunc i32 %xor40 to i8
  store i8 %conv41, i8* %inchar, align 1
  br label %if.end44

if.else42:                                        ; preds = %if.else32
  %34 = load i8*, i8** %inptr, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr43, i8** %inptr, align 4
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %inchar, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then27
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* @shiftstate)
  store i32 %call, i32* %ret, align 4
  %36 = load i32, i32* %ret, align 4
  %cmp46 = icmp eq i32 %36, -1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  br label %while.end

if.end49:                                         ; preds = %if.end45
  %37 = load i32, i32* %ret, align 4
  %cmp50 = icmp eq i32 %37, -2
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  br label %while.cond

if.end53:                                         ; preds = %if.end49
  %38 = load i8*, i8** %inptr, align 4
  %39 = load i8**, i8*** %x.addr, align 4
  store i8* %38, i8** %39, align 4
  %40 = load i32, i32* %wc, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

while.end:                                        ; preds = %if.then48, %while.cond
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %41 = load i8**, i8*** %x.addr, align 4
  %42 = load i8*, i8** %41, align 4
  %incdec.ptr54 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr54, i8** %41, align 4
  %43 = load i8, i8* %42, align 1
  %conv55 = zext i8 %43 to i32
  %add = add nsw i32 56320, %conv55
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end53, %if.end18
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

declare i32 @iswalpha(i32) #1

declare i32 @iswalnum(i32) #1

declare i32 @iswblank(i32) #1

declare i32 @iswcntrl(i32) #1

declare i32 @iswdigit(i32) #1

declare i32 @iswgraph(i32) #1

declare i32 @iswlower(i32) #1

declare i32 @iswprint(i32) #1

declare i32 @iswpunct(i32) #1

declare i32 @iswspace(i32) #1

declare i32 @iswupper(i32) #1

declare i32 @iswxdigit(i32) #1

declare i32 @wcsitype(i32, i32) #1

; Function Attrs: noinline nounwind
define i32 @mb_patmatchindex(i8* %range, i32 %ind, i32* %chr, i32* %mtp) #0 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca i8*, align 4
  %ind.addr = alloca i32, align 4
  %chr.addr = alloca i32*, align 4
  %mtp.addr = alloca i32*, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %rchr = alloca i32, align 4
  %rdiff = alloca i32, align 4
  %swtype = alloca i32, align 4
  store i8* %range, i8** %range.addr, align 4
  store i32 %ind, i32* %ind.addr, align 4
  store i32* %chr, i32** %chr.addr, align 4
  store i32* %mtp, i32** %mtp.addr, align 4
  %0 = load i32*, i32** %chr.addr, align 4
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %mtp.addr, align 4
  store i32 0, i32* %1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %entry
  %2 = load i8*, i8** %range.addr, align 4
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %range.addr, align 4
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 4096
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %range.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv2 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv2, 131
  store i32 %sub, i32* %swtype, align 4
  %9 = load i32, i32* %swtype, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb6
    i32 3, label %sw.bb6
    i32 4, label %sw.bb6
    i32 5, label %sw.bb6
    i32 6, label %sw.bb6
    i32 7, label %sw.bb6
    i32 8, label %sw.bb6
    i32 9, label %sw.bb6
    i32 10, label %sw.bb6
    i32 11, label %sw.bb6
    i32 12, label %sw.bb6
    i32 13, label %sw.bb6
    i32 14, label %sw.bb6
    i32 15, label %sw.bb6
    i32 16, label %sw.bb6
    i32 17, label %sw.bb6
    i32 18, label %sw.bb6
    i32 19, label %sw.bb6
    i32 21, label %sw.bb10
    i32 20, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load i8*, i8** %range.addr, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr3, i8** %range.addr, align 4
  %call = call i32 @metacharinc(i8** %range.addr)
  store i32 %call, i32* %rchr, align 4
  %11 = load i32, i32* %ind.addr, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %sw.bb
  %12 = load i32, i32* %rchr, align 4
  %13 = load i32*, i32** %chr.addr, align 4
  store i32 %12, i32* %13, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %14 = load i32, i32* %ind.addr, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %sw.bb6
  %15 = load i32, i32* %swtype, align 4
  %16 = load i32*, i32** %mtp.addr, align 4
  store i32 %15, i32* %16, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %sw.bb6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  %call11 = call i32 @metacharinc(i8** %range.addr)
  store i32 %call11, i32* %r1, align 4
  %call12 = call i32 @metacharinc(i8** %range.addr)
  store i32 %call12, i32* %r2, align 4
  %17 = load i32, i32* %r2, align 4
  %18 = load i32, i32* %r1, align 4
  %sub13 = sub i32 %17, %18
  store i32 %sub13, i32* %rdiff, align 4
  %19 = load i32, i32* %rdiff, align 4
  %20 = load i32, i32* %ind.addr, align 4
  %cmp = icmp uge i32 %19, %20
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb10
  %21 = load i32, i32* %r1, align 4
  %22 = load i32, i32* %ind.addr, align 4
  %add = add i32 %21, %22
  %23 = load i32*, i32** %chr.addr, align 4
  store i32 %add, i32* %23, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %sw.bb10
  %24 = load i32, i32* %rdiff, align 4
  %25 = load i32, i32* %ind.addr, align 4
  %sub17 = sub i32 %25, %24
  store i32 %sub17, i32* %ind.addr, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %if.end16, %if.end9, %if.end
  br label %if.end23

if.else:                                          ; preds = %while.body
  %call19 = call i32 @metacharinc(i8** %range.addr)
  store i32 %call19, i32* %rchr, align 4
  %26 = load i32, i32* %ind.addr, align 4
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.else
  %27 = load i32, i32* %rchr, align 4
  %28 = load i32*, i32** %chr.addr, align 4
  store i32 %27, i32* %28, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %sw.epilog
  %29 = load i32, i32* %ind.addr, align 4
  %dec = add i32 %29, -1
  store i32 %dec, i32* %ind.addr, align 4
  %tobool24 = icmp ne i32 %29, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  br label %while.end

if.end26:                                         ; preds = %if.end23
  br label %while.cond

while.end:                                        ; preds = %if.then25, %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then21, %if.then15, %if.then8, %if.then5
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind
define i32 @patmatchrange(i8* %range, i32 %ch, i32* %indptr, i32* %mtp) #0 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca i8*, align 4
  %ch.addr = alloca i32, align 4
  %indptr.addr = alloca i32*, align 4
  %mtp.addr = alloca i32*, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %swtype = alloca i32, align 4
  store i8* %range, i8** %range.addr, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store i32* %indptr, i32** %indptr.addr, align 4
  store i32* %mtp, i32** %mtp.addr, align 4
  %0 = load i32*, i32** %indptr.addr, align 4
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %indptr.addr, align 4
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i8*, i8** %range.addr, align 4
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %range.addr, align 4
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 4096
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %7 = load i8*, i8** %range.addr, align 4
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv4, 131
  store i32 %sub, i32* %swtype, align 4
  %9 = load i32*, i32** %mtp.addr, align 4
  %tobool5 = icmp ne i32* %9, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %10 = load i32, i32* %swtype, align 4
  %11 = load i32*, i32** %mtp.addr, align 4
  store i32 %10, i32* %11, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  %12 = load i32, i32* %swtype, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb18
    i32 3, label %sw.bb23
    i32 4, label %sw.bb29
    i32 5, label %sw.bb34
    i32 6, label %sw.bb39
    i32 7, label %sw.bb44
    i32 8, label %sw.bb49
    i32 9, label %sw.bb54
    i32 10, label %sw.bb59
    i32 11, label %sw.bb64
    i32 12, label %sw.bb69
    i32 13, label %sw.bb74
    i32 14, label %sw.bb79
    i32 15, label %sw.bb88
    i32 16, label %sw.bb97
    i32 17, label %sw.bb106
    i32 21, label %sw.bb115
    i32 18, label %sw.bb164
    i32 19, label %sw.bb164
    i32 20, label %sw.bb165
  ]

sw.bb:                                            ; preds = %if.end7
  %13 = load i8*, i8** %range.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4
  %14 = load i8, i8* %incdec.ptr, align 1
  %conv8 = sext i8 %14 to i32
  %xor = xor i32 %conv8, 32
  %conv9 = trunc i32 %xor to i8
  %conv10 = zext i8 %conv9 to i32
  %15 = load i32, i32* %ch.addr, align 4
  %cmp = icmp eq i32 %conv10, %15
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end7
  %16 = load i32, i32* %ch.addr, align 4
  %call = call i32 @isalpha(i32 %16) #4
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %sw.bb14
  store i32 1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %sw.bb14
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end7
  %17 = load i32, i32* %ch.addr, align 4
  %call19 = call i32 @isalnum(i32 %17) #4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb18
  store i32 1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %sw.bb18
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end7
  %18 = load i32, i32* %ch.addr, align 4
  %and24 = and i32 %18, -128
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %sw.bb23
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %sw.bb23
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end7
  %19 = load i32, i32* %ch.addr, align 4
  %call30 = call i32 @isblank(i32 %19) #4
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb29
  store i32 1, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %sw.bb29
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end7
  %20 = load i32, i32* %ch.addr, align 4
  %call35 = call i32 @iscntrl(i32 %20) #4
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb34
  store i32 1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %sw.bb34
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end7
  %21 = load i32, i32* %ch.addr, align 4
  %call40 = call i32 @isdigit(i32 %21) #4
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb39
  store i32 1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb39
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end7
  %22 = load i32, i32* %ch.addr, align 4
  %call45 = call i32 @isgraph(i32 %22) #4
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %sw.bb44
  store i32 1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %sw.bb44
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end7
  %23 = load i32, i32* %ch.addr, align 4
  %call50 = call i32 @islower(i32 %23) #4
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %sw.bb49
  store i32 1, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %sw.bb49
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end7
  %24 = load i32, i32* %ch.addr, align 4
  %call55 = call i32 @isprint(i32 %24) #4
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %sw.bb54
  store i32 1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %sw.bb54
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end7
  %25 = load i32, i32* %ch.addr, align 4
  %call60 = call i32 @ispunct(i32 %25) #4
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb59
  store i32 1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %sw.bb59
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end7
  %26 = load i32, i32* %ch.addr, align 4
  %call65 = call i32 @isspace(i32 %26) #4
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %sw.bb64
  store i32 1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %sw.bb64
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end7
  %27 = load i32, i32* %ch.addr, align 4
  %call70 = call i32 @isupper(i32 %27) #4
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %sw.bb69
  store i32 1, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %sw.bb69
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end7
  %28 = load i32, i32* %ch.addr, align 4
  %call75 = call i32 @isxdigit(i32 %28) #4
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %sw.bb74
  store i32 1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %sw.bb74
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end7
  %29 = load i32, i32* %ch.addr, align 4
  %conv80 = trunc i32 %29 to i8
  %idxprom81 = zext i8 %conv80 to i32
  %arrayidx82 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom81
  %30 = load i16, i16* %arrayidx82, align 2
  %conv83 = sext i16 %30 to i32
  %and84 = and i32 %conv83, 128
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %sw.bb79
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %sw.bb79
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end7
  %31 = load i32, i32* %ch.addr, align 4
  %conv89 = trunc i32 %31 to i8
  %idxprom90 = zext i8 %conv89 to i32
  %arrayidx91 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom90
  %32 = load i16, i16* %arrayidx91, align 2
  %conv92 = sext i16 %32 to i32
  %and93 = and i32 %conv92, 32
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %sw.bb88
  store i32 1, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %sw.bb88
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end7
  %33 = load i32, i32* %ch.addr, align 4
  %conv98 = trunc i32 %33 to i8
  %idxprom99 = zext i8 %conv98 to i32
  %arrayidx100 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom99
  %34 = load i16, i16* %arrayidx100, align 2
  %conv101 = sext i16 %34 to i32
  %and102 = and i32 %conv101, 8192
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %sw.bb97
  store i32 1, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %sw.bb97
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end7
  %35 = load i32, i32* %ch.addr, align 4
  %conv107 = trunc i32 %35 to i8
  %idxprom108 = zext i8 %conv107 to i32
  %arrayidx109 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom108
  %36 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %36 to i32
  %and111 = and i32 %conv110, 1024
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %sw.bb106
  store i32 1, i32* %retval, align 4
  br label %return

if.end114:                                        ; preds = %sw.bb106
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end7
  %37 = load i8*, i8** %range.addr, align 4
  %incdec.ptr116 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr116, i8** %range.addr, align 4
  %38 = load i8*, i8** %range.addr, align 4
  %39 = load i8, i8* %38, align 1
  %conv117 = sext i8 %39 to i32
  %cmp118 = icmp eq i32 %conv117, -125
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb115
  %40 = load i8*, i8** %range.addr, align 4
  %arrayidx120 = getelementptr inbounds i8, i8* %40, i32 1
  %41 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %41 to i32
  %xor122 = xor i32 %conv121, 32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb115
  %42 = load i8*, i8** %range.addr, align 4
  %43 = load i8, i8* %42, align 1
  %conv123 = sext i8 %43 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor122, %cond.true ], [ %conv123, %cond.false ]
  %conv124 = trunc i32 %cond to i8
  %conv125 = zext i8 %conv124 to i32
  store i32 %conv125, i32* %r1, align 4
  %call126 = call i32 @metacharinc(i8** %range.addr)
  %44 = load i8*, i8** %range.addr, align 4
  %45 = load i8, i8* %44, align 1
  %conv127 = sext i8 %45 to i32
  %cmp128 = icmp eq i32 %conv127, -125
  br i1 %cmp128, label %cond.true130, label %cond.false134

cond.true130:                                     ; preds = %cond.end
  %46 = load i8*, i8** %range.addr, align 4
  %arrayidx131 = getelementptr inbounds i8, i8* %46, i32 1
  %47 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %47 to i32
  %xor133 = xor i32 %conv132, 32
  br label %cond.end136

cond.false134:                                    ; preds = %cond.end
  %48 = load i8*, i8** %range.addr, align 4
  %49 = load i8, i8* %48, align 1
  %conv135 = sext i8 %49 to i32
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false134, %cond.true130
  %cond137 = phi i32 [ %xor133, %cond.true130 ], [ %conv135, %cond.false134 ]
  %conv138 = trunc i32 %cond137 to i8
  %conv139 = zext i8 %conv138 to i32
  store i32 %conv139, i32* %r2, align 4
  %50 = load i8*, i8** %range.addr, align 4
  %51 = load i8, i8* %50, align 1
  %conv140 = sext i8 %51 to i32
  %cmp141 = icmp eq i32 %conv140, -125
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %cond.end136
  %52 = load i8*, i8** %range.addr, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr144, i8** %range.addr, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %cond.end136
  %53 = load i32, i32* %r1, align 4
  %54 = load i32, i32* %ch.addr, align 4
  %cmp146 = icmp sle i32 %53, %54
  br i1 %cmp146, label %land.lhs.true, label %if.end155

land.lhs.true:                                    ; preds = %if.end145
  %55 = load i32, i32* %ch.addr, align 4
  %56 = load i32, i32* %r2, align 4
  %cmp148 = icmp sle i32 %55, %56
  br i1 %cmp148, label %if.then150, label %if.end155

if.then150:                                       ; preds = %land.lhs.true
  %57 = load i32*, i32** %indptr.addr, align 4
  %tobool151 = icmp ne i32* %57, null
  br i1 %tobool151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.then150
  %58 = load i32, i32* %ch.addr, align 4
  %59 = load i32, i32* %r1, align 4
  %sub153 = sub nsw i32 %58, %59
  %60 = load i32*, i32** %indptr.addr, align 4
  %61 = load i32, i32* %60, align 4
  %add = add nsw i32 %61, %sub153
  store i32 %add, i32* %60, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.then150
  store i32 1, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %land.lhs.true, %if.end145
  %62 = load i32*, i32** %indptr.addr, align 4
  %tobool156 = icmp ne i32* %62, null
  br i1 %tobool156, label %land.lhs.true157, label %if.end163

land.lhs.true157:                                 ; preds = %if.end155
  %63 = load i32, i32* %r1, align 4
  %64 = load i32, i32* %r2, align 4
  %cmp158 = icmp slt i32 %63, %64
  br i1 %cmp158, label %if.then160, label %if.end163

if.then160:                                       ; preds = %land.lhs.true157
  %65 = load i32, i32* %r2, align 4
  %66 = load i32, i32* %r1, align 4
  %sub161 = sub nsw i32 %65, %66
  %67 = load i32*, i32** %indptr.addr, align 4
  %68 = load i32, i32* %67, align 4
  %add162 = add nsw i32 %68, %sub161
  store i32 %add162, i32* %67, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %land.lhs.true157, %if.end155
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end7, %if.end7
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb165, %sw.bb164, %if.end163, %if.end114, %if.end105, %if.end96, %if.end87, %if.end78, %if.end73, %if.end68, %if.end63, %if.end58, %if.end53, %if.end48, %if.end43, %if.end38, %if.end33, %if.end28, %if.end22, %if.end17, %if.end13
  br label %if.end174

if.else:                                          ; preds = %for.body
  %69 = load i8*, i8** %range.addr, align 4
  %70 = load i8, i8* %69, align 1
  %conv166 = zext i8 %70 to i32
  %71 = load i32, i32* %ch.addr, align 4
  %cmp167 = icmp eq i32 %conv166, %71
  br i1 %cmp167, label %if.then169, label %if.end173

if.then169:                                       ; preds = %if.else
  %72 = load i32*, i32** %mtp.addr, align 4
  %tobool170 = icmp ne i32* %72, null
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.then169
  %73 = load i32*, i32** %mtp.addr, align 4
  store i32 0, i32* %73, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.then169
  store i32 1, i32* %retval, align 4
  br label %return

if.end173:                                        ; preds = %if.else
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %sw.epilog
  %74 = load i32*, i32** %indptr.addr, align 4
  %tobool175 = icmp ne i32* %74, null
  br i1 %tobool175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end174
  %75 = load i32*, i32** %indptr.addr, align 4
  %76 = load i32, i32* %75, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %75, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end174
  br label %for.inc

for.inc:                                          ; preds = %if.end177
  %77 = load i8*, i8** %range.addr, align 4
  %incdec.ptr178 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr178, i8** %range.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end172, %if.end154, %if.then113, %if.then104, %if.then95, %if.then86, %if.then77, %if.then72, %if.then67, %if.then62, %if.then57, %if.then52, %if.then47, %if.then42, %if.then37, %if.then32, %if.then27, %if.then21, %if.then16, %if.then12
  %78 = load i32, i32* %retval, align 4
  ret i32 %78
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isblank(i32) #3

; Function Attrs: nounwind readonly
declare i32 @iscntrl(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isgraph(i32) #3

; Function Attrs: nounwind readonly
declare i32 @islower(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isprint(i32) #3

; Function Attrs: nounwind readonly
declare i32 @ispunct(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isupper(i32) #3

; Function Attrs: nounwind readonly
declare i32 @isxdigit(i32) #3

; Function Attrs: noinline nounwind
define void @freepatprog(%struct.patprog* %prog) #0 {
entry:
  %prog.addr = alloca %struct.patprog*, align 4
  store %struct.patprog* %prog, %struct.patprog** %prog.addr, align 4
  %0 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %tobool = icmp ne %struct.patprog* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %cmp = icmp ne %struct.patprog* %1, inttoptr (i32 1 to %struct.patprog*)
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %cmp2 = icmp ne %struct.patprog* %2, inttoptr (i32 2 to %struct.patprog*)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %3 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %4 = bitcast %struct.patprog* %3 to i8*
  %5 = load %struct.patprog*, %struct.patprog** %prog.addr, align 4
  %size = getelementptr inbounds %struct.patprog, %struct.patprog* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  call void @zfree(i8* %4, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @pat_enables(i8* %cmd, i8** %patp, i32 %enable) #0 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca i8*, align 4
  %patp.addr = alloca i8**, align 4
  %enable.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %stringp = alloca i8**, align 4
  %disp = alloca i8*, align 4
  %done = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 4
  store i8** %patp, i8*** %patp.addr, align 4
  store i32 %enable, i32* %enable.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8**, i8*** %patp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %done, align 4
  store i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 0), i8*** %stringp, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8** %disp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i8**, i8*** %stringp, align 4
  %cmp = icmp ult i8** %2, getelementptr inbounds (i8*, i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 0), i32 19)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %stringp, align 4
  %4 = load i8*, i8** %3, align 4
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %enable.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i8*, i8** %disp, align 4
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %if.then6, label %if.end7

cond.false:                                       ; preds = %if.end
  %8 = load i8*, i8** %disp, align 4
  %9 = load i8, i8* %8, align 1
  %tobool5 = icmp ne i8 %9, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %cond.false, %cond.true
  br label %for.inc

if.end7:                                          ; preds = %cond.false, %cond.true
  %10 = load i32, i32* %done, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call = call i32 @putc(i32 32, %struct._IO_FILE* %11)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %12 = load i8**, i8*** %stringp, align 4
  %13 = load i8*, i8** %12, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* %13)
  store i32 1, i32* %done, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.then6, %if.then2
  %14 = load i8**, i8*** %stringp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr, i8*** %stringp, align 4
  %15 = load i8*, i8** %disp, align 4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr12, i8** %disp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %done, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4
  %call15 = call i32 @putc(i32 10, %struct._IO_FILE* %17)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %entry
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc40, %if.end17
  %18 = load i8**, i8*** %patp.addr, align 4
  %19 = load i8*, i8** %18, align 4
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %for.body20, label %for.end42

for.body20:                                       ; preds = %for.cond18
  store i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 0), i8*** %stringp, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8** %disp, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %20 = load i8**, i8*** %stringp, align 4
  %cmp22 = icmp ult i8** %20, getelementptr inbounds (i8*, i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 0), i32 19)
  br i1 %cmp22, label %for.body24, label %for.end35

for.body24:                                       ; preds = %for.cond21
  %21 = load i8**, i8*** %stringp, align 4
  %22 = load i8*, i8** %21, align 4
  %tobool25 = icmp ne i8* %22, null
  br i1 %tobool25, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %for.body24
  %23 = load i8**, i8*** %stringp, align 4
  %24 = load i8*, i8** %23, align 4
  %25 = load i8**, i8*** %patp.addr, align 4
  %26 = load i8*, i8** %25, align 4
  %call26 = call i32 @strcmp(i8* %24, i8* %26)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  %27 = load i32, i32* %enable.addr, align 4
  %tobool29 = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool29, true
  %lnot.ext = zext i1 %lnot to i32
  %conv30 = trunc i32 %lnot.ext to i8
  %28 = load i8*, i8** %disp, align 4
  store i8 %conv30, i8* %28, align 1
  br label %for.end35

if.end31:                                         ; preds = %land.lhs.true, %for.body24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %29 = load i8**, i8*** %stringp, align 4
  %incdec.ptr33 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr33, i8*** %stringp, align 4
  %30 = load i8*, i8** %disp, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr34, i8** %disp, align 4
  br label %for.cond21

for.end35:                                        ; preds = %if.then28, %for.cond21
  %31 = load i8**, i8*** %stringp, align 4
  %cmp36 = icmp eq i8** %31, getelementptr inbounds (i8*, i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @zpc_strings, i32 0, i32 0), i32 19)
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end35
  %32 = load i8*, i8** %cmd.addr, align 4
  %33 = load i8**, i8*** %patp.addr, align 4
  %34 = load i8*, i8** %33, align 4
  call void (i8*, i8*, ...) @zerrnam(i8* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %34)
  store i32 1, i32* %ret, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.end35
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %35 = load i8**, i8*** %patp.addr, align 4
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr41, i8*** %patp.addr, align 4
  br label %for.cond18

for.end42:                                        ; preds = %for.cond18
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end42, %if.end16
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

declare i32 @putc(i32, %struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @zerrnam(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind
define i32 @savepatterndisables() #0 {
entry:
  %disables = alloca i32, align 4
  %bit = alloca i32, align 4
  %disp = alloca i8*, align 4
  store i32 0, i32* %disables, align 4
  store i32 1, i32* %bit, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8** %disp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %disp, align 4
  %cmp = icmp ult i8* %0, getelementptr inbounds (i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i32 19)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %disp, align 4
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %bit, align 4
  %4 = load i32, i32* %disables, align 4
  %or = or i32 %4, %3
  store i32 %or, i32* %disables, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %bit, align 4
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %bit, align 4
  %6 = load i8*, i8** %disp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %disp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %disables, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define void @startpatternscope() #0 {
entry:
  %newdis = alloca %struct.zpc_disables_save*, align 4
  %call = call i8* @zalloc(i32 8)
  %0 = bitcast i8* %call to %struct.zpc_disables_save*
  store %struct.zpc_disables_save* %0, %struct.zpc_disables_save** %newdis, align 4
  %1 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** @zpc_disables_stack, align 4
  %2 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %newdis, align 4
  %next = getelementptr inbounds %struct.zpc_disables_save, %struct.zpc_disables_save* %2, i32 0, i32 0
  store %struct.zpc_disables_save* %1, %struct.zpc_disables_save** %next, align 4
  %call1 = call i32 @savepatterndisables()
  %3 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %newdis, align 4
  %disables = getelementptr inbounds %struct.zpc_disables_save, %struct.zpc_disables_save* %3, i32 0, i32 1
  store i32 %call1, i32* %disables, align 4
  %4 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %newdis, align 4
  store %struct.zpc_disables_save* %4, %struct.zpc_disables_save** @zpc_disables_stack, align 4
  ret void
}

; Function Attrs: noinline nounwind
define void @restorepatterndisables(i32 %disables) #0 {
entry:
  %disables.addr = alloca i32, align 4
  %disp = alloca i8*, align 4
  %bit = alloca i32, align 4
  store i32 %disables, i32* %disables.addr, align 4
  store i32 1, i32* %bit, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8** %disp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %disp, align 4
  %cmp = icmp ult i8* %0, getelementptr inbounds (i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i32 19)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %disables.addr, align 4
  %2 = load i32, i32* %bit, align 4
  %and = and i32 %1, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %disp, align 4
  store i8 1, i8* %3, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %4 = load i8*, i8** %disp, align 4
  store i8 0, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %bit, align 4
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %bit, align 4
  %6 = load i8*, i8** %disp, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %disp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @endpatternscope() #0 {
entry:
  %olddis = alloca %struct.zpc_disables_save*, align 4
  %0 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** @zpc_disables_stack, align 4
  store %struct.zpc_disables_save* %0, %struct.zpc_disables_save** %olddis, align 4
  %1 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %olddis, align 4
  %next = getelementptr inbounds %struct.zpc_disables_save, %struct.zpc_disables_save* %1, i32 0, i32 0
  %2 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %next, align 4
  store %struct.zpc_disables_save* %2, %struct.zpc_disables_save** @zpc_disables_stack, align 4
  %3 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 109), align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %olddis, align 4
  %disables = getelementptr inbounds %struct.zpc_disables_save, %struct.zpc_disables_save* %4, i32 0, i32 1
  %5 = load i32, i32* %disables, align 4
  call void @restorepatterndisables(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.zpc_disables_save*, %struct.zpc_disables_save** %olddis, align 4
  %7 = bitcast %struct.zpc_disables_save* %6 to i8*
  call void @zfree(i8* %7, i32 8)
  ret void
}

; Function Attrs: noinline nounwind
define void @clearpatterndisables() #0 {
entry:
  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 0), i8 0, i32 19, i32 1, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define i32 @haswilds(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %start = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, -111
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, -110
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %str.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 1
  %5 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i8*, i8** %str.addr, align 4
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i32 0
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 37
  br i1 %cmp7, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %8 = load i8*, i8** %str.addr, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i32 1
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, -105
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true9
  %10 = load i8*, i8** %str.addr, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %10, i32 1
  store i8 63, i8* %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true9, %if.end
  %11 = load i8*, i8** %str.addr, align 4
  store i8* %11, i8** %start, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %12 = load i8*, i8** %str.addr, align 4
  %13 = load i8, i8* %12, align 1
  %tobool17 = icmp ne i8 %13, 0
  br i1 %tobool17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %str.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv18 = sext i8 %15 to i32
  switch i32 %conv18, label %sw.epilog [
    i32 -120, label %sw.bb
    i32 -114, label %sw.bb72
    i32 -121, label %sw.bb76
    i32 -111, label %sw.bb80
    i32 -108, label %sw.bb84
    i32 -105, label %sw.bb88
    i32 -124, label %sw.bb92
    i32 -122, label %sw.bb99
  ]

sw.bb:                                            ; preds = %for.body
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %tobool19 = icmp ne i8 %16, 0
  br i1 %tobool19, label %lor.lhs.false22, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %sw.bb
  %17 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 5), align 1
  %tobool21 = icmp ne i8 %17, 0
  br i1 %tobool21, label %lor.lhs.false22, label %if.then70

lor.lhs.false22:                                  ; preds = %land.lhs.true20, %sw.bb
  %18 = load i8*, i8** %str.addr, align 4
  %19 = load i8*, i8** %start, align 4
  %cmp23 = icmp ugt i8* %18, %19
  br i1 %cmp23, label %land.lhs.true25, label %if.end71

land.lhs.true25:                                  ; preds = %lor.lhs.false22
  %20 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 98), align 1
  %conv26 = sext i8 %20 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end71

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %21 = load i8*, i8** %str.addr, align 4
  %arrayidx29 = getelementptr inbounds i8, i8* %21, i32 -1
  %22 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %22 to i32
  %cmp31 = icmp eq i32 %conv30, -105
  br i1 %cmp31, label %land.lhs.true33, label %lor.lhs.false35

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %23 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 13), align 1
  %tobool34 = icmp ne i8 %23, 0
  br i1 %tobool34, label %lor.lhs.false35, label %if.then70

lor.lhs.false35:                                  ; preds = %land.lhs.true33, %land.lhs.true28
  %24 = load i8*, i8** %str.addr, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i32 -1
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp eq i32 %conv37, -121
  br i1 %cmp38, label %land.lhs.true40, label %lor.lhs.false42

land.lhs.true40:                                  ; preds = %lor.lhs.false35
  %26 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 14), align 1
  %tobool41 = icmp ne i8 %26, 0
  br i1 %tobool41, label %lor.lhs.false42, label %if.then70

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %lor.lhs.false35
  %27 = load i8*, i8** %str.addr, align 4
  %arrayidx43 = getelementptr inbounds i8, i8* %27, i32 -1
  %28 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %28 to i32
  %cmp45 = icmp eq i32 %conv44, 43
  br i1 %cmp45, label %land.lhs.true47, label %lor.lhs.false49

land.lhs.true47:                                  ; preds = %lor.lhs.false42
  %29 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 15), align 1
  %tobool48 = icmp ne i8 %29, 0
  br i1 %tobool48, label %lor.lhs.false49, label %if.then70

lor.lhs.false49:                                  ; preds = %land.lhs.true47, %lor.lhs.false42
  %30 = load i8*, i8** %str.addr, align 4
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i32 -1
  %31 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %31 to i32
  %cmp52 = icmp eq i32 %conv51, -100
  br i1 %cmp52, label %land.lhs.true54, label %lor.lhs.false56

land.lhs.true54:                                  ; preds = %lor.lhs.false49
  %32 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 16), align 1
  %tobool55 = icmp ne i8 %32, 0
  br i1 %tobool55, label %lor.lhs.false56, label %if.then70

lor.lhs.false56:                                  ; preds = %land.lhs.true54, %lor.lhs.false49
  %33 = load i8*, i8** %str.addr, align 4
  %arrayidx57 = getelementptr inbounds i8, i8* %33, i32 -1
  %34 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %34 to i32
  %cmp59 = icmp eq i32 %conv58, 33
  br i1 %cmp59, label %land.lhs.true61, label %lor.lhs.false63

land.lhs.true61:                                  ; preds = %lor.lhs.false56
  %35 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 17), align 1
  %tobool62 = icmp ne i8 %35, 0
  br i1 %tobool62, label %lor.lhs.false63, label %if.then70

lor.lhs.false63:                                  ; preds = %land.lhs.true61, %lor.lhs.false56
  %36 = load i8*, i8** %str.addr, align 4
  %arrayidx64 = getelementptr inbounds i8, i8* %36, i32 -1
  %37 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %37 to i32
  %cmp66 = icmp eq i32 %conv65, 64
  br i1 %cmp66, label %land.lhs.true68, label %if.end71

land.lhs.true68:                                  ; preds = %lor.lhs.false63
  %38 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 18), align 1
  %tobool69 = icmp ne i8 %38, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %land.lhs.true68, %land.lhs.true61, %land.lhs.true54, %land.lhs.true47, %land.lhs.true40, %land.lhs.true33, %land.lhs.true20
  store i32 1, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %land.lhs.true68, %lor.lhs.false63, %land.lhs.true25, %lor.lhs.false22
  br label %sw.epilog

sw.bb72:                                          ; preds = %for.body
  %39 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 2), align 1
  %tobool73 = icmp ne i8 %39, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %sw.bb72
  store i32 1, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %sw.bb72
  br label %sw.epilog

sw.bb76:                                          ; preds = %for.body
  %40 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 7), align 1
  %tobool77 = icmp ne i8 %40, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %sw.bb76
  store i32 1, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %sw.bb76
  br label %sw.epilog

sw.bb80:                                          ; preds = %for.body
  %41 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 8), align 1
  %tobool81 = icmp ne i8 %41, 0
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %sw.bb80
  store i32 1, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %sw.bb80
  br label %sw.epilog

sw.bb84:                                          ; preds = %for.body
  %42 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 9), align 1
  %tobool85 = icmp ne i8 %42, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %sw.bb84
  store i32 1, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %sw.bb84
  br label %sw.epilog

sw.bb88:                                          ; preds = %for.body
  %43 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 6), align 1
  %tobool89 = icmp ne i8 %43, 0
  br i1 %tobool89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %sw.bb88
  store i32 1, i32* %retval, align 4
  br label %return

if.end91:                                         ; preds = %sw.bb88
  br label %sw.epilog

sw.bb92:                                          ; preds = %for.body
  %44 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv93 = sext i8 %44 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end98

land.lhs.true95:                                  ; preds = %sw.bb92
  %45 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 11), align 1
  %tobool96 = icmp ne i8 %45, 0
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %land.lhs.true95
  store i32 1, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %land.lhs.true95, %sw.bb92
  br label %sw.epilog

sw.bb99:                                          ; preds = %for.body
  %46 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv100 = sext i8 %46 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.end105

land.lhs.true102:                                 ; preds = %sw.bb99
  %47 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 10), align 1
  %tobool103 = icmp ne i8 %47, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %land.lhs.true102
  store i32 1, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %land.lhs.true102, %sw.bb99
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end105, %if.end98, %if.end91, %if.end87, %if.end83, %if.end79, %if.end75, %if.end71
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %48 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then104, %if.then97, %if.then90, %if.then86, %if.then82, %if.then78, %if.then74, %if.then70, %if.then
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind
define internal i32 @patnode(i32 %op) #0 {
entry:
  %op.addr = alloca i32, align 4
  %starter = alloca i32, align 4
  %up = alloca %union.upat, align 4
  store i32 %op, i32* %op.addr, align 4
  %0 = load i8*, i8** @patcode, align 4
  %1 = bitcast i8* %0 to %union.upat*
  %2 = load i8*, i8** @patout, align 4
  %3 = bitcast i8* %2 to %union.upat*
  %sub.ptr.lhs.cast = ptrtoint %union.upat* %1 to i32
  %sub.ptr.rhs.cast = ptrtoint %union.upat* %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  store i32 %sub.ptr.div, i32* %starter, align 4
  %4 = load i32, i32* %op.addr, align 4
  %l = bitcast %union.upat* %up to i32*
  store i32 %4, i32* %l, align 4
  %5 = bitcast %union.upat* %up to i8*
  call void @patadd(i8* %5, i32 0, i32 4, i32 0)
  %6 = load i32, i32* %starter, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal i32 @patcompbranch(i32* %flagp, i32 %paren) #0 {
entry:
  %retval = alloca i32, align 4
  %flagp.addr = alloca i32*, align 4
  %paren.addr = alloca i32, align 4
  %chain = alloca i32, align 4
  %latest = alloca i32, align 4
  %starter = alloca i32, align 4
  %flags = alloca i32, align 4
  %pp1 = alloca i8*, align 4
  %oldglobflags = alloca i32, align 4
  %ignore = alloca i32, align 4
  %assert = alloca i32, align 4
  %up = alloca %union.upat, align 4
  store i32* %flagp, i32** %flagp.addr, align 4
  store i32 %paren, i32* %paren.addr, align 4
  store i32 0, i32* %latest, align 4
  store i32 0, i32* %flags, align 4
  %0 = load i32*, i32** %flagp.addr, align 4
  store i32 4, i32* %0, align 4
  store i32 0, i32* %chain, align 4
  store i32 0, i32* %starter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end92, %if.else65, %if.else59, %if.then49, %entry
  %1 = load i8*, i8** @patparse, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i8* @memchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i32 %conv, i32 5)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8*, i8** @patparse, align 4
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %5 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 4), align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load i8*, i8** @patparse, align 4
  %arrayidx = getelementptr inbounds i8, i8* %6, i32 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 47
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** @patparse, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i32 1
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %call9 = call i8* @memchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i32 %conv8, i32 5)
  %tobool10 = icmp ne i8* %call9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %tobool10, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %10, %land.end ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load i8*, i8** @patparse, align 4
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %lor.lhs.false

land.lhs.true15:                                  ; preds = %while.body
  %15 = load i8*, i8** @patparse, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i32 1
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %16 to i32
  %17 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv17, %conv18
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true15, %while.body
  %18 = load i8*, i8** @patparse, align 4
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv21, %conv22
  br i1 %cmp23, label %land.lhs.true25, label %if.else67

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %21 = load i8*, i8** @patparse, align 4
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %cmp28 = icmp eq i32 %conv27, -120
  br i1 %cmp28, label %land.lhs.true30, label %if.else67

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %23 = load i8*, i8** @patparse, align 4
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i32 2
  %24 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp eq i32 %conv32, %conv33
  br i1 %cmp34, label %if.then, label %if.else67

if.then:                                          ; preds = %land.lhs.true30, %land.lhs.true15
  %26 = load i8*, i8** @patparse, align 4
  store i8* %26, i8** %pp1, align 4
  %27 = load i32, i32* @patglobflags, align 4
  store i32 %27, i32* %oldglobflags, align 4
  %28 = load i8*, i8** @patparse, align 4
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 64
  %cond = select i1 %cmp37, i32 3, i32 2
  %30 = load i8*, i8** @patparse, align 4
  %add.ptr = getelementptr inbounds i8, i8* %30, i32 %cond
  store i8* %add.ptr, i8** @patparse, align 4
  %call39 = call i32 @patgetglobflags(i8** @patparse, i32* %assert, i32* %ignore)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end, label %if.then41

if.then41:                                        ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %31 = load i32, i32* %ignore, align 4
  %tobool42 = icmp ne i32 %31, 0
  br i1 %tobool42, label %if.else62, label %if.then43

if.then43:                                        ; preds = %if.end
  %32 = load i32, i32* %assert, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then43
  %33 = load i32, i32* %assert, align 4
  %call46 = call i32 @patnode(i32 %33)
  store i32 %call46, i32* %latest, align 4
  store i32 0, i32* %flags, align 4
  br label %if.end61

if.else:                                          ; preds = %if.then43
  %34 = load i8*, i8** %pp1, align 4
  %35 = load i8*, i8** @patstart, align 4
  %cmp47 = icmp eq i8* %34, %35
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else
  %36 = load i32, i32* @patglobflags, align 4
  %37 = load i8*, i8** @patout, align 4
  %38 = bitcast i8* %37 to %struct.patprog*
  %globflags = getelementptr inbounds %struct.patprog, %struct.patprog* %38, i32 0, i32 4
  store i32 %36, i32* %globflags, align 4
  br label %while.cond

if.else50:                                        ; preds = %if.else
  %39 = load i8*, i8** @patparse, align 4
  %40 = load i8, i8* %39, align 1
  %tobool51 = icmp ne i8 %40, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.else50
  br label %while.end

if.end53:                                         ; preds = %if.else50
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  %41 = load i32, i32* %oldglobflags, align 4
  %42 = load i32, i32* @patglobflags, align 4
  %cmp55 = icmp ne i32 %41, %42
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end54
  %call58 = call i32 @patnode(i32 8)
  store i32 %call58, i32* %latest, align 4
  %43 = load i32, i32* @patglobflags, align 4
  %l = bitcast %union.upat* %up to i32*
  store i32 %43, i32* %l, align 4
  %44 = bitcast %union.upat* %up to i8*
  call void @patadd(i8* %44, i32 0, i32 4, i32 0)
  br label %if.end60

if.else59:                                        ; preds = %if.end54
  br label %while.cond

if.end60:                                         ; preds = %if.then57
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then45
  br label %if.end66

if.else62:                                        ; preds = %if.end
  %45 = load i8*, i8** @patparse, align 4
  %46 = load i8, i8* %45, align 1
  %tobool63 = icmp ne i8 %46, 0
  br i1 %tobool63, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.else62
  br label %while.end

if.else65:                                        ; preds = %if.else62
  br label %while.cond

if.end66:                                         ; preds = %if.end61
  br label %if.end77

if.else67:                                        ; preds = %land.lhs.true30, %land.lhs.true25, %lor.lhs.false
  %47 = load i8*, i8** @patparse, align 4
  %48 = load i8, i8* %47, align 1
  %conv68 = sext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 10), align 1
  %conv69 = sext i8 %49 to i32
  %cmp70 = icmp eq i32 %conv68, %conv69
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.else67
  %50 = load i8*, i8** @patparse, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** @patparse, align 4
  %call73 = call i32 @patcompnot(i32 0, i32* %flags)
  store i32 %call73, i32* %latest, align 4
  br label %if.end76

if.else74:                                        ; preds = %if.else67
  %51 = load i32, i32* %paren.addr, align 4
  %call75 = call i32 @patcomppiece(i32* %flags, i32 %51)
  store i32 %call75, i32* %latest, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end66
  %52 = load i32, i32* %latest, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end77
  store i32 0, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end77
  %53 = load i32, i32* %starter, align 4
  %tobool81 = icmp ne i32 %53, 0
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end80
  %54 = load i32, i32* %latest, align 4
  store i32 %54, i32* %starter, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end80
  %55 = load i32, i32* %flags, align 4
  %and = and i32 %55, 4
  %tobool84 = icmp ne i32 %and, 0
  br i1 %tobool84, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end83
  %56 = load i32*, i32** %flagp.addr, align 4
  %57 = load i32, i32* %56, align 4
  %and86 = and i32 %57, -5
  store i32 %and86, i32* %56, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83
  %58 = load i32, i32* %chain, align 4
  %tobool88 = icmp ne i32 %58, 0
  br i1 %tobool88, label %if.else91, label %if.then89

if.then89:                                        ; preds = %if.end87
  %59 = load i32, i32* %flags, align 4
  %and90 = and i32 %59, 2
  %60 = load i32*, i32** %flagp.addr, align 4
  %61 = load i32, i32* %60, align 4
  %or = or i32 %61, %and90
  store i32 %or, i32* %60, align 4
  br label %if.end92

if.else91:                                        ; preds = %if.end87
  %62 = load i32, i32* %chain, align 4
  %63 = load i32, i32* %latest, align 4
  call void @pattail(i32 %62, i32 %63)
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then89
  %64 = load i32, i32* %latest, align 4
  store i32 %64, i32* %chain, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then64, %if.then52, %lor.end
  %65 = load i32, i32* %chain, align 4
  %tobool93 = icmp ne i32 %65, 0
  br i1 %tobool93, label %if.end96, label %if.then94

if.then94:                                        ; preds = %while.end
  %call95 = call i32 @patnode(i32 5)
  store i32 %call95, i32* %starter, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %while.end
  %66 = load i32, i32* %starter, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end96, %if.then79, %if.then41
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind
define internal void @pattail(i32 %p, i32 %val) #0 {
entry:
  %p.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %scan = alloca %union.upat*, align 4
  %temp = alloca %union.upat*, align 4
  %offset = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8*, i8** @patout, align 4
  %1 = bitcast i8* %0 to %union.upat*
  %2 = load i32, i32* %p.addr, align 4
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %1, i32 %2
  store %union.upat* %add.ptr, %union.upat** %scan, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %3 = load %union.upat*, %union.upat** %scan, align 4
  %l = bitcast %union.upat* %3 to i32*
  %4 = load i32, i32* %l, align 4
  %shr = ashr i32 %4, 8
  store i32 %shr, i32* @rn_offs, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %for.cond
  %5 = load %union.upat*, %union.upat** %scan, align 4
  %l1 = bitcast %union.upat* %5 to i32*
  %6 = load i32, i32* %l1, align 4
  %and = and i32 %6, 255
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %cond.true2, label %cond.false

cond.true2:                                       ; preds = %cond.true
  %7 = load %union.upat*, %union.upat** %scan, align 4
  %8 = load i32, i32* @rn_offs, align 4
  %idx.neg = sub i32 0, %8
  %add.ptr3 = getelementptr inbounds %union.upat, %union.upat* %7, i32 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %9 = load %union.upat*, %union.upat** %scan, align 4
  %10 = load i32, i32* @rn_offs, align 4
  %add.ptr4 = getelementptr inbounds %union.upat, %union.upat* %9, i32 %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi %union.upat* [ %add.ptr3, %cond.true2 ], [ %add.ptr4, %cond.false ]
  br label %cond.end6

cond.false5:                                      ; preds = %for.cond
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi %union.upat* [ %cond, %cond.end ], [ null, %cond.false5 ]
  store %union.upat* %cond7, %union.upat** %temp, align 4
  %tobool8 = icmp ne %union.upat* %cond7, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end6
  br label %for.end

if.end:                                           ; preds = %cond.end6
  %11 = load %union.upat*, %union.upat** %temp, align 4
  store %union.upat* %11, %union.upat** %scan, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %12 = load %union.upat*, %union.upat** %scan, align 4
  %l9 = bitcast %union.upat* %12 to i32*
  %13 = load i32, i32* %l9, align 4
  %and10 = and i32 %13, 255
  %cmp11 = icmp eq i32 %and10, 3
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %for.end
  %14 = load %union.upat*, %union.upat** %scan, align 4
  %15 = load i8*, i8** @patout, align 4
  %16 = bitcast i8* %15 to %union.upat*
  %sub.ptr.lhs.cast = ptrtoint %union.upat* %14 to i32
  %sub.ptr.rhs.cast = ptrtoint %union.upat* %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %17 = load i32, i32* %val.addr, align 4
  %sub = sub nsw i32 %sub.ptr.div, %17
  br label %cond.end19

cond.false13:                                     ; preds = %for.end
  %18 = load i32, i32* %val.addr, align 4
  %19 = load %union.upat*, %union.upat** %scan, align 4
  %20 = load i8*, i8** @patout, align 4
  %21 = bitcast i8* %20 to %union.upat*
  %sub.ptr.lhs.cast14 = ptrtoint %union.upat* %19 to i32
  %sub.ptr.rhs.cast15 = ptrtoint %union.upat* %21 to i32
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub.ptr.div17 = sdiv exact i32 %sub.ptr.sub16, 4
  %sub18 = sub nsw i32 %18, %sub.ptr.div17
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false13, %cond.true12
  %cond20 = phi i32 [ %sub, %cond.true12 ], [ %sub18, %cond.false13 ]
  store i32 %cond20, i32* %offset, align 4
  %22 = load i32, i32* %offset, align 4
  %shl = shl i32 %22, 8
  %23 = load %union.upat*, %union.upat** %scan, align 4
  %l21 = bitcast %union.upat* %23 to i32*
  %24 = load i32, i32* %l21, align 4
  %or = or i32 %24, %shl
  store i32 %or, i32* %l21, align 4
  ret void
}

declare i8* @memchr(i8*, i32, i32) #1

; Function Attrs: noinline nounwind
define internal void @patoptail(i32 %p, i32 %val) #0 {
entry:
  %p.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ptr = alloca %union.upat*, align 4
  %op = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8*, i8** @patout, align 4
  %1 = bitcast i8* %0 to %union.upat*
  %2 = load i32, i32* %p.addr, align 4
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %1, i32 %2
  store %union.upat* %add.ptr, %union.upat** %ptr, align 4
  %3 = load %union.upat*, %union.upat** %ptr, align 4
  %l = bitcast %union.upat* %3 to i32*
  %4 = load i32, i32* %l, align 4
  %and = and i32 %4, 255
  store i32 %and, i32* %op, align 4
  %5 = load i32, i32* %p.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load %union.upat*, %union.upat** %ptr, align 4
  %l1 = bitcast %union.upat* %6 to i32*
  %7 = load i32, i32* %l1, align 4
  %and2 = and i32 %7, 32
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end7

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %8, 32
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %val.addr, align 4
  call void @pattail(i32 %add, i32 %10)
  br label %if.end7

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %p.addr, align 4
  %add5 = add nsw i32 %11, 1
  %add6 = add nsw i32 %add5, 1
  %12 = load i32, i32* %val.addr, align 4
  call void @pattail(i32 %add6, i32 %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.else, %if.then4
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @patcompnot(i32 %paren, i32* %flagsp) #0 {
entry:
  %retval = alloca i32, align 4
  %paren.addr = alloca i32, align 4
  %flagsp.addr = alloca i32*, align 4
  %up = alloca %union.upat, align 4
  %excsync = alloca i32, align 4
  %br = alloca i32, align 4
  %excl = alloca i32, align 4
  %n = alloca i32, align 4
  %starter = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i32 %paren, i32* %paren.addr, align 4
  store i32* %flagsp, i32** %flagsp.addr, align 4
  %0 = load i32*, i32** %flagsp.addr, align 4
  store i32 2, i32* %0, align 4
  %call = call i32 @patnode(i32 32)
  store i32 %call, i32* %starter, align 4
  %call1 = call i32 @patnode(i32 67)
  store i32 %call1, i32* %br, align 4
  %call2 = call i32 @patnode(i32 1)
  store i32 %call2, i32* %excsync, align 4
  %1 = load i32, i32* %br, align 4
  %2 = load i32, i32* %excsync, align 4
  call void @pattail(i32 %1, i32 %2)
  %3 = load i32, i32* %starter, align 4
  %call3 = call i32 @patnode(i32 48)
  store i32 %call3, i32* %excl, align 4
  call void @pattail(i32 %3, i32 %call3)
  %p = bitcast %union.upat* %up to i8**
  store i8* null, i8** %p, align 4
  %4 = bitcast %union.upat* %up to i8*
  call void @patadd(i8* %4, i32 0, i32 4, i32 0)
  %5 = load i32, i32* %paren.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call4 = call i32 @patcompswitch(i32 1, i32* %dummy)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call5 = call i32 @patcompbranch(i32* %dummy, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %br, align 4
  %tobool6 = icmp ne i32 %cond, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load i32, i32* %br, align 4
  %call7 = call i32 @patnode(i32 2)
  call void @pattail(i32 %6, i32 %call7)
  %call8 = call i32 @patnode(i32 5)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %excsync, align 4
  %8 = load i32, i32* %n, align 4
  call void @pattail(i32 %7, i32 %8)
  %9 = load i32, i32* %excl, align 4
  %10 = load i32, i32* %n, align 4
  call void @pattail(i32 %9, i32 %10)
  %11 = load i32, i32* %starter, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind
define internal i32 @patcomppiece(i32* %flagp, i32 %paren) #0 {
entry:
  %retval = alloca i32, align 4
  %flagp.addr = alloca i32*, align 4
  %paren.addr = alloca i32, align 4
  %starter = alloca i32, align 4
  %next = alloca i32, align 4
  %op = alloca i32, align 4
  %opnd = alloca i32, align 4
  %flags = alloca i32, align 4
  %flags2 = alloca i32, align 4
  %kshchar = alloca i32, align 4
  %len = alloca i32, align 4
  %ch = alloca i32, align 4
  %patch = alloca i32, align 4
  %nmeta = alloca i32, align 4
  %hash = alloca i32, align 4
  %count = alloca i32, align 4
  %up = alloca %union.upat, align 4
  %nptr = alloca i8*, align 4
  %str0 = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %patprev = alloca i8*, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %charstart = alloca i8*, align 4
  %slen = alloca i32, align 4
  %morelen = alloca i32, align 4
  %countargs = alloca [5 x %union.upat], align 4
  %opp = alloca i8*, align 4
  %uptr = alloca %union.upat*, align 4
  store i32* %flagp, i32** %flagp.addr, align 4
  store i32 %paren, i32* %paren.addr, align 4
  store i32 0, i32* %starter, align 4
  store i32 0, i32* %flags, align 4
  %0 = load i8*, i8** @patparse, align 4
  store i8* %0, i8** %patprev, align 4
  store i8* %0, i8** %str0, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end73, %entry
  store i32 0, i32* %kshchar, align 4
  %1 = load i8*, i8** @patparse, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8*, i8** @patparse, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, -120
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** @patparse, align 4
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %7 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 15), align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  store i32 43, i32* %kshchar, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then
  %8 = load i8*, i8** @patparse, align 4
  %9 = load i8, i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  %10 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 16), align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  store i32 33, i32* %kshchar, align 4
  br label %if.end40

if.else13:                                        ; preds = %if.else
  %11 = load i8*, i8** @patparse, align 4
  %12 = load i8, i8* %11, align 1
  %conv14 = sext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 17), align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else13
  store i32 33, i32* %kshchar, align 4
  br label %if.end39

if.else19:                                        ; preds = %if.else13
  %14 = load i8*, i8** @patparse, align 4
  %15 = load i8, i8* %14, align 1
  %conv20 = sext i8 %15 to i32
  %16 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv20, %conv21
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else19
  store i32 64, i32* %kshchar, align 4
  br label %if.end38

if.else25:                                        ; preds = %if.else19
  %17 = load i8*, i8** @patparse, align 4
  %18 = load i8, i8* %17, align 1
  %conv26 = sext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 14), align 1
  %conv27 = sext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv26, %conv27
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else25
  store i32 42, i32* %kshchar, align 4
  br label %if.end37

if.else31:                                        ; preds = %if.else25
  %20 = load i8*, i8** @patparse, align 4
  %21 = load i8, i8* %20, align 1
  %conv32 = sext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 13), align 1
  %conv33 = sext i8 %22 to i32
  %cmp34 = icmp eq i32 %conv32, %conv33
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %if.else31
  store i32 63, i32* %kshchar, align 4
  br label %if.end

if.end:                                           ; preds = %if.then36, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then30
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then18
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then12
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then7
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %for.cond
  %23 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv43 = sext i8 %23 to i32
  %cmp44 = icmp ne i32 %conv43, -94
  br i1 %cmp44, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %24 = load i8*, i8** @patparse, align 4
  %25 = load i8, i8* %24, align 1
  %conv46 = sext i8 %25 to i32
  %cmp47 = icmp ne i32 %conv46, -118
  br i1 %cmp47, label %if.then51, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %26 = load i32, i32* %paren.addr, align 4
  %tobool50 = icmp ne i32 %26, 0
  br i1 %tobool50, label %if.then51, label %if.end73

if.then51:                                        ; preds = %lor.lhs.false49, %lor.lhs.false, %if.end42
  %27 = load i32, i32* %kshchar, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %if.then71, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.then51
  %28 = load i8*, i8** @patparse, align 4
  %29 = load i8, i8* %28, align 1
  %conv54 = sext i8 %29 to i32
  %call = call i8* @memchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i32 %conv54, i32 13)
  %tobool55 = icmp ne i8* %call, null
  br i1 %tobool55, label %land.lhs.true56, label %if.end72

land.lhs.true56:                                  ; preds = %lor.lhs.false53
  %30 = load i8*, i8** @patparse, align 4
  %31 = load i8, i8* %30, align 1
  %conv57 = sext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 4), align 1
  %conv58 = sext i8 %32 to i32
  %cmp59 = icmp ne i32 %conv57, %conv58
  br i1 %cmp59, label %if.then71, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true56
  %33 = load i8*, i8** @patparse, align 4
  %arrayidx62 = getelementptr inbounds i8, i8* %33, i32 1
  %34 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %34 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %if.then71, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false61
  %35 = load i8*, i8** @patparse, align 4
  %arrayidx67 = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %36 to i32
  %call69 = call i8* @memchr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 0), i32 %conv68, i32 5)
  %tobool70 = icmp ne i8* %call69, null
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false66, %lor.lhs.false61, %land.lhs.true56, %if.then51
  br label %for.end

if.end72:                                         ; preds = %lor.lhs.false66, %lor.lhs.false53
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %lor.lhs.false49
  %37 = load i8*, i8** @patparse, align 4
  store i8* %37, i8** %patprev, align 4
  %call74 = call i32 @metacharinc(i8** @patparse)
  br label %for.cond

for.end:                                          ; preds = %if.then71
  %38 = load i8*, i8** @patparse, align 4
  %39 = load i8*, i8** %str0, align 4
  %cmp75 = icmp ugt i8* %38, %39
  br i1 %cmp75, label %if.then77, label %if.else177

if.then77:                                        ; preds = %for.end
  %40 = load i8*, i8** @patparse, align 4
  %41 = load i8*, i8** %str0, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %slen, align 4
  store i32 0, i32* %kshchar, align 4
  %42 = load i32, i32* %flags, align 4
  %or = or i32 %42, 4
  store i32 %or, i32* %flags, align 4
  %43 = load i8*, i8** %patprev, align 4
  %44 = load i8*, i8** %str0, align 4
  %cmp78 = icmp ugt i8* %43, %44
  %conv79 = zext i1 %cmp78 to i32
  store i32 %conv79, i32* %morelen, align 4
  %45 = load i8*, i8** @patparse, align 4
  %46 = load i8, i8* %45, align 1
  %conv80 = sext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv81 = sext i8 %47 to i32
  %cmp82 = icmp eq i32 %conv80, %conv81
  br i1 %cmp82, label %land.lhs.true121, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.then77
  %48 = load i8*, i8** @patparse, align 4
  %49 = load i8, i8* %48, align 1
  %conv85 = sext i8 %49 to i32
  %50 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv86 = sext i8 %50 to i32
  %cmp87 = icmp eq i32 %conv85, %conv86
  br i1 %cmp87, label %land.lhs.true89, label %lor.lhs.false100

land.lhs.true89:                                  ; preds = %lor.lhs.false84
  %51 = load i8*, i8** @patparse, align 4
  %arrayidx90 = getelementptr inbounds i8, i8* %51, i32 1
  %52 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %52 to i32
  %53 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv92 = sext i8 %53 to i32
  %cmp93 = icmp eq i32 %conv91, %conv92
  br i1 %cmp93, label %land.lhs.true95, label %lor.lhs.false100

land.lhs.true95:                                  ; preds = %land.lhs.true89
  %54 = load i8*, i8** @patparse, align 4
  %arrayidx96 = getelementptr inbounds i8, i8* %54, i32 2
  %55 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %55 to i32
  %cmp98 = icmp eq i32 %conv97, 99
  br i1 %cmp98, label %land.lhs.true121, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %land.lhs.true95, %land.lhs.true89, %lor.lhs.false84
  %56 = load i8*, i8** @patparse, align 4
  %57 = load i8, i8* %56, align 1
  %conv101 = sext i8 %57 to i32
  %58 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  %conv102 = sext i8 %58 to i32
  %cmp103 = icmp eq i32 %conv101, %conv102
  br i1 %cmp103, label %land.lhs.true105, label %if.end124

land.lhs.true105:                                 ; preds = %lor.lhs.false100
  %59 = load i8*, i8** @patparse, align 4
  %arrayidx106 = getelementptr inbounds i8, i8* %59, i32 1
  %60 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %60 to i32
  %cmp108 = icmp eq i32 %conv107, -120
  br i1 %cmp108, label %land.lhs.true110, label %if.end124

land.lhs.true110:                                 ; preds = %land.lhs.true105
  %61 = load i8*, i8** @patparse, align 4
  %arrayidx111 = getelementptr inbounds i8, i8* %61, i32 2
  %62 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %62 to i32
  %63 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv113 = sext i8 %63 to i32
  %cmp114 = icmp eq i32 %conv112, %conv113
  br i1 %cmp114, label %land.lhs.true116, label %if.end124

land.lhs.true116:                                 ; preds = %land.lhs.true110
  %64 = load i8*, i8** @patparse, align 4
  %arrayidx117 = getelementptr inbounds i8, i8* %64, i32 3
  %65 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %65 to i32
  %cmp119 = icmp eq i32 %conv118, 99
  br i1 %cmp119, label %land.lhs.true121, label %if.end124

land.lhs.true121:                                 ; preds = %land.lhs.true116, %land.lhs.true95, %if.then77
  %66 = load i32, i32* %morelen, align 4
  %tobool122 = icmp ne i32 %66, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %land.lhs.true121
  %67 = load i8*, i8** %patprev, align 4
  store i8* %67, i8** @patparse, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %land.lhs.true121, %land.lhs.true116, %land.lhs.true110, %land.lhs.true105, %lor.lhs.false100
  %68 = load i32, i32* %morelen, align 4
  %tobool125 = icmp ne i32 %68, 0
  br i1 %tobool125, label %if.end128, label %if.then126

if.then126:                                       ; preds = %if.end124
  %69 = load i32, i32* %flags, align 4
  %or127 = or i32 %69, 1
  store i32 %or127, i32* %flags, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end124
  %call129 = call i32 @patnode(i32 4)
  store i32 %call129, i32* %starter, align 4
  store i32 0, i32* %nmeta, align 4
  %70 = load i8*, i8** %str0, align 4
  %71 = load i8, i8* %70, align 1
  %conv130 = sext i8 %71 to i32
  %cmp131 = icmp eq i32 %conv130, -95
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end128
  %72 = load i8*, i8** %str0, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr, i8** %str0, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end128
  %73 = load i8*, i8** %str0, align 4
  store i8* %73, i8** %ptr, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc, %if.end134
  %74 = load i8*, i8** %ptr, align 4
  %75 = load i8*, i8** @patparse, align 4
  %cmp136 = icmp ult i8* %74, %75
  br i1 %cmp136, label %for.body, label %for.end145

for.body:                                         ; preds = %for.cond135
  %76 = load i8*, i8** %ptr, align 4
  %77 = load i8, i8* %76, align 1
  %conv138 = sext i8 %77 to i32
  %cmp139 = icmp eq i32 %conv138, -125
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %for.body
  %78 = load i32, i32* %nmeta, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %nmeta, align 4
  %79 = load i8*, i8** %ptr, align 4
  %incdec.ptr142 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr142, i8** %ptr, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end143
  %80 = load i8*, i8** %ptr, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr144, i8** %ptr, align 4
  br label %for.cond135

for.end145:                                       ; preds = %for.cond135
  %81 = load i8*, i8** @patparse, align 4
  %82 = load i8*, i8** %str0, align 4
  %sub.ptr.lhs.cast146 = ptrtoint i8* %81 to i32
  %sub.ptr.rhs.cast147 = ptrtoint i8* %82 to i32
  %sub.ptr.sub148 = sub i32 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %83 = load i32, i32* %nmeta, align 4
  %sub = sub nsw i32 %sub.ptr.sub148, %83
  store i32 %sub, i32* %slen, align 4
  %84 = bitcast i32* %slen to i8*
  call void @patadd(i8* %84, i32 0, i32 4, i32 0)
  %85 = load i8*, i8** %str0, align 4
  %86 = load i32, i32* %slen, align 4
  call void @patadd(i8* %85, i32 0, i32 %86, i32 2)
  %87 = load i8*, i8** @patout, align 4
  %88 = bitcast i8* %87 to %union.upat*
  %89 = load i32, i32* %starter, align 4
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %88, i32 %89
  %add.ptr149 = getelementptr inbounds %union.upat, %union.upat* %add.ptr, i32 2
  %90 = bitcast %union.upat* %add.ptr149 to i8*
  store i8* %90, i8** %nptr, align 4
  %91 = load i32, i32* @patglobflags, align 4
  %and = and i32 %91, 1023
  %tobool150 = icmp ne i32 %and, 0
  br i1 %tobool150, label %if.then151, label %if.end176

if.then151:                                       ; preds = %for.end145
  %92 = load i32, i32* @patflags, align 4
  %and152 = and i32 %92, 1
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.else156, label %if.then154

if.then154:                                       ; preds = %if.then151
  %93 = load i32, i32* %flags, align 4
  %and155 = and i32 %93, -5
  store i32 %and155, i32* %flags, align 4
  br label %if.end175

if.else156:                                       ; preds = %if.then151
  %94 = load i8*, i8** %nptr, align 4
  %arrayidx157 = getelementptr inbounds i8, i8* %94, i32 0
  %95 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %95 to i32
  %cmp159 = icmp eq i32 %conv158, 46
  br i1 %cmp159, label %land.lhs.true161, label %if.then172

land.lhs.true161:                                 ; preds = %if.else156
  %96 = load i32, i32* %slen, align 4
  %cmp162 = icmp eq i32 %96, 1
  br i1 %cmp162, label %if.end174, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %land.lhs.true161
  %97 = load i8*, i8** %nptr, align 4
  %arrayidx165 = getelementptr inbounds i8, i8* %97, i32 1
  %98 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %98 to i32
  %cmp167 = icmp eq i32 %conv166, 46
  br i1 %cmp167, label %land.lhs.true169, label %if.then172

land.lhs.true169:                                 ; preds = %lor.lhs.false164
  %99 = load i32, i32* %slen, align 4
  %cmp170 = icmp eq i32 %99, 2
  br i1 %cmp170, label %if.end174, label %if.then172

if.then172:                                       ; preds = %land.lhs.true169, %lor.lhs.false164, %if.else156
  %100 = load i32, i32* %flags, align 4
  %and173 = and i32 %100, -5
  store i32 %and173, i32* %flags, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %land.lhs.true169, %land.lhs.true161
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then154
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %for.end145
  br label %if.end354

if.else177:                                       ; preds = %for.end
  %101 = load i32, i32* %kshchar, align 4
  %tobool178 = icmp ne i32 %101, 0
  br i1 %tobool178, label %if.then179, label %if.end181

if.then179:                                       ; preds = %if.else177
  %102 = load i8*, i8** @patparse, align 4
  %incdec.ptr180 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr180, i8** @patparse, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.else177
  %103 = load i8*, i8** @patparse, align 4
  %104 = load i8, i8* %103, align 1
  %conv182 = sext i8 %104 to i32
  store i32 %conv182, i32* %patch, align 4
  %call183 = call i32 @metacharinc(i8** @patparse)
  %105 = load i32, i32* %patch, align 4
  switch i32 %105, label %sw.epilog353 [
    i32 -105, label %sw.bb
    i32 -121, label %sw.bb186
    i32 -111, label %sw.bb188
    i32 -120, label %sw.bb299
    i32 -108, label %sw.bb315
    i32 -124, label %sw.bb349
    i32 -96, label %sw.bb350
  ]

sw.bb:                                            ; preds = %if.end181
  %106 = load i32, i32* %flags, align 4
  %or184 = or i32 %106, 1
  store i32 %or184, i32* %flags, align 4
  %call185 = call i32 @patnode(i32 64)
  store i32 %call185, i32* %starter, align 4
  br label %sw.epilog353

sw.bb186:                                         ; preds = %if.end181
  store i32 -1, i32* %kshchar, align 4
  %call187 = call i32 @patnode(i32 67)
  store i32 %call187, i32* %starter, align 4
  br label %sw.epilog353

sw.bb188:                                         ; preds = %if.end181
  %107 = load i32, i32* %flags, align 4
  %or189 = or i32 %107, 1
  store i32 %or189, i32* %flags, align 4
  %108 = load i8*, i8** @patparse, align 4
  %109 = load i8, i8* %108, align 1
  %conv190 = sext i8 %109 to i32
  %cmp191 = icmp eq i32 %conv190, -122
  br i1 %cmp191, label %if.then197, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %sw.bb188
  %110 = load i8*, i8** @patparse, align 4
  %111 = load i8, i8* %110, align 1
  %conv194 = sext i8 %111 to i32
  %cmp195 = icmp eq i32 %conv194, -100
  br i1 %cmp195, label %if.then197, label %if.else200

if.then197:                                       ; preds = %lor.lhs.false193, %sw.bb188
  %112 = load i8*, i8** @patparse, align 4
  %incdec.ptr198 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr198, i8** @patparse, align 4
  %call199 = call i32 @patnode(i32 66)
  store i32 %call199, i32* %starter, align 4
  br label %if.end202

if.else200:                                       ; preds = %lor.lhs.false193
  %call201 = call i32 @patnode(i32 65)
  store i32 %call201, i32* %starter, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.else200, %if.then197
  %113 = load i8*, i8** @patparse, align 4
  %114 = load i8, i8* %113, align 1
  %conv203 = sext i8 %114 to i32
  %cmp204 = icmp eq i32 %conv203, -110
  br i1 %cmp204, label %land.lhs.true206, label %if.end212

land.lhs.true206:                                 ; preds = %if.end202
  %115 = load i8*, i8** @patparse, align 4
  %add.ptr207 = getelementptr inbounds i8, i8* %115, i32 1
  %call208 = call i8* @strchr(i8* %add.ptr207, i32 -110)
  %tobool209 = icmp ne i8* %call208, null
  br i1 %tobool209, label %if.then210, label %if.end212

if.then210:                                       ; preds = %land.lhs.true206
  %116 = load i8*, i8** @patparse, align 4
  %incdec.ptr211 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr211, i8** @patparse, align 4
  call void @patadd(i8* null, i32 93, i32 1, i32 1)
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %land.lhs.true206, %if.end202
  br label %while.cond

while.cond:                                       ; preds = %if.end292, %if.end245, %if.end212
  %117 = load i8*, i8** @patparse, align 4
  %118 = load i8, i8* %117, align 1
  %conv213 = sext i8 %118 to i32
  %tobool214 = icmp ne i32 %conv213, 0
  br i1 %tobool214, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %119 = load i8*, i8** @patparse, align 4
  %120 = load i8, i8* %119, align 1
  %conv215 = sext i8 %120 to i32
  %cmp216 = icmp ne i32 %conv215, -110
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %121 = phi i1 [ false, %while.cond ], [ %cmp216, %land.rhs ]
  br i1 %121, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %122 = load i8*, i8** @patparse, align 4
  %123 = load i8, i8* %122, align 1
  %conv218 = sext i8 %123 to i32
  %cmp219 = icmp eq i32 %conv218, -111
  br i1 %cmp219, label %land.lhs.true221, label %if.end246

land.lhs.true221:                                 ; preds = %while.body
  %124 = load i8*, i8** @patparse, align 4
  %arrayidx222 = getelementptr inbounds i8, i8* %124, i32 1
  %125 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %125 to i32
  %cmp224 = icmp eq i32 %conv223, 58
  br i1 %cmp224, label %land.lhs.true226, label %if.end246

land.lhs.true226:                                 ; preds = %land.lhs.true221
  %126 = load i8*, i8** @patparse, align 4
  %add.ptr227 = getelementptr inbounds i8, i8* %126, i32 2
  %call228 = call i8* @strchr(i8* %add.ptr227, i32 58)
  store i8* %call228, i8** %nptr, align 4
  %tobool229 = icmp ne i8* %call228, null
  br i1 %tobool229, label %land.lhs.true230, label %if.end246

land.lhs.true230:                                 ; preds = %land.lhs.true226
  %127 = load i8*, i8** %nptr, align 4
  %arrayidx231 = getelementptr inbounds i8, i8* %127, i32 1
  %128 = load i8, i8* %arrayidx231, align 1
  %conv232 = sext i8 %128 to i32
  %cmp233 = icmp eq i32 %conv232, -110
  br i1 %cmp233, label %if.then235, label %if.end246

if.then235:                                       ; preds = %land.lhs.true230
  %129 = load i8*, i8** @patparse, align 4
  %add.ptr236 = getelementptr inbounds i8, i8* %129, i32 2
  store i8* %add.ptr236, i8** @patparse, align 4
  %130 = load i8*, i8** %nptr, align 4
  %131 = load i8*, i8** @patparse, align 4
  %sub.ptr.lhs.cast237 = ptrtoint i8* %130 to i32
  %sub.ptr.rhs.cast238 = ptrtoint i8* %131 to i32
  %sub.ptr.sub239 = sub i32 %sub.ptr.lhs.cast237, %sub.ptr.rhs.cast238
  store i32 %sub.ptr.sub239, i32* %len, align 4
  %132 = load i8*, i8** @patparse, align 4
  %133 = load i32, i32* %len, align 4
  %call240 = call i32 @range_type(i8* %132, i32 %133)
  store i32 %call240, i32* %ch, align 4
  %134 = load i8*, i8** %nptr, align 4
  %add.ptr241 = getelementptr inbounds i8, i8* %134, i32 2
  store i8* %add.ptr241, i8** @patparse, align 4
  %135 = load i32, i32* %ch, align 4
  %cmp242 = icmp ne i32 %135, 20
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.then235
  %136 = load i32, i32* %ch, align 4
  %add = add nsw i32 131, %136
  call void @patadd(i8* null, i32 %add, i32 1, i32 1)
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %if.then235
  br label %while.cond

if.end246:                                        ; preds = %land.lhs.true230, %land.lhs.true226, %land.lhs.true221, %while.body
  %137 = load i8*, i8** @patparse, align 4
  store i8* %137, i8** %charstart, align 4
  %call247 = call i32 @metacharinc(i8** @patparse)
  %138 = load i8*, i8** @patparse, align 4
  %139 = load i8, i8* %138, align 1
  %conv248 = sext i8 %139 to i32
  %cmp249 = icmp eq i32 %conv248, -101
  br i1 %cmp249, label %land.lhs.true251, label %if.end277

land.lhs.true251:                                 ; preds = %if.end246
  %140 = load i8*, i8** @patparse, align 4
  %arrayidx252 = getelementptr inbounds i8, i8* %140, i32 1
  %141 = load i8, i8* %arrayidx252, align 1
  %conv253 = sext i8 %141 to i32
  %tobool254 = icmp ne i32 %conv253, 0
  br i1 %tobool254, label %land.lhs.true255, label %if.end277

land.lhs.true255:                                 ; preds = %land.lhs.true251
  %142 = load i8*, i8** @patparse, align 4
  %arrayidx256 = getelementptr inbounds i8, i8* %142, i32 1
  %143 = load i8, i8* %arrayidx256, align 1
  %conv257 = sext i8 %143 to i32
  %cmp258 = icmp ne i32 %conv257, -110
  br i1 %cmp258, label %if.then260, label %if.end277

if.then260:                                       ; preds = %land.lhs.true255
  call void @patadd(i8* null, i32 152, i32 1, i32 1)
  %144 = load i8*, i8** %charstart, align 4
  %145 = load i8, i8* %144, align 1
  %idxprom = zext i8 %145 to i32
  %arrayidx261 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %146 = load i16, i16* %arrayidx261, align 2
  %conv262 = sext i16 %146 to i32
  %and263 = and i32 %conv262, 16
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then265, label %if.else270

if.then265:                                       ; preds = %if.then260
  %147 = load i8*, i8** %charstart, align 4
  %148 = load i8, i8* %147, align 1
  %conv266 = sext i8 %148 to i32
  %sub267 = sub nsw i32 %conv266, -124
  %arrayidx268 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub267
  %149 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %149 to i32
  call void @patadd(i8* null, i32 %conv269, i32 1, i32 1)
  br label %if.end274

if.else270:                                       ; preds = %if.then260
  %150 = load i8*, i8** %charstart, align 4
  %151 = load i8*, i8** @patparse, align 4
  %152 = load i8*, i8** %charstart, align 4
  %sub.ptr.lhs.cast271 = ptrtoint i8* %151 to i32
  %sub.ptr.rhs.cast272 = ptrtoint i8* %152 to i32
  %sub.ptr.sub273 = sub i32 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  call void @patadd(i8* %150, i32 0, i32 %sub.ptr.sub273, i32 1)
  br label %if.end274

if.end274:                                        ; preds = %if.else270, %if.then265
  %153 = load i8*, i8** @patparse, align 4
  %incdec.ptr275 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr275, i8** @patparse, align 4
  store i8* %incdec.ptr275, i8** %charstart, align 4
  %call276 = call i32 @metacharinc(i8** @patparse)
  br label %if.end277

if.end277:                                        ; preds = %if.end274, %land.lhs.true255, %land.lhs.true251, %if.end246
  %154 = load i8*, i8** %charstart, align 4
  %155 = load i8, i8* %154, align 1
  %idxprom278 = zext i8 %155 to i32
  %arrayidx279 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom278
  %156 = load i16, i16* %arrayidx279, align 2
  %conv280 = sext i16 %156 to i32
  %and281 = and i32 %conv280, 16
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %if.then283, label %if.else288

if.then283:                                       ; preds = %if.end277
  %157 = load i8*, i8** %charstart, align 4
  %158 = load i8, i8* %157, align 1
  %conv284 = sext i8 %158 to i32
  %sub285 = sub nsw i32 %conv284, -124
  %arrayidx286 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub285
  %159 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %159 to i32
  call void @patadd(i8* null, i32 %conv287, i32 1, i32 1)
  br label %if.end292

if.else288:                                       ; preds = %if.end277
  %160 = load i8*, i8** %charstart, align 4
  %161 = load i8*, i8** @patparse, align 4
  %162 = load i8*, i8** %charstart, align 4
  %sub.ptr.lhs.cast289 = ptrtoint i8* %161 to i32
  %sub.ptr.rhs.cast290 = ptrtoint i8* %162 to i32
  %sub.ptr.sub291 = sub i32 %sub.ptr.lhs.cast289, %sub.ptr.rhs.cast290
  call void @patadd(i8* %160, i32 0, i32 %sub.ptr.sub291, i32 1)
  br label %if.end292

if.end292:                                        ; preds = %if.else288, %if.then283
  br label %while.cond

while.end:                                        ; preds = %land.end
  %163 = load i8*, i8** @patparse, align 4
  %164 = load i8, i8* %163, align 1
  %conv293 = sext i8 %164 to i32
  %cmp294 = icmp ne i32 %conv293, -110
  br i1 %cmp294, label %if.then296, label %if.end297

if.then296:                                       ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end297:                                        ; preds = %while.end
  %165 = load i8*, i8** @patparse, align 4
  %incdec.ptr298 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %incdec.ptr298, i8** @patparse, align 4
  call void @patadd(i8* null, i32 0, i32 1, i32 0)
  br label %sw.epilog353

sw.bb299:                                         ; preds = %if.end181
  %166 = load i32, i32* %kshchar, align 4
  %cmp300 = icmp eq i32 %166, 33
  br i1 %cmp300, label %if.then302, label %if.else307

if.then302:                                       ; preds = %sw.bb299
  %call303 = call i32 @patcompnot(i32 1, i32* %flags2)
  store i32 %call303, i32* %starter, align 4
  %tobool304 = icmp ne i32 %call303, 0
  br i1 %tobool304, label %if.end306, label %if.then305

if.then305:                                       ; preds = %if.then302
  store i32 0, i32* %retval, align 4
  br label %return

if.end306:                                        ; preds = %if.then302
  br label %if.end312

if.else307:                                       ; preds = %sw.bb299
  %call308 = call i32 @patcompswitch(i32 1, i32* %flags2)
  store i32 %call308, i32* %starter, align 4
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.end311, label %if.then310

if.then310:                                       ; preds = %if.else307
  store i32 0, i32* %retval, align 4
  br label %return

if.end311:                                        ; preds = %if.else307
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.end306
  %167 = load i32, i32* %flags2, align 4
  %and313 = and i32 %167, 2
  %168 = load i32, i32* %flags, align 4
  %or314 = or i32 %168, %and313
  store i32 %or314, i32* %flags, align 4
  br label %sw.epilog353

sw.bb315:                                         ; preds = %if.end181
  store i32 0, i32* %len, align 4
  %169 = load i8*, i8** @patparse, align 4
  %170 = load i8, i8* %169, align 1
  %idxprom316 = zext i8 %170 to i32
  %arrayidx317 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom316
  %171 = load i16, i16* %arrayidx317, align 2
  %conv318 = sext i16 %171 to i32
  %and319 = and i32 %conv318, 1
  %tobool320 = icmp ne i32 %and319, 0
  br i1 %tobool320, label %if.then321, label %if.end324

if.then321:                                       ; preds = %sw.bb315
  %172 = load i8*, i8** @patparse, align 4
  %call322 = call i32 @zstrtol(i8* %172, i8** %nptr, i32 10)
  store i32 %call322, i32* %from, align 4
  %173 = load i8*, i8** %nptr, align 4
  store i8* %173, i8** @patparse, align 4
  %174 = load i32, i32* %len, align 4
  %or323 = or i32 %174, 1
  store i32 %or323, i32* %len, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then321, %sw.bb315
  %175 = load i8*, i8** @patparse, align 4
  %incdec.ptr325 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr325, i8** @patparse, align 4
  %176 = load i8*, i8** @patparse, align 4
  %177 = load i8, i8* %176, align 1
  %idxprom326 = zext i8 %177 to i32
  %arrayidx327 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom326
  %178 = load i16, i16* %arrayidx327, align 2
  %conv328 = sext i16 %178 to i32
  %and329 = and i32 %conv328, 1
  %tobool330 = icmp ne i32 %and329, 0
  br i1 %tobool330, label %if.then331, label %if.end334

if.then331:                                       ; preds = %if.end324
  %179 = load i8*, i8** @patparse, align 4
  %call332 = call i32 @zstrtol(i8* %179, i8** %nptr, i32 10)
  store i32 %call332, i32* %to, align 4
  %180 = load i8*, i8** %nptr, align 4
  store i8* %180, i8** @patparse, align 4
  %181 = load i32, i32* %len, align 4
  %or333 = or i32 %181, 2
  store i32 %or333, i32* %len, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %if.end324
  %182 = load i8*, i8** @patparse, align 4
  %183 = load i8, i8* %182, align 1
  %conv335 = sext i8 %183 to i32
  %cmp336 = icmp ne i32 %conv335, -107
  br i1 %cmp336, label %if.then338, label %if.end339

if.then338:                                       ; preds = %if.end334
  store i32 0, i32* %retval, align 4
  br label %return

if.end339:                                        ; preds = %if.end334
  %184 = load i8*, i8** @patparse, align 4
  %incdec.ptr340 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr340, i8** @patparse, align 4
  %185 = load i32, i32* %len, align 4
  switch i32 %185, label %sw.epilog [
    i32 3, label %sw.bb341
    i32 2, label %sw.bb343
    i32 1, label %sw.bb345
    i32 0, label %sw.bb347
  ]

sw.bb341:                                         ; preds = %if.end339
  %call342 = call i32 @patnode(i32 68)
  store i32 %call342, i32* %starter, align 4
  %186 = bitcast i32* %from to i8*
  call void @patadd(i8* %186, i32 0, i32 4, i32 0)
  %187 = bitcast i32* %to to i8*
  call void @patadd(i8* %187, i32 0, i32 4, i32 0)
  br label %sw.epilog

sw.bb343:                                         ; preds = %if.end339
  %call344 = call i32 @patnode(i32 70)
  store i32 %call344, i32* %starter, align 4
  %188 = bitcast i32* %to to i8*
  call void @patadd(i8* %188, i32 0, i32 4, i32 0)
  br label %sw.epilog

sw.bb345:                                         ; preds = %if.end339
  %call346 = call i32 @patnode(i32 69)
  store i32 %call346, i32* %starter, align 4
  %189 = bitcast i32* %from to i8*
  call void @patadd(i8* %189, i32 0, i32 4, i32 0)
  br label %sw.epilog

sw.bb347:                                         ; preds = %if.end339
  %call348 = call i32 @patnode(i32 71)
  store i32 %call348, i32* %starter, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end339, %sw.bb347, %sw.bb345, %sw.bb343, %sw.bb341
  br label %sw.epilog353

sw.bb349:                                         ; preds = %if.end181
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb350:                                         ; preds = %if.end181
  %190 = load i32*, i32** %flagp.addr, align 4
  %191 = load i32, i32* %paren.addr, align 4
  %call351 = call i32 @patcomppiece(i32* %190, i32 %191)
  store i32 %call351, i32* %next, align 4
  %192 = load i32*, i32** %flagp.addr, align 4
  %193 = load i32, i32* %192, align 4
  %and352 = and i32 %193, -5
  store i32 %and352, i32* %192, align 4
  %194 = load i32, i32* %next, align 4
  store i32 %194, i32* %retval, align 4
  br label %return

sw.epilog353:                                     ; preds = %if.end181, %sw.epilog, %if.end312, %if.end297, %sw.bb186, %sw.bb
  br label %if.end354

if.end354:                                        ; preds = %sw.epilog353, %if.end176
  store i32 0, i32* %count, align 4
  %195 = load i8*, i8** @patparse, align 4
  %196 = load i8, i8* %195, align 1
  %conv355 = sext i8 %196 to i32
  %197 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv356 = sext i8 %197 to i32
  %cmp357 = icmp eq i32 %conv355, %conv356
  %conv358 = zext i1 %cmp357 to i32
  store i32 %conv358, i32* %hash, align 4
  br i1 %cmp357, label %if.end406, label %land.lhs.true359

land.lhs.true359:                                 ; preds = %if.end354
  %198 = load i8*, i8** @patparse, align 4
  %199 = load i8, i8* %198, align 1
  %conv360 = sext i8 %199 to i32
  %200 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv361 = sext i8 %200 to i32
  %cmp362 = icmp eq i32 %conv360, %conv361
  br i1 %cmp362, label %land.lhs.true364, label %lor.rhs

land.lhs.true364:                                 ; preds = %land.lhs.true359
  %201 = load i8*, i8** @patparse, align 4
  %arrayidx365 = getelementptr inbounds i8, i8* %201, i32 1
  %202 = load i8, i8* %arrayidx365, align 1
  %conv366 = sext i8 %202 to i32
  %203 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv367 = sext i8 %203 to i32
  %cmp368 = icmp eq i32 %conv366, %conv367
  br i1 %cmp368, label %land.lhs.true370, label %lor.rhs

land.lhs.true370:                                 ; preds = %land.lhs.true364
  %204 = load i8*, i8** @patparse, align 4
  %arrayidx371 = getelementptr inbounds i8, i8* %204, i32 2
  %205 = load i8, i8* %arrayidx371, align 1
  %conv372 = sext i8 %205 to i32
  %cmp373 = icmp eq i32 %conv372, 99
  br i1 %cmp373, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true370, %land.lhs.true364, %land.lhs.true359
  %206 = load i8*, i8** @patparse, align 4
  %207 = load i8, i8* %206, align 1
  %conv375 = sext i8 %207 to i32
  %208 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  %conv376 = sext i8 %208 to i32
  %cmp377 = icmp eq i32 %conv375, %conv376
  br i1 %cmp377, label %land.lhs.true379, label %land.end395

land.lhs.true379:                                 ; preds = %lor.rhs
  %209 = load i8*, i8** @patparse, align 4
  %arrayidx380 = getelementptr inbounds i8, i8* %209, i32 1
  %210 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %210 to i32
  %cmp382 = icmp eq i32 %conv381, -120
  br i1 %cmp382, label %land.lhs.true384, label %land.end395

land.lhs.true384:                                 ; preds = %land.lhs.true379
  %211 = load i8*, i8** @patparse, align 4
  %arrayidx385 = getelementptr inbounds i8, i8* %211, i32 2
  %212 = load i8, i8* %arrayidx385, align 1
  %conv386 = sext i8 %212 to i32
  %213 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv387 = sext i8 %213 to i32
  %cmp388 = icmp eq i32 %conv386, %conv387
  br i1 %cmp388, label %land.rhs390, label %land.end395

land.rhs390:                                      ; preds = %land.lhs.true384
  %214 = load i8*, i8** @patparse, align 4
  %arrayidx391 = getelementptr inbounds i8, i8* %214, i32 3
  %215 = load i8, i8* %arrayidx391, align 1
  %conv392 = sext i8 %215 to i32
  %cmp393 = icmp eq i32 %conv392, 99
  br label %land.end395

land.end395:                                      ; preds = %land.rhs390, %land.lhs.true384, %land.lhs.true379, %lor.rhs
  %216 = phi i1 [ false, %land.lhs.true384 ], [ false, %land.lhs.true379 ], [ false, %lor.rhs ], [ %cmp393, %land.rhs390 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end395, %land.lhs.true370
  %217 = phi i1 [ true, %land.lhs.true370 ], [ %216, %land.end395 ]
  %lor.ext = zext i1 %217 to i32
  store i32 %lor.ext, i32* %count, align 4
  br i1 %217, label %if.end406, label %land.lhs.true396

land.lhs.true396:                                 ; preds = %lor.end
  %218 = load i32, i32* %kshchar, align 4
  %cmp397 = icmp sle i32 %218, 0
  br i1 %cmp397, label %if.then405, label %lor.lhs.false399

lor.lhs.false399:                                 ; preds = %land.lhs.true396
  %219 = load i32, i32* %kshchar, align 4
  %cmp400 = icmp eq i32 %219, 64
  br i1 %cmp400, label %if.then405, label %lor.lhs.false402

lor.lhs.false402:                                 ; preds = %lor.lhs.false399
  %220 = load i32, i32* %kshchar, align 4
  %cmp403 = icmp eq i32 %220, 33
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %lor.lhs.false402, %lor.lhs.false399, %land.lhs.true396
  %221 = load i32, i32* %flags, align 4
  %222 = load i32*, i32** %flagp.addr, align 4
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* %starter, align 4
  store i32 %223, i32* %retval, align 4
  br label %return

if.end406:                                        ; preds = %lor.lhs.false402, %lor.end, %if.end354
  %224 = load i32, i32* %kshchar, align 4
  %tobool407 = icmp ne i32 %224, 0
  br i1 %tobool407, label %land.lhs.true408, label %if.end413

land.lhs.true408:                                 ; preds = %if.end406
  %225 = load i32, i32* %hash, align 4
  %tobool409 = icmp ne i32 %225, 0
  br i1 %tobool409, label %if.then412, label %lor.lhs.false410

lor.lhs.false410:                                 ; preds = %land.lhs.true408
  %226 = load i32, i32* %count, align 4
  %tobool411 = icmp ne i32 %226, 0
  br i1 %tobool411, label %if.then412, label %if.end413

if.then412:                                       ; preds = %lor.lhs.false410, %land.lhs.true408
  store i32 0, i32* %retval, align 4
  br label %return

if.end413:                                        ; preds = %lor.lhs.false410, %if.end406
  %227 = load i32, i32* %kshchar, align 4
  %cmp414 = icmp eq i32 %227, 42
  br i1 %cmp414, label %if.then416, label %if.else417

if.then416:                                       ; preds = %if.end413
  store i32 6, i32* %op, align 4
  %228 = load i32*, i32** %flagp.addr, align 4
  store i32 2, i32* %228, align 4
  br label %if.end442

if.else417:                                       ; preds = %if.end413
  %229 = load i32, i32* %kshchar, align 4
  %cmp418 = icmp eq i32 %229, 43
  br i1 %cmp418, label %if.then420, label %if.else421

if.then420:                                       ; preds = %if.else417
  store i32 7, i32* %op, align 4
  %230 = load i32*, i32** %flagp.addr, align 4
  store i32 2, i32* %230, align 4
  br label %if.end441

if.else421:                                       ; preds = %if.else417
  %231 = load i32, i32* %kshchar, align 4
  %cmp422 = icmp eq i32 %231, 63
  br i1 %cmp422, label %if.then424, label %if.else425

if.then424:                                       ; preds = %if.else421
  store i32 0, i32* %op, align 4
  %232 = load i32*, i32** %flagp.addr, align 4
  store i32 0, i32* %232, align 4
  br label %if.end440

if.else425:                                       ; preds = %if.else421
  %233 = load i32, i32* %count, align 4
  %tobool426 = icmp ne i32 %233, 0
  br i1 %tobool426, label %if.then427, label %if.else429

if.then427:                                       ; preds = %if.else425
  store i32 12, i32* %op, align 4
  %234 = load i8*, i8** @patparse, align 4
  %add.ptr428 = getelementptr inbounds i8, i8* %234, i32 3
  store i8* %add.ptr428, i8** @patparse, align 4
  %235 = load i32*, i32** %flagp.addr, align 4
  store i32 2, i32* %235, align 4
  br label %if.end439

if.else429:                                       ; preds = %if.else425
  %236 = load i8*, i8** @patparse, align 4
  %incdec.ptr430 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr430, i8** @patparse, align 4
  %237 = load i8, i8* %incdec.ptr430, align 1
  %conv431 = sext i8 %237 to i32
  %238 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv432 = sext i8 %238 to i32
  %cmp433 = icmp eq i32 %conv431, %conv432
  br i1 %cmp433, label %if.then435, label %if.else437

if.then435:                                       ; preds = %if.else429
  store i32 7, i32* %op, align 4
  %239 = load i8*, i8** @patparse, align 4
  %incdec.ptr436 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr436, i8** @patparse, align 4
  %240 = load i32*, i32** %flagp.addr, align 4
  store i32 2, i32* %240, align 4
  br label %if.end438

if.else437:                                       ; preds = %if.else429
  store i32 6, i32* %op, align 4
  %241 = load i32*, i32** %flagp.addr, align 4
  store i32 2, i32* %241, align 4
  br label %if.end438

if.end438:                                        ; preds = %if.else437, %if.then435
  br label %if.end439

if.end439:                                        ; preds = %if.end438, %if.then427
  br label %if.end440

if.end440:                                        ; preds = %if.end439, %if.then424
  br label %if.end441

if.end441:                                        ; preds = %if.end440, %if.then420
  br label %if.end442

if.end442:                                        ; preds = %if.end441, %if.then416
  %242 = load i32, i32* %op, align 4
  %cmp443 = icmp eq i32 %242, 12
  br i1 %cmp443, label %if.then445, label %if.else500

if.then445:                                       ; preds = %if.end442
  %243 = load i8*, i8** @patparse, align 4
  store i8* %243, i8** %opp, align 4
  %arrayidx446 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 0
  %l = bitcast %union.upat* %arrayidx446 to i32*
  store i32 12, i32* %l, align 4
  %arrayidx447 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 1
  %l448 = bitcast %union.upat* %arrayidx447 to i32*
  store i32 0, i32* %l448, align 4
  %244 = load i8*, i8** @patparse, align 4
  %call449 = call i32 @zstrtol(i8* %244, i8** @patparse, i32 10)
  %arrayidx450 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 2
  %l451 = bitcast %union.upat* %arrayidx450 to i32*
  store i32 %call449, i32* %l451, align 4
  %245 = load i8*, i8** @patparse, align 4
  %246 = load i8*, i8** %opp, align 4
  %cmp452 = icmp eq i8* %245, %246
  br i1 %cmp452, label %if.then454, label %if.end457

if.then454:                                       ; preds = %if.then445
  %arrayidx455 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 2
  %l456 = bitcast %union.upat* %arrayidx455 to i32*
  store i32 0, i32* %l456, align 4
  br label %if.end457

if.end457:                                        ; preds = %if.then454, %if.then445
  %247 = load i8*, i8** @patparse, align 4
  %248 = load i8, i8* %247, align 1
  %conv458 = sext i8 %248 to i32
  %cmp459 = icmp ne i32 %conv458, 44
  br i1 %cmp459, label %land.lhs.true461, label %if.else475

land.lhs.true461:                                 ; preds = %if.end457
  %249 = load i8*, i8** @patparse, align 4
  %250 = load i8, i8* %249, align 1
  %conv462 = sext i8 %250 to i32
  %cmp463 = icmp ne i32 %conv462, -102
  br i1 %cmp463, label %if.then465, label %if.else475

if.then465:                                       ; preds = %land.lhs.true461
  %251 = load i8*, i8** @patparse, align 4
  %252 = load i8, i8* %251, align 1
  %conv466 = sext i8 %252 to i32
  %cmp467 = icmp ne i32 %conv466, -118
  br i1 %cmp467, label %if.then469, label %if.end470

if.then469:                                       ; preds = %if.then465
  store i32 0, i32* %retval, align 4
  br label %return

if.end470:                                        ; preds = %if.then465
  %arrayidx471 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 2
  %l472 = bitcast %union.upat* %arrayidx471 to i32*
  %253 = load i32, i32* %l472, align 4
  %arrayidx473 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 3
  %l474 = bitcast %union.upat* %arrayidx473 to i32*
  store i32 %253, i32* %l474, align 4
  br label %if.end491

if.else475:                                       ; preds = %land.lhs.true461, %if.end457
  %254 = load i8*, i8** @patparse, align 4
  %incdec.ptr476 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr476, i8** @patparse, align 4
  store i8* %incdec.ptr476, i8** %opp, align 4
  %255 = load i8*, i8** @patparse, align 4
  %call477 = call i32 @zstrtol(i8* %255, i8** @patparse, i32 10)
  %arrayidx478 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 3
  %l479 = bitcast %union.upat* %arrayidx478 to i32*
  store i32 %call477, i32* %l479, align 4
  %256 = load i8*, i8** @patparse, align 4
  %257 = load i8, i8* %256, align 1
  %conv480 = sext i8 %257 to i32
  %cmp481 = icmp ne i32 %conv480, -118
  br i1 %cmp481, label %if.then483, label %if.end484

if.then483:                                       ; preds = %if.else475
  store i32 0, i32* %retval, align 4
  br label %return

if.end484:                                        ; preds = %if.else475
  %258 = load i8*, i8** @patparse, align 4
  %259 = load i8*, i8** %opp, align 4
  %cmp485 = icmp eq i8* %258, %259
  br i1 %cmp485, label %if.then487, label %if.end490

if.then487:                                       ; preds = %if.end484
  %arrayidx488 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 3
  %l489 = bitcast %union.upat* %arrayidx488 to i32*
  store i32 -1, i32* %l489, align 4
  br label %if.end490

if.end490:                                        ; preds = %if.then487, %if.end484
  br label %if.end491

if.end491:                                        ; preds = %if.end490, %if.end470
  %260 = load i8*, i8** @patparse, align 4
  %incdec.ptr492 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr492, i8** @patparse, align 4
  %arrayidx493 = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 4
  %p = bitcast %union.upat* %arrayidx493 to i8**
  store i8* null, i8** %p, align 4
  %261 = load i32, i32* %starter, align 4
  %arraydecay = getelementptr inbounds [5 x %union.upat], [5 x %union.upat]* %countargs, i32 0, i32 0
  %262 = bitcast %union.upat* %arraydecay to i8*
  call void @patinsert(i32 11, i32 %261, i8* %262, i32 20)
  %263 = load i32, i32* %starter, align 4
  %add494 = add nsw i32 %263, 1
  %add495 = add nsw i32 %add494, 5
  store i32 %add495, i32* %opnd, align 4
  %264 = load i32, i32* %opnd, align 4
  %call496 = call i32 @patnode(i32 3)
  call void @pattail(i32 %264, i32 %call496)
  %265 = load i32, i32* %opnd, align 4
  %266 = load i32, i32* %starter, align 4
  %add497 = add nsw i32 %266, 1
  call void @pattail(i32 %265, i32 %add497)
  %call498 = call i32 @patnode(i32 5)
  store i32 %call498, i32* %next, align 4
  %267 = load i32, i32* %starter, align 4
  %268 = load i32, i32* %next, align 4
  call void @pattail(i32 %267, i32 %268)
  %269 = load i32, i32* %starter, align 4
  %add499 = add nsw i32 %269, 1
  %270 = load i32, i32* %next, align 4
  call void @pattail(i32 %add499, i32 %270)
  br label %if.end568

if.else500:                                       ; preds = %if.end442
  %271 = load i32, i32* %flags, align 4
  %and501 = and i32 %271, 1
  %tobool502 = icmp ne i32 %and501, 0
  br i1 %tobool502, label %land.lhs.true503, label %if.else531

land.lhs.true503:                                 ; preds = %if.else500
  %272 = load i32, i32* %op, align 4
  %cmp504 = icmp eq i32 %272, 6
  br i1 %cmp504, label %land.lhs.true509, label %lor.lhs.false506

lor.lhs.false506:                                 ; preds = %land.lhs.true503
  %273 = load i32, i32* %op, align 4
  %cmp507 = icmp eq i32 %273, 7
  br i1 %cmp507, label %land.lhs.true509, label %if.else531

land.lhs.true509:                                 ; preds = %lor.lhs.false506, %land.lhs.true503
  %274 = load i8*, i8** @patout, align 4
  %275 = bitcast i8* %274 to %union.upat*
  %276 = load i32, i32* %starter, align 4
  %add.ptr510 = getelementptr inbounds %union.upat, %union.upat* %275, i32 %276
  %l511 = bitcast %union.upat* %add.ptr510 to i32*
  %277 = load i32, i32* %l511, align 4
  %and512 = and i32 %277, 255
  %cmp513 = icmp eq i32 %and512, 64
  br i1 %cmp513, label %if.then515, label %if.else531

if.then515:                                       ; preds = %land.lhs.true509
  %278 = load i8*, i8** @patout, align 4
  %279 = bitcast i8* %278 to %union.upat*
  %280 = load i32, i32* %starter, align 4
  %add.ptr516 = getelementptr inbounds %union.upat, %union.upat* %279, i32 %280
  store %union.upat* %add.ptr516, %union.upat** %uptr, align 4
  %281 = load i32, i32* %op, align 4
  %cmp517 = icmp eq i32 %281, 7
  br i1 %cmp517, label %if.then519, label %if.else525

if.then519:                                       ; preds = %if.then515
  %282 = load %union.upat*, %union.upat** %uptr, align 4
  %l520 = bitcast %union.upat* %282 to i32*
  %283 = load i32, i32* %l520, align 4
  %and521 = and i32 %283, -256
  %or522 = or i32 %and521, 64
  %284 = load %union.upat*, %union.upat** %uptr, align 4
  %l523 = bitcast %union.upat* %284 to i32*
  store i32 %or522, i32* %l523, align 4
  %285 = load i32, i32* %starter, align 4
  %call524 = call i32 @patnode(i32 67)
  call void @pattail(i32 %285, i32 %call524)
  br label %if.end530

if.else525:                                       ; preds = %if.then515
  %286 = load %union.upat*, %union.upat** %uptr, align 4
  %l526 = bitcast %union.upat* %286 to i32*
  %287 = load i32, i32* %l526, align 4
  %and527 = and i32 %287, -256
  %or528 = or i32 %and527, 67
  %288 = load %union.upat*, %union.upat** %uptr, align 4
  %l529 = bitcast %union.upat* %288 to i32*
  store i32 %or528, i32* %l529, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.else525, %if.then519
  br label %if.end567

if.else531:                                       ; preds = %land.lhs.true509, %lor.lhs.false506, %if.else500
  %289 = load i32, i32* %flags, align 4
  %and532 = and i32 %289, 1
  %tobool533 = icmp ne i32 %and532, 0
  br i1 %tobool533, label %land.lhs.true534, label %if.else540

land.lhs.true534:                                 ; preds = %if.else531
  %290 = load i32, i32* %op, align 4
  %tobool535 = icmp ne i32 %290, 0
  br i1 %tobool535, label %land.lhs.true536, label %if.else540

land.lhs.true536:                                 ; preds = %land.lhs.true534
  %291 = load i32, i32* @patglobflags, align 4
  %and537 = and i32 %291, 255
  %tobool538 = icmp ne i32 %and537, 0
  br i1 %tobool538, label %if.else540, label %if.then539

if.then539:                                       ; preds = %land.lhs.true536
  %292 = load i32, i32* %op, align 4
  %293 = load i32, i32* %starter, align 4
  call void @patinsert(i32 %292, i32 %293, i8* null, i32 0)
  br label %if.end566

if.else540:                                       ; preds = %land.lhs.true536, %land.lhs.true534, %if.else531
  %294 = load i32, i32* %op, align 4
  %cmp541 = icmp eq i32 %294, 6
  br i1 %cmp541, label %if.then543, label %if.else548

if.then543:                                       ; preds = %if.else540
  %p544 = bitcast %union.upat* %up to i8**
  store i8* null, i8** %p544, align 4
  %295 = load i32, i32* %starter, align 4
  %296 = bitcast %union.upat* %up to i8*
  call void @patinsert(i32 33, i32 %295, i8* %296, i32 4)
  %297 = load i32, i32* %starter, align 4
  %call545 = call i32 @patnode(i32 3)
  call void @patoptail(i32 %297, i32 %call545)
  %298 = load i32, i32* %starter, align 4
  %299 = load i32, i32* %starter, align 4
  call void @patoptail(i32 %298, i32 %299)
  %300 = load i32, i32* %starter, align 4
  %call546 = call i32 @patnode(i32 32)
  call void @pattail(i32 %300, i32 %call546)
  %301 = load i32, i32* %starter, align 4
  %call547 = call i32 @patnode(i32 5)
  call void @pattail(i32 %301, i32 %call547)
  br label %if.end565

if.else548:                                       ; preds = %if.else540
  %302 = load i32, i32* %op, align 4
  %cmp549 = icmp eq i32 %302, 7
  br i1 %cmp549, label %if.then551, label %if.else557

if.then551:                                       ; preds = %if.else548
  %call552 = call i32 @patnode(i32 33)
  store i32 %call552, i32* %next, align 4
  %p553 = bitcast %union.upat* %up to i8**
  store i8* null, i8** %p553, align 4
  %303 = bitcast %union.upat* %up to i8*
  call void @patadd(i8* %303, i32 0, i32 4, i32 0)
  %304 = load i32, i32* %starter, align 4
  %305 = load i32, i32* %next, align 4
  call void @pattail(i32 %304, i32 %305)
  %call554 = call i32 @patnode(i32 3)
  %306 = load i32, i32* %starter, align 4
  call void @pattail(i32 %call554, i32 %306)
  %307 = load i32, i32* %next, align 4
  %call555 = call i32 @patnode(i32 32)
  call void @pattail(i32 %307, i32 %call555)
  %308 = load i32, i32* %starter, align 4
  %call556 = call i32 @patnode(i32 5)
  call void @pattail(i32 %308, i32 %call556)
  br label %if.end564

if.else557:                                       ; preds = %if.else548
  %309 = load i32, i32* %kshchar, align 4
  %cmp558 = icmp eq i32 %309, 63
  br i1 %cmp558, label %if.then560, label %if.end563

if.then560:                                       ; preds = %if.else557
  %310 = load i32, i32* %starter, align 4
  call void @patinsert(i32 32, i32 %310, i8* null, i32 0)
  %311 = load i32, i32* %starter, align 4
  %call561 = call i32 @patnode(i32 32)
  call void @pattail(i32 %311, i32 %call561)
  %call562 = call i32 @patnode(i32 5)
  store i32 %call562, i32* %next, align 4
  %312 = load i32, i32* %starter, align 4
  %313 = load i32, i32* %next, align 4
  call void @pattail(i32 %312, i32 %313)
  %314 = load i32, i32* %starter, align 4
  %315 = load i32, i32* %next, align 4
  call void @patoptail(i32 %314, i32 %315)
  br label %if.end563

if.end563:                                        ; preds = %if.then560, %if.else557
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.then551
  br label %if.end565

if.end565:                                        ; preds = %if.end564, %if.then543
  br label %if.end566

if.end566:                                        ; preds = %if.end565, %if.then539
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %if.end530
  br label %if.end568

if.end568:                                        ; preds = %if.end567, %if.end491
  %316 = load i8*, i8** @patparse, align 4
  %317 = load i8, i8* %316, align 1
  %conv569 = sext i8 %317 to i32
  %318 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv570 = sext i8 %318 to i32
  %cmp571 = icmp eq i32 %conv569, %conv570
  br i1 %cmp571, label %if.then573, label %if.end574

if.then573:                                       ; preds = %if.end568
  store i32 0, i32* %retval, align 4
  br label %return

if.end574:                                        ; preds = %if.end568
  %319 = load i32, i32* %starter, align 4
  store i32 %319, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end574, %if.then573, %if.then483, %if.then469, %if.then412, %if.then405, %sw.bb350, %sw.bb349, %if.then338, %if.then310, %if.then305, %if.then296
  %320 = load i32, i32* %retval, align 4
  ret i32 %320
}

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @patinsert(i32 %op, i32 %opnd, i8* %xtra, i32 %sz) #0 {
entry:
  %op.addr = alloca i32, align 4
  %opnd.addr = alloca i32, align 4
  %xtra.addr = alloca i8*, align 4
  %sz.addr = alloca i32, align 4
  %src = alloca i8*, align 4
  %dst = alloca i8*, align 4
  %opdst = alloca i8*, align 4
  %buf = alloca %union.upat, align 4
  %lptr = alloca %union.upat*, align 4
  store i32 %op, i32* %op.addr, align 4
  store i32 %opnd, i32* %opnd.addr, align 4
  store i8* %xtra, i8** %xtra.addr, align 4
  store i32 %sz, i32* %sz.addr, align 4
  %l = bitcast %union.upat* %buf to i32*
  store i32 0, i32* %l, align 4
  %0 = bitcast %union.upat* %buf to i8*
  call void @patadd(i8* %0, i32 0, i32 4, i32 0)
  %1 = load i32, i32* %sz.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %xtra.addr, align 4
  %3 = load i32, i32* %sz.addr, align 4
  call void @patadd(i8* %2, i32 0, i32 %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @patcode, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 -4
  %5 = load i32, i32* %sz.addr, align 4
  %idx.neg = sub i32 0, %5
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i32 %idx.neg
  store i8* %add.ptr1, i8** %src, align 4
  %6 = load i8*, i8** @patcode, align 4
  store i8* %6, i8** %dst, align 4
  %7 = load i8*, i8** @patout, align 4
  %8 = load i32, i32* %opnd.addr, align 4
  %mul = mul i32 %8, 4
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i32 %mul
  store i8* %add.ptr2, i8** %opdst, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i8*, i8** %src, align 4
  %10 = load i8*, i8** %opdst, align 4
  %cmp = icmp ugt i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %src, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %src, align 4
  %12 = load i8, i8* %incdec.ptr, align 1
  %13 = load i8*, i8** %dst, align 4
  %incdec.ptr3 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr3, i8** %dst, align 4
  store i8 %12, i8* %incdec.ptr3, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %opdst, align 4
  %15 = bitcast i8* %14 to %union.upat*
  store %union.upat* %15, %union.upat** %lptr, align 4
  %16 = load i32, i32* %op.addr, align 4
  %17 = load %union.upat*, %union.upat** %lptr, align 4
  %l4 = bitcast %union.upat* %17 to i32*
  store i32 %16, i32* %l4, align 4
  %18 = load i8*, i8** %opdst, align 4
  %add.ptr5 = getelementptr inbounds i8, i8* %18, i32 4
  store i8* %add.ptr5, i8** %opdst, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.body8, %while.end
  %19 = load i32, i32* %sz.addr, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %sz.addr, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %while.body8, label %while.end11

while.body8:                                      ; preds = %while.cond6
  %20 = load i8*, i8** %xtra.addr, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr9, i8** %xtra.addr, align 4
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %opdst, align 4
  %incdec.ptr10 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr10, i8** %opdst, align 4
  store i8 %21, i8* %22, align 1
  br label %while.cond6

while.end11:                                      ; preds = %while.cond6
  ret void
}

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) #1

; Function Attrs: noinline nounwind
define internal i8* @charnext(i8* %x, i8* %y) #0 {
entry:
  %retval = alloca i8*, align 4
  %x.addr = alloca i8*, align 4
  %y.addr = alloca i8*, align 4
  %wc = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 4
  store i8* %y, i8** %y.addr, align 4
  %0 = load i32, i32* @patglobflags, align 4
  %and = and i32 %0, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %x.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %and1 = and i32 %conv, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %x.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %add.ptr, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %x.addr, align 4
  %5 = load i8*, i8** %y.addr, align 4
  %6 = load i8*, i8** %x.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbrtowc(i32* %wc, i8* %4, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate)
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %cmp5 = icmp eq i32 %8, -2
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %9 = load i8*, i8** %x.addr, align 4
  %add.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %add.ptr8, i8** %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false4
  %10 = load i8*, i8** %x.addr, align 4
  %11 = load i32, i32* %ret, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %12 = load i32, i32* %ret, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 1, %cond.false ]
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i32 %cond
  store i8* %add.ptr11, i8** %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then7, %if.then
  %13 = load i8*, i8** %retval, align 4
  ret i8* %13
}

; Function Attrs: noinline nounwind
define internal i32 @charrefinc(i8** %x, i8* %y, i32* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i8**, align 4
  %y.addr = alloca i8*, align 4
  %z.addr = alloca i32*, align 4
  %wc = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8** %x, i8*** %x.addr, align 4
  store i8* %y, i8** %y.addr, align 4
  store i32* %z, i32** %z.addr, align 4
  %0 = load i32, i32* @patglobflags, align 4
  %and = and i32 %0, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %x.addr, align 4
  %2 = load i8*, i8** %1, align 4
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %and1 = and i32 %conv, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8**, i8*** %x.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %4, align 4
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  store i32 %conv3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8**, i8*** %x.addr, align 4
  %8 = load i8*, i8** %7, align 4
  %9 = load i8*, i8** %y.addr, align 4
  %10 = load i8**, i8*** %x.addr, align 4
  %11 = load i8*, i8** %10, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbrtowc(i32* %wc, i8* %8, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate)
  store i32 %call, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %13 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %13, -2
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  %14 = load i32*, i32** %z.addr, align 4
  store i32 1, i32* %14, align 4
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %15 = load i8**, i8*** %x.addr, align 4
  %16 = load i8*, i8** %15, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr9, i8** %15, align 4
  %17 = load i8, i8* %16, align 1
  %conv10 = zext i8 %17 to i32
  %add = add nsw i32 56320, %conv10
  store i32 %add, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false5
  %18 = load i32, i32* %ret, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %19 = load i32, i32* %ret, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 1, %cond.false ]
  %20 = load i8**, i8*** %x.addr, align 4
  %21 = load i8*, i8** %20, align 4
  %add.ptr = getelementptr inbounds i8, i8* %21, i32 %cond
  store i8* %add.ptr, i8** %20, align 4
  %22 = load i32, i32* %wc, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then8, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare i32 @towlower(i32) #1

declare i32 @towupper(i32) #1

; Function Attrs: noinline nounwind
define internal i32 @charref(i8* %x, i8* %y, i32* %zmb_ind) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i8*, align 4
  %y.addr = alloca i8*, align 4
  %zmb_ind.addr = alloca i32*, align 4
  %wc = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 4
  store i8* %y, i8** %y.addr, align 4
  store i32* %zmb_ind, i32** %zmb_ind.addr, align 4
  %0 = load i32, i32* @patglobflags, align 4
  %and = and i32 %0, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %x.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %and1 = and i32 %conv, 128
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %x.addr, align 4
  %4 = load i8, i8* %3, align 1
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %x.addr, align 4
  %6 = load i8*, i8** %y.addr, align 4
  %7 = load i8*, i8** %x.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @mbrtowc(i32* %wc, i8* %5, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate)
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %9, -2
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__mbstate_t* @shiftstate to i8*), i8 0, i32 8, i32 4, i1 false)
  %10 = load i32*, i32** %zmb_ind.addr, align 4
  %tobool9 = icmp ne i32* %10, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then8
  %11 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %11, -1
  %cond = select i1 %cmp11, i32 2, i32 1
  %12 = load i32*, i32** %zmb_ind.addr, align 4
  store i32 %cond, i32* %12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8
  %13 = load i8*, i8** %x.addr, align 4
  %14 = load i8, i8* %13, align 1
  %conv14 = zext i8 %14 to i32
  %add = add nsw i32 56320, %conv14
  store i32 %add, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false5
  %15 = load i32*, i32** %zmb_ind.addr, align 4
  %tobool16 = icmp ne i32* %15, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %16 = load i32*, i32** %zmb_ind.addr, align 4
  store i32 0, i32* %16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %17 = load i32, i32* %wc, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.end13, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @patrepeat(%union.upat* %p, i8* %charstart) #0 {
entry:
  %p.addr = alloca %union.upat*, align 4
  %charstart.addr = alloca i8*, align 4
  %count = alloca i32, align 4
  %tch = alloca i32, align 4
  %charmatch_cache = alloca i32, align 4
  %scan = alloca i8*, align 4
  %opnd = alloca i8*, align 4
  %zmb_ind = alloca i32, align 4
  %cr = alloca i32, align 4
  store %union.upat* %p, %union.upat** %p.addr, align 4
  store i8* %charstart, i8** %charstart.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  store i8* %0, i8** %scan, align 4
  %1 = load %union.upat*, %union.upat** %p.addr, align 4
  %add.ptr = getelementptr inbounds %union.upat, %union.upat* %1, i32 1
  %2 = bitcast %union.upat* %add.ptr to i8*
  store i8* %2, i8** %opnd, align 4
  %3 = load %union.upat*, %union.upat** %p.addr, align 4
  %l = bitcast %union.upat* %3 to i32*
  %4 = load i32, i32* %l, align 4
  %and = and i32 %4, 255
  switch i32 %and, label %sw.epilog [
    i32 4, label %sw.bb
    i32 65, label %sw.bb40
    i32 66, label %sw.bb40
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union.upat*, %union.upat** %p.addr, align 4
  %add.ptr1 = getelementptr inbounds %union.upat, %union.upat* %5, i32 2
  %6 = bitcast %union.upat* %add.ptr1 to i8*
  %7 = load %union.upat*, %union.upat** %p.addr, align 4
  %add.ptr2 = getelementptr inbounds %union.upat, %union.upat* %7, i32 2
  %8 = bitcast %union.upat* %add.ptr2 to i8*
  %9 = load %union.upat*, %union.upat** %p.addr, align 4
  %arrayidx = getelementptr inbounds %union.upat, %union.upat* %9, i32 1
  %l3 = bitcast %union.upat* %arrayidx to i32*
  %10 = load i32, i32* %l3, align 4
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i32 %10
  %call = call i32 @charref(i8* %6, i8* %add.ptr4, i32* null)
  store i32 %call, i32* %tch, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %11 = load i8*, i8** %scan, align 4
  %12 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp = icmp ult i8* %11, %12
  br i1 %cmp, label %land.rhs, label %land.end36

land.rhs:                                         ; preds = %while.cond
  %13 = load i8*, i8** %scan, align 4
  %14 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call5 = call i32 @charref(i8* %13, i8* %14, i32* null)
  store i32 %call5, i32* %charmatch_cache, align 4
  %15 = load i32, i32* %charmatch_cache, align 4
  %16 = load i32, i32* %tch, align 4
  %cmp6 = icmp eq i32 %15, %16
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %17 = load i32, i32* @patglobflags, align 4
  %and7 = and i32 %17, 512
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %cond.true, label %cond.false20

cond.true:                                        ; preds = %lor.rhs
  %18 = load i32, i32* %charmatch_cache, align 4
  %call8 = call i32 @iswupper(i32 %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %cond.true10, label %cond.false

cond.true10:                                      ; preds = %cond.true
  %19 = load i32, i32* %charmatch_cache, align 4
  %call11 = call i32 @towlower(i32 %19)
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %20 = load i32, i32* %charmatch_cache, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true10
  %cond = phi i32 [ %call11, %cond.true10 ], [ %20, %cond.false ]
  %21 = load i32, i32* %tch, align 4
  %call12 = call i32 @iswupper(i32 %21)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %cond.true14, label %cond.false16

cond.true14:                                      ; preds = %cond.end
  %22 = load i32, i32* %tch, align 4
  %call15 = call i32 @towlower(i32 %22)
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  %23 = load i32, i32* %tch, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi i32 [ %call15, %cond.true14 ], [ %23, %cond.false16 ]
  %cmp19 = icmp eq i32 %cond, %cond18
  %conv = zext i1 %cmp19 to i32
  br label %cond.end33

cond.false20:                                     ; preds = %lor.rhs
  %24 = load i32, i32* @patglobflags, align 4
  %and21 = and i32 %24, 256
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false30

cond.true23:                                      ; preds = %cond.false20
  %25 = load i32, i32* %tch, align 4
  %call24 = call i32 @iswlower(i32 %25)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.rhs26, label %land.end

land.rhs26:                                       ; preds = %cond.true23
  %26 = load i32, i32* %tch, align 4
  %call27 = call i32 @towupper(i32 %26)
  %27 = load i32, i32* %charmatch_cache, align 4
  %cmp28 = icmp eq i32 %call27, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs26, %cond.true23
  %28 = phi i1 [ false, %cond.true23 ], [ %cmp28, %land.rhs26 ]
  %land.ext = zext i1 %28 to i32
  br label %cond.end31

cond.false30:                                     ; preds = %cond.false20
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %land.end
  %cond32 = phi i32 [ %land.ext, %land.end ], [ 0, %cond.false30 ]
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end31, %cond.end17
  %cond34 = phi i32 [ %conv, %cond.end17 ], [ %cond32, %cond.end31 ]
  %tobool35 = icmp ne i32 %cond34, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end33, %land.rhs
  %29 = phi i1 [ true, %land.rhs ], [ %tobool35, %cond.end33 ]
  br label %land.end36

land.end36:                                       ; preds = %lor.end, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %29, %lor.end ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end36
  %31 = load i8*, i8** %charstart.addr, align 4
  %32 = load i8*, i8** %scan, align 4
  %33 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx38 = getelementptr inbounds i8, i8* %31, i32 %sub.ptr.sub
  store i8 1, i8* %arrayidx38, align 1
  %34 = load i32, i32* %count, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %count, align 4
  %35 = load i8*, i8** %scan, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call39 = call i8* @charnext(i8* %35, i8* %36)
  store i8* %call39, i8** %scan, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end36
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry, %entry
  br label %while.cond41

while.cond41:                                     ; preds = %if.end64, %sw.bb40
  %37 = load i8*, i8** %scan, align 4
  %38 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %cmp42 = icmp ult i8* %37, %38
  br i1 %cmp42, label %while.body44, label %while.end71

while.body44:                                     ; preds = %while.cond41
  %39 = load i8*, i8** %scan, align 4
  %40 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call45 = call i32 @charref(i8* %39, i8* %40, i32* %zmb_ind)
  store i32 %call45, i32* %cr, align 4
  %41 = load i32, i32* @patglobflags, align 4
  %and46 = and i32 %41, 4096
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then, label %if.else

if.then:                                          ; preds = %while.body44
  %42 = load i8*, i8** %opnd, align 4
  %43 = load i32, i32* %cr, align 4
  %44 = load i32, i32* %zmb_ind, align 4
  %call48 = call i32 @mb_patmatchrange(i8* %42, i32 %43, i32 %44, i32* null, i32* null)
  %45 = load %union.upat*, %union.upat** %p.addr, align 4
  %l49 = bitcast %union.upat* %45 to i32*
  %46 = load i32, i32* %l49, align 4
  %and50 = and i32 %46, 255
  %cmp51 = icmp eq i32 %and50, 65
  %conv52 = zext i1 %cmp51 to i32
  %xor = xor i32 %call48, %conv52
  %tobool53 = icmp ne i32 %xor, 0
  br i1 %tobool53, label %if.then54, label %if.end

if.then54:                                        ; preds = %if.then
  br label %while.end71

if.end:                                           ; preds = %if.then
  br label %if.end64

if.else:                                          ; preds = %while.body44
  %47 = load i8*, i8** %opnd, align 4
  %48 = load i32, i32* %cr, align 4
  %call55 = call i32 @patmatchrange(i8* %47, i32 %48, i32* null, i32* null)
  %49 = load %union.upat*, %union.upat** %p.addr, align 4
  %l56 = bitcast %union.upat* %49 to i32*
  %50 = load i32, i32* %l56, align 4
  %and57 = and i32 %50, 255
  %cmp58 = icmp eq i32 %and57, 65
  %conv59 = zext i1 %cmp58 to i32
  %xor60 = xor i32 %call55, %conv59
  %tobool61 = icmp ne i32 %xor60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else
  br label %while.end71

if.end63:                                         ; preds = %if.else
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end
  %51 = load i8*, i8** %charstart.addr, align 4
  %52 = load i8*, i8** %scan, align 4
  %53 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %sub.ptr.lhs.cast65 = ptrtoint i8* %52 to i32
  %sub.ptr.rhs.cast66 = ptrtoint i8* %53 to i32
  %sub.ptr.sub67 = sub i32 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %arrayidx68 = getelementptr inbounds i8, i8* %51, i32 %sub.ptr.sub67
  store i8 1, i8* %arrayidx68, align 1
  %54 = load i32, i32* %count, align 4
  %inc69 = add nsw i32 %54, 1
  store i32 %inc69, i32* %count, align 4
  %55 = load i8*, i8** %scan, align 4
  %56 = load i8*, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 1), align 4
  %call70 = call i8* @charnext(i8* %55, i8* %56)
  store i8* %call70, i8** %scan, align 4
  br label %while.cond41

while.end71:                                      ; preds = %if.then62, %if.then54, %while.cond41
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %while.end71, %while.end
  %57 = load i8*, i8** %scan, align 4
  store i8* %57, i8** getelementptr inbounds (%struct.rpat, %struct.rpat* @pattrystate, i32 0, i32 2), align 4
  %58 = load i32, i32* %count, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
