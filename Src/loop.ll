; ModuleID = 'loop.c'
source_filename = "loop.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct._IO_FILE = type opaque
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.mnumber = type { %union.anon, i32 }
%union.anon = type { double }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.0 = type { double }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }

@simple_pline = external global i32, align 4
@opts = external global [181 x i8], align 1
@xtrerr = external global %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errflag = external global i32, align 4
@pparams = external global i8**, align 4
@lastval = external global i32, align 4
@loops = common global i32 0, align 4
@typtab = external global [256 x i16], align 2
@breaks = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@contflag = common global i32 0, align 4
@retflag = external global i32, align 4
@this_noerrexit = external global i32, align 4
@SHTTY = external global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bufstack = external global %union.linkroot*, align 4
@isfirstln = external global i32, align 4
@prompt3 = external global i8*, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@zterm_columns = external global i32, align 4
@zterm_lines = external global i32, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%d) %s\00", align 1
@noerrexit = external global i32, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"case %s (\00", align 1
@queueing_enabled = external global i32, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@try_errflag = global i32 -1, align 4
@try_interrupt = global i32 -1, align 4
@try_tryflag = global i32 0, align 4

; Function Attrs: noinline nounwind
define i32 @execfor(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %loop = alloca i32*, align 4
  %code = alloca i32, align 4
  %iscond = alloca i32, align 4
  %ctok = alloca i32, align 4
  %atok = alloca i32, align 4
  %last = alloca i32, align 4
  %name = alloca i8*, align 4
  %str = alloca i8*, align 4
  %cond = alloca i8*, align 4
  %advance = alloca i8*, align 4
  %val = alloca i32, align 4
  %vars = alloca %union.linkroot*, align 4
  %args = alloca %union.linkroot*, align 4
  %old_simple_pline = alloca i32, align 4
  %str2 = alloca i8*, align 4
  %tmp = alloca %struct.mnumber, align 8
  %htok = alloca i32, align 4
  %x = alloca i8**, align 4
  %node = alloca %struct.linknode*, align 4
  %count = alloca i32, align 4
  %tmp162 = alloca %struct.mnumber, align 8
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %shr = lshr i32 %3, 5
  %and = and i32 %shr, 3
  %cmp = icmp eq i32 %and, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %iscond, align 4
  store i32 0, i32* %ctok, align 4
  store i32 0, i32* %atok, align 4
  store i32 0, i32* %last, align 4
  store i8* null, i8** %cond, align 4
  store i8* null, i8** %advance, align 4
  store i32 0, i32* %val, align 4
  store %union.linkroot* null, %union.linkroot** %vars, align 4
  store %union.linkroot* null, %union.linkroot** %args, align 4
  %4 = load i32, i32* @simple_pline, align 4
  store i32 %4, i32* %old_simple_pline, align 4
  store i32 1, i32* @simple_pline, align 4
  %5 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %5, i32 0, i32 1
  %6 = load i32*, i32** %pc1, align 4
  %7 = load i32, i32* %code, align 4
  %shr2 = lshr i32 %7, 5
  %shr3 = lshr i32 %shr2, 2
  %add.ptr = getelementptr inbounds i32, i32* %6, i32 %shr3
  store i32* %add.ptr, i32** %end, align 4
  %8 = load i32, i32* %iscond, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %9, i32 0, i32* null)
  %call4 = call i8* @dupstring(i8* %call)
  store i8* %call4, i8** %str, align 4
  call void @singsub(i8** %str)
  %10 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %11 = load i8*, i8** %str, align 4
  %call7 = call i8* @dupstring(i8* %11)
  store i8* %call7, i8** %str2, align 4
  %12 = load i8*, i8** %str2, align 4
  call void @untokenize(i8* %12)
  call void @printprompt4()
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %14 = load i8*, i8** %str2, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call9 = call i32 @fflush(%struct._IO_FILE* %15)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %16 = load i32, i32* @errflag, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  %17 = load i8*, i8** %str, align 4
  call void @matheval(%struct.mnumber* sret %tmp, i8* %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %18 = load i32, i32* @errflag, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %19 = load i32*, i32** %end, align 4
  %20 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc15 = getelementptr inbounds %struct.estate, %struct.estate* %20, i32 0, i32 1
  store i32* %19, i32** %pc15, align 4
  %21 = load i32, i32* %old_simple_pline, align 4
  store i32 %21, i32* @simple_pline, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %22 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call17 = call i8* @ecgetstr(%struct.estate* %22, i32 0, i32* %ctok)
  store i8* %call17, i8** %cond, align 4
  %23 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call18 = call i8* @ecgetstr(%struct.estate* %23, i32 0, i32* %atok)
  store i8* %call18, i8** %advance, align 4
  br label %if.end50

if.else:                                          ; preds = %entry
  %24 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %25 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc19 = getelementptr inbounds %struct.estate, %struct.estate* %25, i32 0, i32 1
  %26 = load i32*, i32** %pc19, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr, i32** %pc19, align 4
  %27 = load i32, i32* %26, align 4
  %call20 = call %union.linkroot* @ecgetlist(%struct.estate* %24, i32 %27, i32 0, i32* null)
  store %union.linkroot* %call20, %union.linkroot** %vars, align 4
  %28 = load i32, i32* %code, align 4
  %shr21 = lshr i32 %28, 5
  %and22 = and i32 %shr21, 3
  %cmp23 = icmp eq i32 %and22, 1
  br i1 %cmp23, label %if.then25, label %if.else41

if.then25:                                        ; preds = %if.else
  store i32 0, i32* %htok, align 4
  %29 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %30 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc27 = getelementptr inbounds %struct.estate, %struct.estate* %30, i32 0, i32 1
  %31 = load i32*, i32** %pc27, align 4
  %incdec.ptr28 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr28, i32** %pc27, align 4
  %32 = load i32, i32* %31, align 4
  %call29 = call %union.linkroot* @ecgetlist(%struct.estate* %29, i32 %32, i32 2, i32* %htok)
  store %union.linkroot* %call29, %union.linkroot** %args, align 4
  %tobool30 = icmp ne %union.linkroot* %call29, null
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then25
  %33 = load i32*, i32** %end, align 4
  %34 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc32 = getelementptr inbounds %struct.estate, %struct.estate* %34, i32 0, i32 1
  store i32* %33, i32** %pc32, align 4
  %35 = load i32, i32* %old_simple_pline, align 4
  store i32 %35, i32* @simple_pline, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then25
  %36 = load i32, i32* %htok, align 4
  %tobool34 = icmp ne i32 %36, 0
  br i1 %tobool34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end33
  %37 = load %union.linkroot*, %union.linkroot** %args, align 4
  call void @execsubst(%union.linkroot* %37)
  %38 = load i32, i32* @errflag, align 4
  %tobool36 = icmp ne i32 %38, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then35
  %39 = load i32*, i32** %end, align 4
  %40 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc38 = getelementptr inbounds %struct.estate, %struct.estate* %40, i32 0, i32 1
  store i32* %39, i32** %pc38, align 4
  %41 = load i32, i32* %old_simple_pline, align 4
  store i32 %41, i32* @simple_pline, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end33
  br label %if.end49

if.else41:                                        ; preds = %if.else
  %call43 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call43, %union.linkroot** %args, align 4
  %42 = load i8**, i8*** @pparams, align 4
  store i8** %42, i8*** %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else41
  %43 = load i8**, i8*** %x, align 4
  %44 = load i8*, i8** %43, align 4
  %tobool44 = icmp ne i8* %44, null
  br i1 %tobool44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %union.linkroot*, %union.linkroot** %args, align 4
  %46 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list = bitcast %union.linkroot* %46 to %struct.linklist*
  %last45 = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %47 = load %struct.linknode*, %struct.linknode** %last45, align 4
  %48 = load i8**, i8*** %x, align 4
  %49 = load i8*, i8** %48, align 4
  %call46 = call i8* @dupstring(i8* %49)
  %call47 = call %struct.linknode* @insertlinknode(%union.linkroot* %45, %struct.linknode* %47, i8* %call46)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i8**, i8*** %x, align 4
  %incdec.ptr48 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr48, i8*** %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.end40
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end16
  %51 = load %union.linkroot*, %union.linkroot** %args, align 4
  %tobool51 = icmp ne %union.linkroot* %51, null
  br i1 %tobool51, label %lor.lhs.false, label %if.then55

lor.lhs.false:                                    ; preds = %if.end50
  %52 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list52 = bitcast %union.linkroot* %52 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list52, i32 0, i32 0
  %53 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp53 = icmp eq %struct.linknode* %53, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %if.end50
  store i32 0, i32* @lastval, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %lor.lhs.false
  %54 = load i32, i32* @loops, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* @loops, align 4
  call void @pushheap()
  call void @cmdpush(i32 0)
  %55 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc57 = getelementptr inbounds %struct.estate, %struct.estate* %55, i32 0, i32 1
  %56 = load i32*, i32** %pc57, align 4
  store i32* %56, i32** %loop, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end171, %if.end56
  %57 = load i32, i32* %last, align 4
  %tobool58 = icmp ne i32 %57, 0
  %lnot = xor i1 %tobool58, true
  br i1 %lnot, label %while.body, label %while.end172

while.body:                                       ; preds = %while.cond
  %58 = load i32, i32* %iscond, align 4
  %tobool59 = icmp ne i32 %58, 0
  br i1 %tobool59, label %if.then60, label %if.else95

if.then60:                                        ; preds = %while.body
  %59 = load i32, i32* %ctok, align 4
  %tobool61 = icmp ne i32 %59, 0
  br i1 %tobool61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.then60
  %60 = load i8*, i8** %cond, align 4
  %call63 = call i8* @dupstring(i8* %60)
  store i8* %call63, i8** %str, align 4
  call void @singsub(i8** %str)
  br label %if.end65

if.else64:                                        ; preds = %if.then60
  %61 = load i8*, i8** %cond, align 4
  store i8* %61, i8** %str, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then62
  %62 = load i32, i32* @errflag, align 4
  %tobool66 = icmp ne i32 %62, 0
  br i1 %tobool66, label %if.end85, label %if.then67

if.then67:                                        ; preds = %if.end65
  br label %while.cond68

while.cond68:                                     ; preds = %while.body73, %if.then67
  %63 = load i8*, i8** %str, align 4
  %64 = load i8, i8* %63, align 1
  %idxprom = zext i8 %64 to i32
  %arrayidx69 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %65 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %65 to i32
  %and71 = and i32 %conv70, 4
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %while.body73, label %while.end

while.body73:                                     ; preds = %while.cond68
  %66 = load i8*, i8** %str, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr74, i8** %str, align 4
  br label %while.cond68

while.end:                                        ; preds = %while.cond68
  %67 = load i8*, i8** %str, align 4
  %68 = load i8, i8* %67, align 1
  %tobool75 = icmp ne i8 %68, 0
  br i1 %tobool75, label %if.then76, label %if.else83

if.then76:                                        ; preds = %while.end
  %69 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool77 = icmp ne i8 %69, 0
  br i1 %tobool77, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.then76
  call void @printprompt4()
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %71 = load i8*, i8** %str, align 4
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call80 = call i32 @fflush(%struct._IO_FILE* %72)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.then76
  %73 = load i8*, i8** %str, align 4
  %call82 = call i32 @mathevali(i8* %73)
  store i32 %call82, i32* %val, align 4
  br label %if.end84

if.else83:                                        ; preds = %while.end
  store i32 1, i32* %val, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end81
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end65
  %74 = load i32, i32* @errflag, align 4
  %tobool86 = icmp ne i32 %74, 0
  br i1 %tobool86, label %if.then87, label %if.end91

if.then87:                                        ; preds = %if.end85
  %75 = load i32, i32* @breaks, align 4
  %tobool88 = icmp ne i32 %75, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then87
  %76 = load i32, i32* @breaks, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* @breaks, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then87
  store i32 1, i32* @lastval, align 4
  br label %while.end172

if.end91:                                         ; preds = %if.end85
  %77 = load i32, i32* %val, align 4
  %tobool92 = icmp ne i32 %77, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.end91
  br label %while.end172

if.end94:                                         ; preds = %if.end91
  br label %if.end126

if.else95:                                        ; preds = %while.body
  store i32 0, i32* %count, align 4
  %78 = load %union.linkroot*, %union.linkroot** %vars, align 4
  %list98 = bitcast %union.linkroot* %78 to %struct.linklist*
  %first99 = getelementptr inbounds %struct.linklist, %struct.linklist* %list98, i32 0, i32 0
  %79 = load %struct.linknode*, %struct.linknode** %first99, align 4
  store %struct.linknode* %79, %struct.linknode** %node, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc121, %if.else95
  %80 = load %struct.linknode*, %struct.linknode** %node, align 4
  %tobool101 = icmp ne %struct.linknode* %80, null
  br i1 %tobool101, label %for.body102, label %for.end122

for.body102:                                      ; preds = %for.cond100
  %81 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %81, i32 0, i32 2
  %82 = load i8*, i8** %dat, align 4
  store i8* %82, i8** %name, align 4
  %83 = load %union.linkroot*, %union.linkroot** %args, align 4
  %tobool103 = icmp ne %union.linkroot* %83, null
  br i1 %tobool103, label %lor.lhs.false104, label %if.then107

lor.lhs.false104:                                 ; preds = %for.body102
  %84 = load %union.linkroot*, %union.linkroot** %args, align 4
  %call105 = call i8* @ugetnode(%union.linkroot* %84)
  store i8* %call105, i8** %str, align 4
  %tobool106 = icmp ne i8* %call105, null
  br i1 %tobool106, label %if.end112, label %if.then107

if.then107:                                       ; preds = %lor.lhs.false104, %for.body102
  %85 = load i32, i32* %count, align 4
  %tobool108 = icmp ne i32 %85, 0
  br i1 %tobool108, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.then107
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %str, align 4
  store i32 1, i32* %last, align 4
  br label %if.end111

if.else110:                                       ; preds = %if.then107
  br label %for.end122

if.end111:                                        ; preds = %if.then109
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %lor.lhs.false104
  %86 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool113 = icmp ne i8 %86, 0
  br i1 %tobool113, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.end112
  call void @printprompt4()
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %88 = load i8*, i8** %name, align 4
  %89 = load i8*, i8** %str, align 4
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %88, i8* %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call116 = call i32 @fflush(%struct._IO_FILE* %90)
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end112
  %91 = load i8*, i8** %name, align 4
  %92 = load i8*, i8** %str, align 4
  %call118 = call i8* @ztrdup(i8* %92)
  %call119 = call %struct.param* @setsparam(i8* %91, i8* %call118)
  %93 = load i32, i32* %count, align 4
  %inc120 = add nsw i32 %93, 1
  store i32 %inc120, i32* %count, align 4
  br label %for.inc121

for.inc121:                                       ; preds = %if.end117
  %94 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %94, i32 0, i32 0
  %95 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %95, %struct.linknode** %node, align 4
  br label %for.cond100

for.end122:                                       ; preds = %if.else110, %for.cond100
  %96 = load i32, i32* %count, align 4
  %tobool123 = icmp ne i32 %96, 0
  br i1 %tobool123, label %if.end125, label %if.then124

if.then124:                                       ; preds = %for.end122
  br label %while.end172

if.end125:                                        ; preds = %for.end122
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end94
  %97 = load i32*, i32** %loop, align 4
  %98 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc127 = getelementptr inbounds %struct.estate, %struct.estate* %98, i32 0, i32 1
  store i32* %97, i32** %pc127, align 4
  %99 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %100 = load i32, i32* %do_exec.addr, align 4
  %tobool128 = icmp ne i32 %100, 0
  br i1 %tobool128, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end126
  %101 = load %union.linkroot*, %union.linkroot** %args, align 4
  %tobool129 = icmp ne %union.linkroot* %101, null
  br i1 %tobool129, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %102 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list130 = bitcast %union.linkroot* %102 to %struct.linklist*
  %first131 = getelementptr inbounds %struct.linklist, %struct.linklist* %list130, i32 0, i32 0
  %103 = load %struct.linknode*, %struct.linknode** %first131, align 4
  %cmp132 = icmp eq %struct.linknode* %103, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end126
  %104 = phi i1 [ false, %land.lhs.true ], [ false, %if.end126 ], [ %cmp132, %land.rhs ]
  %land.ext = zext i1 %104 to i32
  call void @execlist(%struct.estate* %99, i32 1, i32 %land.ext)
  %105 = load i32, i32* @breaks, align 4
  %tobool134 = icmp ne i32 %105, 0
  br i1 %tobool134, label %if.then135, label %if.end142

if.then135:                                       ; preds = %land.end
  %106 = load i32, i32* @breaks, align 4
  %dec136 = add nsw i32 %106, -1
  store i32 %dec136, i32* @breaks, align 4
  %107 = load i32, i32* @breaks, align 4
  %tobool137 = icmp ne i32 %107, 0
  br i1 %tobool137, label %if.then140, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %if.then135
  %108 = load i32, i32* @contflag, align 4
  %tobool139 = icmp ne i32 %108, 0
  br i1 %tobool139, label %if.end141, label %if.then140

if.then140:                                       ; preds = %lor.lhs.false138, %if.then135
  br label %while.end172

if.end141:                                        ; preds = %lor.lhs.false138
  store i32 0, i32* @contflag, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %land.end
  %109 = load i32, i32* @retflag, align 4
  %tobool143 = icmp ne i32 %109, 0
  br i1 %tobool143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end142
  br label %while.end172

if.end145:                                        ; preds = %if.end142
  %110 = load i32, i32* %iscond, align 4
  %tobool146 = icmp ne i32 %110, 0
  br i1 %tobool146, label %land.lhs.true147, label %if.end164

land.lhs.true147:                                 ; preds = %if.end145
  %111 = load i32, i32* @errflag, align 4
  %tobool148 = icmp ne i32 %111, 0
  br i1 %tobool148, label %if.end164, label %if.then149

if.then149:                                       ; preds = %land.lhs.true147
  %112 = load i32, i32* %atok, align 4
  %tobool150 = icmp ne i32 %112, 0
  br i1 %tobool150, label %if.then151, label %if.else153

if.then151:                                       ; preds = %if.then149
  %113 = load i8*, i8** %advance, align 4
  %call152 = call i8* @dupstring(i8* %113)
  store i8* %call152, i8** %str, align 4
  call void @singsub(i8** %str)
  br label %if.end154

if.else153:                                       ; preds = %if.then149
  %114 = load i8*, i8** %advance, align 4
  store i8* %114, i8** %str, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %if.then151
  %115 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool155 = icmp ne i8 %115, 0
  br i1 %tobool155, label %if.then156, label %if.end159

if.then156:                                       ; preds = %if.end154
  call void @printprompt4()
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %117 = load i8*, i8** %str, align 4
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %117)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call158 = call i32 @fflush(%struct._IO_FILE* %118)
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end154
  %119 = load i32, i32* @errflag, align 4
  %tobool160 = icmp ne i32 %119, 0
  br i1 %tobool160, label %if.end163, label %if.then161

if.then161:                                       ; preds = %if.end159
  %120 = load i8*, i8** %str, align 4
  call void @matheval(%struct.mnumber* sret %tmp162, i8* %120)
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end159
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %land.lhs.true147, %if.end145
  %121 = load i32, i32* @errflag, align 4
  %tobool165 = icmp ne i32 %121, 0
  br i1 %tobool165, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.end164
  %122 = load i32, i32* @breaks, align 4
  %tobool167 = icmp ne i32 %122, 0
  br i1 %tobool167, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.then166
  %123 = load i32, i32* @breaks, align 4
  %dec169 = add nsw i32 %123, -1
  store i32 %dec169, i32* @breaks, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.then166
  store i32 1, i32* @lastval, align 4
  br label %while.end172

if.end171:                                        ; preds = %if.end164
  call void @freeheap()
  br label %while.cond

while.end172:                                     ; preds = %if.end170, %if.then144, %if.then140, %if.then124, %if.then93, %if.end90, %while.cond
  call void @popheap()
  call void @cmdpop()
  %124 = load i32, i32* @loops, align 4
  %dec173 = add nsw i32 %124, -1
  store i32 %dec173, i32* @loops, align 4
  %125 = load i32, i32* %old_simple_pline, align 4
  store i32 %125, i32* @simple_pline, align 4
  %126 = load i32*, i32** %end, align 4
  %127 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc174 = getelementptr inbounds %struct.estate, %struct.estate* %127, i32 0, i32 1
  store i32* %126, i32** %pc174, align 4
  store i32 1, i32* @this_noerrexit, align 4
  %128 = load i32, i32* @lastval, align 4
  store i32 %128, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end172, %if.then37, %if.then31, %if.then14
  %129 = load i32, i32* %retval, align 4
  ret i32 %129
}

declare i8* @dupstring(i8*) #1

declare i8* @ecgetstr(%struct.estate*, i32, i32*) #1

declare void @singsub(i8**) #1

declare void @untokenize(i8*) #1

declare void @printprompt4() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @matheval(%struct.mnumber* sret, i8*) #1

declare %union.linkroot* @ecgetlist(%struct.estate*, i32, i32, i32*) #1

declare void @execsubst(%union.linkroot*) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare void @pushheap() #1

declare void @cmdpush(i32) #1

declare i32 @mathevali(i8*) #1

declare i8* @ugetnode(%union.linkroot*) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @ztrdup(i8*) #1

declare void @execlist(%struct.estate*, i32, i32) #1

declare void @freeheap() #1

declare void @popheap() #1

declare void @cmdpop() #1

; Function Attrs: noinline nounwind
define i32 @execselect(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %loop = alloca i32*, align 4
  %code = alloca i32, align 4
  %str = alloca i8*, align 4
  %s = alloca i8*, align 4
  %name = alloca i8*, align 4
  %n = alloca %struct.linknode*, align 4
  %i = alloca i32, align 4
  %usezle = alloca i32, align 4
  %inp = alloca %struct._IO_FILE*, align 4
  %more = alloca i32, align 4
  %args = alloca %union.linkroot*, align 4
  %old_simple_pline = alloca i32, align 4
  %x = alloca i8**, align 4
  %htok = alloca i32, align 4
  %oef = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  %3 = load i32, i32* @simple_pline, align 4
  store i32 %3, i32* %old_simple_pline, align 4
  store i32 1, i32* @simple_pline, align 4
  %4 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %4, i32 0, i32 1
  %5 = load i32*, i32** %pc1, align 4
  %6 = load i32, i32* %code, align 4
  %shr = lshr i32 %6, 5
  %shr2 = lshr i32 %shr, 2
  %add.ptr = getelementptr inbounds i32, i32* %5, i32 %shr2
  store i32* %add.ptr, i32** %end, align 4
  %7 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %7, i32 0, i32* null)
  store i8* %call, i8** %name, align 4
  %8 = load i32, i32* %code, align 4
  %shr3 = lshr i32 %8, 5
  %and = and i32 %shr3, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %union.linkroot* @newlinklist()
  store %union.linkroot* %call4, %union.linkroot** %args, align 4
  %9 = load i8**, i8*** @pparams, align 4
  store i8** %9, i8*** %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i8**, i8*** %x, align 4
  %11 = load i8*, i8** %10, align 4
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %union.linkroot*, %union.linkroot** %args, align 4
  %13 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list = bitcast %union.linkroot* %13 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %14 = load %struct.linknode*, %struct.linknode** %last, align 4
  %15 = load i8**, i8*** %x, align 4
  %16 = load i8*, i8** %15, align 4
  %call5 = call i8* @dupstring(i8* %16)
  %call6 = call %struct.linknode* @insertlinknode(%union.linkroot* %12, %struct.linknode* %14, i8* %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i8**, i8*** %x, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.else:                                          ; preds = %entry
  store i32 0, i32* %htok, align 4
  %18 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %19 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc7 = getelementptr inbounds %struct.estate, %struct.estate* %19, i32 0, i32 1
  %20 = load i32*, i32** %pc7, align 4
  %incdec.ptr8 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr8, i32** %pc7, align 4
  %21 = load i32, i32* %20, align 4
  %call9 = call %union.linkroot* @ecgetlist(%struct.estate* %18, i32 %21, i32 2, i32* %htok)
  store %union.linkroot* %call9, %union.linkroot** %args, align 4
  %tobool10 = icmp ne %union.linkroot* %call9, null
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.else
  %22 = load i32*, i32** %end, align 4
  %23 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc12 = getelementptr inbounds %struct.estate, %struct.estate* %23, i32 0, i32 1
  store i32* %22, i32** %pc12, align 4
  %24 = load i32, i32* %old_simple_pline, align 4
  store i32 %24, i32* @simple_pline, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %25 = load i32, i32* %htok, align 4
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end
  %26 = load %union.linkroot*, %union.linkroot** %args, align 4
  call void @execsubst(%union.linkroot* %26)
  %27 = load i32, i32* @errflag, align 4
  %tobool15 = icmp ne i32 %27, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then14
  %28 = load i32*, i32** %end, align 4
  %29 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc17 = getelementptr inbounds %struct.estate, %struct.estate* %29, i32 0, i32 1
  store i32* %28, i32** %pc17, align 4
  %30 = load i32, i32* %old_simple_pline, align 4
  store i32 %30, i32* @simple_pline, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.end
  %31 = load %union.linkroot*, %union.linkroot** %args, align 4
  %tobool21 = icmp ne %union.linkroot* %31, null
  br i1 %tobool21, label %lor.lhs.false, label %if.then24

lor.lhs.false:                                    ; preds = %if.end20
  %32 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list22 = bitcast %union.linkroot* %32 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list22, i32 0, i32 0
  %33 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp23 = icmp eq %struct.linknode* %33, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false, %if.end20
  %34 = load i32*, i32** %end, align 4
  %35 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc25 = getelementptr inbounds %struct.estate, %struct.estate* %35, i32 0, i32 1
  store i32* %34, i32** %pc25, align 4
  %36 = load i32, i32* %old_simple_pline, align 4
  store i32 %36, i32* @simple_pline, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  %37 = load i32, i32* @loops, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* @loops, align 4
  call void @pushheap()
  call void @cmdpush(i32 3)
  %38 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 94), align 1
  %conv = sext i8 %38 to i32
  %tobool27 = icmp ne i32 %conv, 0
  br i1 %tobool27, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end26
  %39 = load i32, i32* @SHTTY, align 4
  %cmp28 = icmp ne i32 %39, -1
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %40 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 179), align 1
  %conv30 = sext i8 %40 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end26
  %41 = phi i1 [ false, %land.lhs.true ], [ false, %if.end26 ], [ %tobool31, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  store i32 %land.ext, i32* %usezle, align 4
  %42 = load i32, i32* %usezle, align 4
  %tobool32 = icmp ne i32 %42, 0
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %43 = load i32, i32* @SHTTY, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %43, %cond.true ], [ 0, %cond.false ]
  %call33 = call i32 @dup(i32 %cond)
  %call34 = call %struct._IO_FILE* @fdopen(i32 %call33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %inp, align 4
  %44 = load %union.linkroot*, %union.linkroot** %args, align 4
  %call35 = call i32 @selectlist(%union.linkroot* %44, i32 0)
  store i32 %call35, i32* %more, align 4
  %45 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc36 = getelementptr inbounds %struct.estate, %struct.estate* %45, i32 0, i32 1
  %46 = load i32*, i32** %pc36, align 4
  store i32* %46, i32** %loop, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %if.end127, %cond.end
  br label %for.cond38

for.cond38:                                       ; preds = %if.end84, %for.cond37
  %47 = load %union.linkroot*, %union.linkroot** @bufstack, align 4
  %list39 = bitcast %union.linkroot* %47 to %struct.linklist*
  %first40 = getelementptr inbounds %struct.linklist, %struct.linklist* %list39, i32 0, i32 0
  %48 = load %struct.linknode*, %struct.linknode** %first40, align 4
  %cmp41 = icmp eq %struct.linknode* %48, null
  br i1 %cmp41, label %if.then43, label %if.else58

if.then43:                                        ; preds = %for.cond38
  %49 = load i32, i32* %usezle, align 4
  %tobool44 = icmp ne i32 %49, 0
  br i1 %tobool44, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.then43
  %50 = load i32, i32* @errflag, align 4
  store i32 %50, i32* %oef, align 4
  store i32 1, i32* @isfirstln, align 4
  %call46 = call i8* (i32, ...) @zleentry(i32 1, i8** @prompt3, i8* null, i32 0, i32 2)
  store i8* %call46, i8** %str, align 4
  %51 = load i32, i32* @errflag, align 4
  %tobool47 = icmp ne i32 %51, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  store i8* null, i8** %str, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45
  %52 = load i32, i32* %oef, align 4
  %53 = load i32, i32* @errflag, align 4
  %and50 = and i32 %53, 2
  %or = or i32 %52, %and50
  store i32 %or, i32* @errflag, align 4
  br label %if.end57

if.else51:                                        ; preds = %if.then43
  %54 = load i8*, i8** @prompt3, align 4
  %call52 = call i8* @promptexpand(i8* %54, i32 0, i8* null, i8* null, i32* null)
  store i8* %call52, i8** %str, align 4
  %55 = load i8*, i8** %str, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call53 = call i32 @zputs(i8* %55, %struct._IO_FILE* %56)
  %57 = load i8*, i8** %str, align 4
  call void @free(i8* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call54 = call i32 @fflush(%struct._IO_FILE* %58)
  %call55 = call i8* @zhalloc(i32 256)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %inp, align 4
  %call56 = call i8* @fgets(i8* %call55, i32 256, %struct._IO_FILE* %59)
  store i8* %call56, i8** %str, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.end49
  br label %if.end60

if.else58:                                        ; preds = %for.cond38
  %60 = load %union.linkroot*, %union.linkroot** @bufstack, align 4
  %call59 = call i8* @getlinknode(%union.linkroot* %60)
  store i8* %call59, i8** %str, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.end57
  %61 = load i8*, i8** %str, align 4
  %tobool61 = icmp ne i8* %61, null
  br i1 %tobool61, label %if.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end60
  %62 = load i32, i32* @errflag, align 4
  %tobool63 = icmp ne i32 %62, 0
  br i1 %tobool63, label %if.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  %call65 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  %call66 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %call65)
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %land.lhs.true62, %if.end60
  %63 = load i8*, i8** %str, align 4
  %tobool68 = icmp ne i8* %63, null
  br i1 %tobool68, label %lor.lhs.false69, label %if.then71

lor.lhs.false69:                                  ; preds = %if.end67
  %64 = load i32, i32* @errflag, align 4
  %tobool70 = icmp ne i32 %64, 0
  br i1 %tobool70, label %if.then71, label %if.end77

if.then71:                                        ; preds = %lor.lhs.false69, %if.end67
  %65 = load i32, i32* @breaks, align 4
  %tobool72 = icmp ne i32 %65, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then71
  %66 = load i32, i32* @breaks, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* @breaks, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then71
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call76 = call i32 @fflush(%struct._IO_FILE* %68)
  br label %done

if.end77:                                         ; preds = %lor.lhs.false69
  %69 = load i8*, i8** %str, align 4
  %call78 = call i8* @strchr(i8* %69, i32 10)
  store i8* %call78, i8** %s, align 4
  %tobool79 = icmp ne i8* %call78, null
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  %70 = load i8*, i8** %s, align 4
  store i8 0, i8* %70, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77
  %71 = load i8*, i8** %str, align 4
  %72 = load i8, i8* %71, align 1
  %tobool82 = icmp ne i8 %72, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  br label %for.end86

if.end84:                                         ; preds = %if.end81
  %73 = load %union.linkroot*, %union.linkroot** %args, align 4
  %74 = load i32, i32* %more, align 4
  %call85 = call i32 @selectlist(%union.linkroot* %73, i32 %74)
  store i32 %call85, i32* %more, align 4
  br label %for.cond38

for.end86:                                        ; preds = %if.then83
  %75 = load i8*, i8** %str, align 4
  %call87 = call i8* @ztrdup(i8* %75)
  %call88 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %call87)
  %76 = load i8*, i8** %str, align 4
  %call89 = call i32 @atoi(i8* %76)
  store i32 %call89, i32* %i, align 4
  %77 = load i32, i32* %i, align 4
  %tobool90 = icmp ne i32 %77, 0
  br i1 %tobool90, label %if.else92, label %if.then91

if.then91:                                        ; preds = %for.end86
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %str, align 4
  br label %if.end110

if.else92:                                        ; preds = %for.end86
  %78 = load i32, i32* %i, align 4
  %dec93 = add nsw i32 %78, -1
  store i32 %dec93, i32* %i, align 4
  %79 = load %union.linkroot*, %union.linkroot** %args, align 4
  %list94 = bitcast %union.linkroot* %79 to %struct.linklist*
  %first95 = getelementptr inbounds %struct.linklist, %struct.linklist* %list94, i32 0, i32 0
  %80 = load %struct.linknode*, %struct.linknode** %first95, align 4
  store %struct.linknode* %80, %struct.linknode** %n, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc103, %if.else92
  %81 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool97 = icmp ne %struct.linknode* %81, null
  br i1 %tobool97, label %land.rhs98, label %land.end100

land.rhs98:                                       ; preds = %for.cond96
  %82 = load i32, i32* %i, align 4
  %tobool99 = icmp ne i32 %82, 0
  br label %land.end100

land.end100:                                      ; preds = %land.rhs98, %for.cond96
  %83 = phi i1 [ false, %for.cond96 ], [ %tobool99, %land.rhs98 ]
  br i1 %83, label %for.body102, label %for.end105

for.body102:                                      ; preds = %land.end100
  br label %for.inc103

for.inc103:                                       ; preds = %for.body102
  %84 = load %struct.linknode*, %struct.linknode** %n, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %84, i32 0, i32 0
  %85 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %85, %struct.linknode** %n, align 4
  %86 = load i32, i32* %i, align 4
  %dec104 = add nsw i32 %86, -1
  store i32 %dec104, i32* %i, align 4
  br label %for.cond96

for.end105:                                       ; preds = %land.end100
  %87 = load %struct.linknode*, %struct.linknode** %n, align 4
  %tobool106 = icmp ne %struct.linknode* %87, null
  br i1 %tobool106, label %if.then107, label %if.else108

if.then107:                                       ; preds = %for.end105
  %88 = load %struct.linknode*, %struct.linknode** %n, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %88, i32 0, i32 2
  %89 = load i8*, i8** %dat, align 4
  store i8* %89, i8** %str, align 4
  br label %if.end109

if.else108:                                       ; preds = %for.end105
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %str, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then91
  %90 = load i8*, i8** %name, align 4
  %91 = load i8*, i8** %str, align 4
  %call111 = call i8* @ztrdup(i8* %91)
  %call112 = call %struct.param* @setsparam(i8* %90, i8* %call111)
  %92 = load i32*, i32** %loop, align 4
  %93 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc113 = getelementptr inbounds %struct.estate, %struct.estate* %93, i32 0, i32 1
  store i32* %92, i32** %pc113, align 4
  %94 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @execlist(%struct.estate* %94, i32 1, i32 0)
  call void @freeheap()
  %95 = load i32, i32* @breaks, align 4
  %tobool114 = icmp ne i32 %95, 0
  br i1 %tobool114, label %if.then115, label %if.end122

if.then115:                                       ; preds = %if.end110
  %96 = load i32, i32* @breaks, align 4
  %dec116 = add nsw i32 %96, -1
  store i32 %dec116, i32* @breaks, align 4
  %97 = load i32, i32* @breaks, align 4
  %tobool117 = icmp ne i32 %97, 0
  br i1 %tobool117, label %if.then120, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.then115
  %98 = load i32, i32* @contflag, align 4
  %tobool119 = icmp ne i32 %98, 0
  br i1 %tobool119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %lor.lhs.false118, %if.then115
  br label %for.end128

if.end121:                                        ; preds = %lor.lhs.false118
  store i32 0, i32* @contflag, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end110
  %99 = load i32, i32* @retflag, align 4
  %tobool123 = icmp ne i32 %99, 0
  br i1 %tobool123, label %if.then126, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.end122
  %100 = load i32, i32* @errflag, align 4
  %tobool125 = icmp ne i32 %100, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %lor.lhs.false124, %if.end122
  br label %for.end128

if.end127:                                        ; preds = %lor.lhs.false124
  br label %for.cond37

for.end128:                                       ; preds = %if.then126, %if.then120
  br label %done

done:                                             ; preds = %for.end128, %if.end74
  call void @cmdpop()
  call void @popheap()
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %inp, align 4
  %call129 = call i32 @fclose(%struct._IO_FILE* %101)
  %102 = load i32, i32* @loops, align 4
  %dec130 = add nsw i32 %102, -1
  store i32 %dec130, i32* @loops, align 4
  %103 = load i32, i32* %old_simple_pline, align 4
  store i32 %103, i32* @simple_pline, align 4
  %104 = load i32*, i32** %end, align 4
  %105 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc131 = getelementptr inbounds %struct.estate, %struct.estate* %105, i32 0, i32 1
  store i32* %104, i32** %pc131, align 4
  store i32 1, i32* @this_noerrexit, align 4
  %106 = load i32, i32* @lastval, align 4
  store i32 %106, i32* %retval, align 4
  br label %return

return:                                           ; preds = %done, %if.then24, %if.then16, %if.then11
  %107 = load i32, i32* %retval, align 4
  ret i32 %107
}

declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare i32 @dup(i32) #1

; Function Attrs: noinline nounwind
define i32 @selectlist(%union.linkroot* %l, i32 %start) #0 {
entry:
  %l.addr = alloca %union.linkroot*, align 4
  %start.addr = alloca i32, align 4
  %longest = alloca i32, align 4
  %fct = alloca i32, align 4
  %fw = alloca i32, align 4
  %colsz = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %ct = alloca i32, align 4
  %arr = alloca i8**, align 4
  %ap = alloca i8**, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  store %union.linkroot* %l, %union.linkroot** %l.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 1, i32* %longest, align 4
  store i32 0, i32* %fw, align 4
  %call = call i8* (i32, ...) @zleentry(i32 3)
  %0 = load %union.linkroot*, %union.linkroot** %l.addr, align 4
  %call1 = call i8** @hlinklist2array(%union.linkroot* %0, i32 0)
  store i8** %call1, i8*** %arr, align 4
  %1 = load i8**, i8*** %arr, align 4
  store i8** %1, i8*** %ap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8**, i8*** %ap, align 4
  %3 = load i8*, i8** %2, align 4
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %ap, align 4
  %5 = load i8*, i8** %4, align 4
  %call2 = call i32 @strlen(i8* %5)
  %6 = load i32, i32* %longest, align 4
  %cmp = icmp ugt i32 %call2, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8**, i8*** %ap, align 4
  %8 = load i8*, i8** %7, align 4
  %call3 = call i32 @strlen(i8* %8)
  store i32 %call3, i32* %longest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8**, i8*** %ap, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %ap, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** %ap, align 4
  %11 = load i8**, i8*** %arr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %10 to i32
  %sub.ptr.rhs.cast = ptrtoint i8** %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  store i32 %sub.ptr.div, i32* %ct, align 4
  store i32 %sub.ptr.div, i32* %t0, align 4
  %12 = load i32, i32* %longest, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %longest, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %13 = load i32, i32* %t0, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %t0, align 4
  %div = udiv i32 %14, 10
  store i32 %div, i32* %t0, align 4
  %15 = load i32, i32* %longest, align 4
  %inc5 = add i32 %15, 1
  store i32 %inc5, i32* %longest, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* @zterm_columns, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load i32, i32* %longest, align 4
  %add = add i32 %17, 3
  %div6 = udiv i32 %sub, %add
  store i32 %div6, i32* %fct, align 4
  %18 = load i32, i32* %fct, align 4
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.end
  store i32 1, i32* %fct, align 4
  br label %if.end11

if.else:                                          ; preds = %while.end
  %19 = load i32, i32* @zterm_columns, align 4
  %sub9 = sub nsw i32 %19, 1
  %20 = load i32, i32* %fct, align 4
  %div10 = udiv i32 %sub9, %20
  store i32 %div10, i32* %fw, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %21 = load i32, i32* %ct, align 4
  %22 = load i32, i32* %fct, align 4
  %add12 = add i32 %21, %22
  %sub13 = sub i32 %add12, 1
  %23 = load i32, i32* %fct, align 4
  %div14 = udiv i32 %sub13, %23
  store i32 %div14, i32* %colsz, align 4
  %24 = load i32, i32* %start.addr, align 4
  store i32 %24, i32* %t1, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc53, %if.end11
  %25 = load i32, i32* %t1, align 4
  %26 = load i32, i32* %colsz, align 4
  %cmp16 = icmp ne i32 %25, %26
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond15
  %27 = load i32, i32* %t1, align 4
  %28 = load i32, i32* %start.addr, align 4
  %sub17 = sub i32 %27, %28
  %29 = load i32, i32* @zterm_lines, align 4
  %sub18 = sub nsw i32 %29, 2
  %cmp19 = icmp ult i32 %sub17, %sub18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond15
  %30 = phi i1 [ false, %for.cond15 ], [ %cmp19, %land.rhs ]
  br i1 %30, label %for.body20, label %for.end55

for.body20:                                       ; preds = %land.end
  %31 = load i8**, i8*** %arr, align 4
  %32 = load i32, i32* %t1, align 4
  %add.ptr = getelementptr inbounds i8*, i8** %31, i32 %32
  store i8** %add.ptr, i8*** %ap, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body20
  %33 = load i8**, i8*** %ap, align 4
  %34 = load i8*, i8** %33, align 4
  %call21 = call i32 @strlen(i8* %34)
  %add22 = add i32 %call21, 2
  store i32 %add22, i32* %t2, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %36 = load i8**, i8*** %ap, align 4
  %37 = load i8**, i8*** %arr, align 4
  %sub.ptr.lhs.cast23 = ptrtoint i8** %36 to i32
  %sub.ptr.rhs.cast24 = ptrtoint i8** %37 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = sdiv exact i32 %sub.ptr.sub25, 4
  %add27 = add nsw i32 %sub.ptr.div26, 1
  store i32 %add27, i32* %t3, align 4
  %38 = load i8**, i8*** %ap, align 4
  %39 = load i8*, i8** %38, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %add27, i8* %39)
  br label %while.cond29

while.cond29:                                     ; preds = %while.body31, %do.body
  %40 = load i32, i32* %t3, align 4
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %while.body31, label %while.end34

while.body31:                                     ; preds = %while.cond29
  %41 = load i32, i32* %t2, align 4
  %inc32 = add i32 %41, 1
  store i32 %inc32, i32* %t2, align 4
  %42 = load i32, i32* %t3, align 4
  %div33 = sdiv i32 %42, 10
  store i32 %div33, i32* %t3, align 4
  br label %while.cond29

while.end34:                                      ; preds = %while.cond29
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc39, %while.end34
  %43 = load i32, i32* %t2, align 4
  %44 = load i32, i32* %fw, align 4
  %cmp36 = icmp ult i32 %43, %44
  br i1 %cmp36, label %for.body37, label %for.end41

for.body37:                                       ; preds = %for.cond35
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call38 = call i32 @fputc(i32 32, %struct._IO_FILE* %45)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body37
  %46 = load i32, i32* %t2, align 4
  %inc40 = add i32 %46, 1
  store i32 %inc40, i32* %t2, align 4
  br label %for.cond35

for.end41:                                        ; preds = %for.cond35
  %47 = load i32, i32* %colsz, align 4
  store i32 %47, i32* %t0, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc48, %for.end41
  %48 = load i32, i32* %t0, align 4
  %tobool43 = icmp ne i32 %48, 0
  br i1 %tobool43, label %land.rhs44, label %land.end46

land.rhs44:                                       ; preds = %for.cond42
  %49 = load i8**, i8*** %ap, align 4
  %50 = load i8*, i8** %49, align 4
  %tobool45 = icmp ne i8* %50, null
  br label %land.end46

land.end46:                                       ; preds = %land.rhs44, %for.cond42
  %51 = phi i1 [ false, %for.cond42 ], [ %tobool45, %land.rhs44 ]
  br i1 %51, label %for.body47, label %for.end50

for.body47:                                       ; preds = %land.end46
  br label %for.inc48

for.inc48:                                        ; preds = %for.body47
  %52 = load i32, i32* %t0, align 4
  %dec = add i32 %52, -1
  store i32 %dec, i32* %t0, align 4
  %53 = load i8**, i8*** %ap, align 4
  %incdec.ptr49 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %incdec.ptr49, i8*** %ap, align 4
  br label %for.cond42

for.end50:                                        ; preds = %land.end46
  br label %do.cond

do.cond:                                          ; preds = %for.end50
  %54 = load i8**, i8*** %ap, align 4
  %55 = load i8*, i8** %54, align 4
  %tobool51 = icmp ne i8* %55, null
  br i1 %tobool51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call52 = call i32 @fputc(i32 10, %struct._IO_FILE* %56)
  br label %for.inc53

for.inc53:                                        ; preds = %do.end
  %57 = load i32, i32* %t1, align 4
  %inc54 = add i32 %57, 1
  store i32 %inc54, i32* %t1, align 4
  br label %for.cond15

for.end55:                                        ; preds = %land.end
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call56 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load i32, i32* %t1, align 4
  %60 = load i32, i32* %colsz, align 4
  %cmp57 = icmp ult i32 %59, %60
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end55
  %61 = load i32, i32* %t1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare i8* @zleentry(i32, ...) #1

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*) #1

declare i32 @zputs(i8*, %struct._IO_FILE*) #1

declare void @free(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i8* @zhalloc(i32) #1

declare i8* @getlinknode(%union.linkroot*) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @atoi(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8** @hlinklist2array(%union.linkroot*, i32) #1

declare i32 @strlen(i8*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind
define i32 @execwhile(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %loop = alloca i32*, align 4
  %code = alloca i32, align 4
  %olderrexit = alloca i32, align 4
  %oldval = alloca i32, align 4
  %isuntil = alloca i32, align 4
  %old_simple_pline = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %shr = lshr i32 %3, 5
  %and = and i32 %shr, 1
  %cmp = icmp eq i32 %and, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %isuntil, align 4
  %4 = load i32, i32* @simple_pline, align 4
  store i32 %4, i32* %old_simple_pline, align 4
  %5 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %5, i32 0, i32 1
  %6 = load i32*, i32** %pc1, align 4
  %7 = load i32, i32* %code, align 4
  %shr2 = lshr i32 %7, 5
  %shr3 = lshr i32 %shr2, 1
  %add.ptr = getelementptr inbounds i32, i32* %6, i32 %shr3
  store i32* %add.ptr, i32** %end, align 4
  %8 = load i32, i32* @noerrexit, align 4
  store i32 %8, i32* %olderrexit, align 4
  store i32 0, i32* %oldval, align 4
  call void @pushheap()
  %9 = load i32, i32* %isuntil, align 4
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 4, i32 1
  call void @cmdpush(i32 %cond)
  %10 = load i32, i32* @loops, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @loops, align 4
  %11 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc4 = getelementptr inbounds %struct.estate, %struct.estate* %11, i32 0, i32 1
  %12 = load i32*, i32** %pc4, align 4
  store i32* %12, i32** %loop, align 4
  %13 = load i32*, i32** %loop, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i32 0
  %14 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load i32*, i32** %loop, align 4
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i32 1
  %16 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @simple_pline, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %17 = load i32, i32* @breaks, align 4
  %tobool11 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* @breaks, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* @breaks, align 4
  %19 = load i32, i32* %old_simple_pline, align 4
  store i32 %19, i32* @simple_pline, align 4
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end40, %if.else
  %20 = load i32*, i32** %loop, align 4
  %21 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc12 = getelementptr inbounds %struct.estate, %struct.estate* %21, i32 0, i32 1
  store i32* %20, i32** %pc12, align 4
  store i32 3, i32* @noerrexit, align 4
  store i32 1, i32* @simple_pline, align 4
  %22 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @execlist(%struct.estate* %22, i32 1, i32 0)
  %23 = load i32, i32* %old_simple_pline, align 4
  store i32 %23, i32* @simple_pline, align 4
  %24 = load i32, i32* %olderrexit, align 4
  store i32 %24, i32* @noerrexit, align 4
  %25 = load i32, i32* @lastval, align 4
  %cmp13 = icmp eq i32 %25, 0
  %conv14 = zext i1 %cmp13 to i32
  %26 = load i32, i32* %isuntil, align 4
  %xor = xor i32 %conv14, %26
  %tobool15 = icmp ne i32 %xor, 0
  br i1 %tobool15, label %if.end23, label %if.then16

if.then16:                                        ; preds = %for.cond
  %27 = load i32, i32* @breaks, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then16
  %28 = load i32, i32* @breaks, align 4
  %dec19 = add nsw i32 %28, -1
  store i32 %dec19, i32* @breaks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then16
  %29 = load i32, i32* @retflag, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end
  %30 = load i32, i32* %oldval, align 4
  store i32 %30, i32* @lastval, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end
  br label %for.end

if.end23:                                         ; preds = %for.cond
  %31 = load i32, i32* @retflag, align 4
  %tobool24 = icmp ne i32 %31, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  br label %for.end

if.end26:                                         ; preds = %if.end23
  store i32 1, i32* @simple_pline, align 4
  %32 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @execlist(%struct.estate* %32, i32 1, i32 0)
  %33 = load i32, i32* %old_simple_pline, align 4
  store i32 %33, i32* @simple_pline, align 4
  %34 = load i32, i32* @breaks, align 4
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end26
  %35 = load i32, i32* @breaks, align 4
  %dec29 = add nsw i32 %35, -1
  store i32 %dec29, i32* @breaks, align 4
  %36 = load i32, i32* @breaks, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28
  %37 = load i32, i32* @contflag, align 4
  %tobool31 = icmp ne i32 %37, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %if.then28
  br label %for.end

if.end33:                                         ; preds = %lor.lhs.false
  store i32 0, i32* @contflag, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end26
  %38 = load i32, i32* @errflag, align 4
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  store i32 1, i32* @lastval, align 4
  br label %for.end

if.end37:                                         ; preds = %if.end34
  %39 = load i32, i32* @retflag, align 4
  %tobool38 = icmp ne i32 %39, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  br label %for.end

if.end40:                                         ; preds = %if.end37
  call void @freeheap()
  %40 = load i32, i32* @lastval, align 4
  store i32 %40, i32* %oldval, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then39, %if.then36, %if.then32, %if.then25, %if.end22
  br label %if.end41

if.end41:                                         ; preds = %for.end, %while.end
  call void @cmdpop()
  call void @popheap()
  %41 = load i32, i32* @loops, align 4
  %dec42 = add nsw i32 %41, -1
  store i32 %dec42, i32* @loops, align 4
  %42 = load i32*, i32** %end, align 4
  %43 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc43 = getelementptr inbounds %struct.estate, %struct.estate* %43, i32 0, i32 1
  store i32* %42, i32** %pc43, align 4
  store i32 1, i32* @this_noerrexit, align 4
  %44 = load i32, i32* @lastval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind
define i32 @execrepeat(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %loop = alloca i32*, align 4
  %code = alloca i32, align 4
  %count = alloca i32, align 4
  %htok = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %old_simple_pline = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  store i32 0, i32* %htok, align 4
  %3 = load i32, i32* @simple_pline, align 4
  store i32 %3, i32* %old_simple_pline, align 4
  store i32 1, i32* @simple_pline, align 4
  %4 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc2 = getelementptr inbounds %struct.estate, %struct.estate* %4, i32 0, i32 1
  %5 = load i32*, i32** %pc2, align 4
  %6 = load i32, i32* %code, align 4
  %shr = lshr i32 %6, 5
  %add.ptr = getelementptr inbounds i32, i32* %5, i32 %shr
  store i32* %add.ptr, i32** %end, align 4
  store i32 0, i32* @lastval, align 4
  %7 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %7, i32 2, i32* %htok)
  store i8* %call, i8** %tmp, align 4
  %8 = load i32, i32* %htok, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @singsub(i8** %tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %tmp, align 4
  %call3 = call i32 @mathevali(i8* %9)
  store i32 %call3, i32* %count, align 4
  %10 = load i32, i32* @errflag, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  call void @pushheap()
  call void @cmdpush(i32 2)
  %11 = load i32, i32* @loops, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @loops, align 4
  %12 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc7 = getelementptr inbounds %struct.estate, %struct.estate* %12, i32 0, i32 1
  %13 = load i32*, i32** %pc7, align 4
  store i32* %13, i32** %loop, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end6
  %14 = load i32, i32* %count, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %count, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32*, i32** %loop, align 4
  %16 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc8 = getelementptr inbounds %struct.estate, %struct.estate* %16, i32 0, i32 1
  store i32* %15, i32** %pc8, align 4
  %17 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @execlist(%struct.estate* %17, i32 1, i32 0)
  call void @freeheap()
  %18 = load i32, i32* @breaks, align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %while.body
  %19 = load i32, i32* @breaks, align 4
  %dec11 = add nsw i32 %19, -1
  store i32 %dec11, i32* @breaks, align 4
  %20 = load i32, i32* @breaks, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %21 = load i32, i32* @contflag, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.then10
  br label %while.end

if.end15:                                         ; preds = %lor.lhs.false
  store i32 0, i32* @contflag, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %while.body
  %22 = load i32, i32* @errflag, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i32 1, i32* @lastval, align 4
  br label %while.end

if.end19:                                         ; preds = %if.end16
  %23 = load i32, i32* @retflag, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  br label %while.end

if.end22:                                         ; preds = %if.end19
  br label %while.cond

while.end:                                        ; preds = %if.then21, %if.then18, %if.then14, %while.cond
  call void @cmdpop()
  call void @popheap()
  %24 = load i32, i32* @loops, align 4
  %dec23 = add nsw i32 %24, -1
  store i32 %dec23, i32* @loops, align 4
  %25 = load i32, i32* %old_simple_pline, align 4
  store i32 %25, i32* @simple_pline, align 4
  %26 = load i32*, i32** %end, align 4
  %27 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc24 = getelementptr inbounds %struct.estate, %struct.estate* %27, i32 0, i32 1
  store i32* %26, i32** %pc24, align 4
  store i32 1, i32* @this_noerrexit, align 4
  %28 = load i32, i32* @lastval, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind
define i32 @execif(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %next = alloca i32*, align 4
  %code = alloca i32, align 4
  %olderrexit = alloca i32, align 4
  %s = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %run, align 4
  %3 = load i32, i32* @noerrexit, align 4
  store i32 %3, i32* %olderrexit, align 4
  %4 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %4, i32 0, i32 1
  %5 = load i32*, i32** %pc1, align 4
  %6 = load i32, i32* %code, align 4
  %shr = lshr i32 %6, 5
  %shr2 = lshr i32 %shr, 2
  %add.ptr = getelementptr inbounds i32, i32* %5, i32 %shr2
  store i32* %add.ptr, i32** %end, align 4
  %7 = load i32, i32* @noerrexit, align 4
  %or = or i32 %7, 3
  store i32 %or, i32* @noerrexit, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %8 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc3 = getelementptr inbounds %struct.estate, %struct.estate* %8, i32 0, i32 1
  %9 = load i32*, i32** %pc3, align 4
  %10 = load i32*, i32** %end, align 4
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc4 = getelementptr inbounds %struct.estate, %struct.estate* %11, i32 0, i32 1
  %12 = load i32*, i32** %pc4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %pc4, align 4
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  %and = and i32 %14, 31
  %cmp5 = icmp ne i32 %and, 17
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %15 = load i32, i32* %code, align 4
  %shr6 = lshr i32 %15, 5
  %and7 = and i32 %shr6, 3
  %cmp8 = icmp eq i32 %and7, 3
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %run, align 4
  br i1 %cmp8, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %16 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 2, i32* %run, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %while.end

if.end10:                                         ; preds = %lor.lhs.false
  %17 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc11 = getelementptr inbounds %struct.estate, %struct.estate* %17, i32 0, i32 1
  %18 = load i32*, i32** %pc11, align 4
  %19 = load i32, i32* %code, align 4
  %shr12 = lshr i32 %19, 5
  %shr13 = lshr i32 %shr12, 2
  %add.ptr14 = getelementptr inbounds i32, i32* %18, i32 %shr13
  store i32* %add.ptr14, i32** %next, align 4
  %20 = load i32, i32* %s, align 4
  %tobool15 = icmp ne i32 %20, 0
  %cond = select i1 %tobool15, i32 8, i32 5
  call void @cmdpush(i32 %cond)
  %21 = load %struct.estate*, %struct.estate** %state.addr, align 4
  call void @execlist(%struct.estate* %21, i32 1, i32 0)
  call void @cmdpop()
  %22 = load i32, i32* @lastval, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end10
  store i32 1, i32* %run, align 4
  br label %while.end

if.end18:                                         ; preds = %if.end10
  %23 = load i32, i32* @retflag, align 4
  %tobool19 = icmp ne i32 %23, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  br label %while.end

if.end21:                                         ; preds = %if.end18
  store i32 1, i32* %s, align 4
  %24 = load i32*, i32** %next, align 4
  %25 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc22 = getelementptr inbounds %struct.estate, %struct.estate* %25, i32 0, i32 1
  store i32* %24, i32** %pc22, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then20, %if.then17, %if.end, %while.cond
  %26 = load i32, i32* %run, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then24, label %if.else39

if.then24:                                        ; preds = %while.end
  %27 = load i32, i32* %olderrexit, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  %28 = load i32, i32* %olderrexit, align 4
  store i32 %28, i32* @noerrexit, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then24
  %29 = load i32, i32* @lastval, align 4
  %tobool27 = icmp ne i32 %29, 0
  br i1 %tobool27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else
  %30 = load i32, i32* @noerrexit, align 4
  %or29 = or i32 %30, 7
  store i32 %or29, i32* @noerrexit, align 4
  br label %if.end32

if.else30:                                        ; preds = %if.else
  %31 = load i32, i32* @noerrexit, align 4
  %and31 = and i32 %31, -4
  store i32 %and31, i32* @noerrexit, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then26
  %32 = load i32, i32* %run, align 4
  %cmp34 = icmp eq i32 %32, 2
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  %33 = load i32, i32* %s, align 4
  %tobool36 = icmp ne i32 %33, 0
  %cond37 = select i1 %tobool36, i32 26, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi i32 [ 7, %cond.true ], [ %cond37, %cond.false ]
  call void @cmdpush(i32 %cond38)
  %34 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %35 = load i32, i32* %do_exec.addr, align 4
  call void @execlist(%struct.estate* %34, i32 1, i32 %35)
  call void @cmdpop()
  br label %if.end43

if.else39:                                        ; preds = %while.end
  %36 = load i32, i32* %olderrexit, align 4
  store i32 %36, i32* @noerrexit, align 4
  %37 = load i32, i32* @retflag, align 4
  %tobool40 = icmp ne i32 %37, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.else39
  store i32 0, i32* @lastval, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.else39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %cond.end
  %38 = load i32*, i32** %end, align 4
  %39 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc44 = getelementptr inbounds %struct.estate, %struct.estate* %39, i32 0, i32 1
  store i32* %38, i32** %pc44, align 4
  store i32 1, i32* @this_noerrexit, align 4
  %40 = load i32, i32* @lastval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind
define i32 @execcase(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %next = alloca i32*, align 4
  %code = alloca i32, align 4
  %word = alloca i8*, align 4
  %pat = alloca i8*, align 4
  %npat = alloca i32, align 4
  %save = alloca i32, align 4
  %nalts = alloca i32, align 4
  %ialt = alloca i32, align 4
  %patok = alloca i32, align 4
  %anypatok = alloca i32, align 4
  %spprog = alloca %struct.patprog**, align 4
  %pprog = alloca %struct.patprog*, align 4
  %htok = alloca i32, align 4
  %opat = alloca i8*, align 4
  %htok45 = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp89 = alloca %struct.__sigset_t, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 -1
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %code, align 4
  %3 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %3, i32 0, i32 1
  %4 = load i32*, i32** %pc1, align 4
  %5 = load i32, i32* %code, align 4
  %shr = lshr i32 %5, 5
  %shr2 = lshr i32 %shr, 3
  %add.ptr = getelementptr inbounds i32, i32* %4, i32 %shr2
  store i32* %add.ptr, i32** %end, align 4
  %6 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %call = call i8* @ecgetstr(%struct.estate* %6, i32 1, i32* null)
  store i8* %call, i8** %word, align 4
  call void @singsub(i8** %word)
  %7 = load i8*, i8** %word, align 4
  call void @untokenize(i8* %7)
  store i32 0, i32* %anypatok, align 4
  call void @cmdpush(i32 16)
  br label %while.cond

while.cond:                                       ; preds = %if.end149, %entry
  %8 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc3 = getelementptr inbounds %struct.estate, %struct.estate* %8, i32 0, i32 1
  %9 = load i32*, i32** %pc3, align 4
  %10 = load i32*, i32** %end, align 4
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %while.body, label %while.end151

while.body:                                       ; preds = %while.cond
  %11 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc4 = getelementptr inbounds %struct.estate, %struct.estate* %11, i32 0, i32 1
  %12 = load i32*, i32** %pc4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %pc4, align 4
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  %and = and i32 %14, 31
  %cmp5 = icmp ne i32 %and, 16
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end151

if.end:                                           ; preds = %while.body
  store i32 0, i32* %save, align 4
  %15 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc6 = getelementptr inbounds %struct.estate, %struct.estate* %15, i32 0, i32 1
  %16 = load i32*, i32** %pc6, align 4
  %17 = load i32, i32* %code, align 4
  %shr7 = lshr i32 %17, 5
  %shr8 = lshr i32 %shr7, 3
  %add.ptr9 = getelementptr inbounds i32, i32* %16, i32 %shr8
  store i32* %add.ptr9, i32** %next, align 4
  %18 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc10 = getelementptr inbounds %struct.estate, %struct.estate* %18, i32 0, i32 1
  %19 = load i32*, i32** %pc10, align 4
  %incdec.ptr11 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr11, i32** %pc10, align 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %nalts, align 4
  store i32 0, i32* %patok, align 4
  store i32 0, i32* %ialt, align 4
  %21 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @printprompt4()
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %23 = load i8*, i8** %word, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %23)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  br label %while.cond15

while.cond15:                                     ; preds = %do.end91, %if.end14
  %24 = load i32, i32* %patok, align 4
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond15
  %25 = load i32, i32* %nalts, align 4
  %tobool17 = icmp ne i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond15
  %26 = phi i1 [ false, %while.cond15 ], [ %tobool17, %land.rhs ]
  br i1 %26, label %while.body18, label %while.end92

while.body18:                                     ; preds = %land.end
  %27 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc19 = getelementptr inbounds %struct.estate, %struct.estate* %27, i32 0, i32 1
  %28 = load i32*, i32** %pc19, align 4
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i32 1
  %29 = load i32, i32* %arrayidx20, align 4
  store i32 %29, i32* %npat, align 4
  %30 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog = getelementptr inbounds %struct.estate, %struct.estate* %30, i32 0, i32 0
  %31 = load %struct.eprog*, %struct.eprog** %prog, align 4
  %pats = getelementptr inbounds %struct.eprog, %struct.eprog* %31, i32 0, i32 4
  %32 = load %struct.patprog**, %struct.patprog*** %pats, align 4
  %33 = load i32, i32* %npat, align 4
  %add.ptr21 = getelementptr inbounds %struct.patprog*, %struct.patprog** %32, i32 %33
  store %struct.patprog** %add.ptr21, %struct.patprog*** %spprog, align 4
  store %struct.patprog* null, %struct.patprog** %pprog, align 4
  store i8* null, i8** %pat, align 4
  %34 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %35 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool22 = icmp ne i8 %35, 0
  br i1 %tobool22, label %if.then23, label %if.end36

if.then23:                                        ; preds = %while.body18
  store i32 0, i32* %htok, align 4
  %36 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog24 = getelementptr inbounds %struct.estate, %struct.estate* %36, i32 0, i32 0
  %37 = load %struct.eprog*, %struct.eprog** %prog24, align 4
  %38 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc25 = getelementptr inbounds %struct.estate, %struct.estate* %38, i32 0, i32 1
  %39 = load i32*, i32** %pc25, align 4
  %call26 = call i8* @ecrawstr(%struct.eprog* %37, i32* %39, i32* %htok)
  %call27 = call i8* @dupstring(i8* %call26)
  store i8* %call27, i8** %pat, align 4
  %40 = load i32, i32* %htok, align 4
  %tobool28 = icmp ne i32 %40, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then23
  call void @singsub(i8** %pat)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then23
  %41 = load i32, i32* %ialt, align 4
  %inc31 = add nsw i32 %41, 1
  store i32 %inc31, i32* %ialt, align 4
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %43 = load i8*, i8** %pat, align 4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  call void @quote_tokenized_output(i8* %43, %struct._IO_FILE* %44)
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %while.body18
  %45 = load %struct.patprog**, %struct.patprog*** %spprog, align 4
  %46 = load %struct.patprog*, %struct.patprog** %45, align 4
  %cmp37 = icmp ne %struct.patprog* %46, inttoptr (i32 1 to %struct.patprog*)
  br i1 %cmp37, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end36
  %47 = load %struct.patprog**, %struct.patprog*** %spprog, align 4
  %48 = load %struct.patprog*, %struct.patprog** %47, align 4
  %cmp38 = icmp ne %struct.patprog* %48, inttoptr (i32 2 to %struct.patprog*)
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %49 = load %struct.patprog**, %struct.patprog*** %spprog, align 4
  %50 = load %struct.patprog*, %struct.patprog** %49, align 4
  store %struct.patprog* %50, %struct.patprog** %pprog, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %if.end36
  %51 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool41 = icmp ne %struct.patprog* %51, null
  br i1 %tobool41, label %if.end71, label %if.then42

if.then42:                                        ; preds = %if.end40
  %52 = load i8*, i8** %pat, align 4
  %tobool43 = icmp ne i8* %52, null
  br i1 %tobool43, label %if.end62, label %if.then44

if.then44:                                        ; preds = %if.then42
  store i32 0, i32* %htok45, align 4
  %53 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog46 = getelementptr inbounds %struct.estate, %struct.estate* %53, i32 0, i32 0
  %54 = load %struct.eprog*, %struct.eprog** %prog46, align 4
  %55 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc47 = getelementptr inbounds %struct.estate, %struct.estate* %55, i32 0, i32 1
  %56 = load i32*, i32** %pc47, align 4
  %call48 = call i8* @ecrawstr(%struct.eprog* %54, i32* %56, i32* %htok45)
  store i8* %call48, i8** %opat, align 4
  %call49 = call i8* @dupstring(i8* %call48)
  store i8* %call49, i8** %pat, align 4
  %57 = load i32, i32* %htok45, align 4
  %tobool50 = icmp ne i32 %57, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then44
  call void @singsub(i8** %pat)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then44
  %58 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %prog53 = getelementptr inbounds %struct.estate, %struct.estate* %58, i32 0, i32 0
  %59 = load %struct.eprog*, %struct.eprog** %prog53, align 4
  %flags = getelementptr inbounds %struct.eprog, %struct.eprog* %59, i32 0, i32 0
  %60 = load i32, i32* %flags, align 4
  %and54 = and i32 %60, 2
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %land.end61, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end52
  %61 = load i8*, i8** %pat, align 4
  %62 = load i8*, i8** %opat, align 4
  %call57 = call i32 @strcmp(i8* %61, i8* %62)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.end61, label %land.rhs59

land.rhs59:                                       ; preds = %land.lhs.true56
  %63 = load %struct.patprog**, %struct.patprog*** %spprog, align 4
  %64 = load %struct.patprog*, %struct.patprog** %63, align 4
  %cmp60 = icmp ne %struct.patprog* %64, inttoptr (i32 2 to %struct.patprog*)
  br label %land.end61

land.end61:                                       ; preds = %land.rhs59, %land.lhs.true56, %if.end52
  %65 = phi i1 [ false, %land.lhs.true56 ], [ false, %if.end52 ], [ %cmp60, %land.rhs59 ]
  %land.ext = zext i1 %65 to i32
  store i32 %land.ext, i32* %save, align 4
  br label %if.end62

if.end62:                                         ; preds = %land.end61, %if.then42
  %66 = load i8*, i8** %pat, align 4
  %67 = load i32, i32* %save, align 4
  %tobool63 = icmp ne i32 %67, 0
  %cond = select i1 %tobool63, i32 256, i32 64
  %call64 = call %struct.patprog* @patcompile(i8* %66, i32 %cond, i8** null)
  store %struct.patprog* %call64, %struct.patprog** %pprog, align 4
  %tobool65 = icmp ne %struct.patprog* %call64, null
  br i1 %tobool65, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end62
  %68 = load i8*, i8** %pat, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* %68)
  br label %if.end70

if.else:                                          ; preds = %if.end62
  %69 = load i32, i32* %save, align 4
  %tobool67 = icmp ne i32 %69, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.else
  %70 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %71 = load %struct.patprog**, %struct.patprog*** %spprog, align 4
  store %struct.patprog* %70, %struct.patprog** %71, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.else
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then66
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end40
  %72 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %tobool72 = icmp ne %struct.patprog* %72, null
  br i1 %tobool72, label %land.lhs.true73, label %if.end77

land.lhs.true73:                                  ; preds = %if.end71
  %73 = load %struct.patprog*, %struct.patprog** %pprog, align 4
  %74 = load i8*, i8** %word, align 4
  %call74 = call i32 @pattry(%struct.patprog* %73, i8* %74)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %land.lhs.true73
  store i32 1, i32* %anypatok, align 4
  store i32 1, i32* %patok, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %land.lhs.true73, %if.end71
  %75 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc78 = getelementptr inbounds %struct.estate, %struct.estate* %75, i32 0, i32 1
  %76 = load i32*, i32** %pc78, align 4
  %add.ptr79 = getelementptr inbounds i32, i32* %76, i32 2
  store i32* %add.ptr79, i32** %pc78, align 4
  %77 = load i32, i32* %nalts, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %nalts, align 4
  br label %do.body

do.body:                                          ; preds = %if.end77
  %78 = load i32, i32* @queueing_enabled, align 4
  %dec80 = add nsw i32 %78, -1
  store i32 %dec80, i32* @queueing_enabled, align 4
  %tobool81 = icmp ne i32 %dec80, 0
  br i1 %tobool81, label %if.end90, label %if.then82

if.then82:                                        ; preds = %do.body
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  br label %while.cond84

while.cond84:                                     ; preds = %while.body86, %do.body83
  %79 = load i32, i32* @queue_front, align 4
  %80 = load i32, i32* @queue_rear, align 4
  %cmp85 = icmp ne i32 %79, %80
  br i1 %cmp85, label %while.body86, label %while.end

while.body86:                                     ; preds = %while.cond84
  %81 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %81, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %82 = load i32, i32* @queue_front, align 4
  %arrayidx87 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %82
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx87)
  %83 = bitcast %struct.__sigset_t* %oset to i8*
  %84 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 128, i32 4, i1 false)
  %85 = load i32, i32* @queue_front, align 4
  %arrayidx88 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %85
  %86 = load i32, i32* %arrayidx88, align 4
  call void @zhandler(i32 %86)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp89, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond84

while.end:                                        ; preds = %while.cond84
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end90

if.end90:                                         ; preds = %do.end, %do.body
  br label %do.end91

do.end91:                                         ; preds = %if.end90
  br label %while.cond15

while.end92:                                      ; preds = %land.end
  %87 = load i32, i32* %nalts, align 4
  %mul = mul nsw i32 2, %87
  %88 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc93 = getelementptr inbounds %struct.estate, %struct.estate* %88, i32 0, i32 1
  %89 = load i32*, i32** %pc93, align 4
  %add.ptr94 = getelementptr inbounds i32, i32* %89, i32 %mul
  store i32* %add.ptr94, i32** %pc93, align 4
  %90 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 178), align 1
  %tobool95 = icmp ne i8 %90, 0
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %while.end92
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @xtrerr, align 4
  %call98 = call i32 @fflush(%struct._IO_FILE* %92)
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %while.end92
  %93 = load i32, i32* %patok, align 4
  %tobool100 = icmp ne i32 %93, 0
  br i1 %tobool100, label %if.then101, label %if.end149

if.then101:                                       ; preds = %if.end99
  %94 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %95 = load i32, i32* %code, align 4
  %shr102 = lshr i32 %95, 5
  %and103 = and i32 %shr102, 7
  %cmp104 = icmp eq i32 %and103, 1
  br i1 %cmp104, label %land.rhs105, label %land.end107

land.rhs105:                                      ; preds = %if.then101
  %96 = load i32, i32* %do_exec.addr, align 4
  %tobool106 = icmp ne i32 %96, 0
  br label %land.end107

land.end107:                                      ; preds = %land.rhs105, %if.then101
  %97 = phi i1 [ false, %if.then101 ], [ %tobool106, %land.rhs105 ]
  %land.ext108 = zext i1 %97 to i32
  call void @execlist(%struct.estate* %94, i32 1, i32 %land.ext108)
  br label %while.cond109

while.cond109:                                    ; preds = %land.end141, %land.end107
  %98 = load i32, i32* @retflag, align 4
  %tobool110 = icmp ne i32 %98, 0
  br i1 %tobool110, label %land.end121, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %while.cond109
  %99 = load i32, i32* %code, align 4
  %and112 = and i32 %99, 31
  %cmp113 = icmp eq i32 %and112, 16
  br i1 %cmp113, label %land.lhs.true114, label %land.end121

land.lhs.true114:                                 ; preds = %land.lhs.true111
  %100 = load i32, i32* %code, align 4
  %shr115 = lshr i32 %100, 5
  %and116 = and i32 %shr115, 7
  %cmp117 = icmp eq i32 %and116, 2
  br i1 %cmp117, label %land.rhs118, label %land.end121

land.rhs118:                                      ; preds = %land.lhs.true114
  %101 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc119 = getelementptr inbounds %struct.estate, %struct.estate* %101, i32 0, i32 1
  %102 = load i32*, i32** %pc119, align 4
  %103 = load i32*, i32** %end, align 4
  %cmp120 = icmp ult i32* %102, %103
  br label %land.end121

land.end121:                                      ; preds = %land.rhs118, %land.lhs.true114, %land.lhs.true111, %while.cond109
  %104 = phi i1 [ false, %land.lhs.true114 ], [ false, %land.lhs.true111 ], [ false, %while.cond109 ], [ %cmp120, %land.rhs118 ]
  br i1 %104, label %while.body123, label %while.end143

while.body123:                                    ; preds = %land.end121
  %105 = load i32*, i32** %next, align 4
  %106 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc124 = getelementptr inbounds %struct.estate, %struct.estate* %106, i32 0, i32 1
  store i32* %105, i32** %pc124, align 4
  %107 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc125 = getelementptr inbounds %struct.estate, %struct.estate* %107, i32 0, i32 1
  %108 = load i32*, i32** %pc125, align 4
  %incdec.ptr126 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %incdec.ptr126, i32** %pc125, align 4
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %code, align 4
  %110 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc127 = getelementptr inbounds %struct.estate, %struct.estate* %110, i32 0, i32 1
  %111 = load i32*, i32** %pc127, align 4
  %112 = load i32, i32* %code, align 4
  %shr128 = lshr i32 %112, 5
  %shr129 = lshr i32 %shr128, 3
  %add.ptr130 = getelementptr inbounds i32, i32* %111, i32 %shr129
  store i32* %add.ptr130, i32** %next, align 4
  %113 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc131 = getelementptr inbounds %struct.estate, %struct.estate* %113, i32 0, i32 1
  %114 = load i32*, i32** %pc131, align 4
  %incdec.ptr132 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr132, i32** %pc131, align 4
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %nalts, align 4
  %116 = load i32, i32* %nalts, align 4
  %mul133 = mul nsw i32 2, %116
  %117 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc134 = getelementptr inbounds %struct.estate, %struct.estate* %117, i32 0, i32 1
  %118 = load i32*, i32** %pc134, align 4
  %add.ptr135 = getelementptr inbounds i32, i32* %118, i32 %mul133
  store i32* %add.ptr135, i32** %pc134, align 4
  %119 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %120 = load i32, i32* %code, align 4
  %shr136 = lshr i32 %120, 5
  %and137 = and i32 %shr136, 7
  %cmp138 = icmp eq i32 %and137, 1
  br i1 %cmp138, label %land.rhs139, label %land.end141

land.rhs139:                                      ; preds = %while.body123
  %121 = load i32, i32* %do_exec.addr, align 4
  %tobool140 = icmp ne i32 %121, 0
  br label %land.end141

land.end141:                                      ; preds = %land.rhs139, %while.body123
  %122 = phi i1 [ false, %while.body123 ], [ %tobool140, %land.rhs139 ]
  %land.ext142 = zext i1 %122 to i32
  call void @execlist(%struct.estate* %119, i32 1, i32 %land.ext142)
  br label %while.cond109

while.end143:                                     ; preds = %land.end121
  %123 = load i32, i32* %code, align 4
  %shr144 = lshr i32 %123, 5
  %and145 = and i32 %shr144, 7
  %cmp146 = icmp ne i32 %and145, 3
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %while.end143
  br label %while.end151

if.end148:                                        ; preds = %while.end143
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end99
  %124 = load i32*, i32** %next, align 4
  %125 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc150 = getelementptr inbounds %struct.estate, %struct.estate* %125, i32 0, i32 1
  store i32* %124, i32** %pc150, align 4
  br label %while.cond

while.end151:                                     ; preds = %if.then147, %if.then, %while.cond
  call void @cmdpop()
  %126 = load i32*, i32** %end, align 4
  %127 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc152 = getelementptr inbounds %struct.estate, %struct.estate* %127, i32 0, i32 1
  store i32* %126, i32** %pc152, align 4
  %128 = load i32, i32* %anypatok, align 4
  %tobool153 = icmp ne i32 %128, 0
  br i1 %tobool153, label %if.end155, label %if.then154

if.then154:                                       ; preds = %while.end151
  store i32 0, i32* @lastval, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %while.end151
  store i32 1, i32* @this_noerrexit, align 4
  %129 = load i32, i32* @lastval, align 4
  ret i32 %129
}

declare i8* @ecrawstr(%struct.eprog*, i32*, i32*) #1

declare void @quote_tokenized_output(i8*, %struct._IO_FILE*) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare void @zerr(i8*, ...) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @zhandler(i32) #1

; Function Attrs: noinline nounwind
define i32 @exectry(%struct.estate* %state, i32 %do_exec) #0 {
entry:
  %state.addr = alloca %struct.estate*, align 4
  %do_exec.addr = alloca i32, align 4
  %end = alloca i32*, align 4
  %always = alloca i32*, align 4
  %endval = alloca i32, align 4
  %save_retflag = alloca i32, align 4
  %save_breaks = alloca i32, align 4
  %save_contflag = alloca i32, align 4
  %save_try_errflag = alloca i32, align 4
  %save_try_tryflag = alloca i32, align 4
  %save_try_interrupt = alloca i32, align 4
  store %struct.estate* %state, %struct.estate** %state.addr, align 4
  store i32 %do_exec, i32* %do_exec.addr, align 4
  %0 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc = getelementptr inbounds %struct.estate, %struct.estate* %0, i32 0, i32 1
  %1 = load i32*, i32** %pc, align 4
  %2 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc1 = getelementptr inbounds %struct.estate, %struct.estate* %2, i32 0, i32 1
  %3 = load i32*, i32** %pc1, align 4
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 -1
  %4 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %4, 5
  %add.ptr = getelementptr inbounds i32, i32* %1, i32 %shr
  store i32* %add.ptr, i32** %end, align 4
  %5 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc2 = getelementptr inbounds %struct.estate, %struct.estate* %5, i32 0, i32 1
  %6 = load i32*, i32** %pc2, align 4
  %add.ptr3 = getelementptr inbounds i32, i32* %6, i32 1
  %7 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc4 = getelementptr inbounds %struct.estate, %struct.estate* %7, i32 0, i32 1
  %8 = load i32*, i32** %pc4, align 4
  %9 = load i32, i32* %8, align 4
  %shr5 = lshr i32 %9, 5
  %add.ptr6 = getelementptr inbounds i32, i32* %add.ptr3, i32 %shr5
  store i32* %add.ptr6, i32** %always, align 4
  %10 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc7 = getelementptr inbounds %struct.estate, %struct.estate* %10, i32 0, i32 1
  %11 = load i32*, i32** %pc7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %pc7, align 4
  call void @pushheap()
  call void @cmdpush(i32 19)
  %12 = load i32, i32* @try_tryflag, align 4
  store i32 %12, i32* %save_try_tryflag, align 4
  store i32 1, i32* @try_tryflag, align 4
  %13 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %14 = load i32, i32* %do_exec.addr, align 4
  call void @execlist(%struct.estate* %13, i32 1, i32 %14)
  %15 = load i32, i32* %save_try_tryflag, align 4
  store i32 %15, i32* @try_tryflag, align 4
  %16 = load i32, i32* @lastval, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load i32, i32* @lastval, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* @errflag, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, i32* %endval, align 4
  call void @freeheap()
  call void @cmdpop()
  call void @cmdpush(i32 31)
  %19 = load i32, i32* @try_errflag, align 4
  store i32 %19, i32* %save_try_errflag, align 4
  %20 = load i32, i32* @try_interrupt, align 4
  store i32 %20, i32* %save_try_interrupt, align 4
  %21 = load i32, i32* @errflag, align 4
  %and = and i32 %21, 1
  store i32 %and, i32* @try_errflag, align 4
  %22 = load i32, i32* @errflag, align 4
  %and8 = and i32 %22, 2
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 1, i32 0
  store i32 %cond10, i32* @try_interrupt, align 4
  store i32 0, i32* @errflag, align 4
  %23 = load i32, i32* @retflag, align 4
  store i32 %23, i32* %save_retflag, align 4
  store i32 0, i32* @retflag, align 4
  %24 = load i32, i32* @breaks, align 4
  store i32 %24, i32* %save_breaks, align 4
  store i32 0, i32* @breaks, align 4
  %25 = load i32, i32* @contflag, align 4
  store i32 %25, i32* %save_contflag, align 4
  store i32 0, i32* @contflag, align 4
  %26 = load i32*, i32** %always, align 4
  %27 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc11 = getelementptr inbounds %struct.estate, %struct.estate* %27, i32 0, i32 1
  store i32* %26, i32** %pc11, align 4
  %28 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %29 = load i32, i32* %do_exec.addr, align 4
  call void @execlist(%struct.estate* %28, i32 1, i32 %29)
  %30 = load i32, i32* @try_errflag, align 4
  %tobool12 = icmp ne i32 %30, 0
  br i1 %tobool12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %31 = load i32, i32* @errflag, align 4
  %or = or i32 %31, 1
  store i32 %or, i32* @errflag, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %32 = load i32, i32* @errflag, align 4
  %and13 = and i32 %32, -2
  store i32 %and13, i32* @errflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i32, i32* @try_interrupt, align 4
  %tobool14 = icmp ne i32 %33, 0
  br i1 %tobool14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end
  %34 = load i32, i32* @errflag, align 4
  %or16 = or i32 %34, 2
  store i32 %or16, i32* @errflag, align 4
  br label %if.end19

if.else17:                                        ; preds = %if.end
  %35 = load i32, i32* @errflag, align 4
  %and18 = and i32 %35, -3
  store i32 %and18, i32* @errflag, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %36 = load i32, i32* %save_try_errflag, align 4
  store i32 %36, i32* @try_errflag, align 4
  %37 = load i32, i32* %save_try_interrupt, align 4
  store i32 %37, i32* @try_interrupt, align 4
  %38 = load i32, i32* @retflag, align 4
  %tobool20 = icmp ne i32 %38, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end19
  %39 = load i32, i32* %save_retflag, align 4
  store i32 %39, i32* @retflag, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19
  %40 = load i32, i32* @breaks, align 4
  %tobool23 = icmp ne i32 %40, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  %41 = load i32, i32* %save_breaks, align 4
  store i32 %41, i32* @breaks, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %42 = load i32, i32* @contflag, align 4
  %tobool26 = icmp ne i32 %42, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  %43 = load i32, i32* %save_contflag, align 4
  store i32 %43, i32* @contflag, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  call void @cmdpop()
  call void @popheap()
  %44 = load i32*, i32** %end, align 4
  %45 = load %struct.estate*, %struct.estate** %state.addr, align 4
  %pc29 = getelementptr inbounds %struct.estate, %struct.estate* %45, i32 0, i32 1
  store i32* %44, i32** %pc29, align 4
  %46 = load i32, i32* %endval, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
