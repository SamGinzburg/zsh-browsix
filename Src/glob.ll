; ModuleID = 'glob.c'
source_filename = "glob.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.globdata = type { i32, i8*, i32, i32, i32, i32, %struct.gmatch*, %struct.gmatch*, i8*, %struct.qual*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.globsort], %union.linkroot*, %union.linkroot*, i8*, i8* }
%struct.gmatch = type { i8*, i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qual = type { %struct.qual*, %struct.qual*, i32 (i8*, %struct.stat*, i32, i8*)*, i32, i32, i32, i32, i32, i8* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i32, i32 }
%struct.globsort = type { i32, i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.complist = type { %struct.complist*, %struct.patprog*, i32, i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { double }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.shfunc = type { %struct.hashnode, i8*, i32, %struct.eprog*, %struct.eprog*, %struct.emulation_options* }
%struct.emulation_options = type { i32, i32, i32, i8*, i8* }
%struct.funcdump = type { %struct.funcdump*, i32, i32, i32, i32*, i32*, i32, i32, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i32, i32, i32, i32, i16, i8, [256 x i8] }
%struct.dirsav = type { i32, i32, i8*, i32, i32 }
%struct.redir = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.patstralloc = type { i32, i32, i8*, i8*, i32 }
%struct.imatchdata = type { i8*, i32, i8*, i32, i32, i8*, %union.linkroot* }
%struct.repldata = type { i32, i32, i8* }

@zpc_disables = external global [19 x i8], align 1
@opts = external global [181 x i8], align 1
@queueing_enabled = external global i32, align 4
@curglobdata = internal global %struct.globdata zeroinitializer, align 4
@pathpos = common global i32 0, align 4
@pathbuf = common global i8* null, align 4
@glob_pre = common global i8* null, align 4
@glob_suf = common global i8* null, align 4
@queue_front = external global i32, align 4
@queue_rear = external global i32, align 4
@signal_mask_queue = external global [128 x %struct.__sigset_t], align 4
@signal_queue = external global [128 x i32], align 4
@typtab = external global [256 x i16], align 2
@.str = private unnamed_addr constant [41 x i8] c"missing delimiter for 'u' glob qualifier\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"unknown user\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"missing delimiter for 'g' glob qualifier\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unknown group\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"value too big: Y%s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"too many glob sort specifiers\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"unknown sort specifier\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"doubled sort specifier\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"invalid subscript\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"unknown file attribute: %c\00", align 1
@errflag = external global i32, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@badcshglob = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"no matches found: %s\00", align 1
@lastval = external global i32, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"globsort\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"file number expected\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%0*ld\00", align 1
@ztokens = external global [0 x i8], align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"number expected\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"invalid mode specification\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"missing identifier after `+'\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"missing end of string\00", align 1
@zpc_special = external global [19 x i8], align 1
@errsfound = external global i32, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"current directory lost during glob\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@forceerrs = external global i32, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"%e: %s\00", align 1
@inserts = internal global i8** null, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"globqual\00", align 1
@qualsheval.tmparr = internal global [2 x i8*] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define i32 @checkglobqual(i8* %str, i32 %sl, i32 %nobareglob, i8** %sp) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %sl.addr = alloca i32, align 4
  %nobareglob.addr = alloca i32, align 4
  %sp.addr = alloca i8**, align 4
  %s = alloca i8*, align 4
  %paren = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %sl, i32* %sl.addr, align 4
  store i32 %nobareglob, i32* %nobareglob.addr, align 4
  store i8** %sp, i8*** %sp.addr, align 4
  store i32 1, i32* %ret, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i32, i32* %sl.addr, align 4
  %sub = sub nsw i32 %1, 1
  %arrayidx = getelementptr inbounds i8, i8* %0, i32 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, -118
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %paren, align 4
  %3 = load i8*, i8** %str.addr, align 4
  %4 = load i32, i32* %sl.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %4
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i32 -2
  store i8* %add.ptr2, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %s, align 4
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8*, i8** %s, align 4
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, -120
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load i32, i32* %paren, align 4
  %tobool7 = icmp ne i32 %9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %tobool7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %10, %lor.end ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load i8*, i8** %s, align 4
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  switch i32 %conv8, label %sw.epilog [
    i32 -118, label %sw.bb
    i32 -114, label %sw.bb9
    i32 -104, label %sw.bb13
    i32 -120, label %sw.bb19
  ]

sw.bb:                                            ; preds = %for.body
  %14 = load i32, i32* %paren, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %paren, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %for.body, %sw.bb
  %15 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 2), align 1
  %tobool10 = icmp ne i8 %15, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %sw.bb9
  store i32 1, i32* %nobareglob.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.bb9
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  %16 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv14 = sext i8 %16 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %sw.bb13
  %17 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 4), align 1
  %tobool16 = icmp ne i8 %17, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  store i32 1, i32* %nobareglob.addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %sw.bb13
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  %18 = load i32, i32* %paren, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %paren, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb19, %if.end18, %if.end12
  %19 = load i8*, i8** %s, align 4
  %20 = load i8*, i8** %str.addr, align 4
  %cmp20 = icmp eq i8* %19, %20
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.epilog
  br label %for.end

if.end23:                                         ; preds = %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %21 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then22, %land.end
  %22 = load i8*, i8** %s, align 4
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, -120
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %for.end
  %24 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv29 = sext i8 %24 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %if.end28
  %25 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 11), align 1
  %tobool32 = icmp ne i8 %25, 0
  br i1 %tobool32, label %if.else, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %26 = load i8*, i8** %s, align 4
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i32 1
  %27 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, -124
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %land.lhs.true33
  %28 = load i8*, i8** %s, align 4
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i32 2
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %29 to i32
  %cmp41 = icmp ne i32 %conv40, 113
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then38
  store i32 0, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then38
  store i32 2, i32* %ret, align 4
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true33, %land.lhs.true31, %if.end28
  %30 = load i32, i32* %nobareglob.addr, align 4
  %tobool45 = icmp ne i32 %30, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end44
  %31 = load i8**, i8*** %sp.addr, align 4
  %tobool49 = icmp ne i8** %31, null
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end48
  %32 = load i8*, i8** %s, align 4
  %33 = load i8**, i8*** %sp.addr, align 4
  store i8* %32, i8** %33, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then46, %if.then43, %if.then27, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind
define void @zglob(%union.linkroot* %list, %struct.linknode* %np, i32 %nountok) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %np.addr = alloca %struct.linknode*, align 4
  %nountok.addr = alloca i32, align 4
  %qo = alloca %struct.qual*, align 4
  %qn = alloca %struct.qual*, align 4
  %ql = alloca %struct.qual*, align 4
  %node = alloca %struct.linknode*, align 4
  %str = alloca i8*, align 4
  %sl = alloca i32, align 4
  %q = alloca %struct.complist*, align 4
  %ostr = alloca i8*, align 4
  %first = alloca i32, align 4
  %end = alloca i32, align 4
  %saved = alloca %struct.globdata, align 4
  %nobareglob = alloca i32, align 4
  %shortcircuit = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp13 = alloca %struct.__sigset_t, align 4
  %newquals = alloca %struct.qual*, align 4
  %s = alloca i8*, align 4
  %sense = alloca i32, align 4
  %qualsfound = alloca i32, align 4
  %data = alloca i32, align 4
  %sdata = alloca i8*, align 4
  %newcolonmod = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %func = alloca i32 (i8*, %struct.stat*, i32, i8*)*, align 4
  %sav = alloca i8, align 1
  %tt = alloca i8*, align 4
  %arglen = alloca i32, align 4
  %pw = alloca %struct.passwd*, align 4
  %sav166 = alloca i8, align 1
  %tt168 = alloca i8*, align 4
  %arglen170 = alloca i32, align 4
  %gr = alloca %struct.group*, align 4
  %s_saved = alloca i8*, align 4
  %oset248 = alloca %struct.__sigset_t, align 4
  %tmp252 = alloca %struct.__sigset_t, align 4
  %tmp254 = alloca %struct.__sigset_t, align 4
  %t = alloca i32, align 4
  %send = alloca i8*, align 4
  %oset404 = alloca %struct.__sigset_t, align 4
  %tmp408 = alloca %struct.__sigset_t, align 4
  %tmp410 = alloca %struct.__sigset_t, align 4
  %oset449 = alloca %struct.__sigset_t, align 4
  %tmp453 = alloca %struct.__sigset_t, align 4
  %tmp455 = alloca %struct.__sigset_t, align 4
  %oset478 = alloca %struct.__sigset_t, align 4
  %tmp482 = alloca %struct.__sigset_t, align 4
  %tmp484 = alloca %struct.__sigset_t, align 4
  %oset518 = alloca %struct.__sigset_t, align 4
  %tmp522 = alloca %struct.__sigset_t, align 4
  %tmp524 = alloca %struct.__sigset_t, align 4
  %tt546 = alloca i8*, align 4
  %os = alloca i8*, align 4
  %v = alloca %struct.value, align 4
  %oset580 = alloca %struct.__sigset_t, align 4
  %tmp584 = alloca %struct.__sigset_t, align 4
  %tmp586 = alloca %struct.__sigset_t, align 4
  %tt596 = alloca i8*, align 4
  %words = alloca %union.linkroot**, align 4
  %oset631 = alloca %struct.__sigset_t, align 4
  %tmp635 = alloca %struct.__sigset_t, align 4
  %tmp637 = alloca %struct.__sigset_t, align 4
  %oset681 = alloca %struct.__sigset_t, align 4
  %tmp685 = alloca %struct.__sigset_t, align 4
  %tmp687 = alloca %struct.__sigset_t, align 4
  %qorhead = alloca %struct.qual*, align 4
  %qortail = alloca %struct.qual*, align 4
  %qfirst = alloca %struct.qual*, align 4
  %qlast = alloca %struct.qual*, align 4
  %islast = alloca i32, align 4
  %oset793 = alloca %struct.__sigset_t, align 4
  %tmp797 = alloca %struct.__sigset_t, align 4
  %tmp799 = alloca %struct.__sigset_t, align 4
  %oset848 = alloca %struct.__sigset_t, align 4
  %tmp852 = alloca %struct.__sigset_t, align 4
  %tmp854 = alloca %struct.__sigset_t, align 4
  %nexecs = alloca i32, align 4
  %sortp = alloca %struct.globsort*, align 4
  %lastsortp = alloca %struct.globsort*, align 4
  %gmptr = alloca %struct.gmatch*, align 4
  %tmpptr = alloca %struct.gmatch*, align 4
  %iexec = alloca i32, align 4
  %prog = alloca %struct.eprog*, align 4
  %ef = alloca i32, align 4
  %lv = alloca i32, align 4
  %dummy = alloca i32, align 4
  %oset1059 = alloca %struct.__sigset_t, align 4
  %tmp1063 = alloca %struct.__sigset_t, align 4
  %tmp1065 = alloca %struct.__sigset_t, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %np, %struct.linknode** %np.addr, align 4
  store i32 %nountok, i32* %nountok.addr, align 4
  %0 = load %struct.linknode*, %struct.linknode** %np.addr, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %0, i32 0, i32 1
  %1 = load %struct.linknode*, %struct.linknode** %prev, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  %2 = load %struct.linknode*, %struct.linknode** %np.addr, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 2
  %3 = load i8*, i8** %dat, align 4
  store i8* %3, i8** %ostr, align 4
  store i32 0, i32* %first, align 4
  store i32 -1, i32* %end, align 4
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 19), align 1
  %tobool = icmp ne i8 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %nobareglob, align 4
  store i32 0, i32* %shortcircuit, align 4
  %5 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 60), align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8*, i8** %ostr, align 4
  %call = call i32 @haswilds(i8* %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 53), align 1
  %tobool4 = icmp ne i8 %7, 0
  br i1 %tobool4, label %if.end7, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load i32, i32* %nountok.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %ostr, align 4
  call void @untokenize(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %do.end1070

if.end7:                                          ; preds = %lor.lhs.false3
  br label %do.body

do.body:                                          ; preds = %if.end7
  %10 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %11 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* bitcast (%struct.globdata* @curglobdata to i8*), i32 204, i32 4, i1 false)
  %12 = load i32, i32* @pathpos, align 4
  %gd_pathpos = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  store i32 %12, i32* %gd_pathpos, align 4
  %13 = load i8*, i8** @pathbuf, align 4
  %gd_pathbuf = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  store i8* %13, i8** %gd_pathbuf, align 4
  %14 = load i8*, i8** @glob_pre, align 4
  %gd_glob_pre = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  store i8* %14, i8** %gd_glob_pre, align 4
  %15 = load i8*, i8** @glob_suf, align 4
  %gd_glob_suf = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  store i8* %15, i8** %gd_glob_suf, align 4
  store i8* null, i8** @pathbuf, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.body
  %16 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool9 = icmp ne i32 %dec, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %do.body8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body11
  %17 = load i32, i32* @queue_front, align 4
  %18 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %19, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %20 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %20
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %21 = bitcast %struct.__sigset_t* %oset to i8*
  %22 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 128, i32 4, i1 false)
  %23 = load i32, i32* @queue_front, align 4
  %arrayidx12 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %23
  %24 = load i32, i32* %arrayidx12, align 4
  call void @zhandler(i32 %24)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp13, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end14

if.end14:                                         ; preds = %do.end, %do.body8
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.end15
  %25 = load i8*, i8** %ostr, align 4
  %call17 = call i8* @dupstring(i8* %25)
  store i8* %call17, i8** %str, align 4
  %26 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %27 = load %struct.linknode*, %struct.linknode** %np.addr, align 4
  %call18 = call i8* @uremnode(%union.linkroot* %26, %struct.linknode* %27)
  store %struct.qual* null, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  store i8* null, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  %28 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 123), align 1
  %conv = sext i8 %28 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 15), align 4
  %29 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 115), align 1
  %conv19 = sext i8 %29 to i32
  store i32 %conv19, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 16), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 20), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 18), align 4
  %30 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 65), align 1
  %tobool20 = icmp ne i8 %30, 0
  %lnot21 = xor i1 %tobool20, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  store i32 %lnot.ext22, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 17), align 4
  %31 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 124), align 1
  %conv23 = sext i8 %31 to i32
  store i32 %conv23, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 19), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  store %union.linkroot* null, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store %union.linkroot* null, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 24), align 4
  br label %while.cond24

while.cond24:                                     ; preds = %if.end770, %do.end16
  %32 = load i32, i32* %nobareglob, align 4
  %tobool25 = icmp ne i32 %32, 0
  br i1 %tobool25, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond24
  %33 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 54), align 1
  %conv26 = sext i8 %33 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %34 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_disables, i32 0, i32 11), align 1
  %tobool28 = icmp ne i8 %34, 0
  %lnot29 = xor i1 %tobool28, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %35 = phi i1 [ false, %lor.rhs ], [ %lnot29, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond24
  %36 = phi i1 [ true, %while.cond24 ], [ %35, %land.end ]
  br i1 %36, label %while.body31, label %while.end771

while.body31:                                     ; preds = %lor.end
  store %struct.qual* null, %struct.qual** %ql, align 4
  store %struct.qual* null, %struct.qual** %qn, align 4
  store %struct.qual* null, %struct.qual** %qo, align 4
  store %struct.qual* null, %struct.qual** %newquals, align 4
  %37 = load i8*, i8** %str, align 4
  %call41 = call i32 @strlen(i8* %37)
  store i32 %call41, i32* %sl, align 4
  %38 = load i8*, i8** %str, align 4
  %39 = load i32, i32* %sl, align 4
  %40 = load i32, i32* %nobareglob, align 4
  %call42 = call i32 @checkglobqual(i8* %38, i32 %39, i32 %40, i8** %s)
  store i32 %call42, i32* %qualsfound, align 4
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %while.body31
  br label %while.end771

if.end45:                                         ; preds = %while.body31
  store i32 1, i32* %nobareglob, align 4
  store i32 0, i32* %sense, align 4
  store i32 0, i32* %data, align 4
  store i8* null, i8** %sdata, align 4
  store i8* null, i8** %newcolonmod, align 4
  %41 = load i8*, i8** %str, align 4
  %42 = load i32, i32* %sl, align 4
  %sub = sub nsw i32 %42, 1
  %arrayidx46 = getelementptr inbounds i8, i8* %41, i32 %sub
  store i8 0, i8* %arrayidx46, align 1
  %43 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %qualsfound, align 4
  %cmp47 = icmp eq i32 %44, 2
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  %45 = load i8*, i8** %s, align 4
  %add.ptr = getelementptr inbounds i8, i8* %45, i32 2
  store i8* %add.ptr, i8** %s, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end45
  %46 = load i8*, i8** %s, align 4
  store i8* %46, i8** %ptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end50
  %47 = load i8*, i8** %ptr, align 4
  %48 = load i8, i8* %47, align 1
  %tobool51 = icmp ne i8 %48, 0
  br i1 %tobool51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i8*, i8** %ptr, align 4
  %50 = load i8, i8* %49, align 1
  %conv52 = sext i8 %50 to i32
  %cmp53 = icmp eq i32 %conv52, -101
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.body
  %51 = load i8*, i8** %ptr, align 4
  store i8 45, i8* %51, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end56
  %52 = load i8*, i8** %ptr, align 4
  %incdec.ptr57 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr57, i8** %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond58

while.cond58:                                     ; preds = %if.end693, %for.end
  %53 = load i8*, i8** %s, align 4
  %54 = load i8, i8* %53, align 1
  %conv59 = sext i8 %54 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %land.rhs61, label %land.end65

land.rhs61:                                       ; preds = %while.cond58
  %55 = load i8*, i8** %newcolonmod, align 4
  %tobool62 = icmp ne i8* %55, null
  %lnot63 = xor i1 %tobool62, true
  br label %land.end65

land.end65:                                       ; preds = %land.rhs61, %while.cond58
  %56 = phi i1 [ false, %while.cond58 ], [ %lnot63, %land.rhs61 ]
  br i1 %56, label %while.body66, label %while.end694

while.body66:                                     ; preds = %land.end65
  store i32 (i8*, %struct.stat*, i32, i8*)* null, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %57 = load i8*, i8** %s, align 4
  %58 = load i8, i8* %57, align 1
  %conv67 = sext i8 %58 to i32
  %cmp68 = icmp eq i32 %conv67, 44
  br i1 %cmp68, label %if.then70, label %if.else

if.then70:                                        ; preds = %while.body66
  %59 = load i8*, i8** %s, align 4
  %incdec.ptr71 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr71, i8** %s, align 4
  store i32 0, i32* %sense, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  %tobool72 = icmp ne i32 %60, 0
  br i1 %tobool72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.then70
  %call74 = call i8* @hcalloc(i32 36)
  %61 = bitcast i8* %call74 to %struct.qual*
  store %struct.qual* %61, %struct.qual** %qn, align 4
  %62 = load %struct.qual*, %struct.qual** %qn, align 4
  %63 = load %struct.qual*, %struct.qual** %qo, align 4
  %or = getelementptr inbounds %struct.qual, %struct.qual* %63, i32 0, i32 1
  store %struct.qual* %62, %struct.qual** %or, align 4
  %64 = load %struct.qual*, %struct.qual** %qn, align 4
  store %struct.qual* %64, %struct.qual** %qo, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 11), align 4
  %inc75 = add nsw i32 %65, 1
  store i32 %inc75, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  store %struct.qual* null, %struct.qual** %ql, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.then70
  br label %if.end644

if.else:                                          ; preds = %while.body66
  %66 = load i8*, i8** %s, align 4
  %incdec.ptr77 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr77, i8** %s, align 4
  %67 = load i8, i8* %66, align 1
  %conv78 = sext i8 %67 to i32
  switch i32 %conv78, label %sw.default612 [
    i32 58, label %sw.bb
    i32 -122, label %sw.bb85
    i32 94, label %sw.bb85
    i32 45, label %sw.bb86
    i32 -101, label %sw.bb86
    i32 64, label %sw.bb88
    i32 -115, label %sw.bb89
    i32 61, label %sw.bb89
    i32 112, label %sw.bb90
    i32 47, label %sw.bb91
    i32 46, label %sw.bb92
    i32 37, label %sw.bb93
    i32 -121, label %sw.bb108
    i32 82, label %sw.bb109
    i32 87, label %sw.bb110
    i32 88, label %sw.bb111
    i32 65, label %sw.bb112
    i32 73, label %sw.bb113
    i32 69, label %sw.bb114
    i32 114, label %sw.bb115
    i32 119, label %sw.bb116
    i32 120, label %sw.bb117
    i32 115, label %sw.bb118
    i32 83, label %sw.bb119
    i32 116, label %sw.bb120
    i32 100, label %sw.bb121
    i32 108, label %sw.bb123
    i32 85, label %sw.bb124
    i32 71, label %sw.bb126
    i32 117, label %sw.bb128
    i32 103, label %sw.bb156
    i32 102, label %sw.bb189
    i32 70, label %sw.bb191
    i32 77, label %sw.bb192
    i32 84, label %sw.bb200
    i32 78, label %sw.bb208
    i32 68, label %sw.bb213
    i32 110, label %sw.bb215
    i32 89, label %sw.bb220
    i32 97, label %sw.bb262
    i32 109, label %sw.bb263
    i32 99, label %sw.bb264
    i32 76, label %sw.bb265
    i32 111, label %sw.bb382
    i32 79, label %sw.bb382
    i32 43, label %sw.bb544
    i32 101, label %sw.bb544
    i32 91, label %sw.bb553
    i32 -111, label %sw.bb553
    i32 80, label %sw.bb594
  ]

sw.bb:                                            ; preds = %if.else
  %68 = load i8*, i8** %s, align 4
  %add.ptr79 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %add.ptr79, i8** %newcolonmod, align 4
  %69 = load i8*, i8** %newcolonmod, align 4
  call void @untokenize(i8* %69)
  %70 = load i8*, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  %tobool80 = icmp ne i8* %70, null
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %sw.bb
  %71 = load i8*, i8** %newcolonmod, align 4
  %72 = load i8*, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  %call82 = call i8* @dyncat(i8* %71, i8* %72)
  store i8* %call82, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  br label %if.end84

if.else83:                                        ; preds = %sw.bb
  %73 = load i8*, i8** %newcolonmod, align 4
  store i8* %73, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then81
  br label %sw.epilog643

sw.bb85:                                          ; preds = %if.else, %if.else
  %74 = load i32, i32* %sense, align 4
  %xor = xor i32 %74, 1
  store i32 %xor, i32* %sense, align 4
  br label %sw.epilog643

sw.bb86:                                          ; preds = %if.else, %if.else
  %75 = load i32, i32* %sense, align 4
  %xor87 = xor i32 %75, 2
  store i32 %xor87, i32* %sense, align 4
  br label %sw.epilog643

sw.bb88:                                          ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualislnk, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb89:                                          ; preds = %if.else, %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualissock, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb90:                                          ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualisfifo, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb91:                                          ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualisdir, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb92:                                          ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualisreg, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb93:                                          ; preds = %if.else
  %76 = load i8*, i8** %s, align 4
  %77 = load i8, i8* %76, align 1
  %conv94 = sext i8 %77 to i32
  %cmp95 = icmp eq i32 %conv94, 98
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %sw.bb93
  %78 = load i8*, i8** %s, align 4
  %incdec.ptr98 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr98, i8** %s, align 4
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualisblk, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %if.end107

if.else99:                                        ; preds = %sw.bb93
  %79 = load i8*, i8** %s, align 4
  %80 = load i8, i8* %79, align 1
  %conv100 = sext i8 %80 to i32
  %cmp101 = icmp eq i32 %conv100, 99
  br i1 %cmp101, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.else99
  %81 = load i8*, i8** %s, align 4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr104, i8** %s, align 4
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualischr, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %if.end106

if.else105:                                       ; preds = %if.else99
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualisdev, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then103
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then97
  br label %sw.epilog643

sw.bb108:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualiscom, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb109:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 4, i32* %data, align 4
  br label %sw.epilog643

sw.bb110:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 2, i32* %data, align 4
  br label %sw.epilog643

sw.bb111:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 1, i32* %data, align 4
  br label %sw.epilog643

sw.bb112:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 32, i32* %data, align 4
  br label %sw.epilog643

sw.bb113:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 16, i32* %data, align 4
  br label %sw.epilog643

sw.bb114:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 8, i32* %data, align 4
  br label %sw.epilog643

sw.bb115:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 256, i32* %data, align 4
  br label %sw.epilog643

sw.bb116:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 128, i32* %data, align 4
  br label %sw.epilog643

sw.bb117:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 64, i32* %data, align 4
  br label %sw.epilog643

sw.bb118:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 2048, i32* %data, align 4
  br label %sw.epilog643

sw.bb119:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 1024, i32* %data, align 4
  br label %sw.epilog643

sw.bb120:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 512, i32* %data, align 4
  br label %sw.epilog643

sw.bb121:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualdev, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %call122 = call i32 @qgetnum(i8** %s)
  store i32 %call122, i32* %data, align 4
  br label %sw.epilog643

sw.bb123:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualnlink, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  br label %getrange

sw.bb124:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualuid, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %call125 = call i32 @geteuid()
  store i32 %call125, i32* %data, align 4
  br label %sw.epilog643

sw.bb126:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualgid, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %call127 = call i32 @getegid()
  store i32 %call127, i32* %data, align 4
  br label %sw.epilog643

sw.bb128:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualuid, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %82 = load i8*, i8** %s, align 4
  %83 = load i8, i8* %82, align 1
  %idxprom = zext i8 %83 to i32
  %arrayidx129 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %84 = load i16, i16* %arrayidx129, align 2
  %conv130 = sext i16 %84 to i32
  %and = and i32 %conv130, 1
  %tobool131 = icmp ne i32 %and, 0
  br i1 %tobool131, label %if.then132, label %if.else134

if.then132:                                       ; preds = %sw.bb128
  %call133 = call i32 @qgetnum(i8** %s)
  store i32 %call133, i32* %data, align 4
  br label %if.end155

if.else134:                                       ; preds = %sw.bb128
  %85 = load i8*, i8** %s, align 4
  %call138 = call i8* @get_strarg(i8* %85, i32* %arglen)
  store i8* %call138, i8** %tt, align 4
  %86 = load i8*, i8** %tt, align 4
  %87 = load i8, i8* %86, align 1
  %tobool139 = icmp ne i8 %87, 0
  br i1 %tobool139, label %if.else141, label %if.then140

if.then140:                                       ; preds = %if.else134
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %data, align 4
  br label %if.end154

if.else141:                                       ; preds = %if.else134
  %88 = load i8*, i8** %tt, align 4
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %sav, align 1
  %90 = load i8*, i8** %tt, align 4
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %s, align 4
  %92 = load i32, i32* %arglen, align 4
  %add.ptr143 = getelementptr inbounds i8, i8* %91, i32 %92
  %call144 = call %struct.passwd* @getpwnam(i8* %add.ptr143)
  store %struct.passwd* %call144, %struct.passwd** %pw, align 4
  %tobool145 = icmp ne %struct.passwd* %call144, null
  br i1 %tobool145, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.else141
  %93 = load %struct.passwd*, %struct.passwd** %pw, align 4
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %93, i32 0, i32 2
  %94 = load i32, i32* %pw_uid, align 4
  store i32 %94, i32* %data, align 4
  br label %if.end148

if.else147:                                       ; preds = %if.else141
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %data, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then146
  %95 = load i8, i8* %sav, align 1
  %96 = load i8*, i8** %tt, align 4
  store i8 %95, i8* %96, align 1
  %97 = load i8, i8* %sav, align 1
  %tobool149 = icmp ne i8 %97, 0
  br i1 %tobool149, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.end148
  %98 = load i8*, i8** %tt, align 4
  %99 = load i32, i32* %arglen, align 4
  %add.ptr151 = getelementptr inbounds i8, i8* %98, i32 %99
  store i8* %add.ptr151, i8** %s, align 4
  br label %if.end153

if.else152:                                       ; preds = %if.end148
  %100 = load i8*, i8** %tt, align 4
  store i8* %100, i8** %s, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %if.then150
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then140
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then132
  br label %sw.epilog643

sw.bb156:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualgid, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %101 = load i8*, i8** %s, align 4
  %102 = load i8, i8* %101, align 1
  %idxprom157 = zext i8 %102 to i32
  %arrayidx158 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom157
  %103 = load i16, i16* %arrayidx158, align 2
  %conv159 = sext i16 %103 to i32
  %and160 = and i32 %conv159, 1
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then162, label %if.else164

if.then162:                                       ; preds = %sw.bb156
  %call163 = call i32 @qgetnum(i8** %s)
  store i32 %call163, i32* %data, align 4
  br label %if.end188

if.else164:                                       ; preds = %sw.bb156
  %104 = load i8*, i8** %s, align 4
  %call171 = call i8* @get_strarg(i8* %104, i32* %arglen170)
  store i8* %call171, i8** %tt168, align 4
  %105 = load i8*, i8** %tt168, align 4
  %106 = load i8, i8* %105, align 1
  %tobool172 = icmp ne i8 %106, 0
  br i1 %tobool172, label %if.else174, label %if.then173

if.then173:                                       ; preds = %if.else164
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %data, align 4
  br label %if.end187

if.else174:                                       ; preds = %if.else164
  %107 = load i8*, i8** %tt168, align 4
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %sav166, align 1
  %109 = load i8*, i8** %tt168, align 4
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %s, align 4
  %111 = load i32, i32* %arglen170, align 4
  %add.ptr176 = getelementptr inbounds i8, i8* %110, i32 %111
  %call177 = call %struct.group* @getgrnam(i8* %add.ptr176)
  store %struct.group* %call177, %struct.group** %gr, align 4
  %tobool178 = icmp ne %struct.group* %call177, null
  br i1 %tobool178, label %if.then179, label %if.else180

if.then179:                                       ; preds = %if.else174
  %112 = load %struct.group*, %struct.group** %gr, align 4
  %gr_gid = getelementptr inbounds %struct.group, %struct.group* %112, i32 0, i32 2
  %113 = load i32, i32* %gr_gid, align 4
  store i32 %113, i32* %data, align 4
  br label %if.end181

if.else180:                                       ; preds = %if.else174
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %data, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else180, %if.then179
  %114 = load i8, i8* %sav166, align 1
  %115 = load i8*, i8** %tt168, align 4
  store i8 %114, i8* %115, align 1
  %116 = load i8, i8* %sav166, align 1
  %tobool182 = icmp ne i8 %116, 0
  br i1 %tobool182, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.end181
  %117 = load i8*, i8** %tt168, align 4
  %118 = load i32, i32* %arglen170, align 4
  %add.ptr184 = getelementptr inbounds i8, i8* %117, i32 %118
  store i8* %add.ptr184, i8** %s, align 4
  br label %if.end186

if.else185:                                       ; preds = %if.end181
  %119 = load i8*, i8** %tt168, align 4
  store i8* %119, i8** %s, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.else185, %if.then183
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.then173
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.then162
  br label %sw.epilog643

sw.bb189:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualmodeflags, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %call190 = call i32 @qgetmodespec(i8** %s)
  store i32 %call190, i32* %data, align 4
  br label %sw.epilog643

sw.bb191:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualnonemptydir, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %sw.epilog643

sw.bb192:                                         ; preds = %if.else
  %120 = load i32, i32* %sense, align 4
  %and193 = and i32 %120, 1
  %tobool194 = icmp ne i32 %and193, 0
  %lnot195 = xor i1 %tobool194, true
  %lnot.ext196 = zext i1 %lnot195 to i32
  store i32 %lnot.ext196, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 16), align 4
  br i1 %lnot195, label %if.then197, label %if.end199

if.then197:                                       ; preds = %sw.bb192
  %121 = load i32, i32* %sense, align 4
  %and198 = and i32 %121, 2
  store i32 %and198, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 20), align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %sw.bb192
  br label %sw.epilog643

sw.bb200:                                         ; preds = %if.else
  %122 = load i32, i32* %sense, align 4
  %and201 = and i32 %122, 1
  %tobool202 = icmp ne i32 %and201, 0
  %lnot203 = xor i1 %tobool202, true
  %lnot.ext204 = zext i1 %lnot203 to i32
  store i32 %lnot.ext204, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 18), align 4
  br i1 %lnot203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %sw.bb200
  %123 = load i32, i32* %sense, align 4
  %and206 = and i32 %123, 2
  store i32 %and206, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 20), align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %sw.bb200
  br label %sw.epilog643

sw.bb208:                                         ; preds = %if.else
  %124 = load i32, i32* %sense, align 4
  %and209 = and i32 %124, 1
  %tobool210 = icmp ne i32 %and209, 0
  %lnot211 = xor i1 %tobool210, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  store i32 %lnot.ext212, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 15), align 4
  br label %sw.epilog643

sw.bb213:                                         ; preds = %if.else
  %125 = load i32, i32* %sense, align 4
  %and214 = and i32 %125, 1
  store i32 %and214, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 17), align 4
  br label %sw.epilog643

sw.bb215:                                         ; preds = %if.else
  %126 = load i32, i32* %sense, align 4
  %and216 = and i32 %126, 1
  %tobool217 = icmp ne i32 %and216, 0
  %lnot218 = xor i1 %tobool217, true
  %lnot.ext219 = zext i1 %lnot218 to i32
  store i32 %lnot.ext219, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 19), align 4
  br label %sw.epilog643

sw.bb220:                                         ; preds = %if.else
  %127 = load i8*, i8** %s, align 4
  store i8* %127, i8** %s_saved, align 4
  %128 = load i32, i32* %sense, align 4
  %and222 = and i32 %128, 1
  %tobool223 = icmp ne i32 %and222, 0
  %lnot224 = xor i1 %tobool223, true
  %lnot.ext225 = zext i1 %lnot224 to i32
  store i32 %lnot.ext225, i32* %shortcircuit, align 4
  %129 = load i32, i32* %shortcircuit, align 4
  %tobool226 = icmp ne i32 %129, 0
  br i1 %tobool226, label %if.then227, label %if.end261

if.then227:                                       ; preds = %sw.bb220
  %call228 = call i32 @qgetnum(i8** %s)
  store i32 %call228, i32* %data, align 4
  %130 = load i32, i32* %data, align 4
  store i32 %130, i32* %shortcircuit, align 4
  %131 = load i32, i32* %data, align 4
  %cmp229 = icmp ne i32 %130, %131
  br i1 %cmp229, label %if.then231, label %if.end260

if.then231:                                       ; preds = %if.then227
  %132 = load i8*, i8** %s_saved, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %132)
  br label %do.body232

do.body232:                                       ; preds = %if.then231
  %133 = load i32, i32* @queueing_enabled, align 4
  %inc233 = add nsw i32 %133, 1
  store i32 %inc233, i32* @queueing_enabled, align 4
  %134 = load i8*, i8** @pathbuf, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %134, i32 %135)
  %136 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %136, i32 204, i32 4, i1 false)
  %gd_pathpos234 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %137 = load i32, i32* %gd_pathpos234, align 4
  store i32 %137, i32* @pathpos, align 4
  %gd_pathbuf235 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %138 = load i8*, i8** %gd_pathbuf235, align 4
  store i8* %138, i8** @pathbuf, align 4
  %gd_glob_pre236 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %139 = load i8*, i8** %gd_glob_pre236, align 4
  store i8* %139, i8** @glob_pre, align 4
  %gd_glob_suf237 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %140 = load i8*, i8** %gd_glob_suf237, align 4
  store i8* %140, i8** @glob_suf, align 4
  br label %do.body238

do.body238:                                       ; preds = %do.body232
  %141 = load i32, i32* @queueing_enabled, align 4
  %dec239 = add nsw i32 %141, -1
  store i32 %dec239, i32* @queueing_enabled, align 4
  %tobool240 = icmp ne i32 %dec239, 0
  br i1 %tobool240, label %if.end257, label %if.then241

if.then241:                                       ; preds = %do.body238
  br label %do.body242

do.body242:                                       ; preds = %if.then241
  br label %while.cond243

while.cond243:                                    ; preds = %while.body246, %do.body242
  %142 = load i32, i32* @queue_front, align 4
  %143 = load i32, i32* @queue_rear, align 4
  %cmp244 = icmp ne i32 %142, %143
  br i1 %cmp244, label %while.body246, label %while.end255

while.body246:                                    ; preds = %while.cond243
  %144 = load i32, i32* @queue_front, align 4
  %add249 = add nsw i32 %144, 1
  %rem250 = srem i32 %add249, 128
  store i32 %rem250, i32* @queue_front, align 4
  %145 = load i32, i32* @queue_front, align 4
  %arrayidx251 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %145
  call void @signal_setmask(%struct.__sigset_t* sret %tmp252, %struct.__sigset_t* byval align 4 %arrayidx251)
  %146 = bitcast %struct.__sigset_t* %oset248 to i8*
  %147 = bitcast %struct.__sigset_t* %tmp252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %146, i8* %147, i32 128, i32 4, i1 false)
  %148 = load i32, i32* @queue_front, align 4
  %arrayidx253 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %148
  %149 = load i32, i32* %arrayidx253, align 4
  call void @zhandler(i32 %149)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp254, %struct.__sigset_t* byval align 4 %oset248)
  br label %while.cond243

while.end255:                                     ; preds = %while.cond243
  br label %do.end256

do.end256:                                        ; preds = %while.end255
  br label %if.end257

if.end257:                                        ; preds = %do.end256, %do.body238
  br label %do.end258

do.end258:                                        ; preds = %if.end257
  br label %do.end259

do.end259:                                        ; preds = %do.end258
  br label %do.end1070

if.end260:                                        ; preds = %if.then227
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %sw.bb220
  br label %sw.epilog643

sw.bb262:                                         ; preds = %if.else
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualtime, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %getrange

sw.bb263:                                         ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualtime, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %getrange

sw.bb264:                                         ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualtime, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  br label %getrange

sw.bb265:                                         ; preds = %if.else
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualsize, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %150 = load i8*, i8** %s, align 4
  %151 = load i8, i8* %150, align 1
  %conv266 = sext i8 %151 to i32
  %cmp267 = icmp eq i32 %conv266, 112
  br i1 %cmp267, label %if.then273, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %sw.bb265
  %152 = load i8*, i8** %s, align 4
  %153 = load i8, i8* %152, align 1
  %conv270 = sext i8 %153 to i32
  %cmp271 = icmp eq i32 %conv270, 80
  br i1 %cmp271, label %if.then273, label %if.else275

if.then273:                                       ; preds = %lor.lhs.false269, %sw.bb265
  store i32 1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %154 = load i8*, i8** %s, align 4
  %incdec.ptr274 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr274, i8** %s, align 4
  br label %if.end319

if.else275:                                       ; preds = %lor.lhs.false269
  %155 = load i8*, i8** %s, align 4
  %156 = load i8, i8* %155, align 1
  %conv276 = sext i8 %156 to i32
  %cmp277 = icmp eq i32 %conv276, 107
  br i1 %cmp277, label %if.then283, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %if.else275
  %157 = load i8*, i8** %s, align 4
  %158 = load i8, i8* %157, align 1
  %conv280 = sext i8 %158 to i32
  %cmp281 = icmp eq i32 %conv280, 75
  br i1 %cmp281, label %if.then283, label %if.else285

if.then283:                                       ; preds = %lor.lhs.false279, %if.else275
  store i32 2, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %159 = load i8*, i8** %s, align 4
  %incdec.ptr284 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr284, i8** %s, align 4
  br label %if.end318

if.else285:                                       ; preds = %lor.lhs.false279
  %160 = load i8*, i8** %s, align 4
  %161 = load i8, i8* %160, align 1
  %conv286 = sext i8 %161 to i32
  %cmp287 = icmp eq i32 %conv286, 109
  br i1 %cmp287, label %if.then293, label %lor.lhs.false289

lor.lhs.false289:                                 ; preds = %if.else285
  %162 = load i8*, i8** %s, align 4
  %163 = load i8, i8* %162, align 1
  %conv290 = sext i8 %163 to i32
  %cmp291 = icmp eq i32 %conv290, 77
  br i1 %cmp291, label %if.then293, label %if.else295

if.then293:                                       ; preds = %lor.lhs.false289, %if.else285
  store i32 3, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %164 = load i8*, i8** %s, align 4
  %incdec.ptr294 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr294, i8** %s, align 4
  br label %if.end317

if.else295:                                       ; preds = %lor.lhs.false289
  %165 = load i8*, i8** %s, align 4
  %166 = load i8, i8* %165, align 1
  %conv296 = sext i8 %166 to i32
  %cmp297 = icmp eq i32 %conv296, 103
  br i1 %cmp297, label %if.then303, label %lor.lhs.false299

lor.lhs.false299:                                 ; preds = %if.else295
  %167 = load i8*, i8** %s, align 4
  %168 = load i8, i8* %167, align 1
  %conv300 = sext i8 %168 to i32
  %cmp301 = icmp eq i32 %conv300, 71
  br i1 %cmp301, label %if.then303, label %if.else305

if.then303:                                       ; preds = %lor.lhs.false299, %if.else295
  store i32 4, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %169 = load i8*, i8** %s, align 4
  %incdec.ptr304 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr304, i8** %s, align 4
  br label %if.end316

if.else305:                                       ; preds = %lor.lhs.false299
  %170 = load i8*, i8** %s, align 4
  %171 = load i8, i8* %170, align 1
  %conv306 = sext i8 %171 to i32
  %cmp307 = icmp eq i32 %conv306, 116
  br i1 %cmp307, label %if.then313, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %if.else305
  %172 = load i8*, i8** %s, align 4
  %173 = load i8, i8* %172, align 1
  %conv310 = sext i8 %173 to i32
  %cmp311 = icmp eq i32 %conv310, 84
  br i1 %cmp311, label %if.then313, label %if.end315

if.then313:                                       ; preds = %lor.lhs.false309, %if.else305
  store i32 5, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %174 = load i8*, i8** %s, align 4
  %incdec.ptr314 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr314, i8** %s, align 4
  br label %if.end315

if.end315:                                        ; preds = %if.then313, %lor.lhs.false309
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.then303
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.then293
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.then283
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %if.then273
  br label %getrange

getrange:                                         ; preds = %if.end319, %sw.bb264, %sw.bb263, %sw.bb262, %sw.bb123
  %175 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  %cmp320 = icmp sge i32 %175, 0
  br i1 %cmp320, label %if.then322, label %if.end364

if.then322:                                       ; preds = %getrange
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %176 = load i8*, i8** %s, align 4
  %177 = load i8, i8* %176, align 1
  %conv323 = sext i8 %177 to i32
  %cmp324 = icmp eq i32 %conv323, 104
  br i1 %cmp324, label %if.then326, label %if.else328

if.then326:                                       ; preds = %if.then322
  store i32 1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %178 = load i8*, i8** %s, align 4
  %incdec.ptr327 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr327, i8** %s, align 4
  br label %if.end363

if.else328:                                       ; preds = %if.then322
  %179 = load i8*, i8** %s, align 4
  %180 = load i8, i8* %179, align 1
  %conv329 = sext i8 %180 to i32
  %cmp330 = icmp eq i32 %conv329, 109
  br i1 %cmp330, label %if.then332, label %if.else334

if.then332:                                       ; preds = %if.else328
  store i32 2, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %181 = load i8*, i8** %s, align 4
  %incdec.ptr333 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr333, i8** %s, align 4
  br label %if.end362

if.else334:                                       ; preds = %if.else328
  %182 = load i8*, i8** %s, align 4
  %183 = load i8, i8* %182, align 1
  %conv335 = sext i8 %183 to i32
  %cmp336 = icmp eq i32 %conv335, 119
  br i1 %cmp336, label %if.then338, label %if.else340

if.then338:                                       ; preds = %if.else334
  store i32 3, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %184 = load i8*, i8** %s, align 4
  %incdec.ptr339 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr339, i8** %s, align 4
  br label %if.end361

if.else340:                                       ; preds = %if.else334
  %185 = load i8*, i8** %s, align 4
  %186 = load i8, i8* %185, align 1
  %conv341 = sext i8 %186 to i32
  %cmp342 = icmp eq i32 %conv341, 77
  br i1 %cmp342, label %if.then344, label %if.else346

if.then344:                                       ; preds = %if.else340
  store i32 4, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %187 = load i8*, i8** %s, align 4
  %incdec.ptr345 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr345, i8** %s, align 4
  br label %if.end360

if.else346:                                       ; preds = %if.else340
  %188 = load i8*, i8** %s, align 4
  %189 = load i8, i8* %188, align 1
  %conv347 = sext i8 %189 to i32
  %cmp348 = icmp eq i32 %conv347, 115
  br i1 %cmp348, label %if.then350, label %if.else352

if.then350:                                       ; preds = %if.else346
  store i32 5, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %190 = load i8*, i8** %s, align 4
  %incdec.ptr351 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr351, i8** %s, align 4
  br label %if.end359

if.else352:                                       ; preds = %if.else346
  %191 = load i8*, i8** %s, align 4
  %192 = load i8, i8* %191, align 1
  %conv353 = sext i8 %192 to i32
  %cmp354 = icmp eq i32 %conv353, 100
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.else352
  %193 = load i8*, i8** %s, align 4
  %incdec.ptr357 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr357, i8** %s, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.else352
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %if.then350
  br label %if.end360

if.end360:                                        ; preds = %if.end359, %if.then344
  br label %if.end361

if.end361:                                        ; preds = %if.end360, %if.then338
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then332
  br label %if.end363

if.end363:                                        ; preds = %if.end362, %if.then326
  br label %if.end364

if.end364:                                        ; preds = %if.end363, %getrange
  %194 = load i8*, i8** %s, align 4
  %195 = load i8, i8* %194, align 1
  %conv365 = sext i8 %195 to i32
  %cmp366 = icmp eq i32 %conv365, 43
  br i1 %cmp366, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end364
  br label %cond.end

cond.false:                                       ; preds = %if.end364
  %196 = load i8*, i8** %s, align 4
  %197 = load i8, i8* %196, align 1
  %conv368 = sext i8 %197 to i32
  %cmp369 = icmp eq i32 %conv368, 45
  br i1 %cmp369, label %lor.end375, label %lor.rhs371

lor.rhs371:                                       ; preds = %cond.false
  %198 = load i8*, i8** %s, align 4
  %199 = load i8, i8* %198, align 1
  %conv372 = sext i8 %199 to i32
  %cmp373 = icmp eq i32 %conv372, -101
  br label %lor.end375

lor.end375:                                       ; preds = %lor.rhs371, %cond.false
  %200 = phi i1 [ true, %cond.false ], [ %cmp373, %lor.rhs371 ]
  %cond = select i1 %200, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %lor.end375, %cond.true
  %cond376 = phi i32 [ 1, %cond.true ], [ %cond, %lor.end375 ]
  store i32 %cond376, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %tobool377 = icmp ne i32 %cond376, 0
  br i1 %tobool377, label %if.then378, label %if.end380

if.then378:                                       ; preds = %cond.end
  %201 = load i8*, i8** %s, align 4
  %incdec.ptr379 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr379, i8** %s, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.then378, %cond.end
  %call381 = call i32 @qgetnum(i8** %s)
  store i32 %call381, i32* %data, align 4
  br label %sw.epilog643

sw.bb382:                                         ; preds = %if.else, %if.else
  %202 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %cmp385 = icmp eq i32 %202, 12
  br i1 %cmp385, label %if.then387, label %if.end416

if.then387:                                       ; preds = %sw.bb382
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %do.body388

do.body388:                                       ; preds = %if.then387
  %203 = load i32, i32* @queueing_enabled, align 4
  %inc389 = add nsw i32 %203, 1
  store i32 %inc389, i32* @queueing_enabled, align 4
  %204 = load i8*, i8** @pathbuf, align 4
  %205 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %204, i32 %205)
  %206 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %206, i32 204, i32 4, i1 false)
  %gd_pathpos390 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %207 = load i32, i32* %gd_pathpos390, align 4
  store i32 %207, i32* @pathpos, align 4
  %gd_pathbuf391 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %208 = load i8*, i8** %gd_pathbuf391, align 4
  store i8* %208, i8** @pathbuf, align 4
  %gd_glob_pre392 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %209 = load i8*, i8** %gd_glob_pre392, align 4
  store i8* %209, i8** @glob_pre, align 4
  %gd_glob_suf393 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %210 = load i8*, i8** %gd_glob_suf393, align 4
  store i8* %210, i8** @glob_suf, align 4
  br label %do.body394

do.body394:                                       ; preds = %do.body388
  %211 = load i32, i32* @queueing_enabled, align 4
  %dec395 = add nsw i32 %211, -1
  store i32 %dec395, i32* @queueing_enabled, align 4
  %tobool396 = icmp ne i32 %dec395, 0
  br i1 %tobool396, label %if.end413, label %if.then397

if.then397:                                       ; preds = %do.body394
  br label %do.body398

do.body398:                                       ; preds = %if.then397
  br label %while.cond399

while.cond399:                                    ; preds = %while.body402, %do.body398
  %212 = load i32, i32* @queue_front, align 4
  %213 = load i32, i32* @queue_rear, align 4
  %cmp400 = icmp ne i32 %212, %213
  br i1 %cmp400, label %while.body402, label %while.end411

while.body402:                                    ; preds = %while.cond399
  %214 = load i32, i32* @queue_front, align 4
  %add405 = add nsw i32 %214, 1
  %rem406 = srem i32 %add405, 128
  store i32 %rem406, i32* @queue_front, align 4
  %215 = load i32, i32* @queue_front, align 4
  %arrayidx407 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %215
  call void @signal_setmask(%struct.__sigset_t* sret %tmp408, %struct.__sigset_t* byval align 4 %arrayidx407)
  %216 = bitcast %struct.__sigset_t* %oset404 to i8*
  %217 = bitcast %struct.__sigset_t* %tmp408 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %216, i8* %217, i32 128, i32 4, i1 false)
  %218 = load i32, i32* @queue_front, align 4
  %arrayidx409 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %218
  %219 = load i32, i32* %arrayidx409, align 4
  call void @zhandler(i32 %219)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp410, %struct.__sigset_t* byval align 4 %oset404)
  br label %while.cond399

while.end411:                                     ; preds = %while.cond399
  br label %do.end412

do.end412:                                        ; preds = %while.end411
  br label %if.end413

if.end413:                                        ; preds = %do.end412, %do.body394
  br label %do.end414

do.end414:                                        ; preds = %if.end413
  br label %do.end415

do.end415:                                        ; preds = %do.end414
  br label %do.end1070

if.end416:                                        ; preds = %sw.bb382
  %220 = load i8*, i8** %s, align 4
  %add.ptr417 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %add.ptr417, i8** %send, align 4
  %221 = load i8*, i8** %s, align 4
  %222 = load i8, i8* %221, align 1
  %conv418 = sext i8 %222 to i32
  switch i32 %conv418, label %sw.default [
    i32 110, label %sw.bb419
    i32 76, label %sw.bb420
    i32 108, label %sw.bb421
    i32 97, label %sw.bb422
    i32 109, label %sw.bb423
    i32 99, label %sw.bb424
    i32 100, label %sw.bb425
    i32 78, label %sw.bb426
    i32 101, label %sw.bb427
    i32 43, label %sw.bb427
  ]

sw.bb419:                                         ; preds = %if.end416
  store i32 1, i32* %t, align 4
  br label %sw.epilog

sw.bb420:                                         ; preds = %if.end416
  store i32 8, i32* %t, align 4
  br label %sw.epilog

sw.bb421:                                         ; preds = %if.end416
  store i32 128, i32* %t, align 4
  br label %sw.epilog

sw.bb422:                                         ; preds = %if.end416
  store i32 16, i32* %t, align 4
  br label %sw.epilog

sw.bb423:                                         ; preds = %if.end416
  store i32 32, i32* %t, align 4
  br label %sw.epilog

sw.bb424:                                         ; preds = %if.end416
  store i32 64, i32* %t, align 4
  br label %sw.epilog

sw.bb425:                                         ; preds = %if.end416
  store i32 2, i32* %t, align 4
  br label %sw.epilog

sw.bb426:                                         ; preds = %if.end416
  store i32 16384, i32* %t, align 4
  br label %sw.epilog

sw.bb427:                                         ; preds = %if.end416, %if.end416
  store i32 4, i32* %t, align 4
  %call428 = call i8* @glob_exec_string(i8** %send)
  %223 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %arrayidx429 = getelementptr inbounds [12 x %struct.globsort], [12 x %struct.globsort]* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23), i32 0, i32 %223
  %exec = getelementptr inbounds %struct.globsort, %struct.globsort* %arrayidx429, i32 0, i32 1
  store i8* %call428, i8** %exec, align 4
  %cmp430 = icmp eq i8* %call428, null
  br i1 %cmp430, label %if.then432, label %if.end461

if.then432:                                       ; preds = %sw.bb427
  br label %do.body433

do.body433:                                       ; preds = %if.then432
  %224 = load i32, i32* @queueing_enabled, align 4
  %inc434 = add nsw i32 %224, 1
  store i32 %inc434, i32* @queueing_enabled, align 4
  %225 = load i8*, i8** @pathbuf, align 4
  %226 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %225, i32 %226)
  %227 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %227, i32 204, i32 4, i1 false)
  %gd_pathpos435 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %228 = load i32, i32* %gd_pathpos435, align 4
  store i32 %228, i32* @pathpos, align 4
  %gd_pathbuf436 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %229 = load i8*, i8** %gd_pathbuf436, align 4
  store i8* %229, i8** @pathbuf, align 4
  %gd_glob_pre437 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %230 = load i8*, i8** %gd_glob_pre437, align 4
  store i8* %230, i8** @glob_pre, align 4
  %gd_glob_suf438 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %231 = load i8*, i8** %gd_glob_suf438, align 4
  store i8* %231, i8** @glob_suf, align 4
  br label %do.body439

do.body439:                                       ; preds = %do.body433
  %232 = load i32, i32* @queueing_enabled, align 4
  %dec440 = add nsw i32 %232, -1
  store i32 %dec440, i32* @queueing_enabled, align 4
  %tobool441 = icmp ne i32 %dec440, 0
  br i1 %tobool441, label %if.end458, label %if.then442

if.then442:                                       ; preds = %do.body439
  br label %do.body443

do.body443:                                       ; preds = %if.then442
  br label %while.cond444

while.cond444:                                    ; preds = %while.body447, %do.body443
  %233 = load i32, i32* @queue_front, align 4
  %234 = load i32, i32* @queue_rear, align 4
  %cmp445 = icmp ne i32 %233, %234
  br i1 %cmp445, label %while.body447, label %while.end456

while.body447:                                    ; preds = %while.cond444
  %235 = load i32, i32* @queue_front, align 4
  %add450 = add nsw i32 %235, 1
  %rem451 = srem i32 %add450, 128
  store i32 %rem451, i32* @queue_front, align 4
  %236 = load i32, i32* @queue_front, align 4
  %arrayidx452 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %236
  call void @signal_setmask(%struct.__sigset_t* sret %tmp453, %struct.__sigset_t* byval align 4 %arrayidx452)
  %237 = bitcast %struct.__sigset_t* %oset449 to i8*
  %238 = bitcast %struct.__sigset_t* %tmp453 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %237, i8* %238, i32 128, i32 4, i1 false)
  %239 = load i32, i32* @queue_front, align 4
  %arrayidx454 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %239
  %240 = load i32, i32* %arrayidx454, align 4
  call void @zhandler(i32 %240)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp455, %struct.__sigset_t* byval align 4 %oset449)
  br label %while.cond444

while.end456:                                     ; preds = %while.cond444
  br label %do.end457

do.end457:                                        ; preds = %while.end456
  br label %if.end458

if.end458:                                        ; preds = %do.end457, %do.body439
  br label %do.end459

do.end459:                                        ; preds = %if.end458
  br label %do.end460

do.end460:                                        ; preds = %do.end459
  br label %do.end1070

if.end461:                                        ; preds = %sw.bb427
  br label %sw.epilog

sw.default:                                       ; preds = %if.end416
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %do.body462

do.body462:                                       ; preds = %sw.default
  %241 = load i32, i32* @queueing_enabled, align 4
  %inc463 = add nsw i32 %241, 1
  store i32 %inc463, i32* @queueing_enabled, align 4
  %242 = load i8*, i8** @pathbuf, align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %242, i32 %243)
  %244 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %244, i32 204, i32 4, i1 false)
  %gd_pathpos464 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %245 = load i32, i32* %gd_pathpos464, align 4
  store i32 %245, i32* @pathpos, align 4
  %gd_pathbuf465 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %246 = load i8*, i8** %gd_pathbuf465, align 4
  store i8* %246, i8** @pathbuf, align 4
  %gd_glob_pre466 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %247 = load i8*, i8** %gd_glob_pre466, align 4
  store i8* %247, i8** @glob_pre, align 4
  %gd_glob_suf467 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %248 = load i8*, i8** %gd_glob_suf467, align 4
  store i8* %248, i8** @glob_suf, align 4
  br label %do.body468

do.body468:                                       ; preds = %do.body462
  %249 = load i32, i32* @queueing_enabled, align 4
  %dec469 = add nsw i32 %249, -1
  store i32 %dec469, i32* @queueing_enabled, align 4
  %tobool470 = icmp ne i32 %dec469, 0
  br i1 %tobool470, label %if.end487, label %if.then471

if.then471:                                       ; preds = %do.body468
  br label %do.body472

do.body472:                                       ; preds = %if.then471
  br label %while.cond473

while.cond473:                                    ; preds = %while.body476, %do.body472
  %250 = load i32, i32* @queue_front, align 4
  %251 = load i32, i32* @queue_rear, align 4
  %cmp474 = icmp ne i32 %250, %251
  br i1 %cmp474, label %while.body476, label %while.end485

while.body476:                                    ; preds = %while.cond473
  %252 = load i32, i32* @queue_front, align 4
  %add479 = add nsw i32 %252, 1
  %rem480 = srem i32 %add479, 128
  store i32 %rem480, i32* @queue_front, align 4
  %253 = load i32, i32* @queue_front, align 4
  %arrayidx481 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %253
  call void @signal_setmask(%struct.__sigset_t* sret %tmp482, %struct.__sigset_t* byval align 4 %arrayidx481)
  %254 = bitcast %struct.__sigset_t* %oset478 to i8*
  %255 = bitcast %struct.__sigset_t* %tmp482 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %254, i8* %255, i32 128, i32 4, i1 false)
  %256 = load i32, i32* @queue_front, align 4
  %arrayidx483 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %256
  %257 = load i32, i32* %arrayidx483, align 4
  call void @zhandler(i32 %257)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp484, %struct.__sigset_t* byval align 4 %oset478)
  br label %while.cond473

while.end485:                                     ; preds = %while.cond473
  br label %do.end486

do.end486:                                        ; preds = %while.end485
  br label %if.end487

if.end487:                                        ; preds = %do.end486, %do.body468
  br label %do.end488

do.end488:                                        ; preds = %if.end487
  br label %do.end489

do.end489:                                        ; preds = %do.end488
  br label %do.end1070

sw.epilog:                                        ; preds = %if.end461, %sw.bb426, %sw.bb425, %sw.bb424, %sw.bb423, %sw.bb422, %sw.bb421, %sw.bb420, %sw.bb419
  %258 = load i32, i32* %sense, align 4
  %and490 = and i32 %258, 2
  %tobool491 = icmp ne i32 %and490, 0
  br i1 %tobool491, label %land.lhs.true, label %if.end495

land.lhs.true:                                    ; preds = %sw.epilog
  %259 = load i32, i32* %t, align 4
  %and492 = and i32 %259, 248
  %tobool493 = icmp ne i32 %and492, 0
  br i1 %tobool493, label %if.then494, label %if.end495

if.then494:                                       ; preds = %land.lhs.true
  %260 = load i32, i32* %t, align 4
  %shl = shl i32 %260, 5
  store i32 %shl, i32* %t, align 4
  br label %if.end495

if.end495:                                        ; preds = %if.then494, %land.lhs.true, %sw.epilog
  %261 = load i32, i32* %t, align 4
  %cmp496 = icmp ne i32 %261, 4
  br i1 %cmp496, label %if.then498, label %if.end531

if.then498:                                       ; preds = %if.end495
  %262 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  %263 = load i32, i32* %t, align 4
  %and499 = and i32 %262, %263
  %tobool500 = icmp ne i32 %and499, 0
  br i1 %tobool500, label %if.then501, label %if.end530

if.then501:                                       ; preds = %if.then498
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %do.body502

do.body502:                                       ; preds = %if.then501
  %264 = load i32, i32* @queueing_enabled, align 4
  %inc503 = add nsw i32 %264, 1
  store i32 %inc503, i32* @queueing_enabled, align 4
  %265 = load i8*, i8** @pathbuf, align 4
  %266 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %265, i32 %266)
  %267 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %267, i32 204, i32 4, i1 false)
  %gd_pathpos504 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %268 = load i32, i32* %gd_pathpos504, align 4
  store i32 %268, i32* @pathpos, align 4
  %gd_pathbuf505 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %269 = load i8*, i8** %gd_pathbuf505, align 4
  store i8* %269, i8** @pathbuf, align 4
  %gd_glob_pre506 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %270 = load i8*, i8** %gd_glob_pre506, align 4
  store i8* %270, i8** @glob_pre, align 4
  %gd_glob_suf507 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %271 = load i8*, i8** %gd_glob_suf507, align 4
  store i8* %271, i8** @glob_suf, align 4
  br label %do.body508

do.body508:                                       ; preds = %do.body502
  %272 = load i32, i32* @queueing_enabled, align 4
  %dec509 = add nsw i32 %272, -1
  store i32 %dec509, i32* @queueing_enabled, align 4
  %tobool510 = icmp ne i32 %dec509, 0
  br i1 %tobool510, label %if.end527, label %if.then511

if.then511:                                       ; preds = %do.body508
  br label %do.body512

do.body512:                                       ; preds = %if.then511
  br label %while.cond513

while.cond513:                                    ; preds = %while.body516, %do.body512
  %273 = load i32, i32* @queue_front, align 4
  %274 = load i32, i32* @queue_rear, align 4
  %cmp514 = icmp ne i32 %273, %274
  br i1 %cmp514, label %while.body516, label %while.end525

while.body516:                                    ; preds = %while.cond513
  %275 = load i32, i32* @queue_front, align 4
  %add519 = add nsw i32 %275, 1
  %rem520 = srem i32 %add519, 128
  store i32 %rem520, i32* @queue_front, align 4
  %276 = load i32, i32* @queue_front, align 4
  %arrayidx521 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %276
  call void @signal_setmask(%struct.__sigset_t* sret %tmp522, %struct.__sigset_t* byval align 4 %arrayidx521)
  %277 = bitcast %struct.__sigset_t* %oset518 to i8*
  %278 = bitcast %struct.__sigset_t* %tmp522 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %277, i8* %278, i32 128, i32 4, i1 false)
  %279 = load i32, i32* @queue_front, align 4
  %arrayidx523 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %279
  %280 = load i32, i32* %arrayidx523, align 4
  call void @zhandler(i32 %280)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp524, %struct.__sigset_t* byval align 4 %oset518)
  br label %while.cond513

while.end525:                                     ; preds = %while.cond513
  br label %do.end526

do.end526:                                        ; preds = %while.end525
  br label %if.end527

if.end527:                                        ; preds = %do.end526, %do.body508
  br label %do.end528

do.end528:                                        ; preds = %if.end527
  br label %do.end529

do.end529:                                        ; preds = %do.end528
  br label %do.end1070

if.end530:                                        ; preds = %if.then498
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %if.end495
  %281 = load i32, i32* %t, align 4
  %282 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  %or532 = or i32 %282, %281
  store i32 %or532, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  %283 = load i32, i32* %t, align 4
  %284 = load i32, i32* %sense, align 4
  %and533 = and i32 %284, 1
  %285 = load i8*, i8** %s, align 4
  %arrayidx534 = getelementptr inbounds i8, i8* %285, i32 -1
  %286 = load i8, i8* %arrayidx534, align 1
  %conv535 = sext i8 %286 to i32
  %cmp536 = icmp eq i32 %conv535, 79
  %conv537 = zext i1 %cmp536 to i32
  %xor538 = xor i32 %and533, %conv537
  %tobool539 = icmp ne i32 %xor538, 0
  %cond540 = select i1 %tobool539, i32 8192, i32 0
  %or541 = or i32 %283, %cond540
  %287 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %inc542 = add nsw i32 %287, 1
  store i32 %inc542, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %arrayidx543 = getelementptr inbounds [12 x %struct.globsort], [12 x %struct.globsort]* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23), i32 0, i32 %287
  %tp = getelementptr inbounds %struct.globsort, %struct.globsort* %arrayidx543, i32 0, i32 0
  store i32 %or541, i32* %tp, align 4
  %288 = load i8*, i8** %send, align 4
  store i8* %288, i8** %s, align 4
  br label %sw.epilog643

sw.bb544:                                         ; preds = %if.else, %if.else
  %call547 = call i8* @glob_exec_string(i8** %s)
  store i8* %call547, i8** %tt546, align 4
  %289 = load i8*, i8** %tt546, align 4
  %cmp548 = icmp eq i8* %289, null
  br i1 %cmp548, label %if.then550, label %if.else551

if.then550:                                       ; preds = %sw.bb544
  store i32 0, i32* %data, align 4
  br label %if.end552

if.else551:                                       ; preds = %sw.bb544
  store i32 (i8*, %struct.stat*, i32, i8*)* @qualsheval, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %290 = load i8*, i8** %tt546, align 4
  store i8* %290, i8** %sdata, align 4
  br label %if.end552

if.end552:                                        ; preds = %if.else551, %if.then550
  br label %sw.epilog643

sw.bb553:                                         ; preds = %if.else, %if.else
  %291 = load i8*, i8** %s, align 4
  %incdec.ptr555 = getelementptr inbounds i8, i8* %291, i32 -1
  store i8* %incdec.ptr555, i8** %s, align 4
  store i8* %incdec.ptr555, i8** %os, align 4
  %isarr = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 0
  store i32 1, i32* %isarr, align 4
  %pm = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 1
  store %struct.param* null, %struct.param** %pm, align 4
  %end557 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end557, align 4
  %flags = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %call558 = call i32 @getindex(i8** %s, %struct.value* %v, i32 0)
  %tobool559 = icmp ne i32 %call558, 0
  br i1 %tobool559, label %if.then563, label %lor.lhs.false560

lor.lhs.false560:                                 ; preds = %sw.bb553
  %292 = load i8*, i8** %s, align 4
  %293 = load i8*, i8** %os, align 4
  %cmp561 = icmp eq i8* %292, %293
  br i1 %cmp561, label %if.then563, label %if.end592

if.then563:                                       ; preds = %lor.lhs.false560, %sw.bb553
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  br label %do.body564

do.body564:                                       ; preds = %if.then563
  %294 = load i32, i32* @queueing_enabled, align 4
  %inc565 = add nsw i32 %294, 1
  store i32 %inc565, i32* @queueing_enabled, align 4
  %295 = load i8*, i8** @pathbuf, align 4
  %296 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %295, i32 %296)
  %297 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %297, i32 204, i32 4, i1 false)
  %gd_pathpos566 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %298 = load i32, i32* %gd_pathpos566, align 4
  store i32 %298, i32* @pathpos, align 4
  %gd_pathbuf567 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %299 = load i8*, i8** %gd_pathbuf567, align 4
  store i8* %299, i8** @pathbuf, align 4
  %gd_glob_pre568 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %300 = load i8*, i8** %gd_glob_pre568, align 4
  store i8* %300, i8** @glob_pre, align 4
  %gd_glob_suf569 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %301 = load i8*, i8** %gd_glob_suf569, align 4
  store i8* %301, i8** @glob_suf, align 4
  br label %do.body570

do.body570:                                       ; preds = %do.body564
  %302 = load i32, i32* @queueing_enabled, align 4
  %dec571 = add nsw i32 %302, -1
  store i32 %dec571, i32* @queueing_enabled, align 4
  %tobool572 = icmp ne i32 %dec571, 0
  br i1 %tobool572, label %if.end589, label %if.then573

if.then573:                                       ; preds = %do.body570
  br label %do.body574

do.body574:                                       ; preds = %if.then573
  br label %while.cond575

while.cond575:                                    ; preds = %while.body578, %do.body574
  %303 = load i32, i32* @queue_front, align 4
  %304 = load i32, i32* @queue_rear, align 4
  %cmp576 = icmp ne i32 %303, %304
  br i1 %cmp576, label %while.body578, label %while.end587

while.body578:                                    ; preds = %while.cond575
  %305 = load i32, i32* @queue_front, align 4
  %add581 = add nsw i32 %305, 1
  %rem582 = srem i32 %add581, 128
  store i32 %rem582, i32* @queue_front, align 4
  %306 = load i32, i32* @queue_front, align 4
  %arrayidx583 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %306
  call void @signal_setmask(%struct.__sigset_t* sret %tmp584, %struct.__sigset_t* byval align 4 %arrayidx583)
  %307 = bitcast %struct.__sigset_t* %oset580 to i8*
  %308 = bitcast %struct.__sigset_t* %tmp584 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %307, i8* %308, i32 128, i32 4, i1 false)
  %309 = load i32, i32* @queue_front, align 4
  %arrayidx585 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %309
  %310 = load i32, i32* %arrayidx585, align 4
  call void @zhandler(i32 %310)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp586, %struct.__sigset_t* byval align 4 %oset580)
  br label %while.cond575

while.end587:                                     ; preds = %while.cond575
  br label %do.end588

do.end588:                                        ; preds = %while.end587
  br label %if.end589

if.end589:                                        ; preds = %do.end588, %do.body570
  br label %do.end590

do.end590:                                        ; preds = %if.end589
  br label %do.end591

do.end591:                                        ; preds = %do.end590
  br label %do.end1070

if.end592:                                        ; preds = %lor.lhs.false560
  %start = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 3
  %311 = load i32, i32* %start, align 4
  store i32 %311, i32* %first, align 4
  %end593 = getelementptr inbounds %struct.value, %struct.value* %v, i32 0, i32 4
  %312 = load i32, i32* %end593, align 4
  store i32 %312, i32* %end, align 4
  br label %sw.epilog643

sw.bb594:                                         ; preds = %if.else
  %call597 = call i8* @glob_exec_string(i8** %s)
  store i8* %call597, i8** %tt596, align 4
  %313 = load i8*, i8** %tt596, align 4
  %cmp598 = icmp ne i8* %313, null
  br i1 %cmp598, label %if.then600, label %if.end611

if.then600:                                       ; preds = %sw.bb594
  %314 = load i32, i32* %sense, align 4
  %and602 = and i32 %314, 1
  %tobool603 = icmp ne i32 %and602, 0
  %cond604 = select i1 %tobool603, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 25), %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 24)
  store %union.linkroot** %cond604, %union.linkroot*** %words, align 4
  %315 = load %union.linkroot**, %union.linkroot*** %words, align 4
  %316 = load %union.linkroot*, %union.linkroot** %315, align 4
  %tobool605 = icmp ne %union.linkroot* %316, null
  br i1 %tobool605, label %if.end608, label %if.then606

if.then606:                                       ; preds = %if.then600
  %call607 = call %union.linkroot* @newlinklist()
  %317 = load %union.linkroot**, %union.linkroot*** %words, align 4
  store %union.linkroot* %call607, %union.linkroot** %317, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.then606, %if.then600
  %318 = load %union.linkroot**, %union.linkroot*** %words, align 4
  %319 = load %union.linkroot*, %union.linkroot** %318, align 4
  %320 = load %union.linkroot**, %union.linkroot*** %words, align 4
  %321 = load %union.linkroot*, %union.linkroot** %320, align 4
  %list609 = bitcast %union.linkroot* %321 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list609, i32 0, i32 1
  %322 = load %struct.linknode*, %struct.linknode** %last, align 4
  %323 = load i8*, i8** %tt596, align 4
  %call610 = call %struct.linknode* @insertlinknode(%union.linkroot* %319, %struct.linknode* %322, i8* %323)
  br label %if.end611

if.end611:                                        ; preds = %if.end608, %sw.bb594
  br label %sw.epilog643

sw.default612:                                    ; preds = %if.else
  %324 = load i8*, i8** %s, align 4
  %incdec.ptr613 = getelementptr inbounds i8, i8* %324, i32 -1
  store i8* %incdec.ptr613, i8** %s, align 4
  call void @untokenize(i8* %incdec.ptr613)
  %325 = load i8*, i8** %s, align 4
  %326 = load i8, i8* %325, align 1
  %conv614 = sext i8 %326 to i32
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %conv614)
  br label %do.body615

do.body615:                                       ; preds = %sw.default612
  %327 = load i32, i32* @queueing_enabled, align 4
  %inc616 = add nsw i32 %327, 1
  store i32 %inc616, i32* @queueing_enabled, align 4
  %328 = load i8*, i8** @pathbuf, align 4
  %329 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %328, i32 %329)
  %330 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %330, i32 204, i32 4, i1 false)
  %gd_pathpos617 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %331 = load i32, i32* %gd_pathpos617, align 4
  store i32 %331, i32* @pathpos, align 4
  %gd_pathbuf618 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %332 = load i8*, i8** %gd_pathbuf618, align 4
  store i8* %332, i8** @pathbuf, align 4
  %gd_glob_pre619 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %333 = load i8*, i8** %gd_glob_pre619, align 4
  store i8* %333, i8** @glob_pre, align 4
  %gd_glob_suf620 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %334 = load i8*, i8** %gd_glob_suf620, align 4
  store i8* %334, i8** @glob_suf, align 4
  br label %do.body621

do.body621:                                       ; preds = %do.body615
  %335 = load i32, i32* @queueing_enabled, align 4
  %dec622 = add nsw i32 %335, -1
  store i32 %dec622, i32* @queueing_enabled, align 4
  %tobool623 = icmp ne i32 %dec622, 0
  br i1 %tobool623, label %if.end640, label %if.then624

if.then624:                                       ; preds = %do.body621
  br label %do.body625

do.body625:                                       ; preds = %if.then624
  br label %while.cond626

while.cond626:                                    ; preds = %while.body629, %do.body625
  %336 = load i32, i32* @queue_front, align 4
  %337 = load i32, i32* @queue_rear, align 4
  %cmp627 = icmp ne i32 %336, %337
  br i1 %cmp627, label %while.body629, label %while.end638

while.body629:                                    ; preds = %while.cond626
  %338 = load i32, i32* @queue_front, align 4
  %add632 = add nsw i32 %338, 1
  %rem633 = srem i32 %add632, 128
  store i32 %rem633, i32* @queue_front, align 4
  %339 = load i32, i32* @queue_front, align 4
  %arrayidx634 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %339
  call void @signal_setmask(%struct.__sigset_t* sret %tmp635, %struct.__sigset_t* byval align 4 %arrayidx634)
  %340 = bitcast %struct.__sigset_t* %oset631 to i8*
  %341 = bitcast %struct.__sigset_t* %tmp635 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %340, i8* %341, i32 128, i32 4, i1 false)
  %342 = load i32, i32* @queue_front, align 4
  %arrayidx636 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %342
  %343 = load i32, i32* %arrayidx636, align 4
  call void @zhandler(i32 %343)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp637, %struct.__sigset_t* byval align 4 %oset631)
  br label %while.cond626

while.end638:                                     ; preds = %while.cond626
  br label %do.end639

do.end639:                                        ; preds = %while.end638
  br label %if.end640

if.end640:                                        ; preds = %do.end639, %do.body621
  br label %do.end641

do.end641:                                        ; preds = %if.end640
  br label %do.end642

do.end642:                                        ; preds = %do.end641
  br label %do.end1070

sw.epilog643:                                     ; preds = %if.end611, %if.end592, %if.end552, %if.end531, %if.end380, %if.end261, %sw.bb215, %sw.bb213, %sw.bb208, %if.end207, %if.end199, %sw.bb191, %sw.bb189, %if.end188, %if.end155, %sw.bb126, %sw.bb124, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %if.end107, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb86, %sw.bb85, %if.end84
  br label %if.end644

if.end644:                                        ; preds = %sw.epilog643, %if.end76
  %344 = load i32 (i8*, %struct.stat*, i32, i8*)*, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %tobool645 = icmp ne i32 (i8*, %struct.stat*, i32, i8*)* %344, null
  br i1 %tobool645, label %if.then646, label %if.end662

if.then646:                                       ; preds = %if.end644
  %345 = load %struct.qual*, %struct.qual** %qn, align 4
  %tobool647 = icmp ne %struct.qual* %345, null
  br i1 %tobool647, label %if.end650, label %if.then648

if.then648:                                       ; preds = %if.then646
  %call649 = call i8* @hcalloc(i32 36)
  %346 = bitcast i8* %call649 to %struct.qual*
  store %struct.qual* %346, %struct.qual** %qn, align 4
  br label %if.end650

if.end650:                                        ; preds = %if.then648, %if.then646
  %347 = load %struct.qual*, %struct.qual** %ql, align 4
  %tobool651 = icmp ne %struct.qual* %347, null
  br i1 %tobool651, label %if.then652, label %if.end653

if.then652:                                       ; preds = %if.end650
  %348 = load %struct.qual*, %struct.qual** %qn, align 4
  %349 = load %struct.qual*, %struct.qual** %ql, align 4
  %next = getelementptr inbounds %struct.qual, %struct.qual* %349, i32 0, i32 0
  store %struct.qual* %348, %struct.qual** %next, align 4
  br label %if.end653

if.end653:                                        ; preds = %if.then652, %if.end650
  %350 = load %struct.qual*, %struct.qual** %qn, align 4
  store %struct.qual* %350, %struct.qual** %ql, align 4
  %351 = load %struct.qual*, %struct.qual** %newquals, align 4
  %tobool654 = icmp ne %struct.qual* %351, null
  br i1 %tobool654, label %if.end656, label %if.then655

if.then655:                                       ; preds = %if.end653
  %352 = load %struct.qual*, %struct.qual** %qn, align 4
  store %struct.qual* %352, %struct.qual** %qo, align 4
  store %struct.qual* %352, %struct.qual** %newquals, align 4
  br label %if.end656

if.end656:                                        ; preds = %if.then655, %if.end653
  %353 = load i32 (i8*, %struct.stat*, i32, i8*)*, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %354 = load %struct.qual*, %struct.qual** %qn, align 4
  %func657 = getelementptr inbounds %struct.qual, %struct.qual* %354, i32 0, i32 2
  store i32 (i8*, %struct.stat*, i32, i8*)* %353, i32 (i8*, %struct.stat*, i32, i8*)** %func657, align 4
  %355 = load i32, i32* %sense, align 4
  %356 = load %struct.qual*, %struct.qual** %qn, align 4
  %sense658 = getelementptr inbounds %struct.qual, %struct.qual* %356, i32 0, i32 4
  store i32 %355, i32* %sense658, align 4
  %357 = load i32, i32* %data, align 4
  %358 = load %struct.qual*, %struct.qual** %qn, align 4
  %data659 = getelementptr inbounds %struct.qual, %struct.qual* %358, i32 0, i32 3
  store i32 %357, i32* %data659, align 4
  %359 = load i8*, i8** %sdata, align 4
  %360 = load %struct.qual*, %struct.qual** %qn, align 4
  %sdata660 = getelementptr inbounds %struct.qual, %struct.qual* %360, i32 0, i32 8
  store i8* %359, i8** %sdata660, align 4
  %361 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %362 = load %struct.qual*, %struct.qual** %qn, align 4
  %range = getelementptr inbounds %struct.qual, %struct.qual* %362, i32 0, i32 6
  store i32 %361, i32* %range, align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %364 = load %struct.qual*, %struct.qual** %qn, align 4
  %units = getelementptr inbounds %struct.qual, %struct.qual* %364, i32 0, i32 7
  store i32 %363, i32* %units, align 4
  %365 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  %366 = load %struct.qual*, %struct.qual** %qn, align 4
  %amc = getelementptr inbounds %struct.qual, %struct.qual* %366, i32 0, i32 5
  store i32 %365, i32* %amc, align 4
  store %struct.qual* null, %struct.qual** %qn, align 4
  %367 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  %inc661 = add nsw i32 %367, 1
  store i32 %inc661, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  br label %if.end662

if.end662:                                        ; preds = %if.end656, %if.end644
  %368 = load i32, i32* @errflag, align 4
  %tobool663 = icmp ne i32 %368, 0
  br i1 %tobool663, label %if.then664, label %if.end693

if.then664:                                       ; preds = %if.end662
  br label %do.body665

do.body665:                                       ; preds = %if.then664
  %369 = load i32, i32* @queueing_enabled, align 4
  %inc666 = add nsw i32 %369, 1
  store i32 %inc666, i32* @queueing_enabled, align 4
  %370 = load i8*, i8** @pathbuf, align 4
  %371 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %370, i32 %371)
  %372 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %372, i32 204, i32 4, i1 false)
  %gd_pathpos667 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %373 = load i32, i32* %gd_pathpos667, align 4
  store i32 %373, i32* @pathpos, align 4
  %gd_pathbuf668 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %374 = load i8*, i8** %gd_pathbuf668, align 4
  store i8* %374, i8** @pathbuf, align 4
  %gd_glob_pre669 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %375 = load i8*, i8** %gd_glob_pre669, align 4
  store i8* %375, i8** @glob_pre, align 4
  %gd_glob_suf670 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %376 = load i8*, i8** %gd_glob_suf670, align 4
  store i8* %376, i8** @glob_suf, align 4
  br label %do.body671

do.body671:                                       ; preds = %do.body665
  %377 = load i32, i32* @queueing_enabled, align 4
  %dec672 = add nsw i32 %377, -1
  store i32 %dec672, i32* @queueing_enabled, align 4
  %tobool673 = icmp ne i32 %dec672, 0
  br i1 %tobool673, label %if.end690, label %if.then674

if.then674:                                       ; preds = %do.body671
  br label %do.body675

do.body675:                                       ; preds = %if.then674
  br label %while.cond676

while.cond676:                                    ; preds = %while.body679, %do.body675
  %378 = load i32, i32* @queue_front, align 4
  %379 = load i32, i32* @queue_rear, align 4
  %cmp677 = icmp ne i32 %378, %379
  br i1 %cmp677, label %while.body679, label %while.end688

while.body679:                                    ; preds = %while.cond676
  %380 = load i32, i32* @queue_front, align 4
  %add682 = add nsw i32 %380, 1
  %rem683 = srem i32 %add682, 128
  store i32 %rem683, i32* @queue_front, align 4
  %381 = load i32, i32* @queue_front, align 4
  %arrayidx684 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %381
  call void @signal_setmask(%struct.__sigset_t* sret %tmp685, %struct.__sigset_t* byval align 4 %arrayidx684)
  %382 = bitcast %struct.__sigset_t* %oset681 to i8*
  %383 = bitcast %struct.__sigset_t* %tmp685 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %382, i8* %383, i32 128, i32 4, i1 false)
  %384 = load i32, i32* @queue_front, align 4
  %arrayidx686 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %384
  %385 = load i32, i32* %arrayidx686, align 4
  call void @zhandler(i32 %385)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp687, %struct.__sigset_t* byval align 4 %oset681)
  br label %while.cond676

while.end688:                                     ; preds = %while.cond676
  br label %do.end689

do.end689:                                        ; preds = %while.end688
  br label %if.end690

if.end690:                                        ; preds = %do.end689, %do.body671
  br label %do.end691

do.end691:                                        ; preds = %if.end690
  br label %do.end692

do.end692:                                        ; preds = %do.end691
  br label %do.end1070

if.end693:                                        ; preds = %if.end662
  br label %while.cond58

while.end694:                                     ; preds = %land.end65
  %386 = load %struct.qual*, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  %tobool695 = icmp ne %struct.qual* %386, null
  br i1 %tobool695, label %land.lhs.true696, label %if.else766

land.lhs.true696:                                 ; preds = %while.end694
  %387 = load %struct.qual*, %struct.qual** %newquals, align 4
  %tobool697 = icmp ne %struct.qual* %387, null
  br i1 %tobool697, label %if.then698, label %if.else766

if.then698:                                       ; preds = %land.lhs.true696
  %388 = load %struct.qual*, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  %or699 = getelementptr inbounds %struct.qual, %struct.qual* %388, i32 0, i32 1
  %389 = load %struct.qual*, %struct.qual** %or699, align 4
  %tobool700 = icmp ne %struct.qual* %389, null
  br i1 %tobool700, label %if.then704, label %lor.lhs.false701

lor.lhs.false701:                                 ; preds = %if.then698
  %390 = load %struct.qual*, %struct.qual** %newquals, align 4
  %or702 = getelementptr inbounds %struct.qual, %struct.qual* %390, i32 0, i32 1
  %391 = load %struct.qual*, %struct.qual** %or702, align 4
  %tobool703 = icmp ne %struct.qual* %391, null
  br i1 %tobool703, label %if.then704, label %if.else756

if.then704:                                       ; preds = %lor.lhs.false701, %if.then698
  store %struct.qual* null, %struct.qual** %qorhead, align 4
  store %struct.qual* null, %struct.qual** %qortail, align 4
  %392 = load %struct.qual*, %struct.qual** %newquals, align 4
  store %struct.qual* %392, %struct.qual** %qn, align 4
  br label %for.cond707

for.cond707:                                      ; preds = %for.inc753, %if.then704
  %393 = load %struct.qual*, %struct.qual** %qn, align 4
  %tobool708 = icmp ne %struct.qual* %393, null
  br i1 %tobool708, label %for.body709, label %for.end755

for.body709:                                      ; preds = %for.cond707
  %394 = load %struct.qual*, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  store %struct.qual* %394, %struct.qual** %qo, align 4
  br label %for.cond710

for.cond710:                                      ; preds = %for.inc750, %for.body709
  %395 = load %struct.qual*, %struct.qual** %qo, align 4
  %tobool711 = icmp ne %struct.qual* %395, null
  br i1 %tobool711, label %for.body712, label %for.end752

for.body712:                                      ; preds = %for.cond710
  %396 = load %struct.qual*, %struct.qual** %qn, align 4
  %or716 = getelementptr inbounds %struct.qual, %struct.qual* %396, i32 0, i32 1
  %397 = load %struct.qual*, %struct.qual** %or716, align 4
  %tobool717 = icmp ne %struct.qual* %397, null
  br i1 %tobool717, label %land.end723, label %land.rhs718

land.rhs718:                                      ; preds = %for.body712
  %398 = load %struct.qual*, %struct.qual** %qo, align 4
  %or719 = getelementptr inbounds %struct.qual, %struct.qual* %398, i32 0, i32 1
  %399 = load %struct.qual*, %struct.qual** %or719, align 4
  %tobool720 = icmp ne %struct.qual* %399, null
  %lnot721 = xor i1 %tobool720, true
  br label %land.end723

land.end723:                                      ; preds = %land.rhs718, %for.body712
  %400 = phi i1 [ false, %for.body712 ], [ %lnot721, %land.rhs718 ]
  %land.ext = zext i1 %400 to i32
  store i32 %land.ext, i32* %islast, align 4
  %401 = load i32, i32* %islast, align 4
  %tobool724 = icmp ne i32 %401, 0
  br i1 %tobool724, label %if.then725, label %if.else733

if.then725:                                       ; preds = %land.end723
  %402 = load %struct.qual*, %struct.qual** %qn, align 4
  store %struct.qual* %402, %struct.qual** %qfirst, align 4
  %403 = load %struct.qual*, %struct.qual** %qfirst, align 4
  store %struct.qual* %403, %struct.qual** %qlast, align 4
  br label %for.cond726

for.cond726:                                      ; preds = %for.inc730, %if.then725
  %404 = load %struct.qual*, %struct.qual** %qlast, align 4
  %next727 = getelementptr inbounds %struct.qual, %struct.qual* %404, i32 0, i32 0
  %405 = load %struct.qual*, %struct.qual** %next727, align 4
  %tobool728 = icmp ne %struct.qual* %405, null
  br i1 %tobool728, label %for.body729, label %for.end732

for.body729:                                      ; preds = %for.cond726
  br label %for.inc730

for.inc730:                                       ; preds = %for.body729
  %406 = load %struct.qual*, %struct.qual** %qlast, align 4
  %next731 = getelementptr inbounds %struct.qual, %struct.qual* %406, i32 0, i32 0
  %407 = load %struct.qual*, %struct.qual** %next731, align 4
  store %struct.qual* %407, %struct.qual** %qlast, align 4
  br label %for.cond726

for.end732:                                       ; preds = %for.cond726
  br label %if.end735

if.else733:                                       ; preds = %land.end723
  %408 = load %struct.qual*, %struct.qual** %qn, align 4
  %call734 = call %struct.qual* @dup_qual_list(%struct.qual* %408, %struct.qual** %qlast)
  store %struct.qual* %call734, %struct.qual** %qfirst, align 4
  br label %if.end735

if.end735:                                        ; preds = %if.else733, %for.end732
  %409 = load %struct.qual*, %struct.qual** %qorhead, align 4
  %tobool736 = icmp ne %struct.qual* %409, null
  br i1 %tobool736, label %if.end738, label %if.then737

if.then737:                                       ; preds = %if.end735
  %410 = load %struct.qual*, %struct.qual** %qfirst, align 4
  store %struct.qual* %410, %struct.qual** %qorhead, align 4
  br label %if.end738

if.end738:                                        ; preds = %if.then737, %if.end735
  %411 = load %struct.qual*, %struct.qual** %qortail, align 4
  %tobool739 = icmp ne %struct.qual* %411, null
  br i1 %tobool739, label %if.then740, label %if.end742

if.then740:                                       ; preds = %if.end738
  %412 = load %struct.qual*, %struct.qual** %qfirst, align 4
  %413 = load %struct.qual*, %struct.qual** %qortail, align 4
  %or741 = getelementptr inbounds %struct.qual, %struct.qual* %413, i32 0, i32 1
  store %struct.qual* %412, %struct.qual** %or741, align 4
  br label %if.end742

if.end742:                                        ; preds = %if.then740, %if.end738
  %414 = load %struct.qual*, %struct.qual** %qfirst, align 4
  store %struct.qual* %414, %struct.qual** %qortail, align 4
  %415 = load i32, i32* %islast, align 4
  %tobool743 = icmp ne i32 %415, 0
  br i1 %tobool743, label %cond.true744, label %cond.false745

cond.true744:                                     ; preds = %if.end742
  %416 = load %struct.qual*, %struct.qual** %qo, align 4
  br label %cond.end747

cond.false745:                                    ; preds = %if.end742
  %417 = load %struct.qual*, %struct.qual** %qo, align 4
  %call746 = call %struct.qual* @dup_qual_list(%struct.qual* %417, %struct.qual** null)
  br label %cond.end747

cond.end747:                                      ; preds = %cond.false745, %cond.true744
  %cond748 = phi %struct.qual* [ %416, %cond.true744 ], [ %call746, %cond.false745 ]
  %418 = load %struct.qual*, %struct.qual** %qlast, align 4
  %next749 = getelementptr inbounds %struct.qual, %struct.qual* %418, i32 0, i32 0
  store %struct.qual* %cond748, %struct.qual** %next749, align 4
  br label %for.inc750

for.inc750:                                       ; preds = %cond.end747
  %419 = load %struct.qual*, %struct.qual** %qo, align 4
  %or751 = getelementptr inbounds %struct.qual, %struct.qual* %419, i32 0, i32 1
  %420 = load %struct.qual*, %struct.qual** %or751, align 4
  store %struct.qual* %420, %struct.qual** %qo, align 4
  br label %for.cond710

for.end752:                                       ; preds = %for.cond710
  br label %for.inc753

for.inc753:                                       ; preds = %for.end752
  %421 = load %struct.qual*, %struct.qual** %qn, align 4
  %or754 = getelementptr inbounds %struct.qual, %struct.qual* %421, i32 0, i32 1
  %422 = load %struct.qual*, %struct.qual** %or754, align 4
  store %struct.qual* %422, %struct.qual** %qn, align 4
  br label %for.cond707

for.end755:                                       ; preds = %for.cond707
  %423 = load %struct.qual*, %struct.qual** %qorhead, align 4
  store %struct.qual* %423, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  br label %if.end765

if.else756:                                       ; preds = %lor.lhs.false701
  %424 = load %struct.qual*, %struct.qual** %newquals, align 4
  store %struct.qual* %424, %struct.qual** %qn, align 4
  br label %for.cond757

for.cond757:                                      ; preds = %for.inc761, %if.else756
  %425 = load %struct.qual*, %struct.qual** %newquals, align 4
  %next758 = getelementptr inbounds %struct.qual, %struct.qual* %425, i32 0, i32 0
  %426 = load %struct.qual*, %struct.qual** %next758, align 4
  %tobool759 = icmp ne %struct.qual* %426, null
  br i1 %tobool759, label %for.body760, label %for.end763

for.body760:                                      ; preds = %for.cond757
  br label %for.inc761

for.inc761:                                       ; preds = %for.body760
  %427 = load %struct.qual*, %struct.qual** %newquals, align 4
  %next762 = getelementptr inbounds %struct.qual, %struct.qual* %427, i32 0, i32 0
  %428 = load %struct.qual*, %struct.qual** %next762, align 4
  store %struct.qual* %428, %struct.qual** %newquals, align 4
  br label %for.cond757

for.end763:                                       ; preds = %for.cond757
  %429 = load %struct.qual*, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  %430 = load %struct.qual*, %struct.qual** %newquals, align 4
  %next764 = getelementptr inbounds %struct.qual, %struct.qual* %430, i32 0, i32 0
  store %struct.qual* %429, %struct.qual** %next764, align 4
  %431 = load %struct.qual*, %struct.qual** %qn, align 4
  store %struct.qual* %431, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  br label %if.end765

if.end765:                                        ; preds = %for.end763, %for.end755
  br label %if.end770

if.else766:                                       ; preds = %land.lhs.true696, %while.end694
  %432 = load %struct.qual*, %struct.qual** %newquals, align 4
  %tobool767 = icmp ne %struct.qual* %432, null
  br i1 %tobool767, label %if.then768, label %if.end769

if.then768:                                       ; preds = %if.else766
  %433 = load %struct.qual*, %struct.qual** %newquals, align 4
  store %struct.qual* %433, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  br label %if.end769

if.end769:                                        ; preds = %if.then768, %if.else766
  br label %if.end770

if.end770:                                        ; preds = %if.end769, %if.end765
  br label %while.cond24

while.end771:                                     ; preds = %if.then44, %lor.end
  %434 = load i8*, i8** %str, align 4
  %call772 = call %struct.complist* @parsepat(i8* %434)
  store %struct.complist* %call772, %struct.complist** %q, align 4
  %435 = load %struct.complist*, %struct.complist** %q, align 4
  %tobool773 = icmp ne %struct.complist* %435, null
  br i1 %tobool773, label %lor.lhs.false774, label %if.then776

lor.lhs.false774:                                 ; preds = %while.end771
  %436 = load i32, i32* @errflag, align 4
  %tobool775 = icmp ne i32 %436, 0
  br i1 %tobool775, label %if.then776, label %if.end813

if.then776:                                       ; preds = %lor.lhs.false774, %while.end771
  br label %do.body777

do.body777:                                       ; preds = %if.then776
  %437 = load i32, i32* @queueing_enabled, align 4
  %inc778 = add nsw i32 %437, 1
  store i32 %inc778, i32* @queueing_enabled, align 4
  %438 = load i8*, i8** @pathbuf, align 4
  %439 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %438, i32 %439)
  %440 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %440, i32 204, i32 4, i1 false)
  %gd_pathpos779 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %441 = load i32, i32* %gd_pathpos779, align 4
  store i32 %441, i32* @pathpos, align 4
  %gd_pathbuf780 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %442 = load i8*, i8** %gd_pathbuf780, align 4
  store i8* %442, i8** @pathbuf, align 4
  %gd_glob_pre781 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %443 = load i8*, i8** %gd_glob_pre781, align 4
  store i8* %443, i8** @glob_pre, align 4
  %gd_glob_suf782 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %444 = load i8*, i8** %gd_glob_suf782, align 4
  store i8* %444, i8** @glob_suf, align 4
  br label %do.body783

do.body783:                                       ; preds = %do.body777
  %445 = load i32, i32* @queueing_enabled, align 4
  %dec784 = add nsw i32 %445, -1
  store i32 %dec784, i32* @queueing_enabled, align 4
  %tobool785 = icmp ne i32 %dec784, 0
  br i1 %tobool785, label %if.end802, label %if.then786

if.then786:                                       ; preds = %do.body783
  br label %do.body787

do.body787:                                       ; preds = %if.then786
  br label %while.cond788

while.cond788:                                    ; preds = %while.body791, %do.body787
  %446 = load i32, i32* @queue_front, align 4
  %447 = load i32, i32* @queue_rear, align 4
  %cmp789 = icmp ne i32 %446, %447
  br i1 %cmp789, label %while.body791, label %while.end800

while.body791:                                    ; preds = %while.cond788
  %448 = load i32, i32* @queue_front, align 4
  %add794 = add nsw i32 %448, 1
  %rem795 = srem i32 %add794, 128
  store i32 %rem795, i32* @queue_front, align 4
  %449 = load i32, i32* @queue_front, align 4
  %arrayidx796 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %449
  call void @signal_setmask(%struct.__sigset_t* sret %tmp797, %struct.__sigset_t* byval align 4 %arrayidx796)
  %450 = bitcast %struct.__sigset_t* %oset793 to i8*
  %451 = bitcast %struct.__sigset_t* %tmp797 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %450, i8* %451, i32 128, i32 4, i1 false)
  %452 = load i32, i32* @queue_front, align 4
  %arrayidx798 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %452
  %453 = load i32, i32* %arrayidx798, align 4
  call void @zhandler(i32 %453)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp799, %struct.__sigset_t* byval align 4 %oset793)
  br label %while.cond788

while.end800:                                     ; preds = %while.cond788
  br label %do.end801

do.end801:                                        ; preds = %while.end800
  br label %if.end802

if.end802:                                        ; preds = %do.end801, %do.body783
  br label %do.end803

do.end803:                                        ; preds = %if.end802
  br label %do.end804

do.end804:                                        ; preds = %do.end803
  %454 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 17), align 1
  %tobool805 = icmp ne i8 %454, 0
  br i1 %tobool805, label %if.end811, label %if.then806

if.then806:                                       ; preds = %do.end804
  %455 = load i32, i32* %nountok.addr, align 4
  %tobool807 = icmp ne i32 %455, 0
  br i1 %tobool807, label %if.end809, label %if.then808

if.then808:                                       ; preds = %if.then806
  %456 = load i8*, i8** %ostr, align 4
  call void @untokenize(i8* %456)
  br label %if.end809

if.end809:                                        ; preds = %if.then808, %if.then806
  %457 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %458 = load %struct.linknode*, %struct.linknode** %node, align 4
  %459 = load i8*, i8** %ostr, align 4
  %call810 = call %struct.linknode* @insertlinknode(%union.linkroot* %457, %struct.linknode* %458, i8* %459)
  br label %do.end1070

if.end811:                                        ; preds = %do.end804
  %460 = load i32, i32* @errflag, align 4
  %and812 = and i32 %460, -2
  store i32 %and812, i32* @errflag, align 4
  %461 = load i8*, i8** %ostr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %461)
  br label %do.end1070

if.end813:                                        ; preds = %lor.lhs.false774
  %462 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %tobool814 = icmp ne i32 %462, 0
  br i1 %tobool814, label %if.end818, label %if.then815

if.then815:                                       ; preds = %if.end813
  %463 = load i32, i32* %shortcircuit, align 4
  %tobool816 = icmp ne i32 %463, 0
  %cond817 = select i1 %tobool816, i32 16384, i32 1
  store i32 %cond817, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  store i32 %cond817, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  br label %if.end818

if.end818:                                        ; preds = %if.then815, %if.end813
  store i32 16, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 2), align 4
  %call819 = call i8* @zalloc(i32 1216)
  %464 = bitcast i8* %call819 to %struct.gmatch*
  store %struct.gmatch* %464, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  store %struct.gmatch* %464, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  store i32 0, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  call void @pattrystart()
  %465 = load %struct.complist*, %struct.complist** %q, align 4
  %466 = load i32, i32* %shortcircuit, align 4
  call void @scanner(%struct.complist* %465, i32 %466)
  %467 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %tobool820 = icmp ne i32 %467, 0
  br i1 %tobool820, label %if.then821, label %if.else823

if.then821:                                       ; preds = %if.end818
  %468 = load i32, i32* @badcshglob, align 4
  %or822 = or i32 %468, 2
  store i32 %or822, i32* @badcshglob, align 4
  br label %if.end866

if.else823:                                       ; preds = %if.end818
  %469 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 15), align 4
  %tobool824 = icmp ne i32 %469, 0
  br i1 %tobool824, label %if.end865, label %if.then825

if.then825:                                       ; preds = %if.else823
  %470 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 47), align 1
  %tobool826 = icmp ne i8 %470, 0
  br i1 %tobool826, label %if.then827, label %if.else829

if.then827:                                       ; preds = %if.then825
  %471 = load i32, i32* @badcshglob, align 4
  %or828 = or i32 %471, 1
  store i32 %or828, i32* @badcshglob, align 4
  br label %if.end864

if.else829:                                       ; preds = %if.then825
  %472 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %tobool830 = icmp ne i8 %472, 0
  br i1 %tobool830, label %if.then831, label %if.else860

if.then831:                                       ; preds = %if.else829
  %473 = load i8*, i8** %ostr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* %473)
  %474 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %475 = bitcast %struct.gmatch* %474 to i8*
  call void @zfree(i8* %475, i32 0)
  br label %do.body832

do.body832:                                       ; preds = %if.then831
  %476 = load i32, i32* @queueing_enabled, align 4
  %inc833 = add nsw i32 %476, 1
  store i32 %inc833, i32* @queueing_enabled, align 4
  %477 = load i8*, i8** @pathbuf, align 4
  %478 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %477, i32 %478)
  %479 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %479, i32 204, i32 4, i1 false)
  %gd_pathpos834 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %480 = load i32, i32* %gd_pathpos834, align 4
  store i32 %480, i32* @pathpos, align 4
  %gd_pathbuf835 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %481 = load i8*, i8** %gd_pathbuf835, align 4
  store i8* %481, i8** @pathbuf, align 4
  %gd_glob_pre836 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %482 = load i8*, i8** %gd_glob_pre836, align 4
  store i8* %482, i8** @glob_pre, align 4
  %gd_glob_suf837 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %483 = load i8*, i8** %gd_glob_suf837, align 4
  store i8* %483, i8** @glob_suf, align 4
  br label %do.body838

do.body838:                                       ; preds = %do.body832
  %484 = load i32, i32* @queueing_enabled, align 4
  %dec839 = add nsw i32 %484, -1
  store i32 %dec839, i32* @queueing_enabled, align 4
  %tobool840 = icmp ne i32 %dec839, 0
  br i1 %tobool840, label %if.end857, label %if.then841

if.then841:                                       ; preds = %do.body838
  br label %do.body842

do.body842:                                       ; preds = %if.then841
  br label %while.cond843

while.cond843:                                    ; preds = %while.body846, %do.body842
  %485 = load i32, i32* @queue_front, align 4
  %486 = load i32, i32* @queue_rear, align 4
  %cmp844 = icmp ne i32 %485, %486
  br i1 %cmp844, label %while.body846, label %while.end855

while.body846:                                    ; preds = %while.cond843
  %487 = load i32, i32* @queue_front, align 4
  %add849 = add nsw i32 %487, 1
  %rem850 = srem i32 %add849, 128
  store i32 %rem850, i32* @queue_front, align 4
  %488 = load i32, i32* @queue_front, align 4
  %arrayidx851 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %488
  call void @signal_setmask(%struct.__sigset_t* sret %tmp852, %struct.__sigset_t* byval align 4 %arrayidx851)
  %489 = bitcast %struct.__sigset_t* %oset848 to i8*
  %490 = bitcast %struct.__sigset_t* %tmp852 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %489, i8* %490, i32 128, i32 4, i1 false)
  %491 = load i32, i32* @queue_front, align 4
  %arrayidx853 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %491
  %492 = load i32, i32* %arrayidx853, align 4
  call void @zhandler(i32 %492)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp854, %struct.__sigset_t* byval align 4 %oset848)
  br label %while.cond843

while.end855:                                     ; preds = %while.cond843
  br label %do.end856

do.end856:                                        ; preds = %while.end855
  br label %if.end857

if.end857:                                        ; preds = %do.end856, %do.body838
  br label %do.end858

do.end858:                                        ; preds = %if.end857
  br label %do.end859

do.end859:                                        ; preds = %do.end858
  br label %do.end1070

if.else860:                                       ; preds = %if.else829
  %493 = load i8*, i8** %ostr, align 4
  %call861 = call i8* @dupstring(i8* %493)
  %494 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %name = getelementptr inbounds %struct.gmatch, %struct.gmatch* %494, i32 0, i32 0
  store i8* %call861, i8** %name, align 4
  call void @untokenize(i8* %call861)
  %495 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %incdec.ptr862 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %495, i32 1
  store %struct.gmatch* %incdec.ptr862, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  store i32 1, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  br label %if.end863

if.end863:                                        ; preds = %if.else860
  br label %if.end864

if.end864:                                        ; preds = %if.end863, %if.then827
  br label %if.end865

if.end865:                                        ; preds = %if.end864, %if.else823
  br label %if.end866

if.end866:                                        ; preds = %if.end865, %if.then821
  %496 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4
  %and867 = and i32 %496, 16384
  %tobool868 = icmp ne i32 %and867, 0
  br i1 %tobool868, label %if.end977, label %if.then869

if.then869:                                       ; preds = %if.end866
  store i32 0, i32* %nexecs, align 4
  %497 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  %add.ptr873 = getelementptr inbounds %struct.globsort, %struct.globsort* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0), i32 %497
  store %struct.globsort* %add.ptr873, %struct.globsort** %lastsortp, align 4
  store %struct.globsort* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %struct.globsort** %sortp, align 4
  br label %for.cond875

for.cond875:                                      ; preds = %for.inc885, %if.then869
  %498 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %499 = load %struct.globsort*, %struct.globsort** %lastsortp, align 4
  %cmp876 = icmp ult %struct.globsort* %498, %499
  br i1 %cmp876, label %for.body878, label %for.end887

for.body878:                                      ; preds = %for.cond875
  %500 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %tp879 = getelementptr inbounds %struct.globsort, %struct.globsort* %500, i32 0, i32 0
  %501 = load i32, i32* %tp879, align 4
  %and880 = and i32 %501, 4
  %tobool881 = icmp ne i32 %and880, 0
  br i1 %tobool881, label %if.then882, label %if.end884

if.then882:                                       ; preds = %for.body878
  %502 = load i32, i32* %nexecs, align 4
  %inc883 = add nsw i32 %502, 1
  store i32 %inc883, i32* %nexecs, align 4
  br label %if.end884

if.end884:                                        ; preds = %if.then882, %for.body878
  br label %for.inc885

for.inc885:                                       ; preds = %if.end884
  %503 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %incdec.ptr886 = getelementptr inbounds %struct.globsort, %struct.globsort* %503, i32 1
  store %struct.globsort* %incdec.ptr886, %struct.globsort** %sortp, align 4
  br label %for.cond875

for.end887:                                       ; preds = %for.cond875
  %504 = load i32, i32* %nexecs, align 4
  %tobool888 = icmp ne i32 %504, 0
  br i1 %tobool888, label %if.then889, label %if.end955

if.then889:                                       ; preds = %for.end887
  store i32 0, i32* %iexec, align 4
  %505 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  store %struct.gmatch* %505, %struct.gmatch** %tmpptr, align 4
  br label %for.cond892

for.cond892:                                      ; preds = %for.inc897, %if.then889
  %506 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %507 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %cmp893 = icmp ult %struct.gmatch* %506, %507
  br i1 %cmp893, label %for.body895, label %for.end899

for.body895:                                      ; preds = %for.cond892
  %508 = load i32, i32* %nexecs, align 4
  %mul = mul i32 %508, 4
  %call896 = call i8* @zhalloc(i32 %mul)
  %509 = bitcast i8* %call896 to i8**
  %510 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %sortstrs = getelementptr inbounds %struct.gmatch, %struct.gmatch* %510, i32 0, i32 2
  store i8** %509, i8*** %sortstrs, align 4
  br label %for.inc897

for.inc897:                                       ; preds = %for.body895
  %511 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %incdec.ptr898 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %511, i32 1
  store %struct.gmatch* %incdec.ptr898, %struct.gmatch** %tmpptr, align 4
  br label %for.cond892

for.end899:                                       ; preds = %for.cond892
  store %struct.globsort* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %struct.globsort** %sortp, align 4
  br label %for.cond900

for.cond900:                                      ; preds = %for.inc952, %for.end899
  %512 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %513 = load %struct.globsort*, %struct.globsort** %lastsortp, align 4
  %cmp901 = icmp ult %struct.globsort* %512, %513
  br i1 %cmp901, label %for.body903, label %for.end954

for.body903:                                      ; preds = %for.cond900
  %514 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %tp904 = getelementptr inbounds %struct.globsort, %struct.globsort* %514, i32 0, i32 0
  %515 = load i32, i32* %tp904, align 4
  %and905 = and i32 %515, 4
  %tobool906 = icmp ne i32 %and905, 0
  br i1 %tobool906, label %if.then907, label %if.end951

if.then907:                                       ; preds = %for.body903
  %516 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %exec909 = getelementptr inbounds %struct.globsort, %struct.globsort* %516, i32 0, i32 1
  %517 = load i8*, i8** %exec909, align 4
  %call910 = call %struct.eprog* @parse_string(i8* %517, i32 0)
  store %struct.eprog* %call910, %struct.eprog** %prog, align 4
  %tobool911 = icmp ne %struct.eprog* %call910, null
  br i1 %tobool911, label %if.then912, label %if.else938

if.then912:                                       ; preds = %if.then907
  %518 = load i32, i32* @errflag, align 4
  store i32 %518, i32* %ef, align 4
  %519 = load i32, i32* @lastval, align 4
  store i32 %519, i32* %lv, align 4
  %520 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  store %struct.gmatch* %520, %struct.gmatch** %tmpptr, align 4
  br label %for.cond915

for.cond915:                                      ; preds = %for.inc933, %if.then912
  %521 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %522 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %cmp916 = icmp ult %struct.gmatch* %521, %522
  br i1 %cmp916, label %for.body918, label %for.end935

for.body918:                                      ; preds = %for.cond915
  %523 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %name919 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %523, i32 0, i32 0
  %524 = load i8*, i8** %name919, align 4
  %call920 = call i8* @ztrdup(i8* %524)
  %call921 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %call920)
  %525 = load %struct.eprog*, %struct.eprog** %prog, align 4
  call void @execode(%struct.eprog* %525, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %526 = load i32, i32* @errflag, align 4
  %tobool922 = icmp ne i32 %526, 0
  br i1 %tobool922, label %if.else928, label %if.then923

if.then923:                                       ; preds = %for.body918
  %call924 = call i8* @getsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %call925 = call i8* @dupstring(i8* %call924)
  %527 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %sortstrs926 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %527, i32 0, i32 2
  %528 = load i8**, i8*** %sortstrs926, align 4
  %529 = load i32, i32* %iexec, align 4
  %arrayidx927 = getelementptr inbounds i8*, i8** %528, i32 %529
  store i8* %call925, i8** %arrayidx927, align 4
  br label %if.end932

if.else928:                                       ; preds = %for.body918
  %530 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %name929 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %530, i32 0, i32 0
  %531 = load i8*, i8** %name929, align 4
  %532 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %sortstrs930 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %532, i32 0, i32 2
  %533 = load i8**, i8*** %sortstrs930, align 4
  %534 = load i32, i32* %iexec, align 4
  %arrayidx931 = getelementptr inbounds i8*, i8** %533, i32 %534
  store i8* %531, i8** %arrayidx931, align 4
  br label %if.end932

if.end932:                                        ; preds = %if.else928, %if.then923
  br label %for.inc933

for.inc933:                                       ; preds = %if.end932
  %535 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %incdec.ptr934 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %535, i32 1
  store %struct.gmatch* %incdec.ptr934, %struct.gmatch** %tmpptr, align 4
  br label %for.cond915

for.end935:                                       ; preds = %for.cond915
  %536 = load i32, i32* %ef, align 4
  %537 = load i32, i32* @errflag, align 4
  %and936 = and i32 %537, 2
  %or937 = or i32 %536, %and936
  store i32 %or937, i32* @errflag, align 4
  %538 = load i32, i32* %lv, align 4
  store i32 %538, i32* @lastval, align 4
  br label %if.end949

if.else938:                                       ; preds = %if.then907
  %539 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  store %struct.gmatch* %539, %struct.gmatch** %tmpptr, align 4
  br label %for.cond939

for.cond939:                                      ; preds = %for.inc946, %if.else938
  %540 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %541 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %cmp940 = icmp ult %struct.gmatch* %540, %541
  br i1 %cmp940, label %for.body942, label %for.end948

for.body942:                                      ; preds = %for.cond939
  %542 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %name943 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %542, i32 0, i32 0
  %543 = load i8*, i8** %name943, align 4
  %544 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %sortstrs944 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %544, i32 0, i32 2
  %545 = load i8**, i8*** %sortstrs944, align 4
  %546 = load i32, i32* %iexec, align 4
  %arrayidx945 = getelementptr inbounds i8*, i8** %545, i32 %546
  store i8* %543, i8** %arrayidx945, align 4
  br label %for.inc946

for.inc946:                                       ; preds = %for.body942
  %547 = load %struct.gmatch*, %struct.gmatch** %tmpptr, align 4
  %incdec.ptr947 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %547, i32 1
  store %struct.gmatch* %incdec.ptr947, %struct.gmatch** %tmpptr, align 4
  br label %for.cond939

for.end948:                                       ; preds = %for.cond939
  br label %if.end949

if.end949:                                        ; preds = %for.end948, %for.end935
  %548 = load i32, i32* %iexec, align 4
  %inc950 = add nsw i32 %548, 1
  store i32 %inc950, i32* %iexec, align 4
  br label %if.end951

if.end951:                                        ; preds = %if.end949, %for.body903
  br label %for.inc952

for.inc952:                                       ; preds = %if.end951
  %549 = load %struct.globsort*, %struct.globsort** %sortp, align 4
  %incdec.ptr953 = getelementptr inbounds %struct.globsort, %struct.globsort* %549, i32 1
  store %struct.globsort* %incdec.ptr953, %struct.globsort** %sortp, align 4
  br label %for.cond900

for.end954:                                       ; preds = %for.cond900
  br label %if.end955

if.end955:                                        ; preds = %for.end954, %for.end887
  %550 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  store %struct.gmatch* %550, %struct.gmatch** %gmptr, align 4
  br label %for.cond956

for.cond956:                                      ; preds = %for.inc973, %if.end955
  %551 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %552 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %cmp957 = icmp ult %struct.gmatch* %551, %552
  br i1 %cmp957, label %for.body959, label %for.end975

for.body959:                                      ; preds = %for.cond956
  %553 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %name960 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %553, i32 0, i32 0
  %554 = load i8*, i8** %name960, align 4
  %call961 = call i8* @strchr(i8* %554, i32 -125)
  %tobool962 = icmp ne i8* %call961, null
  br i1 %tobool962, label %if.then963, label %if.else969

if.then963:                                       ; preds = %for.body959
  %555 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %name965 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %555, i32 0, i32 0
  %556 = load i8*, i8** %name965, align 4
  %call966 = call i8* @dupstring(i8* %556)
  %557 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %uname = getelementptr inbounds %struct.gmatch, %struct.gmatch* %557, i32 0, i32 1
  store i8* %call966, i8** %uname, align 4
  %558 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %uname967 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %558, i32 0, i32 1
  %559 = load i8*, i8** %uname967, align 4
  %call968 = call i8* @unmetafy(i8* %559, i32* %dummy)
  br label %if.end972

if.else969:                                       ; preds = %for.body959
  %560 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %name970 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %560, i32 0, i32 0
  %561 = load i8*, i8** %name970, align 4
  %562 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %uname971 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %562, i32 0, i32 1
  store i8* %561, i8** %uname971, align 4
  br label %if.end972

if.end972:                                        ; preds = %if.else969, %if.then963
  br label %for.inc973

for.inc973:                                       ; preds = %if.end972
  %563 = load %struct.gmatch*, %struct.gmatch** %gmptr, align 4
  %incdec.ptr974 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %563, i32 1
  store %struct.gmatch* %incdec.ptr974, %struct.gmatch** %gmptr, align 4
  br label %for.cond956

for.end975:                                       ; preds = %for.cond956
  %564 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %arrayidx976 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %564, i32 0
  %565 = bitcast %struct.gmatch* %arrayidx976 to i8*
  %566 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  call void @qsort(i8* %565, i32 %566, i32 76, i32 (i8*, i8*)* bitcast (i32 (%struct.gmatch*, %struct.gmatch*)* @gmatchcmp to i32 (i8*, i8*)*))
  br label %if.end977

if.end977:                                        ; preds = %for.end975, %if.end866
  %567 = load i32, i32* %first, align 4
  %cmp978 = icmp slt i32 %567, 0
  br i1 %cmp978, label %if.then980, label %if.end986

if.then980:                                       ; preds = %if.end977
  %568 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %569 = load i32, i32* %first, align 4
  %add981 = add nsw i32 %569, %568
  store i32 %add981, i32* %first, align 4
  %570 = load i32, i32* %first, align 4
  %cmp982 = icmp slt i32 %570, 0
  br i1 %cmp982, label %if.then984, label %if.end985

if.then984:                                       ; preds = %if.then980
  store i32 0, i32* %first, align 4
  br label %if.end985

if.end985:                                        ; preds = %if.then984, %if.then980
  br label %if.end986

if.end986:                                        ; preds = %if.end985, %if.end977
  %571 = load i32, i32* %end, align 4
  %cmp987 = icmp slt i32 %571, 0
  br i1 %cmp987, label %if.then989, label %if.else992

if.then989:                                       ; preds = %if.end986
  %572 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %add990 = add nsw i32 %572, 1
  %573 = load i32, i32* %end, align 4
  %add991 = add nsw i32 %573, %add990
  store i32 %add991, i32* %end, align 4
  br label %if.end997

if.else992:                                       ; preds = %if.end986
  %574 = load i32, i32* %end, align 4
  %575 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp993 = icmp sgt i32 %574, %575
  br i1 %cmp993, label %if.then995, label %if.end996

if.then995:                                       ; preds = %if.else992
  %576 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  store i32 %576, i32* %end, align 4
  br label %if.end996

if.end996:                                        ; preds = %if.then995, %if.else992
  br label %if.end997

if.end997:                                        ; preds = %if.end996, %if.then989
  %577 = load i32, i32* %first, align 4
  %578 = load i32, i32* %end, align 4
  %sub998 = sub nsw i32 %578, %577
  store i32 %sub998, i32* %end, align 4
  %cmp999 = icmp sgt i32 %sub998, 0
  br i1 %cmp999, label %if.then1001, label %if.else1031

if.then1001:                                      ; preds = %if.end997
  %579 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4
  %and1002 = and i32 %579, 16384
  %tobool1003 = icmp ne i32 %and1002, 0
  br i1 %tobool1003, label %if.then1004, label %if.else1016

if.then1004:                                      ; preds = %if.then1001
  %580 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %581 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %add.ptr1005 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %580, i32 %581
  %582 = load i32, i32* %first, align 4
  %idx.neg = sub i32 0, %582
  %add.ptr1006 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %add.ptr1005, i32 %idx.neg
  %add.ptr1007 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %add.ptr1006, i32 -1
  store %struct.gmatch* %add.ptr1007, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  br label %while.cond1008

while.cond1008:                                   ; preds = %while.body1012, %if.then1004
  %583 = load i32, i32* %end, align 4
  %dec1009 = add nsw i32 %583, -1
  store i32 %dec1009, i32* %end, align 4
  %cmp1010 = icmp sgt i32 %583, 0
  br i1 %cmp1010, label %while.body1012, label %while.end1015

while.body1012:                                   ; preds = %while.cond1008
  %584 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %585 = load %struct.linknode*, %struct.linknode** %node, align 4
  %586 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %name1013 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %586, i32 0, i32 0
  %587 = load i8*, i8** %name1013, align 4
  call void @insert_glob_match(%union.linkroot* %584, %struct.linknode* %585, i8* %587)
  %588 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %incdec.ptr1014 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %588, i32 -1
  store %struct.gmatch* %incdec.ptr1014, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  br label %while.cond1008

while.end1015:                                    ; preds = %while.cond1008
  br label %if.end1030

if.else1016:                                      ; preds = %if.then1001
  %589 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %590 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %add.ptr1017 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %589, i32 %590
  %591 = load i32, i32* %first, align 4
  %idx.neg1018 = sub i32 0, %591
  %add.ptr1019 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %add.ptr1017, i32 %idx.neg1018
  %592 = load i32, i32* %end, align 4
  %idx.neg1020 = sub i32 0, %592
  %add.ptr1021 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %add.ptr1019, i32 %idx.neg1020
  store %struct.gmatch* %add.ptr1021, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  br label %while.cond1022

while.cond1022:                                   ; preds = %while.body1026, %if.else1016
  %593 = load i32, i32* %end, align 4
  %dec1023 = add nsw i32 %593, -1
  store i32 %dec1023, i32* %end, align 4
  %cmp1024 = icmp sgt i32 %593, 0
  br i1 %cmp1024, label %while.body1026, label %while.end1029

while.body1026:                                   ; preds = %while.cond1022
  %594 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %595 = load %struct.linknode*, %struct.linknode** %node, align 4
  %596 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %name1027 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %596, i32 0, i32 0
  %597 = load i8*, i8** %name1027, align 4
  call void @insert_glob_match(%union.linkroot* %594, %struct.linknode* %595, i8* %597)
  %598 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %incdec.ptr1028 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %598, i32 1
  store %struct.gmatch* %incdec.ptr1028, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  br label %while.cond1022

while.end1029:                                    ; preds = %while.cond1022
  br label %if.end1030

if.end1030:                                       ; preds = %while.end1029, %while.end1015
  br label %if.end1042

if.else1031:                                      ; preds = %if.end997
  %599 = load i32, i32* @badcshglob, align 4
  %tobool1032 = icmp ne i32 %599, 0
  br i1 %tobool1032, label %if.end1041, label %land.lhs.true1033

land.lhs.true1033:                                ; preds = %if.else1031
  %600 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 121), align 1
  %tobool1034 = icmp ne i8 %600, 0
  br i1 %tobool1034, label %if.end1041, label %land.lhs.true1035

land.lhs.true1035:                                ; preds = %land.lhs.true1033
  %601 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp1036 = icmp eq i32 %601, 1
  br i1 %cmp1036, label %if.then1038, label %if.end1041

if.then1038:                                      ; preds = %land.lhs.true1035
  %602 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %603 = load %struct.linknode*, %struct.linknode** %node, align 4
  %604 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %incdec.ptr1039 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %604, i32 -1
  store %struct.gmatch* %incdec.ptr1039, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %name1040 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %incdec.ptr1039, i32 0, i32 0
  %605 = load i8*, i8** %name1040, align 4
  call void @insert_glob_match(%union.linkroot* %602, %struct.linknode* %603, i8* %605)
  br label %if.end1041

if.end1041:                                       ; preds = %if.then1038, %land.lhs.true1035, %land.lhs.true1033, %if.else1031
  br label %if.end1042

if.end1042:                                       ; preds = %if.end1041, %if.end1030
  %606 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %607 = bitcast %struct.gmatch* %606 to i8*
  call void @zfree(i8* %607, i32 0)
  br label %do.body1043

do.body1043:                                      ; preds = %if.end1042
  %608 = load i32, i32* @queueing_enabled, align 4
  %inc1044 = add nsw i32 %608, 1
  store i32 %inc1044, i32* @queueing_enabled, align 4
  %609 = load i8*, i8** @pathbuf, align 4
  %610 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  call void @zfree(i8* %609, i32 %610)
  %611 = bitcast %struct.globdata* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.globdata* @curglobdata to i8*), i8* %611, i32 204, i32 4, i1 false)
  %gd_pathpos1045 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 0
  %612 = load i32, i32* %gd_pathpos1045, align 4
  store i32 %612, i32* @pathpos, align 4
  %gd_pathbuf1046 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 1
  %613 = load i8*, i8** %gd_pathbuf1046, align 4
  store i8* %613, i8** @pathbuf, align 4
  %gd_glob_pre1047 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 26
  %614 = load i8*, i8** %gd_glob_pre1047, align 4
  store i8* %614, i8** @glob_pre, align 4
  %gd_glob_suf1048 = getelementptr inbounds %struct.globdata, %struct.globdata* %saved, i32 0, i32 27
  %615 = load i8*, i8** %gd_glob_suf1048, align 4
  store i8* %615, i8** @glob_suf, align 4
  br label %do.body1049

do.body1049:                                      ; preds = %do.body1043
  %616 = load i32, i32* @queueing_enabled, align 4
  %dec1050 = add nsw i32 %616, -1
  store i32 %dec1050, i32* @queueing_enabled, align 4
  %tobool1051 = icmp ne i32 %dec1050, 0
  br i1 %tobool1051, label %if.end1068, label %if.then1052

if.then1052:                                      ; preds = %do.body1049
  br label %do.body1053

do.body1053:                                      ; preds = %if.then1052
  br label %while.cond1054

while.cond1054:                                   ; preds = %while.body1057, %do.body1053
  %617 = load i32, i32* @queue_front, align 4
  %618 = load i32, i32* @queue_rear, align 4
  %cmp1055 = icmp ne i32 %617, %618
  br i1 %cmp1055, label %while.body1057, label %while.end1066

while.body1057:                                   ; preds = %while.cond1054
  %619 = load i32, i32* @queue_front, align 4
  %add1060 = add nsw i32 %619, 1
  %rem1061 = srem i32 %add1060, 128
  store i32 %rem1061, i32* @queue_front, align 4
  %620 = load i32, i32* @queue_front, align 4
  %arrayidx1062 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %620
  call void @signal_setmask(%struct.__sigset_t* sret %tmp1063, %struct.__sigset_t* byval align 4 %arrayidx1062)
  %621 = bitcast %struct.__sigset_t* %oset1059 to i8*
  %622 = bitcast %struct.__sigset_t* %tmp1063 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %621, i8* %622, i32 128, i32 4, i1 false)
  %623 = load i32, i32* @queue_front, align 4
  %arrayidx1064 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %623
  %624 = load i32, i32* %arrayidx1064, align 4
  call void @zhandler(i32 %624)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp1065, %struct.__sigset_t* byval align 4 %oset1059)
  br label %while.cond1054

while.end1066:                                    ; preds = %while.cond1054
  br label %do.end1067

do.end1067:                                       ; preds = %while.end1066
  br label %if.end1068

if.end1068:                                       ; preds = %do.end1067, %do.body1049
  br label %do.end1069

do.end1069:                                       ; preds = %if.end1068
  br label %do.end1070

do.end1070:                                       ; preds = %if.end, %do.end259, %do.end415, %do.end460, %do.end489, %do.end529, %do.end591, %do.end642, %do.end692, %if.end809, %if.end811, %do.end859, %do.end1069
  ret void
}

declare i32 @haswilds(i8*) #1

declare void @untokenize(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4) #1

declare void @zhandler(i32) #1

declare i8* @dupstring(i8*) #1

declare i8* @uremnode(%union.linkroot*, %struct.linknode*) #1

declare i32 @strlen(i8*) #1

declare i8* @hcalloc(i32) #1

declare i8* @dyncat(i8*, i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @qualislnk(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 40960
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualissock(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 49152
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualisfifo(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 4096
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualisdir(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 16384
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualisreg(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualisblk(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 24576
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualischr(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 8192
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qualisdev(i8* %name, %struct.stat* %buf, i32 %junk, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %junk.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %junk, i32* %junk.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 24576
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode1 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 6
  %3 = load i32, i32* %st_mode1, align 8
  %and2 = and i32 %3, 61440
  %cmp3 = icmp eq i32 %and2, 8192
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind
define internal i32 @qualiscom(i8* %name, %struct.stat* %buf, i32 %mod, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %mod.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %mod, i32* %mod.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode1 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 6
  %3 = load i32, i32* %st_mode1, align 8
  %and2 = and i32 %3, 73
  %tobool = icmp ne i32 %and2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind
define internal i32 @qualflags(i8* %name, %struct.stat* %buf, i32 %mod, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %mod.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %mod, i32* %mod.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %call = call i32 @mode_to_octal(i32 %1)
  %2 = load i32, i32* %mod.addr, align 4
  %and = and i32 %call, %2
  ret i32 %and
}

; Function Attrs: noinline nounwind
define internal i32 @qualdev(i8* %name, %struct.stat* %buf, i32 %dv, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %dv.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %dv, i32* %dv.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 0
  %1 = load i32, i32* %st_dev, align 8
  %2 = load i32, i32* %dv.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind
define internal i32 @qgetnum(i8** %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8**, align 4
  %v = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 4
  store i32 0, i32* %v, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8**, i8*** %s.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %6 = load i8, i8* %5, align 1
  %idxprom1 = zext i8 %6 to i32
  %arrayidx2 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  %and4 = and i32 %conv3, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %v, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8**, i8*** %s.addr, align 4
  %10 = load i8*, i8** %9, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %9, align 4
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %add = add nsw i32 %mul, %conv6
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %v, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %v, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal i32 @qualnlink(i8* %name, %struct.stat* %buf, i32 %ct, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %ct.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %ct, i32* %ct.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 4
  %2 = load i32, i32* %st_nlink, align 8
  %3 = load i32, i32* %ct.addr, align 4
  %cmp1 = icmp ult i32 %2, %3
  %conv = zext i1 %cmp1 to i32
  br label %cond.end12

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %cond.true4, label %cond.false8

cond.true4:                                       ; preds = %cond.false
  %5 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_nlink5 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %6 = load i32, i32* %st_nlink5, align 8
  %7 = load i32, i32* %ct.addr, align 4
  %cmp6 = icmp ugt i32 %6, %7
  %conv7 = zext i1 %cmp6 to i32
  br label %cond.end

cond.false8:                                      ; preds = %cond.false
  %8 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_nlink9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %9 = load i32, i32* %st_nlink9, align 8
  %10 = load i32, i32* %ct.addr, align 4
  %cmp10 = icmp eq i32 %9, %10
  %conv11 = zext i1 %cmp10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false8, %cond.true4
  %cond = phi i32 [ %conv7, %cond.true4 ], [ %conv11, %cond.false8 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond13
}

; Function Attrs: noinline nounwind
define internal i32 @qualuid(i8* %name, %struct.stat* %buf, i32 %uid, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %uid.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %uid, i32* %uid.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 7
  %1 = load i32, i32* %st_uid, align 4
  %2 = load i32, i32* %uid.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @geteuid() #1

; Function Attrs: noinline nounwind
define internal i32 @qualgid(i8* %name, %struct.stat* %buf, i32 %gid, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %gid.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %gid, i32* %gid.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 8
  %1 = load i32, i32* %st_gid, align 8
  %2 = load i32, i32* %gid.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @getegid() #1

declare i8* @get_strarg(i8*, i32*) #1

declare void @zerr(i8*, ...) #1

declare %struct.passwd* @getpwnam(i8*) #1

declare %struct.group* @getgrnam(i8*) #1

; Function Attrs: noinline nounwind
define internal i32 @qualmodeflags(i8* %name, %struct.stat* %buf, i32 %mod, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %mod.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  %v = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %mod, i32* %mod.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 6
  %1 = load i32, i32* %st_mode, align 8
  %call = call i32 @mode_to_octal(i32 %1)
  store i32 %call, i32* %v, align 4
  %2 = load i32, i32* %mod.addr, align 4
  %and = and i32 %2, 4095
  store i32 %and, i32* %y, align 4
  %3 = load i32, i32* %mod.addr, align 4
  %shr = ashr i32 %3, 12
  store i32 %shr, i32* %n, align 4
  %4 = load i32, i32* %v, align 4
  %5 = load i32, i32* %y, align 4
  %and1 = and i32 %4, %5
  %6 = load i32, i32* %y, align 4
  %cmp = icmp eq i32 %and1, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load i32, i32* %v, align 4
  %8 = load i32, i32* %n, align 4
  %and2 = and i32 %7, %8
  %tobool = icmp ne i32 %and2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind
define internal i32 @qgetmodespec(i8** %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8**, align 4
  %yes = alloca i32, align 4
  %no = alloca i32, align 4
  %val = alloca i32, align 4
  %mask = alloca i32, align 4
  %t = alloca i32, align 4
  %p = alloca i8*, align 4
  %c = alloca i8, align 1
  %how = alloca i8, align 1
  %end = alloca i8, align 1
  store i8** %s, i8*** %s.addr, align 4
  store i32 0, i32* %yes, align 4
  store i32 0, i32* %no, align 4
  %0 = load i8**, i8*** %s.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %p, align 4
  %2 = load i8*, i8** %p, align 4
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %c, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, -115
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i8, i8* %c, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 43
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %6 = load i8, i8* %c, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 45
  br i1 %cmp11, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %7 = load i8, i8* %c, align 1
  %conv14 = sext i8 %7 to i32
  %cmp15 = icmp eq i32 %conv14, 63
  br i1 %cmp15, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %8 = load i8, i8* %c, align 1
  %conv18 = sext i8 %8 to i32
  %cmp19 = icmp eq i32 %conv18, -105
  br i1 %cmp19, label %if.then, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %9 = load i8, i8* %c, align 1
  %conv22 = sext i8 %9 to i32
  %cmp23 = icmp sge i32 %conv22, 48
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false21
  %10 = load i8, i8* %c, align 1
  %conv25 = sext i8 %10 to i32
  %cmp26 = icmp sle i32 %conv25, 55
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  store i8 0, i8* %end, align 1
  store i8 0, i8* %c, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false21
  %11 = load i8, i8* %c, align 1
  %conv28 = sext i8 %11 to i32
  %cmp29 = icmp eq i32 %conv28, 60
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end65

cond.false:                                       ; preds = %if.else
  %12 = load i8, i8* %c, align 1
  %conv31 = sext i8 %12 to i32
  %cmp32 = icmp eq i32 %conv31, 91
  br i1 %cmp32, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false
  br label %cond.end63

cond.false35:                                     ; preds = %cond.false
  %13 = load i8, i8* %c, align 1
  %conv36 = sext i8 %13 to i32
  %cmp37 = icmp eq i32 %conv36, 123
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false35
  br label %cond.end61

cond.false40:                                     ; preds = %cond.false35
  %14 = load i8, i8* %c, align 1
  %conv41 = sext i8 %14 to i32
  %cmp42 = icmp eq i32 %conv41, -108
  br i1 %cmp42, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false40
  br label %cond.end59

cond.false45:                                     ; preds = %cond.false40
  %15 = load i8, i8* %c, align 1
  %conv46 = sext i8 %15 to i32
  %cmp47 = icmp eq i32 %conv46, -111
  br i1 %cmp47, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %cond.false45
  br label %cond.end57

cond.false50:                                     ; preds = %cond.false45
  %16 = load i8, i8* %c, align 1
  %conv51 = sext i8 %16 to i32
  %cmp52 = icmp eq i32 %conv51, -113
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end

cond.false55:                                     ; preds = %cond.false50
  %17 = load i8, i8* %c, align 1
  %conv56 = sext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false55, %cond.true54
  %cond = phi i32 [ -112, %cond.true54 ], [ %conv56, %cond.false55 ]
  br label %cond.end57

cond.end57:                                       ; preds = %cond.end, %cond.true49
  %cond58 = phi i32 [ -110, %cond.true49 ], [ %cond, %cond.end ]
  br label %cond.end59

cond.end59:                                       ; preds = %cond.end57, %cond.true44
  %cond60 = phi i32 [ -107, %cond.true44 ], [ %cond58, %cond.end57 ]
  br label %cond.end61

cond.end61:                                       ; preds = %cond.end59, %cond.true39
  %cond62 = phi i32 [ 125, %cond.true39 ], [ %cond60, %cond.end59 ]
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end61, %cond.true34
  %cond64 = phi i32 [ 93, %cond.true34 ], [ %cond62, %cond.end61 ]
  br label %cond.end65

cond.end65:                                       ; preds = %cond.end63, %cond.true
  %cond66 = phi i32 [ 62, %cond.true ], [ %cond64, %cond.end63 ]
  %conv67 = trunc i32 %cond66 to i8
  store i8 %conv67, i8* %end, align 1
  %18 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end65, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end276, %if.end
  store i32 0, i32* %mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.body
  %19 = load i8*, i8** %p, align 4
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %c, align 1
  %conv68 = sext i8 %20 to i32
  %cmp69 = icmp eq i32 %conv68, 117
  br i1 %cmp69, label %land.rhs, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %while.cond
  %21 = load i8, i8* %c, align 1
  %conv72 = sext i8 %21 to i32
  %cmp73 = icmp eq i32 %conv72, 103
  br i1 %cmp73, label %land.rhs, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %22 = load i8, i8* %c, align 1
  %conv76 = sext i8 %22 to i32
  %cmp77 = icmp eq i32 %conv76, 111
  br i1 %cmp77, label %land.rhs, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %23 = load i8, i8* %c, align 1
  %conv80 = sext i8 %23 to i32
  %cmp81 = icmp eq i32 %conv80, 97
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false79, %lor.lhs.false75, %lor.lhs.false71, %while.cond
  %24 = load i8, i8* %end, align 1
  %conv83 = sext i8 %24 to i32
  %tobool = icmp ne i32 %conv83, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false79
  %25 = phi i1 [ false, %lor.lhs.false79 ], [ %tobool, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i8, i8* %c, align 1
  %conv84 = sext i8 %26 to i32
  switch i32 %conv84, label %sw.epilog [
    i32 111, label %sw.bb
    i32 103, label %sw.bb85
    i32 117, label %sw.bb87
    i32 97, label %sw.bb89
  ]

sw.bb:                                            ; preds = %while.body
  %27 = load i32, i32* %mask, align 4
  %or = or i32 %27, 519
  store i32 %or, i32* %mask, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %while.body
  %28 = load i32, i32* %mask, align 4
  %or86 = or i32 %28, 1080
  store i32 %or86, i32* %mask, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %while.body
  %29 = load i32, i32* %mask, align 4
  %or88 = or i32 %29, 2496
  store i32 %or88, i32* %mask, align 4
  br label %sw.epilog

sw.bb89:                                          ; preds = %while.body
  %30 = load i32, i32* %mask, align 4
  %or90 = or i32 %30, 4095
  store i32 %or90, i32* %mask, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb
  %31 = load i8*, i8** %p, align 4
  %incdec.ptr91 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr91, i8** %p, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i8, i8* %c, align 1
  %conv92 = sext i8 %32 to i32
  %cmp93 = icmp eq i32 %conv92, 43
  br i1 %cmp93, label %cond.true99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %while.end
  %33 = load i8, i8* %c, align 1
  %conv96 = sext i8 %33 to i32
  %cmp97 = icmp eq i32 %conv96, 45
  br i1 %cmp97, label %cond.true99, label %cond.false101

cond.true99:                                      ; preds = %lor.lhs.false95, %while.end
  %34 = load i8, i8* %c, align 1
  %conv100 = sext i8 %34 to i32
  br label %cond.end102

cond.false101:                                    ; preds = %lor.lhs.false95
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %cond.true99
  %cond103 = phi i32 [ %conv100, %cond.true99 ], [ 61, %cond.false101 ]
  %conv104 = trunc i32 %cond103 to i8
  store i8 %conv104, i8* %how, align 1
  %35 = load i8, i8* %c, align 1
  %conv105 = sext i8 %35 to i32
  %cmp106 = icmp eq i32 %conv105, 43
  br i1 %cmp106, label %if.then120, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %cond.end102
  %36 = load i8, i8* %c, align 1
  %conv109 = sext i8 %36 to i32
  %cmp110 = icmp eq i32 %conv109, 45
  br i1 %cmp110, label %if.then120, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %37 = load i8, i8* %c, align 1
  %conv113 = sext i8 %37 to i32
  %cmp114 = icmp eq i32 %conv113, 61
  br i1 %cmp114, label %if.then120, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %38 = load i8, i8* %c, align 1
  %conv117 = sext i8 %38 to i32
  %cmp118 = icmp eq i32 %conv117, -115
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %lor.lhs.false116, %lor.lhs.false112, %lor.lhs.false108, %cond.end102
  %39 = load i8*, i8** %p, align 4
  %incdec.ptr121 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr121, i8** %p, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %lor.lhs.false116
  store i32 0, i32* %val, align 4
  %40 = load i32, i32* %mask, align 4
  %tobool123 = icmp ne i32 %40, 0
  br i1 %tobool123, label %if.then124, label %if.else177

if.then124:                                       ; preds = %if.end122
  br label %while.cond125

while.cond125:                                    ; preds = %sw.epilog154, %if.then124
  %41 = load i8*, i8** %p, align 4
  %incdec.ptr126 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr126, i8** %p, align 4
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %c, align 1
  %conv127 = sext i8 %42 to i32
  %cmp128 = icmp ne i32 %conv127, 44
  br i1 %cmp128, label %land.rhs130, label %land.end135

land.rhs130:                                      ; preds = %while.cond125
  %43 = load i8, i8* %c, align 1
  %conv131 = sext i8 %43 to i32
  %44 = load i8, i8* %end, align 1
  %conv132 = sext i8 %44 to i32
  %cmp133 = icmp ne i32 %conv131, %conv132
  br label %land.end135

land.end135:                                      ; preds = %land.rhs130, %while.cond125
  %45 = phi i1 [ false, %while.cond125 ], [ %cmp133, %land.rhs130 ]
  br i1 %45, label %while.body136, label %while.end155

while.body136:                                    ; preds = %land.end135
  %46 = load i8, i8* %c, align 1
  %conv137 = sext i8 %46 to i32
  switch i32 %conv137, label %sw.default [
    i32 120, label %sw.bb138
    i32 119, label %sw.bb140
    i32 114, label %sw.bb142
    i32 115, label %sw.bb144
    i32 116, label %sw.bb146
    i32 48, label %sw.bb148
    i32 49, label %sw.bb148
    i32 50, label %sw.bb148
    i32 51, label %sw.bb148
    i32 52, label %sw.bb148
    i32 53, label %sw.bb148
    i32 54, label %sw.bb148
    i32 55, label %sw.bb148
  ]

sw.bb138:                                         ; preds = %while.body136
  %47 = load i32, i32* %val, align 4
  %or139 = or i32 %47, 73
  store i32 %or139, i32* %val, align 4
  br label %sw.epilog154

sw.bb140:                                         ; preds = %while.body136
  %48 = load i32, i32* %val, align 4
  %or141 = or i32 %48, 146
  store i32 %or141, i32* %val, align 4
  br label %sw.epilog154

sw.bb142:                                         ; preds = %while.body136
  %49 = load i32, i32* %val, align 4
  %or143 = or i32 %49, 292
  store i32 %or143, i32* %val, align 4
  br label %sw.epilog154

sw.bb144:                                         ; preds = %while.body136
  %50 = load i32, i32* %val, align 4
  %or145 = or i32 %50, 3072
  store i32 %or145, i32* %val, align 4
  br label %sw.epilog154

sw.bb146:                                         ; preds = %while.body136
  %51 = load i32, i32* %val, align 4
  %or147 = or i32 %51, 512
  store i32 %or147, i32* %val, align 4
  br label %sw.epilog154

sw.bb148:                                         ; preds = %while.body136, %while.body136, %while.body136, %while.body136, %while.body136, %while.body136, %while.body136, %while.body136
  %52 = load i8, i8* %c, align 1
  %conv149 = sext i8 %52 to i32
  %sub = sub nsw i32 %conv149, 48
  store i32 %sub, i32* %t, align 4
  %53 = load i32, i32* %t, align 4
  %54 = load i32, i32* %t, align 4
  %shl = shl i32 %54, 3
  %or150 = or i32 %53, %shl
  %55 = load i32, i32* %t, align 4
  %shl151 = shl i32 %55, 6
  %or152 = or i32 %or150, %shl151
  %56 = load i32, i32* %val, align 4
  %or153 = or i32 %56, %or152
  store i32 %or153, i32* %val, align 4
  br label %sw.epilog154

sw.default:                                       ; preds = %while.body136
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

sw.epilog154:                                     ; preds = %sw.bb148, %sw.bb146, %sw.bb144, %sw.bb142, %sw.bb140, %sw.bb138
  br label %while.cond125

while.end155:                                     ; preds = %land.end135
  %57 = load i8, i8* %how, align 1
  %conv156 = sext i8 %57 to i32
  %cmp157 = icmp eq i32 %conv156, 61
  br i1 %cmp157, label %if.then163, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %while.end155
  %58 = load i8, i8* %how, align 1
  %conv160 = sext i8 %58 to i32
  %cmp161 = icmp eq i32 %conv160, 43
  br i1 %cmp161, label %if.then163, label %if.end165

if.then163:                                       ; preds = %lor.lhs.false159, %while.end155
  %59 = load i32, i32* %val, align 4
  %60 = load i32, i32* %mask, align 4
  %and = and i32 %59, %60
  %61 = load i32, i32* %yes, align 4
  %or164 = or i32 %61, %and
  store i32 %or164, i32* %yes, align 4
  %62 = load i32, i32* %val, align 4
  %neg = xor i32 %62, -1
  store i32 %neg, i32* %val, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %lor.lhs.false159
  %63 = load i8, i8* %how, align 1
  %conv166 = sext i8 %63 to i32
  %cmp167 = icmp eq i32 %conv166, 61
  br i1 %cmp167, label %if.then173, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.end165
  %64 = load i8, i8* %how, align 1
  %conv170 = sext i8 %64 to i32
  %cmp171 = icmp eq i32 %conv170, 45
  br i1 %cmp171, label %if.then173, label %if.end176

if.then173:                                       ; preds = %lor.lhs.false169, %if.end165
  %65 = load i32, i32* %val, align 4
  %66 = load i32, i32* %mask, align 4
  %and174 = and i32 %65, %66
  %67 = load i32, i32* %no, align 4
  %or175 = or i32 %67, %and174
  store i32 %or175, i32* %no, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %lor.lhs.false169
  br label %if.end268

if.else177:                                       ; preds = %if.end122
  %68 = load i8, i8* %end, align 1
  %conv178 = sext i8 %68 to i32
  %tobool179 = icmp ne i32 %conv178, 0
  br i1 %tobool179, label %land.lhs.true180, label %land.lhs.true185

land.lhs.true180:                                 ; preds = %if.else177
  %69 = load i8, i8* %c, align 1
  %conv181 = sext i8 %69 to i32
  %70 = load i8, i8* %end, align 1
  %conv182 = sext i8 %70 to i32
  %cmp183 = icmp eq i32 %conv181, %conv182
  br i1 %cmp183, label %if.else266, label %land.lhs.true185

land.lhs.true185:                                 ; preds = %land.lhs.true180, %if.else177
  %71 = load i8, i8* %c, align 1
  %conv186 = sext i8 %71 to i32
  %cmp187 = icmp ne i32 %conv186, 44
  br i1 %cmp187, label %land.lhs.true189, label %if.else266

land.lhs.true189:                                 ; preds = %land.lhs.true185
  %72 = load i8, i8* %c, align 1
  %conv190 = sext i8 %72 to i32
  %tobool191 = icmp ne i32 %conv190, 0
  br i1 %tobool191, label %if.then192, label %if.else266

if.then192:                                       ; preds = %land.lhs.true189
  store i32 4095, i32* %t, align 4
  br label %while.cond193

while.cond193:                                    ; preds = %if.end227, %if.then192
  %73 = load i8*, i8** %p, align 4
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %c, align 1
  %conv194 = sext i8 %74 to i32
  %cmp195 = icmp eq i32 %conv194, 63
  br i1 %cmp195, label %lor.end, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %while.cond193
  %75 = load i8, i8* %c, align 1
  %conv198 = sext i8 %75 to i32
  %cmp199 = icmp eq i32 %conv198, -105
  br i1 %cmp199, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false197
  %76 = load i8, i8* %c, align 1
  %conv201 = sext i8 %76 to i32
  %cmp202 = icmp sge i32 %conv201, 48
  br i1 %cmp202, label %land.rhs204, label %land.end208

land.rhs204:                                      ; preds = %lor.rhs
  %77 = load i8, i8* %c, align 1
  %conv205 = sext i8 %77 to i32
  %cmp206 = icmp sle i32 %conv205, 55
  br label %land.end208

land.end208:                                      ; preds = %land.rhs204, %lor.rhs
  %78 = phi i1 [ false, %lor.rhs ], [ %cmp206, %land.rhs204 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end208, %lor.lhs.false197, %while.cond193
  %79 = phi i1 [ true, %lor.lhs.false197 ], [ true, %while.cond193 ], [ %78, %land.end208 ]
  br i1 %79, label %while.body209, label %while.end229

while.body209:                                    ; preds = %lor.end
  %80 = load i8, i8* %c, align 1
  %conv210 = sext i8 %80 to i32
  %cmp211 = icmp eq i32 %conv210, 63
  br i1 %cmp211, label %if.then217, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %while.body209
  %81 = load i8, i8* %c, align 1
  %conv214 = sext i8 %81 to i32
  %cmp215 = icmp eq i32 %conv214, -105
  br i1 %cmp215, label %if.then217, label %if.else221

if.then217:                                       ; preds = %lor.lhs.false213, %while.body209
  %82 = load i32, i32* %t, align 4
  %shl218 = shl i32 %82, 3
  %or219 = or i32 %shl218, 7
  store i32 %or219, i32* %t, align 4
  %83 = load i32, i32* %val, align 4
  %shl220 = shl i32 %83, 3
  store i32 %shl220, i32* %val, align 4
  br label %if.end227

if.else221:                                       ; preds = %lor.lhs.false213
  %84 = load i32, i32* %t, align 4
  %shl222 = shl i32 %84, 3
  store i32 %shl222, i32* %t, align 4
  %85 = load i32, i32* %val, align 4
  %shl223 = shl i32 %85, 3
  %86 = load i8, i8* %c, align 1
  %conv224 = sext i8 %86 to i32
  %sub225 = sub nsw i32 %conv224, 48
  %or226 = or i32 %shl223, %sub225
  store i32 %or226, i32* %val, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.else221, %if.then217
  %87 = load i8*, i8** %p, align 4
  %incdec.ptr228 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr228, i8** %p, align 4
  br label %while.cond193

while.end229:                                     ; preds = %lor.end
  %88 = load i8, i8* %end, align 1
  %conv230 = sext i8 %88 to i32
  %tobool231 = icmp ne i32 %conv230, 0
  br i1 %tobool231, label %land.lhs.true232, label %if.end242

land.lhs.true232:                                 ; preds = %while.end229
  %89 = load i8, i8* %c, align 1
  %conv233 = sext i8 %89 to i32
  %90 = load i8, i8* %end, align 1
  %conv234 = sext i8 %90 to i32
  %cmp235 = icmp ne i32 %conv233, %conv234
  br i1 %cmp235, label %land.lhs.true237, label %if.end242

land.lhs.true237:                                 ; preds = %land.lhs.true232
  %91 = load i8, i8* %c, align 1
  %conv238 = sext i8 %91 to i32
  %cmp239 = icmp ne i32 %conv238, 44
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %land.lhs.true237
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end242:                                        ; preds = %land.lhs.true237, %land.lhs.true232, %while.end229
  %92 = load i8, i8* %how, align 1
  %conv243 = sext i8 %92 to i32
  %cmp244 = icmp eq i32 %conv243, 61
  br i1 %cmp244, label %if.then246, label %if.else256

if.then246:                                       ; preds = %if.end242
  %93 = load i32, i32* %yes, align 4
  %94 = load i32, i32* %t, align 4
  %neg247 = xor i32 %94, -1
  %and248 = and i32 %93, %neg247
  %95 = load i32, i32* %val, align 4
  %or249 = or i32 %and248, %95
  store i32 %or249, i32* %yes, align 4
  %96 = load i32, i32* %no, align 4
  %97 = load i32, i32* %t, align 4
  %neg250 = xor i32 %97, -1
  %and251 = and i32 %96, %neg250
  %98 = load i32, i32* %val, align 4
  %neg252 = xor i32 %98, -1
  %99 = load i32, i32* %t, align 4
  %neg253 = xor i32 %99, -1
  %and254 = and i32 %neg252, %neg253
  %or255 = or i32 %and251, %and254
  store i32 %or255, i32* %no, align 4
  br label %if.end265

if.else256:                                       ; preds = %if.end242
  %100 = load i8, i8* %how, align 1
  %conv257 = sext i8 %100 to i32
  %cmp258 = icmp eq i32 %conv257, 43
  br i1 %cmp258, label %if.then260, label %if.else262

if.then260:                                       ; preds = %if.else256
  %101 = load i32, i32* %val, align 4
  %102 = load i32, i32* %yes, align 4
  %or261 = or i32 %102, %101
  store i32 %or261, i32* %yes, align 4
  br label %if.end264

if.else262:                                       ; preds = %if.else256
  %103 = load i32, i32* %val, align 4
  %104 = load i32, i32* %no, align 4
  %or263 = or i32 %104, %103
  store i32 %or263, i32* %no, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else262, %if.then260
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then246
  br label %if.end267

if.else266:                                       ; preds = %land.lhs.true189, %land.lhs.true185, %land.lhs.true180
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end267:                                        ; preds = %if.end265
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.end176
  br label %do.cond

do.cond:                                          ; preds = %if.end268
  %105 = load i8, i8* %end, align 1
  %conv269 = sext i8 %105 to i32
  %tobool270 = icmp ne i32 %conv269, 0
  br i1 %tobool270, label %land.rhs271, label %land.end276

land.rhs271:                                      ; preds = %do.cond
  %106 = load i8, i8* %c, align 1
  %conv272 = sext i8 %106 to i32
  %107 = load i8, i8* %end, align 1
  %conv273 = sext i8 %107 to i32
  %cmp274 = icmp ne i32 %conv272, %conv273
  br label %land.end276

land.end276:                                      ; preds = %land.rhs271, %do.cond
  %108 = phi i1 [ false, %do.cond ], [ %cmp274, %land.rhs271 ]
  br i1 %108, label %do.body, label %do.end

do.end:                                           ; preds = %land.end276
  %109 = load i8*, i8** %p, align 4
  %110 = load i8**, i8*** %s.addr, align 4
  store i8* %109, i8** %110, align 4
  %111 = load i32, i32* %yes, align 4
  %and277 = and i32 %111, 4095
  %112 = load i32, i32* %no, align 4
  %and278 = and i32 %112, 4095
  %shl279 = shl i32 %and278, 12
  %or280 = or i32 %and277, %shl279
  store i32 %or280, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else266, %if.then241, %sw.default
  %113 = load i32, i32* %retval, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind
define internal i32 @qualnonemptydir(i8* %name, %struct.stat* %buf, i32 %days, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %days.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %dirh = alloca %struct.__dirstream*, align 4
  %de = alloca %struct.dirent*, align 4
  %unamelen = alloca i32, align 4
  %uname = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %days, i32* %days.addr, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %name.addr, align 4
  %call = call i8* @dupstring(i8* %0)
  %call1 = call i8* @unmetafy(i8* %call, i32* %unamelen)
  store i8* %call1, i8** %uname, align 4
  %1 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 6
  %2 = load i32, i32* %st_mode, align 8
  %and = and i32 %2, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 4
  %4 = load i32, i32* %st_nlink, align 8
  %cmp2 = icmp ugt i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %uname, align 4
  %call5 = call %struct.__dirstream* @opendir(i8* %5)
  store %struct.__dirstream* %call5, %struct.__dirstream** %dirh, align 4
  %tobool = icmp ne %struct.__dirstream* %call5, null
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end7
  %6 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 4
  %call8 = call %struct.dirent* @readdir(%struct.__dirstream* %6)
  store %struct.dirent* %call8, %struct.dirent** %de, align 4
  %tobool9 = icmp ne %struct.dirent* %call8, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 6
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct.dirent*, %struct.dirent** %de, align 4
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 6
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i32 0, i32 0
  %call14 = call i32 @strcmp(i8* %arraydecay13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  %9 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 4
  %call17 = call i32 @closedir(%struct.__dirstream* %9)
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.__dirstream*, %struct.__dirstream** %dirh, align 4
  %call19 = call i32 @closedir(%struct.__dirstream* %10)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then6, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare void @zfree(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal i32 @qualtime(i8* %name, %struct.stat* %buf, i32 %days, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %days.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  %now = alloca i32, align 4
  %diff = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %days, i32* %days.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %call = call i32 @time(i32* %now)
  %0 = load i32, i32* %now, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %3 = load i32, i32* %tv_sec, align 8
  br label %cond.end6

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.false
  %5 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 19
  %tv_sec3 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %6 = load i32, i32* %tv_sec3, align 8
  br label %cond.end

cond.false4:                                      ; preds = %cond.false
  %7 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 20
  %tv_sec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %8 = load i32, i32* %tv_sec5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false4, %cond.true2
  %cond = phi i32 [ %6, %cond.true2 ], [ %8, %cond.false4 ]
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %3, %cond.true ], [ %cond, %cond.end ]
  %sub = sub nsw i32 %0, %cond7
  store i32 %sub, i32* %diff, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
  ]

sw.bb:                                            ; preds = %cond.end6
  %10 = load i32, i32* %diff, align 4
  %div = sdiv i32 %10, 86400
  store i32 %div, i32* %diff, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %cond.end6
  %11 = load i32, i32* %diff, align 4
  %div9 = sdiv i32 %11, 3600
  store i32 %div9, i32* %diff, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %cond.end6
  %12 = load i32, i32* %diff, align 4
  %div11 = sdiv i32 %12, 60
  store i32 %div11, i32* %diff, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end6
  %13 = load i32, i32* %diff, align 4
  %div13 = sdiv i32 %13, 604800
  store i32 %div13, i32* %diff, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %cond.end6
  %14 = load i32, i32* %diff, align 4
  %div15 = sdiv i32 %14, 2592000
  store i32 %div15, i32* %diff, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end6, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %15 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %sw.epilog
  %16 = load i32, i32* %diff, align 4
  %17 = load i32, i32* %days.addr, align 4
  %cmp18 = icmp slt i32 %16, %17
  %conv = zext i1 %cmp18 to i32
  br label %cond.end30

cond.false19:                                     ; preds = %sw.epilog
  %18 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp20 = icmp sgt i32 %18, 0
  br i1 %cmp20, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.false19
  %19 = load i32, i32* %diff, align 4
  %20 = load i32, i32* %days.addr, align 4
  %cmp23 = icmp sgt i32 %19, %20
  %conv24 = zext i1 %cmp23 to i32
  br label %cond.end28

cond.false25:                                     ; preds = %cond.false19
  %21 = load i32, i32* %diff, align 4
  %22 = load i32, i32* %days.addr, align 4
  %cmp26 = icmp eq i32 %21, %22
  %conv27 = zext i1 %cmp26 to i32
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false25, %cond.true22
  %cond29 = phi i32 [ %conv24, %cond.true22 ], [ %conv27, %cond.false25 ]
  br label %cond.end30

cond.end30:                                       ; preds = %cond.end28, %cond.true17
  %cond31 = phi i32 [ %conv, %cond.true17 ], [ %cond29, %cond.end28 ]
  ret i32 %cond31
}

; Function Attrs: noinline nounwind
define internal i32 @qualsize(i8* %name, %struct.stat* %buf, i32 %size, i8* %dummy) #0 {
entry:
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %size.addr = alloca i32, align 4
  %dummy.addr = alloca i8*, align 4
  %scaled = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %dummy, i8** %dummy.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %buf.addr, align 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 12
  %1 = load i32, i32* %st_size, align 8
  store i32 %1, i32* %scaled, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 5, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %scaled, align 4
  %add = add nsw i32 %3, 511
  store i32 %add, i32* %scaled, align 4
  %4 = load i32, i32* %scaled, align 4
  %div = sdiv i32 %4, 512
  store i32 %div, i32* %scaled, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load i32, i32* %scaled, align 4
  %add2 = add nsw i32 %5, 1023
  store i32 %add2, i32* %scaled, align 4
  %6 = load i32, i32* %scaled, align 4
  %div3 = sdiv i32 %6, 1024
  store i32 %div3, i32* %scaled, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %7 = load i32, i32* %scaled, align 4
  %add5 = add nsw i32 %7, 1048575
  store i32 %add5, i32* %scaled, align 4
  %8 = load i32, i32* %scaled, align 4
  %div6 = sdiv i32 %8, 1048576
  store i32 %div6, i32* %scaled, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %9 = load i32, i32* %scaled, align 4
  %add8 = add nsw i32 %9, 1073741823
  store i32 %add8, i32* %scaled, align 4
  %10 = load i32, i32* %scaled, align 4
  %div9 = sdiv i32 %10, 1073741824
  store i32 %div9, i32* %scaled, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %11 = load i32, i32* %scaled, align 4
  %conv = sext i32 %11 to i64
  %add11 = add nsw i64 %conv, 1099511627775
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* %scaled, align 4
  %12 = load i32, i32* %scaled, align 4
  %conv13 = sext i32 %12 to i64
  %div14 = sdiv i64 %conv13, 1099511627776
  %conv15 = trunc i64 %div14 to i32
  store i32 %conv15, i32* %scaled, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %13 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %14 = load i32, i32* %scaled, align 4
  %15 = load i32, i32* %size.addr, align 4
  %cmp17 = icmp slt i32 %14, %15
  %conv18 = zext i1 %cmp17 to i32
  br label %cond.end27

cond.false:                                       ; preds = %sw.epilog
  %16 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.false
  %17 = load i32, i32* %scaled, align 4
  %18 = load i32, i32* %size.addr, align 4
  %cmp22 = icmp sgt i32 %17, %18
  %conv23 = zext i1 %cmp22 to i32
  br label %cond.end

cond.false24:                                     ; preds = %cond.false
  %19 = load i32, i32* %scaled, align 4
  %20 = load i32, i32* %size.addr, align 4
  %cmp25 = icmp eq i32 %19, %20
  %conv26 = zext i1 %cmp25 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false24, %cond.true21
  %cond = phi i32 [ %conv23, %cond.true21 ], [ %conv26, %cond.false24 ]
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ %conv18, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond28
}

; Function Attrs: noinline nounwind
define internal i8* @glob_exec_string(i8** %sp) #0 {
entry:
  %retval = alloca i8*, align 4
  %sp.addr = alloca i8**, align 4
  %sav = alloca i8, align 1
  %tt = alloca i8*, align 4
  %sdata = alloca i8*, align 4
  %s = alloca i8*, align 4
  %plus = alloca i32, align 4
  store i8** %sp, i8*** %sp.addr, align 4
  %0 = load i8**, i8*** %sp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %s, align 4
  %2 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %2, i32 -1
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %plus, align 4
  %4 = load i8*, i8** %s, align 4
  %call = call i8* @itype_end(i8* %4, i32 128, i32 0)
  store i8* %call, i8** %tt, align 4
  %5 = load i8*, i8** %tt, align 4
  %6 = load i8*, i8** %s, align 4
  %cmp2 = icmp eq i8* %5, %6
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %s, align 4
  %call5 = call i8* @get_strarg(i8* %7, i32* %plus)
  store i8* %call5, i8** %tt, align 4
  %8 = load i8*, i8** %tt, align 4
  %9 = load i8, i8* %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  store i8* null, i8** %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %10 = load i8*, i8** %tt, align 4
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %sav, align 1
  %12 = load i8*, i8** %tt, align 4
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %s, align 4
  %14 = load i32, i32* %plus, align 4
  %add.ptr = getelementptr inbounds i8, i8* %13, i32 %14
  %call9 = call i8* @dupstring(i8* %add.ptr)
  store i8* %call9, i8** %sdata, align 4
  %15 = load i8*, i8** %sdata, align 4
  call void @untokenize(i8* %15)
  %16 = load i8, i8* %sav, align 1
  %17 = load i8*, i8** %tt, align 4
  store i8 %16, i8* %17, align 1
  %18 = load i8, i8* %sav, align 1
  %tobool10 = icmp ne i8 %18, 0
  br i1 %tobool10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end8
  %19 = load i8*, i8** %tt, align 4
  %20 = load i32, i32* %plus, align 4
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i32 %20
  %21 = load i8**, i8*** %sp.addr, align 4
  store i8* %add.ptr12, i8** %21, align 4
  br label %if.end14

if.else13:                                        ; preds = %if.end8
  %22 = load i8*, i8** %tt, align 4
  %23 = load i8**, i8*** %sp.addr, align 4
  store i8* %22, i8** %23, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then11
  %24 = load i8*, i8** %sdata, align 4
  store i8* %24, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then6, %if.then4
  %25 = load i8*, i8** %retval, align 4
  ret i8* %25
}

; Function Attrs: noinline nounwind
define internal i32 @qualsheval(i8* %name, %struct.stat* %buf, i32 %days, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 4
  %buf.addr = alloca %struct.stat*, align 4
  %days.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %prog = alloca %struct.eprog*, align 4
  %ef = alloca i32, align 4
  %lv = alloca i32, align 4
  %ret = alloca i32, align 4
  %cshglob = alloca i32, align 4
  %tmp = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 4
  store i32 %days, i32* %days.addr, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %call = call %struct.eprog* @parse_string(i8* %0, i32 0)
  store %struct.eprog* %call, %struct.eprog** %prog, align 4
  %tobool = icmp ne %struct.eprog* %call, null
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @errflag, align 4
  store i32 %1, i32* %ef, align 4
  %2 = load i32, i32* @lastval, align 4
  store i32 %2, i32* %lv, align 4
  %3 = load i32, i32* @badcshglob, align 4
  store i32 %3, i32* %cshglob, align 4
  call void @unsetparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  %4 = load i8*, i8** %name.addr, align 4
  %call1 = call i8* @ztrdup(i8* %4)
  %call2 = call %struct.param* @setsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %call1)
  store i32 0, i32* @badcshglob, align 4
  %5 = load %struct.eprog*, %struct.eprog** %prog, align 4
  call void @execode(%struct.eprog* %5, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  %6 = load i32, i32* @lastval, align 4
  store i32 %6, i32* %ret, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load i32, i32* %cshglob, align 4
  %8 = load i32, i32* @badcshglob, align 4
  %or = or i32 %8, %7
  store i32 %or, i32* @badcshglob, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %9 = load i32, i32* %ef, align 4
  %10 = load i32, i32* @errflag, align 4
  %and = and i32 %10, 2
  %or5 = or i32 %9, %and
  store i32 %or5, i32* @errflag, align 4
  %11 = load i32, i32* %lv, align 4
  store i32 %11, i32* @lastval, align 4
  %call6 = call i8** @getaparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store i8** %call6, i8*** @inserts, align 4
  %tobool7 = icmp ne i8** %call6, null
  br i1 %tobool7, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i8** @gethparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store i8** %call8, i8*** @inserts, align 4
  %tobool9 = icmp ne i8** %call8, null
  br i1 %tobool9, label %if.end17, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call i8* @getsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store i8* %call11, i8** %tmp, align 4
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %call13 = call i8* @getsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call13, i8** %tmp, align 4
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.then10
  %12 = load i8*, i8** %tmp, align 4
  store i8* %12, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @qualsheval.tmparr, i32 0, i32 0), align 4
  store i8* null, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @qualsheval.tmparr, i32 0, i32 1), align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @qualsheval.tmparr, i32 0, i32 0), i8*** @inserts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  %13 = load i32, i32* %ret, align 4
  %tobool18 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool18, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.end17
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare i32 @getindex(i8**, %struct.value*, i32) #1

declare %union.linkroot* @newlinklist() #1

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

; Function Attrs: noinline nounwind
define internal %struct.qual* @dup_qual_list(%struct.qual* %orig, %struct.qual** %lastp) #0 {
entry:
  %orig.addr = alloca %struct.qual*, align 4
  %lastp.addr = alloca %struct.qual**, align 4
  %qfirst = alloca %struct.qual*, align 4
  %qlast = alloca %struct.qual*, align 4
  %qnew = alloca %struct.qual*, align 4
  store %struct.qual* %orig, %struct.qual** %orig.addr, align 4
  store %struct.qual** %lastp, %struct.qual*** %lastp.addr, align 4
  store %struct.qual* null, %struct.qual** %qfirst, align 4
  store %struct.qual* null, %struct.qual** %qlast, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load %struct.qual*, %struct.qual** %orig.addr, align 4
  %tobool = icmp ne %struct.qual* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i8* @zhalloc(i32 36)
  %1 = bitcast i8* %call to %struct.qual*
  store %struct.qual* %1, %struct.qual** %qnew, align 4
  %2 = load %struct.qual*, %struct.qual** %qnew, align 4
  %3 = load %struct.qual*, %struct.qual** %orig.addr, align 4
  %4 = bitcast %struct.qual* %2 to i8*
  %5 = bitcast %struct.qual* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 36, i32 4, i1 false)
  %6 = load %struct.qual*, %struct.qual** %qnew, align 4
  %or = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 1
  store %struct.qual* null, %struct.qual** %or, align 4
  %7 = load %struct.qual*, %struct.qual** %qnew, align 4
  %next = getelementptr inbounds %struct.qual, %struct.qual* %7, i32 0, i32 0
  store %struct.qual* null, %struct.qual** %next, align 4
  %8 = load %struct.qual*, %struct.qual** %qfirst, align 4
  %tobool1 = icmp ne %struct.qual* %8, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %9 = load %struct.qual*, %struct.qual** %qnew, align 4
  store %struct.qual* %9, %struct.qual** %qfirst, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct.qual*, %struct.qual** %qlast, align 4
  %tobool2 = icmp ne %struct.qual* %10, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %11 = load %struct.qual*, %struct.qual** %qnew, align 4
  %12 = load %struct.qual*, %struct.qual** %qlast, align 4
  %next4 = getelementptr inbounds %struct.qual, %struct.qual* %12, i32 0, i32 0
  store %struct.qual* %11, %struct.qual** %next4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load %struct.qual*, %struct.qual** %qnew, align 4
  store %struct.qual* %13, %struct.qual** %qlast, align 4
  %14 = load %struct.qual*, %struct.qual** %orig.addr, align 4
  %next6 = getelementptr inbounds %struct.qual, %struct.qual* %14, i32 0, i32 0
  %15 = load %struct.qual*, %struct.qual** %next6, align 4
  store %struct.qual* %15, %struct.qual** %orig.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.qual**, %struct.qual*** %lastp.addr, align 4
  %tobool7 = icmp ne %struct.qual** %16, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  %17 = load %struct.qual*, %struct.qual** %qlast, align 4
  %18 = load %struct.qual**, %struct.qual*** %lastp.addr, align 4
  store %struct.qual* %17, %struct.qual** %18, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  %19 = load %struct.qual*, %struct.qual** %qfirst, align 4
  ret %struct.qual* %19
}

; Function Attrs: noinline nounwind
define internal %struct.complist* @parsepat(i8* %str) #0 {
entry:
  %retval = alloca %struct.complist*, align 4
  %str.addr = alloca i8*, align 4
  %assert = alloca i32, align 4
  %ignore = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  call void @patcompstart()
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %str.addr, align 4
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 18), align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %land.lhs.true11, label %if.end26

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %str.addr, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i32 1
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, -120
  br i1 %cmp14, label %land.lhs.true16, label %if.end26

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %11 = load i8*, i8** %str.addr, align 4
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i32 2
  %12 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then, label %if.end26

if.then:                                          ; preds = %land.lhs.true16, %land.lhs.true
  %14 = load i8*, i8** %str.addr, align 4
  %15 = load i8, i8* %14, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp eq i32 %conv22, -120
  %cond = select i1 %cmp23, i32 2, i32 3
  %16 = load i8*, i8** %str.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %cond
  store i8* %add.ptr, i8** %str.addr, align 4
  %call = call i32 @patgetglobflags(i8** %str.addr, i32* %assert, i32* %ignore)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then25

if.then25:                                        ; preds = %if.then
  store %struct.complist* null, %struct.complist** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end26

if.end26:                                         ; preds = %if.end, %land.lhs.true16, %land.lhs.true11, %lor.lhs.false
  %17 = load i8*, i8** @pathbuf, align 4
  %tobool27 = icmp ne i8* %17, null
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  store i32 4097, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  %call29 = call i8* @zalloc(i32 4097)
  store i8* %call29, i8** @pathbuf, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26
  %18 = load i8*, i8** %str.addr, align 4
  %19 = load i8, i8* %18, align 1
  %conv31 = sext i8 %19 to i32
  %cmp32 = icmp eq i32 %conv31, 47
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  %20 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  %21 = load i8*, i8** @pathbuf, align 4
  %arrayidx35 = getelementptr inbounds i8, i8* %21, i32 0
  store i8 47, i8* %arrayidx35, align 1
  %22 = load i8*, i8** @pathbuf, align 4
  store i32 1, i32* @pathpos, align 4
  %arrayidx36 = getelementptr inbounds i8, i8* %22, i32 1
  store i8 0, i8* %arrayidx36, align 1
  br label %if.end38

if.else:                                          ; preds = %if.end30
  %23 = load i8*, i8** @pathbuf, align 4
  store i32 0, i32* @pathpos, align 4
  %arrayidx37 = getelementptr inbounds i8, i8* %23, i32 0
  store i8 0, i8* %arrayidx37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then34
  %24 = load i8*, i8** %str.addr, align 4
  %call39 = call %struct.complist* @parsecomplist(i8* %24)
  store %struct.complist* %call39, %struct.complist** %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then25
  %25 = load %struct.complist*, %struct.complist** %retval, align 4
  ret %struct.complist* %25
}

declare i8* @zalloc(i32) #1

declare void @pattrystart() #1

; Function Attrs: noinline nounwind
define internal void @scanner(%struct.complist* %q, i32 %shortcircuit) #0 {
entry:
  %q.addr = alloca %struct.complist*, align 4
  %shortcircuit.addr = alloca i32, align 4
  %p = alloca %struct.patprog*, align 4
  %closure = alloca i32, align 4
  %pbcwdsav = alloca i32, align 4
  %errssofar = alloca i32, align 4
  %ds = alloca %struct.dirsav, align 4
  %str = alloca i8*, align 4
  %l = alloca i32, align 4
  %err = alloca i32, align 4
  %oppos = alloca i32, align 4
  %add37 = alloca i32, align 4
  %sc = alloca %struct.stat, align 8
  %sr = alloca %struct.stat, align 8
  %fn = alloca i8*, align 4
  %dirs = alloca i32, align 4
  %lock = alloca %struct.__dirstream*, align 4
  %subdirs = alloca i8*, align 4
  %subdirlen = alloca i32, align 4
  %err151 = alloca i32, align 4
  %l165 = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %oppos236 = alloca i32, align 4
  %l240 = alloca i32, align 4
  store %struct.complist* %q, %struct.complist** %q.addr, align 4
  store i32 %shortcircuit, i32* %shortcircuit.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  store i32 %0, i32* %pbcwdsav, align 4
  %1 = load i32, i32* @errsfound, align 4
  store i32 %1, i32* %errssofar, align 4
  %2 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %tobool = icmp ne %struct.complist* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* @errflag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @init_dirsav(%struct.dirsav* %ds)
  %4 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure2 = getelementptr inbounds %struct.complist, %struct.complist* %4, i32 0, i32 2
  %5 = load i32, i32* %closure2, align 4
  store i32 %5, i32* %closure, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %6 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure5 = getelementptr inbounds %struct.complist, %struct.complist* %6, i32 0, i32 2
  %7 = load i32, i32* %closure5, align 4
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %8 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure7 = getelementptr inbounds %struct.complist, %struct.complist* %8, i32 0, i32 2
  store i32 1, i32* %closure7, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %9 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %next = getelementptr inbounds %struct.complist, %struct.complist* %9, i32 0, i32 0
  %10 = load %struct.complist*, %struct.complist** %next, align 4
  %11 = load i32, i32* %shortcircuit.addr, align 4
  call void @scanner(%struct.complist* %10, i32 %11)
  %12 = load i32, i32* %shortcircuit.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %13 = load i32, i32* %shortcircuit.addr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %15 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %pat = getelementptr inbounds %struct.complist, %struct.complist* %15, i32 0, i32 1
  %16 = load %struct.patprog*, %struct.patprog** %pat, align 4
  store %struct.patprog* %16, %struct.patprog** %p, align 4
  %17 = load %struct.patprog*, %struct.patprog** %p, align 4
  %flags = getelementptr inbounds %struct.patprog, %struct.patprog* %17, i32 0, i32 6
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 32
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.else98

if.then15:                                        ; preds = %if.end13
  %19 = load %struct.patprog*, %struct.patprog** %p, align 4
  %20 = bitcast %struct.patprog* %19 to i8*
  %21 = load %struct.patprog*, %struct.patprog** %p, align 4
  %startoff = getelementptr inbounds %struct.patprog, %struct.patprog* %21, i32 0, i32 0
  %22 = load i32, i32* %startoff, align 4
  %add.ptr = getelementptr inbounds i8, i8* %20, i32 %22
  store i8* %add.ptr, i8** %str, align 4
  %23 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patmlen = getelementptr inbounds %struct.patprog, %struct.patprog* %23, i32 0, i32 3
  %24 = load i32, i32* %patmlen, align 4
  store i32 %24, i32* %l, align 4
  %25 = load i32, i32* %l, align 4
  %26 = load i32, i32* %l, align 4
  %tobool16 = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  %add = add nsw i32 %25, %lnot.ext
  %27 = load i32, i32* @pathpos, align 4
  %add17 = add nsw i32 %add, %27
  %28 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %sub = sub nsw i32 %add17, %28
  %cmp18 = icmp sge i32 %sub, 4096
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.then15
  %29 = load i32, i32* %l, align 4
  %cmp20 = icmp sge i32 %29, 4096
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then19
  br label %return

if.end22:                                         ; preds = %if.then19
  %30 = load i8*, i8** @pathbuf, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %add.ptr23 = getelementptr inbounds i8, i8* %30, i32 %31
  %call = call i8* @unmeta(i8* %add.ptr23)
  %call24 = call i32 @lchdir(i8* %call, %struct.dirsav* %ds, i32 0)
  store i32 %call24, i32* %err, align 4
  %32 = load i32, i32* %err, align 4
  %cmp25 = icmp eq i32 %32, -1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  br label %return

if.end27:                                         ; preds = %if.end22
  %33 = load i32, i32* %err, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end30:                                         ; preds = %if.end27
  %34 = load i32, i32* @pathpos, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then15
  %35 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %next32 = getelementptr inbounds %struct.complist, %struct.complist* %35, i32 0, i32 0
  %36 = load %struct.complist*, %struct.complist** %next32, align 4
  %tobool33 = icmp ne %struct.complist* %36, null
  br i1 %tobool33, label %if.then34, label %if.else85

if.then34:                                        ; preds = %if.end31
  %37 = load i32, i32* @pathpos, align 4
  store i32 %37, i32* %oppos, align 4
  %38 = load i32, i32* @errflag, align 4
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %if.end84, label %if.then36

if.then36:                                        ; preds = %if.then34
  store i32 1, i32* %add37, align 4
  %39 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure38 = getelementptr inbounds %struct.complist, %struct.complist* %39, i32 0, i32 2
  %40 = load i32, i32* %closure38, align 4
  %tobool39 = icmp ne i32 %40, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end65

land.lhs.true40:                                  ; preds = %if.then36
  %41 = load i8*, i8** @pathbuf, align 4
  %42 = load i8, i8* %41, align 1
  %conv = sext i8 %42 to i32
  %tobool41 = icmp ne i32 %conv, 0
  br i1 %tobool41, label %if.then42, label %if.end65

if.then42:                                        ; preds = %land.lhs.true40
  %43 = load i8*, i8** %str, align 4
  %call43 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.then42
  store i32 0, i32* %add37, align 4
  br label %if.end64

if.else46:                                        ; preds = %if.then42
  %44 = load i8*, i8** %str, align 4
  %call47 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end63, label %if.then49

if.then49:                                        ; preds = %if.else46
  %call50 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), %struct.stat* %sr)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %lor.end, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.then49
  %45 = load i8*, i8** @pathbuf, align 4
  %call53 = call i8* @unmeta(i8* %45)
  %call54 = call i32 @stat(i8* %call53, %struct.stat* %sc)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %lor.end, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sr, i32 0, i32 2
  %46 = load i32, i32* %st_ino, align 8
  %st_ino57 = getelementptr inbounds %struct.stat, %struct.stat* %sc, i32 0, i32 2
  %47 = load i32, i32* %st_ino57, align 8
  %cmp58 = icmp ne i32 %46, %47
  br i1 %cmp58, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false56
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sr, i32 0, i32 0
  %48 = load i32, i32* %st_dev, align 8
  %st_dev60 = getelementptr inbounds %struct.stat, %struct.stat* %sc, i32 0, i32 0
  %49 = load i32, i32* %st_dev60, align 8
  %cmp61 = icmp ne i32 %48, %49
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false56, %lor.lhs.false52, %if.then49
  %50 = phi i1 [ true, %lor.lhs.false56 ], [ true, %lor.lhs.false52 ], [ true, %if.then49 ], [ %cmp61, %lor.rhs ]
  %lor.ext = zext i1 %50 to i32
  store i32 %lor.ext, i32* %add37, align 4
  br label %if.end63

if.end63:                                         ; preds = %lor.end, %if.else46
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then45
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %land.lhs.true40, %if.then36
  %51 = load i32, i32* %add37, align 4
  %tobool66 = icmp ne i32 %51, 0
  br i1 %tobool66, label %if.then67, label %if.end83

if.then67:                                        ; preds = %if.end65
  %52 = load i8*, i8** %str, align 4
  %53 = load i32, i32* %l, align 4
  call void @addpath(i8* %52, i32 %53)
  %54 = load i32, i32* %closure, align 4
  %tobool68 = icmp ne i32 %54, 0
  br i1 %tobool68, label %lor.lhs.false69, label %if.then72

lor.lhs.false69:                                  ; preds = %if.then67
  %call70 = call i32 @statfullpath(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), %struct.stat* null, i32 1)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end82, label %if.then72

if.then72:                                        ; preds = %lor.lhs.false69, %if.then67
  %55 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure73 = getelementptr inbounds %struct.complist, %struct.complist* %55, i32 0, i32 2
  %56 = load i32, i32* %closure73, align 4
  %tobool74 = icmp ne i32 %56, 0
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then72
  %57 = load %struct.complist*, %struct.complist** %q.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then72
  %58 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %next75 = getelementptr inbounds %struct.complist, %struct.complist* %58, i32 0, i32 0
  %59 = load %struct.complist*, %struct.complist** %next75, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.complist* [ %57, %cond.true ], [ %59, %cond.false ]
  %60 = load i32, i32* %shortcircuit.addr, align 4
  call void @scanner(%struct.complist* %cond, i32 %60)
  %61 = load i32, i32* %shortcircuit.addr, align 4
  %tobool76 = icmp ne i32 %61, 0
  br i1 %tobool76, label %land.lhs.true77, label %if.end81

land.lhs.true77:                                  ; preds = %cond.end
  %62 = load i32, i32* %shortcircuit.addr, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp78 = icmp eq i32 %62, %63
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true77
  br label %return

if.end81:                                         ; preds = %land.lhs.true77, %cond.end
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %lor.lhs.false69
  %64 = load i8*, i8** @pathbuf, align 4
  %65 = load i32, i32* %oppos, align 4
  store i32 %65, i32* @pathpos, align 4
  %arrayidx = getelementptr inbounds i8, i8* %64, i32 %65
  store i8 0, i8* %arrayidx, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end65
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then34
  br label %if.end97

if.else85:                                        ; preds = %if.end31
  %66 = load i8*, i8** %str, align 4
  %67 = load i32, i32* %l, align 4
  %arrayidx86 = getelementptr inbounds i8, i8* %66, i32 %67
  %68 = load i8, i8* %arrayidx86, align 1
  %tobool87 = icmp ne i8 %68, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.else85
  %69 = load i8*, i8** %str, align 4
  %70 = load i32, i32* %l, align 4
  %call89 = call i8* @dupstrpfx(i8* %69, i32 %70)
  store i8* %call89, i8** %str, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.else85
  %71 = load i8*, i8** %str, align 4
  call void @insert(i8* %71, i32 0)
  %72 = load i32, i32* %shortcircuit.addr, align 4
  %tobool91 = icmp ne i32 %72, 0
  br i1 %tobool91, label %land.lhs.true92, label %if.end96

land.lhs.true92:                                  ; preds = %if.end90
  %73 = load i32, i32* %shortcircuit.addr, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp93 = icmp eq i32 %73, %74
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %land.lhs.true92
  br label %return

if.end96:                                         ; preds = %land.lhs.true92, %if.end90
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end84
  br label %if.end261

if.else98:                                        ; preds = %if.end13
  %75 = load i8*, i8** @pathbuf, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %arrayidx99 = getelementptr inbounds i8, i8* %75, i32 %76
  %77 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %77 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %cond.true102, label %cond.false105

cond.true102:                                     ; preds = %if.else98
  %78 = load i8*, i8** @pathbuf, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %add.ptr103 = getelementptr inbounds i8, i8* %78, i32 %79
  %call104 = call i8* @unmeta(i8* %add.ptr103)
  br label %cond.end106

cond.false105:                                    ; preds = %if.else98
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %cond.true102
  %cond107 = phi i8* [ %call104, %cond.true102 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), %cond.false105 ]
  store i8* %cond107, i8** %fn, align 4
  %80 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %next108 = getelementptr inbounds %struct.complist, %struct.complist* %80, i32 0, i32 0
  %81 = load %struct.complist*, %struct.complist** %next108, align 4
  %tobool109 = icmp ne %struct.complist* %81, null
  %lnot110 = xor i1 %tobool109, true
  %lnot112 = xor i1 %lnot110, true
  %lnot.ext113 = zext i1 %lnot112 to i32
  store i32 %lnot.ext113, i32* %dirs, align 4
  %82 = load i8*, i8** %fn, align 4
  %call114 = call %struct.__dirstream* @opendir(i8* %82)
  store %struct.__dirstream* %call114, %struct.__dirstream** %lock, align 4
  store i8* null, i8** %subdirs, align 4
  store i32 0, i32* %subdirlen, align 4
  %83 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %cmp115 = icmp eq %struct.__dirstream* %83, null
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %cond.end106
  br label %return

if.end118:                                        ; preds = %cond.end106
  br label %while.cond

while.cond:                                       ; preds = %if.end231, %if.then209, %if.end204, %if.then137, %if.end118
  %84 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %call119 = call i8* @zreaddir(%struct.__dirstream* %84, i32 1)
  store i8* %call119, i8** %fn, align 4
  %tobool120 = icmp ne i8* %call119, null
  br i1 %tobool120, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %85 = load i32, i32* @errflag, align 4
  %tobool121 = icmp ne i32 %85, 0
  %lnot122 = xor i1 %tobool121, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %lnot122, %land.rhs ]
  br i1 %86, label %while.body, label %while.end232

while.body:                                       ; preds = %land.end
  %87 = load i32, i32* %dirs, align 4
  %tobool124 = icmp ne i32 %87, 0
  br i1 %tobool124, label %if.end138, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %while.body
  %88 = load i8*, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  %tobool126 = icmp ne i8* %88, null
  br i1 %tobool126, label %if.end138, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %land.lhs.true125
  %89 = load i8*, i8** @glob_pre, align 4
  %tobool128 = icmp ne i8* %89, null
  br i1 %tobool128, label %land.lhs.true129, label %lor.lhs.false132

land.lhs.true129:                                 ; preds = %land.lhs.true127
  %90 = load i8*, i8** @glob_pre, align 4
  %91 = load i8*, i8** %fn, align 4
  %call130 = call i32 @strpfx(i8* %90, i8* %91)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %lor.lhs.false132, label %if.then137

lor.lhs.false132:                                 ; preds = %land.lhs.true129, %land.lhs.true127
  %92 = load i8*, i8** @glob_suf, align 4
  %tobool133 = icmp ne i8* %92, null
  br i1 %tobool133, label %land.lhs.true134, label %if.end138

land.lhs.true134:                                 ; preds = %lor.lhs.false132
  %93 = load i8*, i8** @glob_suf, align 4
  %94 = load i8*, i8** %fn, align 4
  %call135 = call i32 @strsfx(i8* %93, i8* %94)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end138, label %if.then137

if.then137:                                       ; preds = %land.lhs.true134, %land.lhs.true129
  br label %while.cond

if.end138:                                        ; preds = %land.lhs.true134, %lor.lhs.false132, %land.lhs.true125, %while.body
  %95 = load i32, i32* %errssofar, align 4
  store i32 %95, i32* @errsfound, align 4
  %96 = load %struct.patprog*, %struct.patprog** %p, align 4
  %97 = load i8*, i8** %fn, align 4
  %call139 = call i32 @pattry(%struct.patprog* %96, i8* %97)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then141, label %if.end231

if.then141:                                       ; preds = %if.end138
  %98 = load i32, i32* %pbcwdsav, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %cmp142 = icmp eq i32 %98, %99
  br i1 %cmp142, label %land.lhs.true144, label %if.end162

land.lhs.true144:                                 ; preds = %if.then141
  %100 = load i8*, i8** %fn, align 4
  %call145 = call i32 @strlen(i8* %100)
  %101 = load i32, i32* @pathpos, align 4
  %add146 = add i32 %call145, %101
  %102 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %sub147 = sub i32 %add146, %102
  %cmp148 = icmp uge i32 %sub147, 4096
  br i1 %cmp148, label %if.then150, label %if.end162

if.then150:                                       ; preds = %land.lhs.true144
  %103 = load i8*, i8** @pathbuf, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %add.ptr152 = getelementptr inbounds i8, i8* %103, i32 %104
  %call153 = call i8* @unmeta(i8* %add.ptr152)
  %call154 = call i32 @lchdir(i8* %call153, %struct.dirsav* %ds, i32 0)
  store i32 %call154, i32* %err151, align 4
  %105 = load i32, i32* %err151, align 4
  %cmp155 = icmp eq i32 %105, -1
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.then150
  br label %while.end232

if.end158:                                        ; preds = %if.then150
  %106 = load i32, i32* %err151, align 4
  %tobool159 = icmp ne i32 %106, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end158
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %while.end232

if.end161:                                        ; preds = %if.end158
  %107 = load i32, i32* @pathpos, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %land.lhs.true144, %if.then141
  %108 = load i32, i32* %dirs, align 4
  %tobool163 = icmp ne i32 %108, 0
  br i1 %tobool163, label %if.then164, label %if.else222

if.then164:                                       ; preds = %if.end162
  %109 = load i32, i32* @errsfound, align 4
  %110 = load i32, i32* %errssofar, align 4
  %cmp166 = icmp sgt i32 %109, %110
  br i1 %cmp166, label %if.then168, label %if.end180

if.then168:                                       ; preds = %if.then164
  %111 = load i32, i32* @errsfound, align 4
  %sub169 = sub nsw i32 %111, 1
  store i32 %sub169, i32* @forceerrs, align 4
  br label %while.cond170

while.cond170:                                    ; preds = %if.end177, %if.then168
  %112 = load i32, i32* @forceerrs, align 4
  %113 = load i32, i32* %errssofar, align 4
  %cmp171 = icmp sge i32 %112, %113
  br i1 %cmp171, label %while.body173, label %while.end

while.body173:                                    ; preds = %while.cond170
  %114 = load i32, i32* %errssofar, align 4
  store i32 %114, i32* @errsfound, align 4
  %115 = load %struct.patprog*, %struct.patprog** %p, align 4
  %116 = load i8*, i8** %fn, align 4
  %call174 = call i32 @pattry(%struct.patprog* %115, i8* %116)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end177, label %if.then176

if.then176:                                       ; preds = %while.body173
  br label %while.end

if.end177:                                        ; preds = %while.body173
  %117 = load i32, i32* @errsfound, align 4
  %sub178 = sub nsw i32 %117, 1
  store i32 %sub178, i32* @forceerrs, align 4
  br label %while.cond170

while.end:                                        ; preds = %if.then176, %while.cond170
  %118 = load i32, i32* @forceerrs, align 4
  %add179 = add nsw i32 %118, 1
  store i32 %add179, i32* @errsfound, align 4
  store i32 -1, i32* @forceerrs, align 4
  br label %if.end180

if.end180:                                        ; preds = %while.end, %if.then164
  %119 = load i32, i32* %closure, align 4
  %tobool181 = icmp ne i32 %119, 0
  br i1 %tobool181, label %if.then182, label %if.end211

if.then182:                                       ; preds = %if.end180
  %120 = load i8*, i8** %fn, align 4
  %121 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %follow = getelementptr inbounds %struct.complist, %struct.complist* %121, i32 0, i32 3
  %122 = load i32, i32* %follow, align 4
  %tobool183 = icmp ne i32 %122, 0
  %lnot184 = xor i1 %tobool183, true
  %lnot.ext185 = zext i1 %lnot184 to i32
  %call186 = call i32 @statfullpath(i8* %120, %struct.stat* %buf, i32 %lnot.ext185)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then188, label %if.end205

if.then188:                                       ; preds = %if.then182
  %call189 = call i32* @__errno_location()
  %123 = load i32, i32* %call189, align 4
  %cmp190 = icmp ne i32 %123, 2
  br i1 %cmp190, label %land.lhs.true192, label %if.end204

land.lhs.true192:                                 ; preds = %if.then188
  %call193 = call i32* @__errno_location()
  %124 = load i32, i32* %call193, align 4
  %cmp194 = icmp ne i32 %124, 4
  br i1 %cmp194, label %land.lhs.true196, label %if.end204

land.lhs.true196:                                 ; preds = %land.lhs.true192
  %call197 = call i32* @__errno_location()
  %125 = load i32, i32* %call197, align 4
  %cmp198 = icmp ne i32 %125, 20
  br i1 %cmp198, label %land.lhs.true200, label %if.end204

land.lhs.true200:                                 ; preds = %land.lhs.true196
  %126 = load i32, i32* @errflag, align 4
  %tobool201 = icmp ne i32 %126, 0
  br i1 %tobool201, label %if.end204, label %if.then202

if.then202:                                       ; preds = %land.lhs.true200
  %call203 = call i32* @__errno_location()
  %127 = load i32, i32* %call203, align 4
  %128 = load i8*, i8** %fn, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %127, i8* %128)
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %land.lhs.true200, %land.lhs.true196, %land.lhs.true192, %if.then188
  br label %while.cond

if.end205:                                        ; preds = %if.then182
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 6
  %129 = load i32, i32* %st_mode, align 8
  %and206 = and i32 %129, 61440
  %cmp207 = icmp eq i32 %and206, 16384
  br i1 %cmp207, label %if.end210, label %if.then209

if.then209:                                       ; preds = %if.end205
  br label %while.cond

if.end210:                                        ; preds = %if.end205
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.end180
  %130 = load i8*, i8** %fn, align 4
  %call212 = call i32 @strlen(i8* %130)
  %add213 = add i32 %call212, 1
  store i32 %add213, i32* %l165, align 4
  %131 = load i8*, i8** %subdirs, align 4
  %132 = load i32, i32* %subdirlen, align 4
  %133 = load i32, i32* %subdirlen, align 4
  %134 = load i32, i32* %l165, align 4
  %add214 = add nsw i32 %133, %134
  %add215 = add i32 %add214, 4
  %call216 = call i8* @hrealloc(i8* %131, i32 %132, i32 %add215)
  store i8* %call216, i8** %subdirs, align 4
  %135 = load i8*, i8** %subdirs, align 4
  %136 = load i32, i32* %subdirlen, align 4
  %add.ptr217 = getelementptr inbounds i8, i8* %135, i32 %136
  %137 = load i8*, i8** %fn, align 4
  %call218 = call i8* @strcpy(i8* %add.ptr217, i8* %137)
  %138 = load i32, i32* %l165, align 4
  %139 = load i32, i32* %subdirlen, align 4
  %add219 = add nsw i32 %139, %138
  store i32 %add219, i32* %subdirlen, align 4
  %140 = load i8*, i8** %subdirs, align 4
  %141 = load i32, i32* %subdirlen, align 4
  %add.ptr220 = getelementptr inbounds i8, i8* %140, i32 %141
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr220, i8* bitcast (i32* @errsfound to i8*), i32 4, i32 1, i1 false)
  %142 = load i32, i32* %subdirlen, align 4
  %add221 = add i32 %142, 4
  store i32 %add221, i32* %subdirlen, align 4
  br label %if.end230

if.else222:                                       ; preds = %if.end162
  %143 = load i8*, i8** %fn, align 4
  call void @insert(i8* %143, i32 1)
  %144 = load i32, i32* %shortcircuit.addr, align 4
  %tobool223 = icmp ne i32 %144, 0
  br i1 %tobool223, label %land.lhs.true224, label %if.end229

land.lhs.true224:                                 ; preds = %if.else222
  %145 = load i32, i32* %shortcircuit.addr, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp225 = icmp eq i32 %145, %146
  br i1 %cmp225, label %if.then227, label %if.end229

if.then227:                                       ; preds = %land.lhs.true224
  %147 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %call228 = call i32 @closedir(%struct.__dirstream* %147)
  br label %return

if.end229:                                        ; preds = %land.lhs.true224, %if.else222
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end211
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end138
  br label %while.cond

while.end232:                                     ; preds = %if.then160, %if.then157, %land.end
  %148 = load %struct.__dirstream*, %struct.__dirstream** %lock, align 4
  %call233 = call i32 @closedir(%struct.__dirstream* %148)
  %149 = load i8*, i8** %subdirs, align 4
  %tobool234 = icmp ne i8* %149, null
  br i1 %tobool234, label %if.then235, label %if.end260

if.then235:                                       ; preds = %while.end232
  %150 = load i32, i32* @pathpos, align 4
  store i32 %150, i32* %oppos236, align 4
  %151 = load i8*, i8** %subdirs, align 4
  store i8* %151, i8** %fn, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end257, %if.then235
  %152 = load i8*, i8** %fn, align 4
  %153 = load i8*, i8** %subdirs, align 4
  %154 = load i32, i32* %subdirlen, align 4
  %add.ptr237 = getelementptr inbounds i8, i8* %153, i32 %154
  %cmp238 = icmp ult i8* %152, %add.ptr237
  br i1 %cmp238, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %155 = load i8*, i8** %fn, align 4
  %call241 = call i32 @strlen(i8* %155)
  store i32 %call241, i32* %l240, align 4
  %156 = load i8*, i8** %fn, align 4
  %157 = load i32, i32* %l240, align 4
  call void @addpath(i8* %156, i32 %157)
  %158 = load i32, i32* %l240, align 4
  %add242 = add nsw i32 %158, 1
  %159 = load i8*, i8** %fn, align 4
  %add.ptr243 = getelementptr inbounds i8, i8* %159, i32 %add242
  store i8* %add.ptr243, i8** %fn, align 4
  %160 = load i8*, i8** %fn, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* @errsfound to i8*), i8* %160, i32 4, i32 1, i1 false)
  %161 = load i8*, i8** %fn, align 4
  %add.ptr244 = getelementptr inbounds i8, i8* %161, i32 4
  store i8* %add.ptr244, i8** %fn, align 4
  %162 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %closure245 = getelementptr inbounds %struct.complist, %struct.complist* %162, i32 0, i32 2
  %163 = load i32, i32* %closure245, align 4
  %tobool246 = icmp ne i32 %163, 0
  br i1 %tobool246, label %cond.true247, label %cond.false248

cond.true247:                                     ; preds = %for.body
  %164 = load %struct.complist*, %struct.complist** %q.addr, align 4
  br label %cond.end250

cond.false248:                                    ; preds = %for.body
  %165 = load %struct.complist*, %struct.complist** %q.addr, align 4
  %next249 = getelementptr inbounds %struct.complist, %struct.complist* %165, i32 0, i32 0
  %166 = load %struct.complist*, %struct.complist** %next249, align 4
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false248, %cond.true247
  %cond251 = phi %struct.complist* [ %164, %cond.true247 ], [ %166, %cond.false248 ]
  %167 = load i32, i32* %shortcircuit.addr, align 4
  call void @scanner(%struct.complist* %cond251, i32 %167)
  %168 = load i32, i32* %shortcircuit.addr, align 4
  %tobool252 = icmp ne i32 %168, 0
  br i1 %tobool252, label %land.lhs.true253, label %if.end257

land.lhs.true253:                                 ; preds = %cond.end250
  %169 = load i32, i32* %shortcircuit.addr, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %cmp254 = icmp eq i32 %169, %170
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %land.lhs.true253
  br label %return

if.end257:                                        ; preds = %land.lhs.true253, %cond.end250
  %171 = load i8*, i8** @pathbuf, align 4
  %172 = load i32, i32* %oppos236, align 4
  store i32 %172, i32* @pathpos, align 4
  %arrayidx258 = getelementptr inbounds i8, i8* %171, i32 %172
  store i8 0, i8* %arrayidx258, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %173 = load i8*, i8** %subdirs, align 4
  %174 = load i32, i32* %subdirlen, align 4
  %call259 = call i8* @hrealloc(i8* %173, i32 %174, i32 0)
  br label %if.end260

if.end260:                                        ; preds = %for.end, %while.end232
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.end97
  %175 = load i32, i32* %pbcwdsav, align 4
  %176 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %cmp262 = icmp slt i32 %175, %176
  br i1 %cmp262, label %if.then264, label %if.end275

if.then264:                                       ; preds = %if.end261
  %call265 = call i32 @restoredir(%struct.dirsav* %ds)
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.then264
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %if.then264
  %dirname = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 2
  %177 = load i8*, i8** %dirname, align 4
  call void @zsfree(i8* %177)
  %dirfd = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  %178 = load i32, i32* %dirfd, align 4
  %cmp269 = icmp sge i32 %178, 0
  br i1 %cmp269, label %if.then271, label %if.end274

if.then271:                                       ; preds = %if.end268
  %dirfd272 = getelementptr inbounds %struct.dirsav, %struct.dirsav* %ds, i32 0, i32 0
  %179 = load i32, i32* %dirfd272, align 4
  %call273 = call i32 @close(i32 %179)
  br label %if.end274

if.end274:                                        ; preds = %if.then271, %if.end268
  %180 = load i32, i32* %pbcwdsav, align 4
  store i32 %180, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.end261
  br label %return

return:                                           ; preds = %if.end275, %if.then256, %if.then227, %if.then117, %if.then95, %if.then80, %if.then29, %if.then26, %if.then21, %if.then10, %if.then
  ret void
}

declare i8* @zhalloc(i32) #1

declare %struct.eprog* @parse_string(i8*, i32) #1

declare %struct.param* @setsparam(i8*, i8*) #1

declare i8* @ztrdup(i8*) #1

declare void @execode(%struct.eprog*, i32, i32, i8*) #1

declare i8* @getsparam(i8*) #1

declare i8* @strchr(i8*, i32) #1

declare i8* @unmetafy(i8*, i32*) #1

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind
define internal i32 @gmatchcmp(%struct.gmatch* %a, %struct.gmatch* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.gmatch*, align 4
  %b.addr = alloca %struct.gmatch*, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca %struct.globsort*, align 4
  %asortstrp = alloca i8**, align 4
  %bsortstrp = alloca i8**, align 4
  %aptr = alloca i8*, align 4
  %bptr = alloca i8*, align 4
  %slasha = alloca i32, align 4
  %slashb = alloca i32, align 4
  store %struct.gmatch* %a, %struct.gmatch** %a.addr, align 4
  store %struct.gmatch* %b, %struct.gmatch** %b.addr, align 4
  store i32 0, i32* %r, align 4
  store i8** null, i8*** %asortstrp, align 4
  store i8** null, i8*** %bsortstrp, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 22), align 4
  store i32 %0, i32* %i, align 4
  store %struct.globsort* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %struct.globsort** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc132, %entry
  %1 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end134

for.body:                                         ; preds = %for.cond
  %2 = load %struct.globsort*, %struct.globsort** %s, align 4
  %tp = getelementptr inbounds %struct.globsort, %struct.globsort* %2, i32 0, i32 0
  %3 = load i32, i32* %tp, align 4
  %and = and i32 %3, -8193
  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb49
    i32 8, label %sw.bb59
    i32 16, label %sw.bb62
    i32 32, label %sw.bb70
    i32 64, label %sw.bb78
    i32 128, label %sw.bb86
    i32 256, label %sw.bb89
    i32 512, label %sw.bb92
    i32 1024, label %sw.bb100
    i32 2048, label %sw.bb108
    i32 4096, label %sw.bb116
  ]

sw.bb:                                            ; preds = %for.body
  %4 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %uname = getelementptr inbounds %struct.gmatch, %struct.gmatch* %4, i32 0, i32 1
  %5 = load i8*, i8** %uname, align 4
  %6 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %uname1 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %6, i32 0, i32 1
  %7 = load i8*, i8** %uname1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 19), align 4
  %tobool2 = icmp ne i32 %8, 0
  %cond = select i1 %tobool2, i32 2, i32 0
  %call = call i32 @zstrcmp(i8* %5, i8* %7, i32 %cond)
  store i32 %call, i32* %r, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %9 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %name = getelementptr inbounds %struct.gmatch, %struct.gmatch* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 4
  store i8* %10, i8** %aptr, align 4
  %11 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %name4 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %11, i32 0, i32 0
  %12 = load i8*, i8** %name4, align 4
  store i8* %12, i8** %bptr, align 4
  store i32 0, i32* %slasha, align 4
  store i32 0, i32* %slashb, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb3
  %13 = load i8*, i8** %aptr, align 4
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i8*, i8** %aptr, align 4
  %16 = load i8, i8* %15, align 1
  %conv6 = sext i8 %16 to i32
  %17 = load i8*, i8** %bptr, align 4
  %18 = load i8, i8* %17, align 1
  %conv7 = sext i8 %18 to i32
  %cmp = icmp eq i32 %conv6, %conv7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i8*, i8** %aptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %aptr, align 4
  %21 = load i8*, i8** %bptr, align 4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr9, i8** %bptr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i8*, i8** %aptr, align 4
  %23 = load i8, i8* %22, align 1
  %tobool10 = icmp ne i8 %23, 0
  br i1 %tobool10, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %while.end
  %24 = load i8*, i8** %bptr, align 4
  %25 = load i8, i8* %24, align 1
  %tobool11 = icmp ne i8 %25, 0
  br i1 %tobool11, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.end
  %26 = load i8*, i8** %aptr, align 4
  %27 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %name12 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %27, i32 0, i32 0
  %28 = load i8*, i8** %name12, align 4
  %cmp13 = icmp ugt i8* %26, %28
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %29 = load i8*, i8** %aptr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %29, i32 -1
  %30 = load i8, i8* %arrayidx, align 1
  %conv16 = sext i8 %30 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true15
  %31 = load i8*, i8** %aptr, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr19, i8** %aptr, align 4
  %32 = load i8*, i8** %bptr, align 4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr20, i8** %bptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true15, %land.lhs.true, %lor.lhs.false
  %33 = load i8*, i8** %aptr, align 4
  %34 = load i8, i8* %33, align 1
  %tobool21 = icmp ne i8 %34, 0
  br i1 %tobool21, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.end
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %if.then22
  %35 = load i8*, i8** %aptr, align 4
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i32 1
  %36 = load i8, i8* %arrayidx24, align 1
  %tobool25 = icmp ne i8 %36, 0
  br i1 %tobool25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %37 = load i8*, i8** %aptr, align 4
  %38 = load i8, i8* %37, align 1
  %conv27 = sext i8 %38 to i32
  %cmp28 = icmp eq i32 %conv27, 47
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.body26
  store i32 1, i32* %slasha, align 4
  br label %for.end

if.end31:                                         ; preds = %for.body26
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %39 = load i8*, i8** %aptr, align 4
  %incdec.ptr32 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr32, i8** %aptr, align 4
  br label %for.cond23

for.end:                                          ; preds = %if.then30, %for.cond23
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.end
  %40 = load i8*, i8** %bptr, align 4
  %41 = load i8, i8* %40, align 1
  %tobool34 = icmp ne i8 %41, 0
  br i1 %tobool34, label %if.then35, label %if.end48

if.then35:                                        ; preds = %if.end33
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc45, %if.then35
  %42 = load i8*, i8** %bptr, align 4
  %arrayidx37 = getelementptr inbounds i8, i8* %42, i32 1
  %43 = load i8, i8* %arrayidx37, align 1
  %tobool38 = icmp ne i8 %43, 0
  br i1 %tobool38, label %for.body39, label %for.end47

for.body39:                                       ; preds = %for.cond36
  %44 = load i8*, i8** %bptr, align 4
  %45 = load i8, i8* %44, align 1
  %conv40 = sext i8 %45 to i32
  %cmp41 = icmp eq i32 %conv40, 47
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body39
  store i32 1, i32* %slashb, align 4
  br label %for.end47

if.end44:                                         ; preds = %for.body39
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %46 = load i8*, i8** %bptr, align 4
  %incdec.ptr46 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr46, i8** %bptr, align 4
  br label %for.cond36

for.end47:                                        ; preds = %if.then43, %for.cond36
  br label %if.end48

if.end48:                                         ; preds = %for.end47, %if.end33
  %47 = load i32, i32* %slasha, align 4
  %48 = load i32, i32* %slashb, align 4
  %sub = sub nsw i32 %47, %48
  store i32 %sub, i32* %r, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.body
  %49 = load i8**, i8*** %asortstrp, align 4
  %tobool50 = icmp ne i8** %49, null
  br i1 %tobool50, label %if.else, label %if.then51

if.then51:                                        ; preds = %sw.bb49
  %50 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %sortstrs = getelementptr inbounds %struct.gmatch, %struct.gmatch* %50, i32 0, i32 2
  %51 = load i8**, i8*** %sortstrs, align 4
  store i8** %51, i8*** %asortstrp, align 4
  %52 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %sortstrs52 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %52, i32 0, i32 2
  %53 = load i8**, i8*** %sortstrs52, align 4
  store i8** %53, i8*** %bsortstrp, align 4
  br label %if.end55

if.else:                                          ; preds = %sw.bb49
  %54 = load i8**, i8*** %asortstrp, align 4
  %incdec.ptr53 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %incdec.ptr53, i8*** %asortstrp, align 4
  %55 = load i8**, i8*** %bsortstrp, align 4
  %incdec.ptr54 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %incdec.ptr54, i8*** %bsortstrp, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then51
  %56 = load i8**, i8*** %bsortstrp, align 4
  %57 = load i8*, i8** %56, align 4
  %58 = load i8**, i8*** %asortstrp, align 4
  %59 = load i8*, i8** %58, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 19), align 4
  %tobool56 = icmp ne i32 %60, 0
  %cond57 = select i1 %tobool56, i32 2, i32 0
  %call58 = call i32 @zstrcmp(i8* %57, i8* %59, i32 %cond57)
  store i32 %call58, i32* %r, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.body
  %61 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %size = getelementptr inbounds %struct.gmatch, %struct.gmatch* %61, i32 0, i32 3
  %62 = load i32, i32* %size, align 4
  %63 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %size60 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %63, i32 0, i32 3
  %64 = load i32, i32* %size60, align 4
  %sub61 = sub nsw i32 %62, %64
  store i32 %sub61, i32* %r, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %for.body
  %65 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %atime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %65, i32 0, i32 4
  %66 = load i32, i32* %atime, align 4
  %67 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %atime63 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %67, i32 0, i32 4
  %68 = load i32, i32* %atime63, align 4
  %sub64 = sub nsw i32 %66, %68
  store i32 %sub64, i32* %r, align 4
  %69 = load i32, i32* %r, align 4
  %tobool65 = icmp ne i32 %69, 0
  br i1 %tobool65, label %if.end69, label %if.then66

if.then66:                                        ; preds = %sw.bb62
  %70 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %ansec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %70, i32 0, i32 13
  %71 = load i32, i32* %ansec, align 4
  %72 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %ansec67 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %72, i32 0, i32 13
  %73 = load i32, i32* %ansec67, align 4
  %sub68 = sub nsw i32 %71, %73
  store i32 %sub68, i32* %r, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %sw.bb62
  br label %sw.epilog

sw.bb70:                                          ; preds = %for.body
  %74 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %mtime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %74, i32 0, i32 5
  %75 = load i32, i32* %mtime, align 4
  %76 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %mtime71 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %76, i32 0, i32 5
  %77 = load i32, i32* %mtime71, align 4
  %sub72 = sub nsw i32 %75, %77
  store i32 %sub72, i32* %r, align 4
  %78 = load i32, i32* %r, align 4
  %tobool73 = icmp ne i32 %78, 0
  br i1 %tobool73, label %if.end77, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  %79 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %mnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %79, i32 0, i32 15
  %80 = load i32, i32* %mnsec, align 4
  %81 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %mnsec75 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %81, i32 0, i32 15
  %82 = load i32, i32* %mnsec75, align 4
  %sub76 = sub nsw i32 %80, %82
  store i32 %sub76, i32* %r, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %sw.bb70
  br label %sw.epilog

sw.bb78:                                          ; preds = %for.body
  %83 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %ctime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %83, i32 0, i32 6
  %84 = load i32, i32* %ctime, align 4
  %85 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %ctime79 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %85, i32 0, i32 6
  %86 = load i32, i32* %ctime79, align 4
  %sub80 = sub nsw i32 %84, %86
  store i32 %sub80, i32* %r, align 4
  %87 = load i32, i32* %r, align 4
  %tobool81 = icmp ne i32 %87, 0
  br i1 %tobool81, label %if.end85, label %if.then82

if.then82:                                        ; preds = %sw.bb78
  %88 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %cnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %88, i32 0, i32 17
  %89 = load i32, i32* %cnsec, align 4
  %90 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %cnsec83 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %90, i32 0, i32 17
  %91 = load i32, i32* %cnsec83, align 4
  %sub84 = sub nsw i32 %89, %91
  store i32 %sub84, i32* %r, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %sw.bb78
  br label %sw.epilog

sw.bb86:                                          ; preds = %for.body
  %92 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %links = getelementptr inbounds %struct.gmatch, %struct.gmatch* %92, i32 0, i32 7
  %93 = load i32, i32* %links, align 4
  %94 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %links87 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %94, i32 0, i32 7
  %95 = load i32, i32* %links87, align 4
  %sub88 = sub nsw i32 %93, %95
  store i32 %sub88, i32* %r, align 4
  br label %sw.epilog

sw.bb89:                                          ; preds = %for.body
  %96 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_size = getelementptr inbounds %struct.gmatch, %struct.gmatch* %96, i32 0, i32 8
  %97 = load i32, i32* %_size, align 4
  %98 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_size90 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %98, i32 0, i32 8
  %99 = load i32, i32* %_size90, align 4
  %sub91 = sub nsw i32 %97, %99
  store i32 %sub91, i32* %r, align 4
  br label %sw.epilog

sw.bb92:                                          ; preds = %for.body
  %100 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_atime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %100, i32 0, i32 9
  %101 = load i32, i32* %_atime, align 4
  %102 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_atime93 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %102, i32 0, i32 9
  %103 = load i32, i32* %_atime93, align 4
  %sub94 = sub nsw i32 %101, %103
  store i32 %sub94, i32* %r, align 4
  %104 = load i32, i32* %r, align 4
  %tobool95 = icmp ne i32 %104, 0
  br i1 %tobool95, label %if.end99, label %if.then96

if.then96:                                        ; preds = %sw.bb92
  %105 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_ansec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %105, i32 0, i32 14
  %106 = load i32, i32* %_ansec, align 4
  %107 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_ansec97 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %107, i32 0, i32 14
  %108 = load i32, i32* %_ansec97, align 4
  %sub98 = sub nsw i32 %106, %108
  store i32 %sub98, i32* %r, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %sw.bb92
  br label %sw.epilog

sw.bb100:                                         ; preds = %for.body
  %109 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_mtime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %109, i32 0, i32 10
  %110 = load i32, i32* %_mtime, align 4
  %111 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_mtime101 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %111, i32 0, i32 10
  %112 = load i32, i32* %_mtime101, align 4
  %sub102 = sub nsw i32 %110, %112
  store i32 %sub102, i32* %r, align 4
  %113 = load i32, i32* %r, align 4
  %tobool103 = icmp ne i32 %113, 0
  br i1 %tobool103, label %if.end107, label %if.then104

if.then104:                                       ; preds = %sw.bb100
  %114 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_mnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %114, i32 0, i32 16
  %115 = load i32, i32* %_mnsec, align 4
  %116 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_mnsec105 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %116, i32 0, i32 16
  %117 = load i32, i32* %_mnsec105, align 4
  %sub106 = sub nsw i32 %115, %117
  store i32 %sub106, i32* %r, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %sw.bb100
  br label %sw.epilog

sw.bb108:                                         ; preds = %for.body
  %118 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_ctime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %118, i32 0, i32 11
  %119 = load i32, i32* %_ctime, align 4
  %120 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_ctime109 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %120, i32 0, i32 11
  %121 = load i32, i32* %_ctime109, align 4
  %sub110 = sub nsw i32 %119, %121
  store i32 %sub110, i32* %r, align 4
  %122 = load i32, i32* %r, align 4
  %tobool111 = icmp ne i32 %122, 0
  br i1 %tobool111, label %if.end115, label %if.then112

if.then112:                                       ; preds = %sw.bb108
  %123 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_cnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %123, i32 0, i32 18
  %124 = load i32, i32* %_cnsec, align 4
  %125 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_cnsec113 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %125, i32 0, i32 18
  %126 = load i32, i32* %_cnsec113, align 4
  %sub114 = sub nsw i32 %124, %126
  store i32 %sub114, i32* %r, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %sw.bb108
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body
  %127 = load %struct.gmatch*, %struct.gmatch** %b.addr, align 4
  %_links = getelementptr inbounds %struct.gmatch, %struct.gmatch* %127, i32 0, i32 12
  %128 = load i32, i32* %_links, align 4
  %129 = load %struct.gmatch*, %struct.gmatch** %a.addr, align 4
  %_links117 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %129, i32 0, i32 12
  %130 = load i32, i32* %_links117, align 4
  %sub118 = sub nsw i32 %128, %130
  store i32 %sub118, i32* %r, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb116, %if.end115, %if.end107, %if.end99, %sw.bb89, %sw.bb86, %if.end85, %if.end77, %if.end69, %sw.bb59, %if.end55, %if.end48, %sw.bb
  %131 = load i32, i32* %r, align 4
  %tobool119 = icmp ne i32 %131, 0
  br i1 %tobool119, label %if.then120, label %if.end131

if.then120:                                       ; preds = %sw.epilog
  %132 = load %struct.globsort*, %struct.globsort** %s, align 4
  %tp121 = getelementptr inbounds %struct.globsort, %struct.globsort* %132, i32 0, i32 0
  %133 = load i32, i32* %tp121, align 4
  %and122 = and i32 %133, 8192
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then120
  %134 = load i32, i32* %r, align 4
  %cmp124 = icmp slt i32 %134, 0
  %cond126 = select i1 %cmp124, i32 1, i32 -1
  br label %cond.end

cond.false:                                       ; preds = %if.then120
  %135 = load i32, i32* %r, align 4
  %cmp127 = icmp sgt i32 %135, 0
  %cond129 = select i1 %cmp127, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond130 = phi i32 [ %cond126, %cond.true ], [ %cond129, %cond.false ]
  store i32 %cond130, i32* %retval, align 4
  br label %return

if.end131:                                        ; preds = %sw.epilog
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %136 = load i32, i32* %i, align 4
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %i, align 4
  %137 = load %struct.globsort*, %struct.globsort** %s, align 4
  %incdec.ptr133 = getelementptr inbounds %struct.globsort, %struct.globsort* %137, i32 1
  store %struct.globsort* %incdec.ptr133, %struct.globsort** %s, align 4
  br label %for.cond

for.end134:                                       ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end134, %cond.end
  %138 = load i32, i32* %retval, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind
define internal void @insert_glob_match(%union.linkroot* %list, %struct.linknode* %next, i8* %data) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %next.addr = alloca %struct.linknode*, align 4
  %data.addr = alloca i8*, align 4
  %added = alloca %struct.linknode*, align 4
  %added8 = alloca %struct.linknode*, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode* %next, %struct.linknode** %next.addr, align 4
  store i8* %data, i8** %data.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 24), align 4
  %tobool = icmp ne %union.linkroot* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.linkroot*, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 24), align 4
  %list1 = bitcast %union.linkroot* %1 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 0
  %2 = load %struct.linknode*, %struct.linknode** %first, align 4
  store %struct.linknode* %2, %struct.linknode** %added, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.linknode*, %struct.linknode** %added, align 4
  %tobool2 = icmp ne %struct.linknode* %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %5 = load %struct.linknode*, %struct.linknode** %next.addr, align 4
  %6 = load %struct.linknode*, %struct.linknode** %added, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %6, i32 0, i32 2
  %7 = load i8*, i8** %dat, align 4
  %call = call i8* @dupstring(i8* %7)
  %call3 = call %struct.linknode* @insertlinknode(%union.linkroot* %4, %struct.linknode* %5, i8* %call)
  store %struct.linknode* %call3, %struct.linknode** %next.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.linknode*, %struct.linknode** %added, align 4
  %next4 = getelementptr inbounds %struct.linknode, %struct.linknode* %8, i32 0, i32 0
  %9 = load %struct.linknode*, %struct.linknode** %next4, align 4
  store %struct.linknode* %9, %struct.linknode** %added, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %10 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %11 = load %struct.linknode*, %struct.linknode** %next.addr, align 4
  %12 = load i8*, i8** %data.addr, align 4
  %call5 = call %struct.linknode* @insertlinknode(%union.linkroot* %10, %struct.linknode* %11, i8* %12)
  store %struct.linknode* %call5, %struct.linknode** %next.addr, align 4
  %13 = load %union.linkroot*, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 25), align 4
  %tobool6 = icmp ne %union.linkroot* %13, null
  br i1 %tobool6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  %14 = load %union.linkroot*, %union.linkroot** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 25), align 4
  %list9 = bitcast %union.linkroot* %14 to %struct.linklist*
  %first10 = getelementptr inbounds %struct.linklist, %struct.linklist* %list9, i32 0, i32 0
  %15 = load %struct.linknode*, %struct.linknode** %first10, align 4
  store %struct.linknode* %15, %struct.linknode** %added8, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %if.then7
  %16 = load %struct.linknode*, %struct.linknode** %added8, align 4
  %tobool12 = icmp ne %struct.linknode* %16, null
  br i1 %tobool12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond11
  %17 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %18 = load %struct.linknode*, %struct.linknode** %next.addr, align 4
  %19 = load %struct.linknode*, %struct.linknode** %added8, align 4
  %dat14 = getelementptr inbounds %struct.linknode, %struct.linknode* %19, i32 0, i32 2
  %20 = load i8*, i8** %dat14, align 4
  %call15 = call i8* @dupstring(i8* %20)
  %call16 = call %struct.linknode* @insertlinknode(%union.linkroot* %17, %struct.linknode* %18, i8* %call15)
  store %struct.linknode* %call16, %struct.linknode** %next.addr, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %21 = load %struct.linknode*, %struct.linknode** %added8, align 4
  %next18 = getelementptr inbounds %struct.linknode, %struct.linknode* %21, i32 0, i32 0
  %22 = load %struct.linknode*, %struct.linknode** %next18, align 4
  store %struct.linknode* %22, %struct.linknode** %added8, align 4
  br label %for.cond11

for.end19:                                        ; preds = %for.cond11
  br label %if.end20

if.end20:                                         ; preds = %for.end19, %if.end
  ret void
}

; Function Attrs: noinline nounwind
define signext i8 @file_type(i32 %filemode) #0 {
entry:
  %retval = alloca i8, align 1
  %filemode.addr = alloca i32, align 4
  store i32 %filemode, i32* %filemode.addr, align 4
  %0 = load i32, i32* %filemode.addr, align 4
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 24576
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 35, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %filemode.addr, align 4
  %and1 = and i32 %1, 61440
  %cmp2 = icmp eq i32 %and1, 8192
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i8 37, i8* %retval, align 1
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i32, i32* %filemode.addr, align 4
  %and5 = and i32 %2, 61440
  %cmp6 = icmp eq i32 %and5, 16384
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store i8 47, i8* %retval, align 1
  br label %return

if.else8:                                         ; preds = %if.else4
  %3 = load i32, i32* %filemode.addr, align 4
  %and9 = and i32 %3, 61440
  %cmp10 = icmp eq i32 %and9, 4096
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  store i8 124, i8* %retval, align 1
  br label %return

if.else12:                                        ; preds = %if.else8
  %4 = load i32, i32* %filemode.addr, align 4
  %and13 = and i32 %4, 61440
  %cmp14 = icmp eq i32 %and13, 40960
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else12
  store i8 64, i8* %retval, align 1
  br label %return

if.else16:                                        ; preds = %if.else12
  %5 = load i32, i32* %filemode.addr, align 4
  %and17 = and i32 %5, 61440
  %cmp18 = icmp eq i32 %and17, 32768
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else16
  %6 = load i32, i32* %filemode.addr, align 4
  %and20 = and i32 %6, 73
  %tobool = icmp ne i32 %and20, 0
  %cond = select i1 %tobool, i32 42, i32 32
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %retval, align 1
  br label %return

if.else21:                                        ; preds = %if.else16
  %7 = load i32, i32* %filemode.addr, align 4
  %and22 = and i32 %7, 61440
  %cmp23 = icmp eq i32 %and22, 49152
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else21
  store i8 61, i8* %retval, align 1
  br label %return

if.else26:                                        ; preds = %if.else21
  store i8 63, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else26, %if.then25, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %8 = load i8, i8* %retval, align 1
  ret i8 %8
}

; Function Attrs: noinline nounwind
define i32 @hasbraces(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %lbr = alloca i8*, align 4
  %mbr = alloca i8*, align 4
  %comma = alloca i8*, align 4
  %bc = alloca i32, align 4
  %c = alloca i32, align 4
  %s = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 24), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  store i32 0, i32* %bc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i8*, i8** %str.addr, align 4
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, -113
  br i1 %cmp, label %if.then3, label %if.else9

if.then3:                                         ; preds = %for.body
  %4 = load i32, i32* %bc, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %5 = load i8*, i8** %str.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, -112
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i8*, i8** %str.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4
  store i8 123, i8* %7, align 1
  %8 = load i8*, i8** %str.addr, align 4
  store i8 125, i8* %8, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %9 = load i32, i32* %bc, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %bc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end21

if.else9:                                         ; preds = %for.body
  %10 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %10, -112
  br i1 %cmp10, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.else9
  %11 = load i32, i32* %bc, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.then12
  %12 = load i8*, i8** %str.addr, align 4
  store i8 125, i8* %12, align 1
  br label %if.end19

if.else15:                                        ; preds = %if.then12
  %13 = load i32, i32* %bc, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %bc, align 4
  %tobool16 = icmp ne i32 %dec, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else15
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.else15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.else9
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %14 = load i8*, i8** %str.addr, align 4
  %incdec.ptr22 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr22, i8** %str.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %entry
  store i8* null, i8** %comma, align 4
  store i8* null, i8** %mbr, align 4
  store i8* null, i8** %lbr, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %sw.epilog, %if.end23
  %15 = load i8*, i8** %str.addr, align 4
  %incdec.ptr25 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr25, i8** %str.addr, align 4
  %16 = load i8, i8* %15, align 1
  %conv26 = sext i8 %16 to i32
  switch i32 %conv26, label %sw.epilog [
    i32 -113, label %sw.bb
    i32 -112, label %sw.bb167
    i32 -102, label %sw.bb181
    i32 0, label %sw.bb191
  ]

sw.bb:                                            ; preds = %for.cond24
  %17 = load i8*, i8** %lbr, align 4
  %tobool27 = icmp ne i8* %17, null
  br i1 %tobool27, label %if.else147, label %if.then28

if.then28:                                        ; preds = %sw.bb
  %18 = load i8*, i8** %str.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  %call = call i32 @bracechardots(i8* %add.ptr, i32* null, i32* null)
  %tobool29 = icmp ne i32 %call, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then28
  store i32 1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then28
  %19 = load i8*, i8** %str.addr, align 4
  %add.ptr32 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %add.ptr32, i8** %lbr, align 4
  %20 = load i8*, i8** %str.addr, align 4
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 45
  br i1 %cmp34, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %22 = load i8*, i8** %str.addr, align 4
  %23 = load i8, i8* %22, align 1
  %conv36 = sext i8 %23 to i32
  %cmp37 = icmp eq i32 %conv36, -101
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %lor.lhs.false, %if.end31
  %24 = load i8*, i8** %str.addr, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr40, i8** %str.addr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end41
  %25 = load i8*, i8** %str.addr, align 4
  %26 = load i8, i8* %25, align 1
  %idxprom = zext i8 %26 to i32
  %arrayidx42 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %27 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %27 to i32
  %and = and i32 %conv43, 1
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i8*, i8** %str.addr, align 4
  %incdec.ptr45 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr45, i8** %str.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i8*, i8** %str.addr, align 4
  %30 = load i8, i8* %29, align 1
  %conv46 = sext i8 %30 to i32
  %cmp47 = icmp eq i32 %conv46, 46
  br i1 %cmp47, label %land.lhs.true49, label %if.end146

land.lhs.true49:                                  ; preds = %while.end
  %31 = load i8*, i8** %str.addr, align 4
  %arrayidx50 = getelementptr inbounds i8, i8* %31, i32 1
  %32 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %32 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.then54, label %if.end146

if.then54:                                        ; preds = %land.lhs.true49
  %33 = load i8*, i8** %str.addr, align 4
  %incdec.ptr55 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr55, i8** %str.addr, align 4
  %34 = load i8*, i8** %str.addr, align 4
  %incdec.ptr56 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr56, i8** %str.addr, align 4
  %35 = load i8*, i8** %str.addr, align 4
  %36 = load i8, i8* %35, align 1
  %conv57 = sext i8 %36 to i32
  %cmp58 = icmp eq i32 %conv57, 45
  br i1 %cmp58, label %if.then64, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.then54
  %37 = load i8*, i8** %str.addr, align 4
  %38 = load i8, i8* %37, align 1
  %conv61 = sext i8 %38 to i32
  %cmp62 = icmp eq i32 %conv61, -101
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %lor.lhs.false60, %if.then54
  %39 = load i8*, i8** %str.addr, align 4
  %incdec.ptr65 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr65, i8** %str.addr, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %lor.lhs.false60
  br label %while.cond67

while.cond67:                                     ; preds = %while.body73, %if.end66
  %40 = load i8*, i8** %str.addr, align 4
  %41 = load i8, i8* %40, align 1
  %idxprom68 = zext i8 %41 to i32
  %arrayidx69 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom68
  %42 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %42 to i32
  %and71 = and i32 %conv70, 1
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %while.body73, label %while.end75

while.body73:                                     ; preds = %while.cond67
  %43 = load i8*, i8** %str.addr, align 4
  %incdec.ptr74 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr74, i8** %str.addr, align 4
  br label %while.cond67

while.end75:                                      ; preds = %while.cond67
  %44 = load i8*, i8** %str.addr, align 4
  %45 = load i8, i8* %44, align 1
  %conv76 = sext i8 %45 to i32
  %cmp77 = icmp eq i32 %conv76, -112
  br i1 %cmp77, label %land.lhs.true79, label %if.else94

land.lhs.true79:                                  ; preds = %while.end75
  %46 = load i8*, i8** %lbr, align 4
  %arrayidx80 = getelementptr inbounds i8, i8* %46, i32 1
  %47 = load i8, i8* %arrayidx80, align 1
  %idxprom81 = zext i8 %47 to i32
  %arrayidx82 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom81
  %48 = load i16, i16* %arrayidx82, align 2
  %conv83 = sext i16 %48 to i32
  %and84 = and i32 %conv83, 1
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then93, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %land.lhs.true79
  %49 = load i8*, i8** %str.addr, align 4
  %arrayidx87 = getelementptr inbounds i8, i8* %49, i32 -1
  %50 = load i8, i8* %arrayidx87, align 1
  %idxprom88 = zext i8 %50 to i32
  %arrayidx89 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom88
  %51 = load i16, i16* %arrayidx89, align 2
  %conv90 = sext i16 %51 to i32
  %and91 = and i32 %conv90, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %lor.lhs.false86, %land.lhs.true79
  store i32 1, i32* %retval, align 4
  br label %return

if.else94:                                        ; preds = %lor.lhs.false86, %while.end75
  %52 = load i8*, i8** %str.addr, align 4
  %53 = load i8, i8* %52, align 1
  %conv95 = sext i8 %53 to i32
  %cmp96 = icmp eq i32 %conv95, 46
  br i1 %cmp96, label %land.lhs.true98, label %if.end144

land.lhs.true98:                                  ; preds = %if.else94
  %54 = load i8*, i8** %str.addr, align 4
  %arrayidx99 = getelementptr inbounds i8, i8* %54, i32 1
  %55 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %55 to i32
  %cmp101 = icmp eq i32 %conv100, 46
  br i1 %cmp101, label %if.then103, label %if.end144

if.then103:                                       ; preds = %land.lhs.true98
  %56 = load i8*, i8** %str.addr, align 4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr104, i8** %str.addr, align 4
  %57 = load i8*, i8** %str.addr, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr105, i8** %str.addr, align 4
  %58 = load i8*, i8** %str.addr, align 4
  %59 = load i8, i8* %58, align 1
  %conv106 = sext i8 %59 to i32
  %cmp107 = icmp eq i32 %conv106, 45
  br i1 %cmp107, label %if.then113, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.then103
  %60 = load i8*, i8** %str.addr, align 4
  %61 = load i8, i8* %60, align 1
  %conv110 = sext i8 %61 to i32
  %cmp111 = icmp eq i32 %conv110, -101
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %lor.lhs.false109, %if.then103
  %62 = load i8*, i8** %str.addr, align 4
  %incdec.ptr114 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr114, i8** %str.addr, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %lor.lhs.false109
  br label %while.cond116

while.cond116:                                    ; preds = %while.body122, %if.end115
  %63 = load i8*, i8** %str.addr, align 4
  %64 = load i8, i8* %63, align 1
  %idxprom117 = zext i8 %64 to i32
  %arrayidx118 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom117
  %65 = load i16, i16* %arrayidx118, align 2
  %conv119 = sext i16 %65 to i32
  %and120 = and i32 %conv119, 1
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %while.body122, label %while.end124

while.body122:                                    ; preds = %while.cond116
  %66 = load i8*, i8** %str.addr, align 4
  %incdec.ptr123 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr123, i8** %str.addr, align 4
  br label %while.cond116

while.end124:                                     ; preds = %while.cond116
  %67 = load i8*, i8** %str.addr, align 4
  %68 = load i8, i8* %67, align 1
  %conv125 = sext i8 %68 to i32
  %cmp126 = icmp eq i32 %conv125, -112
  br i1 %cmp126, label %land.lhs.true128, label %if.end143

land.lhs.true128:                                 ; preds = %while.end124
  %69 = load i8*, i8** %lbr, align 4
  %arrayidx129 = getelementptr inbounds i8, i8* %69, i32 1
  %70 = load i8, i8* %arrayidx129, align 1
  %idxprom130 = zext i8 %70 to i32
  %arrayidx131 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom130
  %71 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %71 to i32
  %and133 = and i32 %conv132, 1
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then142, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %land.lhs.true128
  %72 = load i8*, i8** %str.addr, align 4
  %arrayidx136 = getelementptr inbounds i8, i8* %72, i32 -1
  %73 = load i8, i8* %arrayidx136, align 1
  %idxprom137 = zext i8 %73 to i32
  %arrayidx138 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom137
  %74 = load i16, i16* %arrayidx138, align 2
  %conv139 = sext i16 %74 to i32
  %and140 = and i32 %conv139, 1
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then142, label %if.end143

if.then142:                                       ; preds = %lor.lhs.false135, %land.lhs.true128
  store i32 1, i32* %retval, align 4
  br label %return

if.end143:                                        ; preds = %lor.lhs.false135, %while.end124
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %land.lhs.true98, %if.else94
  br label %if.end145

if.end145:                                        ; preds = %if.end144
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %land.lhs.true49, %while.end
  br label %if.end166

if.else147:                                       ; preds = %sw.bb
  %75 = load i8*, i8** %str.addr, align 4
  %incdec.ptr148 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %incdec.ptr148, i8** %str.addr, align 4
  store i8* %incdec.ptr148, i8** %s, align 4
  %call149 = call i32 @skipparens(i8 signext -113, i8 signext -112, i8** %str.addr)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.else161

if.then151:                                       ; preds = %if.else147
  %76 = load i8*, i8** %s, align 4
  store i8 123, i8* %76, align 1
  %77 = load i8*, i8** %lbr, align 4
  store i8 123, i8* %77, align 1
  %78 = load i8*, i8** %comma, align 4
  %tobool152 = icmp ne i8* %78, null
  br i1 %tobool152, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then151
  %79 = load i8*, i8** %comma, align 4
  store i8* %79, i8** %str.addr, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.then151
  %80 = load i8*, i8** %mbr, align 4
  %tobool155 = icmp ne i8* %80, null
  br i1 %tobool155, label %land.lhs.true156, label %if.end160

land.lhs.true156:                                 ; preds = %if.end154
  %81 = load i8*, i8** %mbr, align 4
  %82 = load i8*, i8** %str.addr, align 4
  %cmp157 = icmp ult i8* %81, %82
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %land.lhs.true156
  %83 = load i8*, i8** %mbr, align 4
  store i8* %83, i8** %str.addr, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %land.lhs.true156, %if.end154
  store i8* null, i8** %comma, align 4
  store i8* null, i8** %mbr, align 4
  store i8* null, i8** %lbr, align 4
  br label %if.end165

if.else161:                                       ; preds = %if.else147
  %84 = load i8*, i8** %mbr, align 4
  %tobool162 = icmp ne i8* %84, null
  br i1 %tobool162, label %if.end164, label %if.then163

if.then163:                                       ; preds = %if.else161
  %85 = load i8*, i8** %s, align 4
  store i8* %85, i8** %mbr, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.else161
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end160
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end146
  br label %sw.epilog

sw.bb167:                                         ; preds = %for.cond24
  %86 = load i8*, i8** %lbr, align 4
  %tobool168 = icmp ne i8* %86, null
  br i1 %tobool168, label %if.else171, label %if.then169

if.then169:                                       ; preds = %sw.bb167
  %87 = load i8*, i8** %str.addr, align 4
  %arrayidx170 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8 125, i8* %arrayidx170, align 1
  br label %if.end180

if.else171:                                       ; preds = %sw.bb167
  %88 = load i8*, i8** %comma, align 4
  %tobool172 = icmp ne i8* %88, null
  br i1 %tobool172, label %if.then173, label %if.else174

if.then173:                                       ; preds = %if.else171
  store i32 1, i32* %retval, align 4
  br label %return

if.else174:                                       ; preds = %if.else171
  %89 = load i8*, i8** %lbr, align 4
  store i8 123, i8* %89, align 1
  %90 = load i8*, i8** %str.addr, align 4
  %arrayidx175 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8 125, i8* %arrayidx175, align 1
  %91 = load i8*, i8** %mbr, align 4
  %tobool176 = icmp ne i8* %91, null
  br i1 %tobool176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.else174
  %92 = load i8*, i8** %mbr, align 4
  store i8* %92, i8** %str.addr, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.else174
  store i8* null, i8** %lbr, align 4
  store i8* null, i8** %mbr, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.end178
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then169
  br label %sw.epilog

sw.bb181:                                         ; preds = %for.cond24
  %93 = load i8*, i8** %lbr, align 4
  %tobool182 = icmp ne i8* %93, null
  br i1 %tobool182, label %if.else185, label %if.then183

if.then183:                                       ; preds = %sw.bb181
  %94 = load i8*, i8** %str.addr, align 4
  %arrayidx184 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8 44, i8* %arrayidx184, align 1
  br label %if.end190

if.else185:                                       ; preds = %sw.bb181
  %95 = load i8*, i8** %comma, align 4
  %tobool186 = icmp ne i8* %95, null
  br i1 %tobool186, label %if.end189, label %if.then187

if.then187:                                       ; preds = %if.else185
  %96 = load i8*, i8** %str.addr, align 4
  %add.ptr188 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %add.ptr188, i8** %comma, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.else185
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then183
  br label %sw.epilog

sw.bb191:                                         ; preds = %for.cond24
  %97 = load i8*, i8** %lbr, align 4
  %tobool192 = icmp ne i8* %97, null
  br i1 %tobool192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %sw.bb191
  %98 = load i8*, i8** %lbr, align 4
  store i8 123, i8* %98, align 1
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %sw.bb191
  %99 = load i8*, i8** %mbr, align 4
  %tobool195 = icmp ne i8* %99, null
  br i1 %tobool195, label %if.end199, label %land.lhs.true196

land.lhs.true196:                                 ; preds = %if.end194
  %100 = load i8*, i8** %comma, align 4
  %tobool197 = icmp ne i8* %100, null
  br i1 %tobool197, label %if.end199, label %if.then198

if.then198:                                       ; preds = %land.lhs.true196
  store i32 0, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %land.lhs.true196, %if.end194
  %101 = load i8*, i8** %comma, align 4
  %tobool200 = icmp ne i8* %101, null
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end199
  %102 = load i8*, i8** %comma, align 4
  store i8* %102, i8** %str.addr, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end199
  %103 = load i8*, i8** %mbr, align 4
  %tobool203 = icmp ne i8* %103, null
  br i1 %tobool203, label %land.lhs.true204, label %if.end208

land.lhs.true204:                                 ; preds = %if.end202
  %104 = load i8*, i8** %mbr, align 4
  %105 = load i8*, i8** %str.addr, align 4
  %cmp205 = icmp ult i8* %104, %105
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %land.lhs.true204
  %106 = load i8*, i8** %mbr, align 4
  store i8* %106, i8** %str.addr, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %land.lhs.true204, %if.end202
  store i8* null, i8** %comma, align 4
  store i8* null, i8** %mbr, align 4
  store i8* null, i8** %lbr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond24, %if.end208, %if.end190, %if.end180, %if.end166
  br label %for.cond24

return:                                           ; preds = %if.then198, %if.then173, %if.then142, %if.then93, %if.then30, %for.end, %if.then17
  %107 = load i32, i32* %retval, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind
define internal i32 @bracechardots(i8* %str, i32* %c1p, i32* %c2p) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 4
  %c1p.addr = alloca i32*, align 4
  %c2p.addr = alloca i32*, align 4
  %cstart = alloca i32, align 4
  %cend = alloca i32, align 4
  %pnext = alloca i8*, align 4
  %pconv = alloca i8*, align 4
  %convstr = alloca [2 x i8], align 1
  store i8* %str, i8** %str.addr, align 4
  store i32* %c1p, i32** %c1p.addr, align 4
  store i32* %c2p, i32** %c2p.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %add.ptr, i8** %pnext, align 4
  %1 = load i8*, i8** %pnext, align 4
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %pnext, align 4
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, -113
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** %pnext, align 4
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv4, -124
  %arrayidx5 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub
  %8 = load i8, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 0
  store i8 %8, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 1
  store i8 0, i8* %arrayidx7, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 0
  store i8* %arraydecay, i8** %pconv, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %pnext, align 4
  store i8* %9, i8** %pconv, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  call void @mb_charinit()
  %10 = load i8*, i8** %pconv, align 4
  %call = call i32 @mb_metacharlenconv(i8* %10, i32* %cstart)
  %11 = load i8*, i8** %pnext, align 4
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i32 %call
  store i8* %add.ptr9, i8** %pnext, align 4
  %12 = load i32, i32* %cstart, align 4
  %cmp10 = icmp eq i32 %12, -1
  br i1 %cmp10, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %13 = load i8*, i8** %pnext, align 4
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i32 0
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp ne i32 %conv13, 46
  br i1 %cmp14, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = load i8*, i8** %pnext, align 4
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i32 1
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp ne i32 %conv18, 46
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false16
  %17 = load i8*, i8** %pnext, align 4
  %add.ptr23 = getelementptr inbounds i8, i8* %17, i32 2
  store i8* %add.ptr23, i8** %pnext, align 4
  %18 = load i8*, i8** %pnext, align 4
  %19 = load i8, i8* %18, align 1
  %tobool24 = icmp ne i8 %19, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  store i32 0, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %20 = load i8*, i8** %pnext, align 4
  %21 = load i8, i8* %20, align 1
  %idxprom27 = zext i8 %21 to i32
  %arrayidx28 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom27
  %22 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %22 to i32
  %and30 = and i32 %conv29, 16
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.else44

if.then32:                                        ; preds = %if.end26
  %23 = load i8*, i8** %pnext, align 4
  %24 = load i8, i8* %23, align 1
  %conv33 = sext i8 %24 to i32
  %cmp34 = icmp eq i32 %conv33, -113
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  store i32 0, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then32
  %25 = load i8*, i8** %pnext, align 4
  %26 = load i8, i8* %25, align 1
  %conv38 = sext i8 %26 to i32
  %sub39 = sub nsw i32 %conv38, -124
  %arrayidx40 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub39
  %27 = load i8, i8* %arrayidx40, align 1
  %arrayidx41 = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 0
  store i8 %27, i8* %arrayidx41, align 1
  %arrayidx42 = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 1
  store i8 0, i8* %arrayidx42, align 1
  %arraydecay43 = getelementptr inbounds [2 x i8], [2 x i8]* %convstr, i32 0, i32 0
  store i8* %arraydecay43, i8** %pconv, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.end26
  %28 = load i8*, i8** %pnext, align 4
  store i8* %28, i8** %pconv, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.end37
  call void @mb_charinit()
  %29 = load i8*, i8** %pconv, align 4
  %call46 = call i32 @mb_metacharlenconv(i8* %29, i32* %cend)
  %30 = load i8*, i8** %pnext, align 4
  %add.ptr47 = getelementptr inbounds i8, i8* %30, i32 %call46
  store i8* %add.ptr47, i8** %pnext, align 4
  %31 = load i32, i32* %cend, align 4
  %cmp48 = icmp eq i32 %31, -1
  br i1 %cmp48, label %if.then54, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end45
  %32 = load i8*, i8** %pnext, align 4
  %33 = load i8, i8* %32, align 1
  %conv51 = sext i8 %33 to i32
  %cmp52 = icmp ne i32 %conv51, -112
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false50, %if.end45
  store i32 0, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %lor.lhs.false50
  %34 = load i32*, i32** %c1p.addr, align 4
  %tobool56 = icmp ne i32* %34, null
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  %35 = load i32, i32* %cstart, align 4
  %36 = load i32*, i32** %c1p.addr, align 4
  store i32 %35, i32* %36, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55
  %37 = load i32*, i32** %c2p.addr, align 4
  %tobool59 = icmp ne i32* %37, null
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  %38 = load i32, i32* %cend, align 4
  %39 = load i32*, i32** %c2p.addr, align 4
  store i32 %38, i32* %39, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.then54, %if.then36, %if.then25, %if.then21, %if.then3
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare i32 @skipparens(i8 signext, i8 signext, i8**) #1

; Function Attrs: noinline nounwind
define i32 @xpandredir(%struct.redir* %fn, %union.linkroot* %redirtab) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca %struct.redir*, align 4
  %redirtab.addr = alloca %union.linkroot*, align 4
  %nam = alloca i8*, align 4
  %ff = alloca %struct.redir*, align 4
  %ret = alloca i32, align 4
  %fake = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %s = alloca i8*, align 4
  store %struct.redir* %fn, %struct.redir** %fn.addr, align 4
  store %union.linkroot* %redirtab, %union.linkroot** %redirtab.addr, align 4
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %list = bitcast %union.linkroot* %fake to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4
  %list1 = bitcast %union.linkroot* %fake to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list1, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4
  %list2 = bitcast %union.linkroot* %fake to %struct.linklist*
  %flags = getelementptr inbounds %struct.linklist, %struct.linklist* %list2, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4
  %node = bitcast %union.linkroot* %fake to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4
  %0 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %name = getelementptr inbounds %struct.redir, %struct.redir* %0, i32 0, i32 4
  %1 = load i8*, i8** %name, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %__n0, i32 0, i32 2
  store i8* %1, i8** %dat, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 120), align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 0, i32 4
  call void @prefork(%union.linkroot* %fake, i32 %cond, i32* null)
  %3 = load i32, i32* @errflag, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %4 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 120), align 1
  %conv4 = sext i8 %4 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @globlist(%union.linkroot* %fake, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %5 = load i32, i32* @errflag, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %list9 = bitcast %union.linkroot* %fake to %struct.linklist*
  %first10 = getelementptr inbounds %struct.linklist, %struct.linklist* %list9, i32 0, i32 0
  %6 = load %struct.linknode*, %struct.linknode** %first10, align 4
  %cmp = icmp ne %struct.linknode* %6, null
  br i1 %cmp, label %land.lhs.true12, label %if.else73

land.lhs.true12:                                  ; preds = %if.end8
  %list13 = bitcast %union.linkroot* %fake to %struct.linklist*
  %first14 = getelementptr inbounds %struct.linklist, %struct.linklist* %list13, i32 0, i32 0
  %7 = load %struct.linknode*, %struct.linknode** %first14, align 4
  %next15 = getelementptr inbounds %struct.linknode, %struct.linknode* %7, i32 0, i32 0
  %8 = load %struct.linknode*, %struct.linknode** %next15, align 4
  %tobool16 = icmp ne %struct.linknode* %8, null
  br i1 %tobool16, label %if.else73, label %if.then17

if.then17:                                        ; preds = %land.lhs.true12
  %list18 = bitcast %union.linkroot* %fake to %struct.linklist*
  %first19 = getelementptr inbounds %struct.linklist, %struct.linklist* %list18, i32 0, i32 0
  %9 = load %struct.linknode*, %struct.linknode** %first19, align 4
  %dat20 = getelementptr inbounds %struct.linknode, %struct.linknode* %9, i32 0, i32 2
  %10 = load i8*, i8** %dat20, align 4
  store i8* %10, i8** %s, align 4
  %11 = load i8*, i8** %s, align 4
  %12 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %name21 = getelementptr inbounds %struct.redir, %struct.redir* %12, i32 0, i32 4
  store i8* %11, i8** %name21, align 4
  %13 = load i8*, i8** %s, align 4
  call void @untokenize(i8* %13)
  %14 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type = getelementptr inbounds %struct.redir, %struct.redir* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  %cmp22 = icmp eq i32 %15, 13
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %16 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type24 = getelementptr inbounds %struct.redir, %struct.redir* %16, i32 0, i32 0
  %17 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %17, 14
  br i1 %cmp25, label %if.then27, label %if.end72

if.then27:                                        ; preds = %lor.lhs.false, %if.then17
  %18 = load i8*, i8** %s, align 4
  %arrayidx = getelementptr inbounds i8, i8* %18, i32 0
  %19 = load i8, i8* %arrayidx, align 1
  %conv28 = sext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %land.lhs.true36, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then27
  %20 = load i8*, i8** %s, align 4
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i32 0
  %21 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, -101
  br i1 %cmp34, label %land.lhs.true36, label %if.else

land.lhs.true36:                                  ; preds = %lor.lhs.false31, %if.then27
  %22 = load i8*, i8** %s, align 4
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i32 1
  %23 = load i8, i8* %arrayidx37, align 1
  %tobool38 = icmp ne i8 %23, 0
  br i1 %tobool38, label %if.else, label %if.then39

if.then39:                                        ; preds = %land.lhs.true36
  %24 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type40 = getelementptr inbounds %struct.redir, %struct.redir* %24, i32 0, i32 0
  store i32 15, i32* %type40, align 4
  br label %if.end71

if.else:                                          ; preds = %land.lhs.true36, %lor.lhs.false31
  %25 = load i8*, i8** %s, align 4
  %arrayidx41 = getelementptr inbounds i8, i8* %25, i32 0
  %26 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %26 to i32
  %cmp43 = icmp eq i32 %conv42, 112
  br i1 %cmp43, label %land.lhs.true45, label %if.else49

land.lhs.true45:                                  ; preds = %if.else
  %27 = load i8*, i8** %s, align 4
  %arrayidx46 = getelementptr inbounds i8, i8* %27, i32 1
  %28 = load i8, i8* %arrayidx46, align 1
  %tobool47 = icmp ne i8 %28, 0
  br i1 %tobool47, label %if.else49, label %if.then48

if.then48:                                        ; preds = %land.lhs.true45
  %29 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %fd2 = getelementptr inbounds %struct.redir, %struct.redir* %29, i32 0, i32 3
  store i32 -2, i32* %fd2, align 4
  br label %if.end70

if.else49:                                        ; preds = %land.lhs.true45, %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else49
  %30 = load i8*, i8** %s, align 4
  %31 = load i8, i8* %30, align 1
  %idxprom = zext i8 %31 to i32
  %arrayidx50 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %32 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %32 to i32
  %and = and i32 %conv51, 1
  %tobool52 = icmp ne i32 %and, 0
  br i1 %tobool52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i8*, i8** %s, align 4
  %35 = load i8, i8* %34, align 1
  %tobool53 = icmp ne i8 %35, 0
  br i1 %tobool53, label %if.else61, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %while.end
  %36 = load i8*, i8** %s, align 4
  %37 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %name55 = getelementptr inbounds %struct.redir, %struct.redir* %37, i32 0, i32 4
  %38 = load i8*, i8** %name55, align 4
  %cmp56 = icmp ugt i8* %36, %38
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %land.lhs.true54
  %39 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %name59 = getelementptr inbounds %struct.redir, %struct.redir* %39, i32 0, i32 4
  %40 = load i8*, i8** %name59, align 4
  %call = call i32 @zstrtol(i8* %40, i8** null, i32 10)
  %41 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %fd260 = getelementptr inbounds %struct.redir, %struct.redir* %41, i32 0, i32 3
  store i32 %call, i32* %fd260, align 4
  br label %if.end69

if.else61:                                        ; preds = %land.lhs.true54, %while.end
  %42 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type62 = getelementptr inbounds %struct.redir, %struct.redir* %42, i32 0, i32 0
  %43 = load i32, i32* %type62, align 4
  %cmp63 = icmp eq i32 %43, 13
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else61
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end68

if.else66:                                        ; preds = %if.else61
  %44 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type67 = getelementptr inbounds %struct.redir, %struct.redir* %44, i32 0, i32 0
  store i32 4, i32* %type67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then65
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then58
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then48
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then39
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %lor.lhs.false
  br label %if.end96

if.else73:                                        ; preds = %land.lhs.true12, %if.end8
  %45 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type74 = getelementptr inbounds %struct.redir, %struct.redir* %45, i32 0, i32 0
  %46 = load i32, i32* %type74, align 4
  %cmp75 = icmp eq i32 %46, 13
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.else73
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end95

if.else78:                                        ; preds = %if.else73
  %47 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type79 = getelementptr inbounds %struct.redir, %struct.redir* %47, i32 0, i32 0
  %48 = load i32, i32* %type79, align 4
  %cmp80 = icmp eq i32 %48, 14
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.else78
  %49 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %type83 = getelementptr inbounds %struct.redir, %struct.redir* %49, i32 0, i32 0
  store i32 4, i32* %type83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.else78
  br label %while.cond85

while.cond85:                                     ; preds = %while.body88, %if.end84
  %call86 = call i8* @ugetnode(%union.linkroot* %fake)
  store i8* %call86, i8** %nam, align 4
  %tobool87 = icmp ne i8* %call86, null
  br i1 %tobool87, label %while.body88, label %while.end94

while.body88:                                     ; preds = %while.cond85
  %call89 = call i8* @zhalloc(i32 32)
  %50 = bitcast i8* %call89 to %struct.redir*
  store %struct.redir* %50, %struct.redir** %ff, align 4
  %51 = load %struct.redir*, %struct.redir** %ff, align 4
  %52 = load %struct.redir*, %struct.redir** %fn.addr, align 4
  %53 = bitcast %struct.redir* %51 to i8*
  %54 = bitcast %struct.redir* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %53, i8* %54, i32 32, i32 4, i1 false)
  %55 = load i8*, i8** %nam, align 4
  %56 = load %struct.redir*, %struct.redir** %ff, align 4
  %name90 = getelementptr inbounds %struct.redir, %struct.redir* %56, i32 0, i32 4
  store i8* %55, i8** %name90, align 4
  %57 = load %union.linkroot*, %union.linkroot** %redirtab.addr, align 4
  %58 = load %union.linkroot*, %union.linkroot** %redirtab.addr, align 4
  %list91 = bitcast %union.linkroot* %58 to %struct.linklist*
  %last92 = getelementptr inbounds %struct.linklist, %struct.linklist* %list91, i32 0, i32 1
  %59 = load %struct.linknode*, %struct.linknode** %last92, align 4
  %60 = load %struct.redir*, %struct.redir** %ff, align 4
  %61 = bitcast %struct.redir* %60 to i8*
  %call93 = call %struct.linknode* @insertlinknode(%union.linkroot* %57, %struct.linknode* %59, i8* %61)
  store i32 1, i32* %ret, align 4
  br label %while.cond85

while.end94:                                      ; preds = %while.cond85
  br label %if.end95

if.end95:                                         ; preds = %while.end94, %if.then77
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end72
  %62 = load i32, i32* %ret, align 4
  store i32 %62, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end96, %if.then7
  %63 = load i32, i32* %retval, align 4
  ret i32 %63
}

declare void @prefork(%union.linkroot*, i32, i32*) #1

declare void @globlist(%union.linkroot*, i32) #1

declare i32 @zstrtol(i8*, i8**, i32) #1

declare i8* @ugetnode(%union.linkroot*) #1

; Function Attrs: noinline nounwind
define void @xpandbraces(%union.linkroot* %list, %struct.linknode** %np) #0 {
entry:
  %list.addr = alloca %union.linkroot*, align 4
  %np.addr = alloca %struct.linknode**, align 4
  %node = alloca %struct.linknode*, align 4
  %last = alloca %struct.linknode*, align 4
  %str = alloca i8*, align 4
  %str3 = alloca i8*, align 4
  %str2 = alloca i8*, align 4
  %prev1 = alloca i32, align 4
  %bc = alloca i32, align 4
  %comma = alloca i32, align 4
  %dotdot = alloca i32, align 4
  %dots = alloca i8*, align 4
  %p = alloca i8*, align 4
  %dots2 = alloca i8*, align 4
  %olast = alloca %struct.linknode*, align 4
  %rstart = alloca i32, align 4
  %rend = alloca i32, align 4
  %err = alloca i32, align 4
  %rev = alloca i32, align 4
  %rincr = alloca i32, align 4
  %wid1 = alloca i32, align 4
  %wid2 = alloca i32, align 4
  %wid3 = alloca i32, align 4
  %strp = alloca i32, align 4
  %cstart = alloca i32, align 4
  %cend = alloca i32, align 4
  %lenalloc = alloca i32, align 4
  %ctmp = alloca i32, align 4
  %ncptr = alloca i8*, align 4
  %nclen = alloca i32, align 4
  %minw = alloca i32, align 4
  %rt = alloca i32, align 4
  %ccl = alloca [256 x i8], align 1
  %p260 = alloca i8*, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %len = alloca i32, align 4
  %pl = alloca i32, align 4
  %lastch = alloca i32, align 4
  %zz = alloca i8*, align 4
  %str4 = alloca i8*, align 4
  %cnt = alloca i32, align 4
  store %union.linkroot* %list, %union.linkroot** %list.addr, align 4
  store %struct.linknode** %np, %struct.linknode*** %np.addr, align 4
  %0 = load %struct.linknode**, %struct.linknode*** %np.addr, align 4
  %1 = load %struct.linknode*, %struct.linknode** %0, align 4
  store %struct.linknode* %1, %struct.linknode** %node, align 4
  %2 = load %struct.linknode*, %struct.linknode** %node, align 4
  %prev = getelementptr inbounds %struct.linknode, %struct.linknode* %2, i32 0, i32 1
  %3 = load %struct.linknode*, %struct.linknode** %prev, align 4
  store %struct.linknode* %3, %struct.linknode** %last, align 4
  %4 = load %struct.linknode*, %struct.linknode** %node, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %4, i32 0, i32 2
  %5 = load i8*, i8** %dat, align 4
  store i8* %5, i8** %str, align 4
  %6 = load i8*, i8** %str, align 4
  store i8* %6, i8** %str3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %str, align 4
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv, -113
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %str, align 4
  store i8* %10, i8** %str2, align 4
  store i32 0, i32* %dotdot, align 4
  store i32 0, i32* %comma, align 4
  store i32 0, i32* %bc, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc39, %for.end
  %11 = load i8*, i8** %str2, align 4
  %12 = load i8, i8* %11, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %for.body4, label %for.end41

for.body4:                                        ; preds = %for.cond3
  %13 = load i8*, i8** %str2, align 4
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, -113
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %15 = load i32, i32* %bc, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %bc, align 4
  br label %if.end38

if.else:                                          ; preds = %for.body4
  %16 = load i8*, i8** %str2, align 4
  %17 = load i8, i8* %16, align 1
  %conv8 = sext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv8, -112
  br i1 %cmp9, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else
  %18 = load i32, i32* %bc, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %bc, align 4
  %cmp12 = icmp eq i32 %dec, 0
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then11
  br label %for.end41

if.end:                                           ; preds = %if.then11
  br label %if.end37

if.else15:                                        ; preds = %if.else
  %19 = load i32, i32* %bc, align 4
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.else15
  %20 = load i8*, i8** %str2, align 4
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, -102
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then18
  %22 = load i32, i32* %comma, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %comma, align 4
  br label %if.end35

if.else24:                                        ; preds = %if.then18
  %23 = load i8*, i8** %str2, align 4
  %24 = load i8, i8* %23, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.else24
  %25 = load i8*, i8** %str2, align 4
  %arrayidx = getelementptr inbounds i8, i8* %25, i32 1
  %26 = load i8, i8* %arrayidx, align 1
  %conv28 = sext i8 %26 to i32
  %cmp29 = icmp eq i32 %conv28, 46
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  %27 = load i32, i32* %dotdot, align 4
  %inc32 = add nsw i32 %27, 1
  store i32 %inc32, i32* %dotdot, align 4
  %28 = load i8*, i8** %str2, align 4
  %incdec.ptr33 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr33, i8** %str2, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true, %if.else24
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then22
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.else15
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %29 = load i8*, i8** %str2, align 4
  %incdec.ptr40 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr40, i8** %str2, align 4
  br label %for.cond3

for.end41:                                        ; preds = %if.then14, %for.cond3
  %30 = load i32, i32* %comma, align 4
  %tobool42 = icmp ne i32 %30, 0
  br i1 %tobool42, label %if.end254, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %for.end41
  %31 = load i32, i32* %dotdot, align 4
  %tobool44 = icmp ne i32 %31, 0
  br i1 %tobool44, label %if.then45, label %if.end254

if.then45:                                        ; preds = %land.lhs.true43
  store i8* null, i8** %dots2, align 4
  %32 = load %struct.linknode*, %struct.linknode** %last, align 4
  store %struct.linknode* %32, %struct.linknode** %olast, align 4
  store i32 0, i32* %err, align 4
  store i32 0, i32* %rev, align 4
  store i32 1, i32* %rincr, align 4
  %33 = load i8*, i8** %str, align 4
  %call = call i32 @bracechardots(i8* %33, i32* %cstart, i32* %cend)
  %tobool46 = icmp ne i32 %call, 0
  br i1 %tobool46, label %if.then47, label %if.end72

if.then47:                                        ; preds = %if.then45
  %34 = load i32, i32* %cend, align 4
  %35 = load i32, i32* %cstart, align 4
  %cmp48 = icmp ult i32 %34, %35
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  %36 = load i32, i32* %cend, align 4
  store i32 %36, i32* %ctmp, align 4
  %37 = load i32, i32* %cstart, align 4
  store i32 %37, i32* %cend, align 4
  %38 = load i32, i32* %ctmp, align 4
  store i32 %38, i32* %cstart, align 4
  store i32 1, i32* %rev, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then47
  %39 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %40 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call52 = call i8* @uremnode(%union.linkroot* %39, %struct.linknode* %40)
  %41 = load i8*, i8** %str, align 4
  %42 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %strp, align 4
  %43 = load i32, i32* %strp, align 4
  %44 = load i8*, i8** %str2, align 4
  %add.ptr = getelementptr inbounds i8, i8* %44, i32 1
  %call53 = call i32 @strlen(i8* %add.ptr)
  %add = add i32 %43, %call53
  %add54 = add i32 %add, 1
  store i32 %add54, i32* %lenalloc, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end51
  call void @mb_charinit()
  %45 = load i32, i32* %cend, align 4
  %call55 = call i8* @wcs_nicechar(i32 %45, i32* null, i8** null)
  store i8* %call55, i8** %ncptr, align 4
  %46 = load i8*, i8** %ncptr, align 4
  %call56 = call i32 @strlen(i8* %46)
  store i32 %call56, i32* %nclen, align 4
  %47 = load i32, i32* %lenalloc, align 4
  %48 = load i32, i32* %nclen, align 4
  %add57 = add nsw i32 %47, %48
  %call58 = call i8* @zhalloc(i32 %add57)
  store i8* %call58, i8** %p, align 4
  %49 = load i8*, i8** %p, align 4
  %50 = load i8*, i8** %str3, align 4
  %51 = load i32, i32* %strp, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 %51, i32 1, i1 false)
  %52 = load i8*, i8** %p, align 4
  %53 = load i32, i32* %strp, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %52, i32 %53
  %54 = load i8*, i8** %ncptr, align 4
  %55 = load i32, i32* %nclen, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr59, i8* %54, i32 %55, i32 1, i1 false)
  %56 = load i8*, i8** %p, align 4
  %57 = load i32, i32* %strp, align 4
  %add.ptr60 = getelementptr inbounds i8, i8* %56, i32 %57
  %58 = load i32, i32* %nclen, align 4
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i32 %58
  %59 = load i8*, i8** %str2, align 4
  %add.ptr62 = getelementptr inbounds i8, i8* %59, i32 1
  %call63 = call i8* @strcpy(i8* %add.ptr61, i8* %add.ptr62)
  %60 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %61 = load %struct.linknode*, %struct.linknode** %last, align 4
  %62 = load i8*, i8** %p, align 4
  %call64 = call %struct.linknode* @insertlinknode(%union.linkroot* %60, %struct.linknode* %61, i8* %62)
  %63 = load i32, i32* %rev, align 4
  %tobool65 = icmp ne i32 %63, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body
  %64 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %64, i32 0, i32 0
  %65 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %65, %struct.linknode** %last, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end67
  %66 = load i32, i32* %cend, align 4
  %dec68 = add i32 %66, -1
  store i32 %dec68, i32* %cend, align 4
  %67 = load i32, i32* %cstart, align 4
  %cmp69 = icmp ugt i32 %66, %67
  br i1 %cmp69, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %68 = load %struct.linknode*, %struct.linknode** %olast, align 4
  %next71 = getelementptr inbounds %struct.linknode, %struct.linknode* %68, i32 0, i32 0
  %69 = load %struct.linknode*, %struct.linknode** %next71, align 4
  %70 = load %struct.linknode**, %struct.linknode*** %np.addr, align 4
  store %struct.linknode* %69, %struct.linknode** %70, align 4
  br label %return

if.end72:                                         ; preds = %if.then45
  %71 = load i8*, i8** %str, align 4
  %add.ptr73 = getelementptr inbounds i8, i8* %71, i32 1
  %call74 = call i32 @zstrtol(i8* %add.ptr73, i8** %dots, i32 10)
  store i32 %call74, i32* %rstart, align 4
  store i32 0, i32* %rend, align 4
  %72 = load i8*, i8** %dots, align 4
  %73 = load i8*, i8** %str, align 4
  %sub.ptr.lhs.cast75 = ptrtoint i8* %72 to i32
  %sub.ptr.rhs.cast76 = ptrtoint i8* %73 to i32
  %sub.ptr.sub77 = sub i32 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %sub = sub nsw i32 %sub.ptr.sub77, 1
  store i32 %sub, i32* %wid1, align 4
  %74 = load i8*, i8** %str2, align 4
  %75 = load i8*, i8** %dots, align 4
  %sub.ptr.lhs.cast78 = ptrtoint i8* %74 to i32
  %sub.ptr.rhs.cast79 = ptrtoint i8* %75 to i32
  %sub.ptr.sub80 = sub i32 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %sub81 = sub nsw i32 %sub.ptr.sub80, 2
  store i32 %sub81, i32* %wid2, align 4
  store i32 0, i32* %wid3, align 4
  %76 = load i8*, i8** %str, align 4
  %77 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast82 = ptrtoint i8* %76 to i32
  %sub.ptr.rhs.cast83 = ptrtoint i8* %77 to i32
  %sub.ptr.sub84 = sub i32 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  store i32 %sub.ptr.sub84, i32* %strp, align 4
  %78 = load i8*, i8** %dots, align 4
  %79 = load i8*, i8** %str, align 4
  %add.ptr85 = getelementptr inbounds i8, i8* %79, i32 1
  %cmp86 = icmp eq i8* %78, %add.ptr85
  br i1 %cmp86, label %if.then96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end72
  %80 = load i8*, i8** %dots, align 4
  %81 = load i8, i8* %80, align 1
  %conv88 = sext i8 %81 to i32
  %cmp89 = icmp ne i32 %conv88, 46
  br i1 %cmp89, label %if.then96, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false
  %82 = load i8*, i8** %dots, align 4
  %arrayidx92 = getelementptr inbounds i8, i8* %82, i32 1
  %83 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %83 to i32
  %cmp94 = icmp ne i32 %conv93, 46
  br i1 %cmp94, label %if.then96, label %if.else98

if.then96:                                        ; preds = %lor.lhs.false91, %lor.lhs.false, %if.end72
  %84 = load i32, i32* %err, align 4
  %inc97 = add nsw i32 %84, 1
  store i32 %inc97, i32* %err, align 4
  br label %if.end143

if.else98:                                        ; preds = %lor.lhs.false91
  %85 = load i8*, i8** %dots, align 4
  %add.ptr99 = getelementptr inbounds i8, i8* %85, i32 2
  %call100 = call i32 @zstrtol(i8* %add.ptr99, i8** %p, i32 10)
  store i32 %call100, i32* %rend, align 4
  %86 = load i8*, i8** %p, align 4
  %87 = load i8*, i8** %dots, align 4
  %add.ptr101 = getelementptr inbounds i8, i8* %87, i32 2
  %cmp102 = icmp eq i8* %86, %add.ptr101
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.else98
  %88 = load i32, i32* %err, align 4
  %inc105 = add nsw i32 %88, 1
  store i32 %inc105, i32* %err, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.else98
  %89 = load i8*, i8** %p, align 4
  %90 = load i8*, i8** %str2, align 4
  %cmp107 = icmp ne i8* %89, %90
  br i1 %cmp107, label %if.then109, label %if.end142

if.then109:                                       ; preds = %if.end106
  %91 = load i8*, i8** %p, align 4
  %92 = load i8*, i8** %dots, align 4
  %sub.ptr.lhs.cast110 = ptrtoint i8* %91 to i32
  %sub.ptr.rhs.cast111 = ptrtoint i8* %92 to i32
  %sub.ptr.sub112 = sub i32 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %sub113 = sub nsw i32 %sub.ptr.sub112, 2
  store i32 %sub113, i32* %wid2, align 4
  %93 = load i8*, i8** %p, align 4
  store i8* %93, i8** %dots2, align 4
  %94 = load i32, i32* %dotdot, align 4
  %cmp114 = icmp eq i32 %94, 2
  br i1 %cmp114, label %land.lhs.true116, label %if.else139

land.lhs.true116:                                 ; preds = %if.then109
  %95 = load i8*, i8** %p, align 4
  %96 = load i8, i8* %95, align 1
  %conv117 = sext i8 %96 to i32
  %cmp118 = icmp eq i32 %conv117, 46
  br i1 %cmp118, label %land.lhs.true120, label %if.else139

land.lhs.true120:                                 ; preds = %land.lhs.true116
  %97 = load i8*, i8** %p, align 4
  %arrayidx121 = getelementptr inbounds i8, i8* %97, i32 1
  %98 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %98 to i32
  %cmp123 = icmp eq i32 %conv122, 46
  br i1 %cmp123, label %if.then125, label %if.else139

if.then125:                                       ; preds = %land.lhs.true120
  %99 = load i8*, i8** %p, align 4
  %add.ptr126 = getelementptr inbounds i8, i8* %99, i32 2
  %call127 = call i32 @zstrtol(i8* %add.ptr126, i8** %p, i32 10)
  store i32 %call127, i32* %rincr, align 4
  %100 = load i8*, i8** %p, align 4
  %101 = load i8*, i8** %dots2, align 4
  %sub.ptr.lhs.cast128 = ptrtoint i8* %100 to i32
  %sub.ptr.rhs.cast129 = ptrtoint i8* %101 to i32
  %sub.ptr.sub130 = sub i32 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %sub131 = sub nsw i32 %sub.ptr.sub130, 2
  store i32 %sub131, i32* %wid3, align 4
  %102 = load i8*, i8** %p, align 4
  %103 = load i8*, i8** %str2, align 4
  %cmp132 = icmp ne i8* %102, %103
  br i1 %cmp132, label %if.then136, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.then125
  %104 = load i32, i32* %rincr, align 4
  %tobool135 = icmp ne i32 %104, 0
  br i1 %tobool135, label %if.end138, label %if.then136

if.then136:                                       ; preds = %lor.lhs.false134, %if.then125
  %105 = load i32, i32* %err, align 4
  %inc137 = add nsw i32 %105, 1
  store i32 %inc137, i32* %err, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %lor.lhs.false134
  br label %if.end141

if.else139:                                       ; preds = %land.lhs.true120, %land.lhs.true116, %if.then109
  %106 = load i32, i32* %err, align 4
  %inc140 = add nsw i32 %106, 1
  store i32 %inc140, i32* %err, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else139, %if.end138
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end106
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then96
  %107 = load i32, i32* %err, align 4
  %tobool144 = icmp ne i32 %107, 0
  br i1 %tobool144, label %if.end253, label %if.then145

if.then145:                                       ; preds = %if.end143
  %108 = load i8*, i8** %str, align 4
  %arrayidx146 = getelementptr inbounds i8, i8* %108, i32 1
  %109 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %109 to i32
  %cmp148 = icmp eq i32 %conv147, 48
  br i1 %cmp148, label %cond.true, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.then145
  %110 = load i8*, i8** %str, align 4
  %arrayidx151 = getelementptr inbounds i8, i8* %110, i32 1
  %111 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %111 to i32
  %cmp153 = icmp eq i32 %conv152, 45
  br i1 %cmp153, label %land.lhs.true160, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false150
  %112 = load i8*, i8** %str, align 4
  %arrayidx156 = getelementptr inbounds i8, i8* %112, i32 1
  %113 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %113 to i32
  %cmp158 = icmp eq i32 %conv157, -101
  br i1 %cmp158, label %land.lhs.true160, label %cond.false

land.lhs.true160:                                 ; preds = %lor.lhs.false155, %lor.lhs.false150
  %114 = load i8*, i8** %str, align 4
  %arrayidx161 = getelementptr inbounds i8, i8* %114, i32 2
  %115 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %115 to i32
  %cmp163 = icmp eq i32 %conv162, 48
  br i1 %cmp163, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true160, %if.then145
  %116 = load i32, i32* %wid1, align 4
  br label %cond.end211

cond.false:                                       ; preds = %land.lhs.true160, %lor.lhs.false155
  %117 = load i8*, i8** %dots, align 4
  %arrayidx165 = getelementptr inbounds i8, i8* %117, i32 2
  %118 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %118 to i32
  %cmp167 = icmp eq i32 %conv166, 48
  br i1 %cmp167, label %cond.true184, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %cond.false
  %119 = load i8*, i8** %dots, align 4
  %arrayidx170 = getelementptr inbounds i8, i8* %119, i32 2
  %120 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %120 to i32
  %cmp172 = icmp eq i32 %conv171, 45
  br i1 %cmp172, label %land.lhs.true179, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false169
  %121 = load i8*, i8** %dots, align 4
  %arrayidx175 = getelementptr inbounds i8, i8* %121, i32 2
  %122 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %122 to i32
  %cmp177 = icmp eq i32 %conv176, -101
  br i1 %cmp177, label %land.lhs.true179, label %cond.false185

land.lhs.true179:                                 ; preds = %lor.lhs.false174, %lor.lhs.false169
  %123 = load i8*, i8** %dots, align 4
  %arrayidx180 = getelementptr inbounds i8, i8* %123, i32 3
  %124 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %124 to i32
  %cmp182 = icmp eq i32 %conv181, 48
  br i1 %cmp182, label %cond.true184, label %cond.false185

cond.true184:                                     ; preds = %land.lhs.true179, %cond.false
  %125 = load i32, i32* %wid2, align 4
  br label %cond.end209

cond.false185:                                    ; preds = %land.lhs.true179, %lor.lhs.false174
  %126 = load i8*, i8** %dots2, align 4
  %tobool186 = icmp ne i8* %126, null
  br i1 %tobool186, label %land.lhs.true187, label %cond.false208

land.lhs.true187:                                 ; preds = %cond.false185
  %127 = load i8*, i8** %dots2, align 4
  %arrayidx188 = getelementptr inbounds i8, i8* %127, i32 2
  %128 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %128 to i32
  %cmp190 = icmp eq i32 %conv189, 48
  br i1 %cmp190, label %cond.true207, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %land.lhs.true187
  %129 = load i8*, i8** %dots2, align 4
  %arrayidx193 = getelementptr inbounds i8, i8* %129, i32 2
  %130 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %130 to i32
  %cmp195 = icmp eq i32 %conv194, 45
  br i1 %cmp195, label %land.lhs.true202, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %lor.lhs.false192
  %131 = load i8*, i8** %dots2, align 4
  %arrayidx198 = getelementptr inbounds i8, i8* %131, i32 2
  %132 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %132 to i32
  %cmp200 = icmp eq i32 %conv199, -101
  br i1 %cmp200, label %land.lhs.true202, label %cond.false208

land.lhs.true202:                                 ; preds = %lor.lhs.false197, %lor.lhs.false192
  %133 = load i8*, i8** %dots2, align 4
  %arrayidx203 = getelementptr inbounds i8, i8* %133, i32 3
  %134 = load i8, i8* %arrayidx203, align 1
  %conv204 = sext i8 %134 to i32
  %cmp205 = icmp eq i32 %conv204, 48
  br i1 %cmp205, label %cond.true207, label %cond.false208

cond.true207:                                     ; preds = %land.lhs.true202, %land.lhs.true187
  %135 = load i32, i32* %wid3, align 4
  br label %cond.end

cond.false208:                                    ; preds = %land.lhs.true202, %lor.lhs.false197, %cond.false185
  br label %cond.end

cond.end:                                         ; preds = %cond.false208, %cond.true207
  %cond = phi i32 [ %135, %cond.true207 ], [ 0, %cond.false208 ]
  br label %cond.end209

cond.end209:                                      ; preds = %cond.end, %cond.true184
  %cond210 = phi i32 [ %125, %cond.true184 ], [ %cond, %cond.end ]
  br label %cond.end211

cond.end211:                                      ; preds = %cond.end209, %cond.true
  %cond212 = phi i32 [ %116, %cond.true ], [ %cond210, %cond.end209 ]
  store i32 %cond212, i32* %minw, align 4
  %136 = load i32, i32* %rincr, align 4
  %cmp213 = icmp slt i32 %136, 0
  br i1 %cmp213, label %if.then215, label %if.end218

if.then215:                                       ; preds = %cond.end211
  %137 = load i32, i32* %rincr, align 4
  %sub216 = sub nsw i32 0, %137
  store i32 %sub216, i32* %rincr, align 4
  %138 = load i32, i32* %rev, align 4
  %tobool217 = icmp ne i32 %138, 0
  %lnot = xor i1 %tobool217, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %rev, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %cond.end211
  %139 = load i32, i32* %rstart, align 4
  %140 = load i32, i32* %rend, align 4
  %cmp219 = icmp sgt i32 %139, %140
  br i1 %cmp219, label %if.then221, label %if.else225

if.then221:                                       ; preds = %if.end218
  %141 = load i32, i32* %rend, align 4
  store i32 %141, i32* %rt, align 4
  %142 = load i32, i32* %rstart, align 4
  store i32 %142, i32* %rend, align 4
  %143 = load i32, i32* %rt, align 4
  store i32 %143, i32* %rstart, align 4
  %144 = load i32, i32* %rev, align 4
  %tobool222 = icmp ne i32 %144, 0
  %lnot223 = xor i1 %tobool222, true
  %lnot.ext224 = zext i1 %lnot223 to i32
  store i32 %lnot.ext224, i32* %rev, align 4
  br label %if.end232

if.else225:                                       ; preds = %if.end218
  %145 = load i32, i32* %rincr, align 4
  %cmp226 = icmp sgt i32 %145, 1
  br i1 %cmp226, label %if.then228, label %if.end231

if.then228:                                       ; preds = %if.else225
  %146 = load i32, i32* %rend, align 4
  %147 = load i32, i32* %rstart, align 4
  %sub229 = sub nsw i32 %146, %147
  %148 = load i32, i32* %rincr, align 4
  %rem = srem i32 %sub229, %148
  %149 = load i32, i32* %rend, align 4
  %sub230 = sub nsw i32 %149, %rem
  store i32 %sub230, i32* %rend, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then228, %if.else225
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %if.then221
  %150 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %151 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call233 = call i8* @uremnode(%union.linkroot* %150, %struct.linknode* %151)
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc249, %if.end232
  %152 = load i32, i32* %rend, align 4
  %153 = load i32, i32* %rstart, align 4
  %cmp235 = icmp sge i32 %152, %153
  br i1 %cmp235, label %for.body237, label %for.end251

for.body237:                                      ; preds = %for.cond234
  %154 = load i8*, i8** %str3, align 4
  %call238 = call i8* @dupstring(i8* %154)
  store i8* %call238, i8** %p, align 4
  %155 = load i8*, i8** %p, align 4
  %156 = load i32, i32* %strp, align 4
  %add.ptr239 = getelementptr inbounds i8, i8* %155, i32 %156
  %157 = load i32, i32* %minw, align 4
  %158 = load i32, i32* %rend, align 4
  %call240 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %157, i32 %158)
  %159 = load i8*, i8** %p, align 4
  %160 = load i32, i32* %strp, align 4
  %add.ptr241 = getelementptr inbounds i8, i8* %159, i32 %160
  %161 = load i8*, i8** %str2, align 4
  %add.ptr242 = getelementptr inbounds i8, i8* %161, i32 1
  %call243 = call i8* @strcat(i8* %add.ptr241, i8* %add.ptr242)
  %162 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %163 = load %struct.linknode*, %struct.linknode** %last, align 4
  %164 = load i8*, i8** %p, align 4
  %call244 = call %struct.linknode* @insertlinknode(%union.linkroot* %162, %struct.linknode* %163, i8* %164)
  %165 = load i32, i32* %rev, align 4
  %tobool245 = icmp ne i32 %165, 0
  br i1 %tobool245, label %if.then246, label %if.end248

if.then246:                                       ; preds = %for.body237
  %166 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next247 = getelementptr inbounds %struct.linknode, %struct.linknode* %166, i32 0, i32 0
  %167 = load %struct.linknode*, %struct.linknode** %next247, align 4
  store %struct.linknode* %167, %struct.linknode** %last, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %for.body237
  br label %for.inc249

for.inc249:                                       ; preds = %if.end248
  %168 = load i32, i32* %rincr, align 4
  %169 = load i32, i32* %rend, align 4
  %sub250 = sub nsw i32 %169, %168
  store i32 %sub250, i32* %rend, align 4
  br label %for.cond234

for.end251:                                       ; preds = %for.cond234
  %170 = load %struct.linknode*, %struct.linknode** %olast, align 4
  %next252 = getelementptr inbounds %struct.linknode, %struct.linknode* %170, i32 0, i32 0
  %171 = load %struct.linknode*, %struct.linknode** %next252, align 4
  %172 = load %struct.linknode**, %struct.linknode*** %np.addr, align 4
  store %struct.linknode* %171, %struct.linknode** %172, align 4
  br label %return

if.end253:                                        ; preds = %if.end143
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %land.lhs.true43, %for.end41
  %173 = load i32, i32* %comma, align 4
  %tobool255 = icmp ne i32 %173, 0
  br i1 %tobool255, label %if.end381, label %land.lhs.true256

land.lhs.true256:                                 ; preds = %if.end254
  %174 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 24), align 1
  %conv257 = sext i8 %174 to i32
  %tobool258 = icmp ne i32 %conv257, 0
  br i1 %tobool258, label %if.then259, label %if.end381

if.then259:                                       ; preds = %land.lhs.true256
  store i32 -1, i32* %lastch, align 4
  %175 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %176 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call261 = call i8* @uremnode(%union.linkroot* %175, %struct.linknode* %176)
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %arraydecay, i8 0, i32 256, i32 1, i1 false)
  %177 = load i8*, i8** %str, align 4
  %add.ptr262 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %add.ptr262, i8** %p260, align 4
  br label %for.cond263

for.cond263:                                      ; preds = %if.end329, %if.then259
  %178 = load i8*, i8** %p260, align 4
  %179 = load i8*, i8** %str2, align 4
  %cmp264 = icmp ult i8* %178, %179
  br i1 %cmp264, label %for.body266, label %for.end330

for.body266:                                      ; preds = %for.cond263
  %180 = load i8*, i8** %p260, align 4
  %incdec.ptr267 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr267, i8** %p260, align 4
  %181 = load i8, i8* %180, align 1
  store i8 %181, i8* %c1, align 1
  %idxprom = zext i8 %181 to i32
  %arrayidx268 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %182 = load i16, i16* %arrayidx268, align 2
  %conv269 = sext i16 %182 to i32
  %and = and i32 %conv269, 16
  %tobool270 = icmp ne i32 %and, 0
  br i1 %tobool270, label %if.then271, label %if.end275

if.then271:                                       ; preds = %for.body266
  %183 = load i8, i8* %c1, align 1
  %conv272 = zext i8 %183 to i32
  %sub273 = sub nsw i32 %conv272, 132
  %arrayidx274 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub273
  %184 = load i8, i8* %arrayidx274, align 1
  store i8 %184, i8* %c1, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.then271, %for.body266
  %185 = load i8, i8* %c1, align 1
  %conv276 = sext i8 %185 to i32
  %cmp277 = icmp eq i32 %conv276, -125
  br i1 %cmp277, label %if.then279, label %if.end283

if.then279:                                       ; preds = %if.end275
  %186 = load i8*, i8** %p260, align 4
  %incdec.ptr280 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr280, i8** %p260, align 4
  %187 = load i8, i8* %186, align 1
  %conv281 = sext i8 %187 to i32
  %xor = xor i32 32, %conv281
  %conv282 = trunc i32 %xor to i8
  store i8 %conv282, i8* %c1, align 1
  br label %if.end283

if.end283:                                        ; preds = %if.then279, %if.end275
  %188 = load i8*, i8** %p260, align 4
  %189 = load i8, i8* %188, align 1
  store i8 %189, i8* %c2, align 1
  %idxprom284 = zext i8 %189 to i32
  %arrayidx285 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom284
  %190 = load i16, i16* %arrayidx285, align 2
  %conv286 = sext i16 %190 to i32
  %and287 = and i32 %conv286, 16
  %tobool288 = icmp ne i32 %and287, 0
  br i1 %tobool288, label %if.then289, label %if.end293

if.then289:                                       ; preds = %if.end283
  %191 = load i8, i8* %c2, align 1
  %conv290 = zext i8 %191 to i32
  %sub291 = sub nsw i32 %conv290, 132
  %arrayidx292 = getelementptr inbounds [0 x i8], [0 x i8]* @ztokens, i32 0, i32 %sub291
  %192 = load i8, i8* %arrayidx292, align 1
  store i8 %192, i8* %c2, align 1
  br label %if.end293

if.end293:                                        ; preds = %if.then289, %if.end283
  %193 = load i8, i8* %c2, align 1
  %conv294 = sext i8 %193 to i32
  %cmp295 = icmp eq i32 %conv294, -125
  br i1 %cmp295, label %if.then297, label %if.end302

if.then297:                                       ; preds = %if.end293
  %194 = load i8*, i8** %p260, align 4
  %arrayidx298 = getelementptr inbounds i8, i8* %194, i32 1
  %195 = load i8, i8* %arrayidx298, align 1
  %conv299 = sext i8 %195 to i32
  %xor300 = xor i32 32, %conv299
  %conv301 = trunc i32 %xor300 to i8
  store i8 %conv301, i8* %c2, align 1
  br label %if.end302

if.end302:                                        ; preds = %if.then297, %if.end293
  %196 = load i8, i8* %c1, align 1
  %conv303 = sext i8 %196 to i32
  %cmp304 = icmp eq i32 %conv303, 45
  br i1 %cmp304, label %land.lhs.true310, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %if.end302
  %197 = load i8, i8* %c1, align 1
  %conv307 = sext i8 %197 to i32
  %cmp308 = icmp eq i32 %conv307, -101
  br i1 %cmp308, label %land.lhs.true310, label %if.else326

land.lhs.true310:                                 ; preds = %lor.lhs.false306, %if.end302
  %198 = load i32, i32* %lastch, align 4
  %cmp311 = icmp sge i32 %198, 0
  br i1 %cmp311, label %land.lhs.true313, label %if.else326

land.lhs.true313:                                 ; preds = %land.lhs.true310
  %199 = load i8*, i8** %p260, align 4
  %200 = load i8*, i8** %str2, align 4
  %cmp314 = icmp ult i8* %199, %200
  br i1 %cmp314, label %land.lhs.true316, label %if.else326

land.lhs.true316:                                 ; preds = %land.lhs.true313
  %201 = load i32, i32* %lastch, align 4
  %202 = load i8, i8* %c2, align 1
  %conv317 = zext i8 %202 to i32
  %cmp318 = icmp sle i32 %201, %conv317
  br i1 %cmp318, label %if.then320, label %if.else326

if.then320:                                       ; preds = %land.lhs.true316
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then320
  %203 = load i32, i32* %lastch, align 4
  %204 = load i8, i8* %c2, align 1
  %conv321 = zext i8 %204 to i32
  %cmp322 = icmp slt i32 %203, %conv321
  br i1 %cmp322, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %205 = load i32, i32* %lastch, align 4
  %inc324 = add nsw i32 %205, 1
  store i32 %inc324, i32* %lastch, align 4
  %arrayidx325 = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 %205
  store i8 1, i8* %arrayidx325, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %lastch, align 4
  br label %if.end329

if.else326:                                       ; preds = %land.lhs.true316, %land.lhs.true313, %land.lhs.true310, %lor.lhs.false306
  %206 = load i8, i8* %c1, align 1
  %conv327 = zext i8 %206 to i32
  store i32 %conv327, i32* %lastch, align 4
  %arrayidx328 = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 %conv327
  store i8 1, i8* %arrayidx328, align 1
  br label %if.end329

if.end329:                                        ; preds = %if.else326, %while.end
  br label %for.cond263

for.end330:                                       ; preds = %for.cond263
  %207 = load i8*, i8** %str, align 4
  %208 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast331 = ptrtoint i8* %207 to i32
  %sub.ptr.rhs.cast332 = ptrtoint i8* %208 to i32
  %sub.ptr.sub333 = sub i32 %sub.ptr.lhs.cast331, %sub.ptr.rhs.cast332
  store i32 %sub.ptr.sub333, i32* %pl, align 4
  %209 = load i32, i32* %pl, align 4
  %210 = load i8*, i8** %str2, align 4
  %incdec.ptr334 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr334, i8** %str2, align 4
  %call335 = call i32 @strlen(i8* %incdec.ptr334)
  %add336 = add i32 %209, %call335
  %add337 = add i32 %add336, 2
  store i32 %add337, i32* %len, align 4
  %arraydecay338 = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 0
  %add.ptr339 = getelementptr inbounds i8, i8* %arraydecay338, i32 256
  store i8* %add.ptr339, i8** %p260, align 4
  br label %for.cond340

for.cond340:                                      ; preds = %if.end378, %for.end330
  %211 = load i8*, i8** %p260, align 4
  %incdec.ptr341 = getelementptr inbounds i8, i8* %211, i32 -1
  store i8* %incdec.ptr341, i8** %p260, align 4
  %arraydecay342 = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 0
  %cmp343 = icmp ugt i8* %211, %arraydecay342
  br i1 %cmp343, label %for.body345, label %for.end379

for.body345:                                      ; preds = %for.cond340
  %212 = load i8*, i8** %p260, align 4
  %213 = load i8, i8* %212, align 1
  %tobool346 = icmp ne i8 %213, 0
  br i1 %tobool346, label %if.then347, label %if.end378

if.then347:                                       ; preds = %for.body345
  %214 = load i8*, i8** %p260, align 4
  %arraydecay348 = getelementptr inbounds [256 x i8], [256 x i8]* %ccl, i32 0, i32 0
  %sub.ptr.lhs.cast349 = ptrtoint i8* %214 to i32
  %sub.ptr.rhs.cast350 = ptrtoint i8* %arraydecay348 to i32
  %sub.ptr.sub351 = sub i32 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350
  %conv352 = trunc i32 %sub.ptr.sub351 to i8
  store i8 %conv352, i8* %c1, align 1
  %215 = load i8, i8* %c1, align 1
  %idxprom353 = zext i8 %215 to i32
  %arrayidx354 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom353
  %216 = load i16, i16* %arrayidx354, align 2
  %conv355 = sext i16 %216 to i32
  %and356 = and i32 %conv355, 4096
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then358, label %if.else370

if.then358:                                       ; preds = %if.then347
  %217 = load i32, i32* %len, align 4
  %add359 = add i32 %217, 1
  %call360 = call i8* @hcalloc(i32 %add359)
  store i8* %call360, i8** %str, align 4
  %218 = load i8*, i8** %str, align 4
  %219 = load i32, i32* %pl, align 4
  %arrayidx361 = getelementptr inbounds i8, i8* %218, i32 %219
  store i8 -125, i8* %arrayidx361, align 1
  %220 = load i8, i8* %c1, align 1
  %conv362 = zext i8 %220 to i32
  %xor363 = xor i32 %conv362, 32
  %conv364 = trunc i32 %xor363 to i8
  %221 = load i8*, i8** %str, align 4
  %222 = load i32, i32* %pl, align 4
  %add365 = add i32 %222, 1
  %arrayidx366 = getelementptr inbounds i8, i8* %221, i32 %add365
  store i8 %conv364, i8* %arrayidx366, align 1
  %223 = load i8*, i8** %str, align 4
  %224 = load i32, i32* %pl, align 4
  %add.ptr367 = getelementptr inbounds i8, i8* %223, i32 %224
  %add.ptr368 = getelementptr inbounds i8, i8* %add.ptr367, i32 2
  %225 = load i8*, i8** %str2, align 4
  %call369 = call i8* @strcpy(i8* %add.ptr368, i8* %225)
  br label %if.end376

if.else370:                                       ; preds = %if.then347
  %226 = load i32, i32* %len, align 4
  %call371 = call i8* @hcalloc(i32 %226)
  store i8* %call371, i8** %str, align 4
  %227 = load i8, i8* %c1, align 1
  %228 = load i8*, i8** %str, align 4
  %229 = load i32, i32* %pl, align 4
  %arrayidx372 = getelementptr inbounds i8, i8* %228, i32 %229
  store i8 %227, i8* %arrayidx372, align 1
  %230 = load i8*, i8** %str, align 4
  %231 = load i32, i32* %pl, align 4
  %add.ptr373 = getelementptr inbounds i8, i8* %230, i32 %231
  %add.ptr374 = getelementptr inbounds i8, i8* %add.ptr373, i32 1
  %232 = load i8*, i8** %str2, align 4
  %call375 = call i8* @strcpy(i8* %add.ptr374, i8* %232)
  br label %if.end376

if.end376:                                        ; preds = %if.else370, %if.then358
  %233 = load i8*, i8** %str, align 4
  %234 = load i8*, i8** %str3, align 4
  %235 = load i32, i32* %pl, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %233, i8* %234, i32 %235, i32 1, i1 false)
  %236 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %237 = load %struct.linknode*, %struct.linknode** %last, align 4
  %238 = load i8*, i8** %str, align 4
  %call377 = call %struct.linknode* @insertlinknode(%union.linkroot* %236, %struct.linknode* %237, i8* %238)
  br label %if.end378

if.end378:                                        ; preds = %if.end376, %for.body345
  br label %for.cond340

for.end379:                                       ; preds = %for.cond340
  %239 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next380 = getelementptr inbounds %struct.linknode, %struct.linknode* %239, i32 0, i32 0
  %240 = load %struct.linknode*, %struct.linknode** %next380, align 4
  %241 = load %struct.linknode**, %struct.linknode*** %np.addr, align 4
  store %struct.linknode* %240, %struct.linknode** %241, align 4
  br label %return

if.end381:                                        ; preds = %land.lhs.true256, %if.end254
  %242 = load i8*, i8** %str, align 4
  %incdec.ptr382 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr382, i8** %str, align 4
  %243 = load i8*, i8** %str3, align 4
  %sub.ptr.lhs.cast383 = ptrtoint i8* %242 to i32
  %sub.ptr.rhs.cast384 = ptrtoint i8* %243 to i32
  %sub.ptr.sub385 = sub i32 %sub.ptr.lhs.cast383, %sub.ptr.rhs.cast384
  store i32 %sub.ptr.sub385, i32* %prev1, align 4
  %244 = load i8*, i8** %str2, align 4
  %incdec.ptr386 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr386, i8** %str2, align 4
  %245 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %246 = load %struct.linknode*, %struct.linknode** %node, align 4
  %call387 = call i8* @uremnode(%union.linkroot* %245, %struct.linknode* %246)
  %247 = load %struct.linknode*, %struct.linknode** %last, align 4
  store %struct.linknode* %247, %struct.linknode** %node, align 4
  br label %for.cond388

for.cond388:                                      ; preds = %if.end435, %if.end381
  %248 = load i8*, i8** %str, align 4
  store i8* %248, i8** %str4, align 4
  store i32 0, i32* %cnt, align 4
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc411, %for.cond388
  %249 = load i32, i32* %cnt, align 4
  %tobool390 = icmp ne i32 %249, 0
  br i1 %tobool390, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond389
  %250 = load i8*, i8** %str, align 4
  %251 = load i8, i8* %250, align 1
  %conv391 = sext i8 %251 to i32
  %cmp392 = icmp ne i32 %conv391, -102
  br i1 %cmp392, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %252 = load i8*, i8** %str, align 4
  %253 = load i8, i8* %252, align 1
  %conv394 = sext i8 %253 to i32
  %cmp395 = icmp ne i32 %conv394, -112
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %254 = phi i1 [ false, %lor.rhs ], [ %cmp395, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.cond389
  %255 = phi i1 [ true, %for.cond389 ], [ %254, %land.end ]
  br i1 %255, label %for.body397, label %for.end413

for.body397:                                      ; preds = %lor.end
  %256 = load i8*, i8** %str, align 4
  %257 = load i8, i8* %256, align 1
  %conv398 = sext i8 %257 to i32
  %cmp399 = icmp eq i32 %conv398, -113
  br i1 %cmp399, label %if.then401, label %if.else403

if.then401:                                       ; preds = %for.body397
  %258 = load i32, i32* %cnt, align 4
  %inc402 = add nsw i32 %258, 1
  store i32 %inc402, i32* %cnt, align 4
  br label %if.end410

if.else403:                                       ; preds = %for.body397
  %259 = load i8*, i8** %str, align 4
  %260 = load i8, i8* %259, align 1
  %conv404 = sext i8 %260 to i32
  %cmp405 = icmp eq i32 %conv404, -112
  br i1 %cmp405, label %if.then407, label %if.end409

if.then407:                                       ; preds = %if.else403
  %261 = load i32, i32* %cnt, align 4
  %dec408 = add nsw i32 %261, -1
  store i32 %dec408, i32* %cnt, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %if.else403
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.then401
  br label %for.inc411

for.inc411:                                       ; preds = %if.end410
  %262 = load i8*, i8** %str, align 4
  %incdec.ptr412 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %incdec.ptr412, i8** %str, align 4
  br label %for.cond389

for.end413:                                       ; preds = %lor.end
  %263 = load i32, i32* %prev1, align 4
  %264 = load i8*, i8** %str, align 4
  %265 = load i8*, i8** %str4, align 4
  %sub.ptr.lhs.cast414 = ptrtoint i8* %264 to i32
  %sub.ptr.rhs.cast415 = ptrtoint i8* %265 to i32
  %sub.ptr.sub416 = sub i32 %sub.ptr.lhs.cast414, %sub.ptr.rhs.cast415
  %add417 = add nsw i32 %263, %sub.ptr.sub416
  %266 = load i8*, i8** %str2, align 4
  %call418 = call i32 @strlen(i8* %266)
  %add419 = add i32 %add417, %call418
  %add420 = add i32 %add419, 1
  %call421 = call i8* @hcalloc(i32 %add420)
  store i8* %call421, i8** %zz, align 4
  %267 = load i8*, i8** %zz, align 4
  %268 = load i8*, i8** %str3, align 4
  %269 = load i32, i32* %prev1, align 4
  call void @ztrncpy(i8* %267, i8* %268, i32 %269)
  %270 = load i8*, i8** %zz, align 4
  %271 = load i8*, i8** %str4, align 4
  %272 = load i8*, i8** %str, align 4
  %273 = load i8*, i8** %str4, align 4
  %sub.ptr.lhs.cast422 = ptrtoint i8* %272 to i32
  %sub.ptr.rhs.cast423 = ptrtoint i8* %273 to i32
  %sub.ptr.sub424 = sub i32 %sub.ptr.lhs.cast422, %sub.ptr.rhs.cast423
  %call425 = call i8* @strncat(i8* %270, i8* %271, i32 %sub.ptr.sub424)
  %274 = load i8*, i8** %zz, align 4
  %275 = load i8*, i8** %str2, align 4
  %call426 = call i8* @strcat(i8* %274, i8* %275)
  %276 = load %union.linkroot*, %union.linkroot** %list.addr, align 4
  %277 = load %struct.linknode*, %struct.linknode** %node, align 4
  %278 = load i8*, i8** %zz, align 4
  %call427 = call %struct.linknode* @insertlinknode(%union.linkroot* %276, %struct.linknode* %277, i8* %278)
  %279 = load %struct.linknode*, %struct.linknode** %node, align 4
  %next428 = getelementptr inbounds %struct.linknode, %struct.linknode* %279, i32 0, i32 0
  %280 = load %struct.linknode*, %struct.linknode** %next428, align 4
  store %struct.linknode* %280, %struct.linknode** %node, align 4
  %281 = load i8*, i8** %str, align 4
  %282 = load i8, i8* %281, align 1
  %conv429 = sext i8 %282 to i32
  %cmp430 = icmp ne i32 %conv429, -112
  br i1 %cmp430, label %if.then432, label %if.else434

if.then432:                                       ; preds = %for.end413
  %283 = load i8*, i8** %str, align 4
  %incdec.ptr433 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %incdec.ptr433, i8** %str, align 4
  br label %if.end435

if.else434:                                       ; preds = %for.end413
  br label %for.end436

if.end435:                                        ; preds = %if.then432
  br label %for.cond388

for.end436:                                       ; preds = %if.else434
  %284 = load %struct.linknode*, %struct.linknode** %last, align 4
  %next437 = getelementptr inbounds %struct.linknode, %struct.linknode* %284, i32 0, i32 0
  %285 = load %struct.linknode*, %struct.linknode** %next437, align 4
  %286 = load %struct.linknode**, %struct.linknode*** %np.addr, align 4
  store %struct.linknode* %285, %struct.linknode** %286, align 4
  br label %return

return:                                           ; preds = %for.end436, %for.end379, %for.end251, %do.end
  ret void
}

declare void @mb_charinit() #1

declare i8* @wcs_nicechar(i32, i32*, i8**) #1

declare i8* @strcpy(i8*, i8*) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @strcat(i8*, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare void @ztrncpy(i8*, i8*, i32) #1

declare i8* @strncat(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind
define i32 @matchpat(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 4
  %b.addr = alloca i8*, align 4
  %p = alloca %struct.patprog*, align 4
  %ret = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp6 = alloca %struct.__sigset_t, align 4
  store i8* %a, i8** %a.addr, align 4
  store i8* %b, i8** %b.addr, align 4
  %0 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  %1 = load i8*, i8** %b.addr, align 4
  %call = call %struct.patprog* @patcompile(i8* %1, i32 64, i8** null)
  store %struct.patprog* %call, %struct.patprog** %p, align 4
  %tobool = icmp ne %struct.patprog* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %b.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %2)
  store i32 0, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.patprog*, %struct.patprog** %p, align 4
  %4 = load i8*, i8** %a.addr, align 4
  %call1 = call i32 @pattry(%struct.patprog* %3, i8* %4)
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool2 = icmp ne i32 %dec, 0
  br i1 %tobool2, label %if.end7, label %if.then3

if.then3:                                         ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body4
  %6 = load i32, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %8, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %9 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %9
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %10 = bitcast %struct.__sigset_t* %oset to i8*
  %11 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 4, i1 false)
  %12 = load i32, i32* @queue_front, align 4
  %arrayidx5 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %12
  %13 = load i32, i32* %arrayidx5, align 4
  call void @zhandler(i32 %13)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp6, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  %14 = load i32, i32* %ret, align 4
  ret i32 %14
}

declare %struct.patprog* @patcompile(i8*, i32, i8**) #1

declare i32 @pattry(%struct.patprog*, i8*) #1

; Function Attrs: noinline nounwind
define i32 @getmatch(i8** %sp, i8* %pat, i32 %fl, i32 %n, i8* %replstr) #0 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca i8**, align 4
  %pat.addr = alloca i8*, align 4
  %fl.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %replstr.addr = alloca i8*, align 4
  %p = alloca %struct.patprog*, align 4
  store i8** %sp, i8*** %sp.addr, align 4
  store i8* %pat, i8** %pat.addr, align 4
  store i32 %fl, i32* %fl.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %replstr, i8** %replstr.addr, align 4
  %0 = load i8*, i8** %pat.addr, align 4
  %call = call %struct.patprog* @compgetmatch(i8* %0, i32* %fl.addr, i8** %replstr.addr)
  store %struct.patprog* %call, %struct.patprog** %p, align 4
  %tobool = icmp ne %struct.patprog* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %sp.addr, align 4
  %2 = load %struct.patprog*, %struct.patprog** %p, align 4
  %3 = load i32, i32* %fl.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i8*, i8** %replstr.addr, align 4
  %call1 = call i32 @igetmatch(i8** %1, %struct.patprog* %2, i32 %3, i32 %4, i8* %5, %union.linkroot** null)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal %struct.patprog* @compgetmatch(i8* %pat, i32* %flp, i8** %replstrp) #0 {
entry:
  %retval = alloca %struct.patprog*, align 4
  %pat.addr = alloca i8*, align 4
  %flp.addr = alloca i32*, align 4
  %replstrp.addr = alloca i8**, align 4
  %p = alloca %struct.patprog*, align 4
  %patflags = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 4
  store i32* %flp, i32** %flp.addr, align 4
  store i8** %replstrp, i8*** %replstrp.addr, align 4
  %0 = load i8**, i8*** %replstrp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  %tobool = icmp ne i8* %1, null
  %cond = select i1 %tobool, i32 0, i32 64
  %or = or i32 136, %cond
  store i32 %or, i32* %patflags, align 4
  %2 = load i32*, i32** %flp.addr, align 4
  %3 = load i32, i32* %2, align 4
  %and = and i32 %3, 256
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32*, i32** %flp.addr, align 4
  %5 = load i32, i32* %4, align 4
  %and2 = and i32 %5, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32*, i32** %flp.addr, align 4
  %7 = load i32, i32* %6, align 4
  %and4 = and i32 %7, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %patflags, align 4
  %and6 = and i32 %8, -9
  store i32 %and6, i32* %patflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %9 = load i8*, i8** %pat.addr, align 4
  %10 = load i32, i32* %patflags, align 4
  %call = call %struct.patprog* @patcompile(i8* %9, i32 %10, i8** null)
  store %struct.patprog* %call, %struct.patprog** %p, align 4
  %11 = load %struct.patprog*, %struct.patprog** %p, align 4
  %tobool7 = icmp ne %struct.patprog* %11, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %12 = load i8*, i8** %pat.addr, align 4
  call void (i8*, ...) @zerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %12)
  store %struct.patprog* null, %struct.patprog** %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load i8**, i8*** %replstrp.addr, align 4
  %14 = load i8*, i8** %13, align 4
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end9
  %15 = load %struct.patprog*, %struct.patprog** %p, align 4
  %patnpar = getelementptr inbounds %struct.patprog, %struct.patprog* %15, i32 0, i32 7
  %16 = load i32, i32* %patnpar, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then11
  %17 = load %struct.patprog*, %struct.patprog** %p, align 4
  %globend = getelementptr inbounds %struct.patprog, %struct.patprog* %17, i32 0, i32 5
  %18 = load i32, i32* %globend, align 4
  %and14 = and i32 %18, 2048
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %lor.lhs.false13, %if.then11
  %19 = load i32*, i32** %flp.addr, align 4
  %20 = load i32, i32* %19, align 4
  %or17 = or i32 %20, 1024
  store i32 %or17, i32* %19, align 4
  br label %if.end18

if.else:                                          ; preds = %lor.lhs.false13
  %21 = load i8**, i8*** %replstrp.addr, align 4
  call void @singsub(i8** %21)
  %22 = load i8**, i8*** %replstrp.addr, align 4
  %23 = load i8*, i8** %22, align 4
  call void @untokenize(i8* %23)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end9
  %24 = load %struct.patprog*, %struct.patprog** %p, align 4
  store %struct.patprog* %24, %struct.patprog** %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then8
  %25 = load %struct.patprog*, %struct.patprog** %retval, align 4
  ret %struct.patprog* %25
}

; Function Attrs: noinline nounwind
define internal i32 @igetmatch(i8** %sp, %struct.patprog* %p, i32 %fl, i32 %n, i8* %replstr, %union.linkroot** %repllistp) #0 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca i8**, align 4
  %p.addr = alloca %struct.patprog*, align 4
  %fl.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %replstr.addr = alloca i8*, align 4
  %repllistp.addr = alloca %union.linkroot**, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  %tmatch = alloca i8*, align 4
  %send = alloca i8*, align 4
  %ioff = alloca i32, align 4
  %l = alloca i32, align 4
  %matched = alloca i32, align 4
  %umltot = alloca i32, align 4
  %umlen = alloca i32, align 4
  %nmatches = alloca i32, align 4
  %patstralloc = alloca %struct.patstralloc, align 4
  %imd = alloca %struct.imatchdata, align 4
  %muststr = alloca i8*, align 4
  %i = alloca i32, align 4
  %mlen46 = alloca i32, align 4
  %mpos = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %umlen2 = alloca i32, align 4
  %mpos310 = alloca i8*, align 4
  %nd = alloca %struct.linknode*, align 4
  %rd = alloca %struct.repldata*, align 4
  %lleft = alloca i32, align 4
  %ptr387 = alloca i8*, align 4
  %start = alloca i8*, align 4
  %i388 = alloca i32, align 4
  store i8** %sp, i8*** %sp.addr, align 4
  store %struct.patprog* %p, %struct.patprog** %p.addr, align 4
  store i32 %fl, i32* %fl.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %replstr, i8** %replstr.addr, align 4
  store %union.linkroot** %repllistp, %union.linkroot*** %repllistp.addr, align 4
  %0 = load i8**, i8*** %sp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %s, align 4
  %2 = load i8**, i8*** %sp.addr, align 4
  %3 = load i8*, i8** %2, align 4
  %call = call i32 @strlen(i8* %3)
  store i32 %call, i32* %l, align 4
  store i32 1, i32* %matched, align 4
  %4 = load i8**, i8*** %sp.addr, align 4
  %5 = load i8*, i8** %4, align 4
  %call1 = call i32 @ztrlen(i8* %5)
  store i32 %call1, i32* %umltot, align 4
  %6 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %7 = load i8*, i8** %s, align 4
  %8 = load i32, i32* %l, align 4
  %9 = load i32, i32* %umltot, align 4
  %call2 = call i8* @patallocstr(%struct.patprog* %6, i8* %7, i32 %8, i32 %9, i32 1, %struct.patstralloc* %patstralloc)
  %alloced = getelementptr inbounds %struct.patstralloc, %struct.patstralloc* %patstralloc, i32 0, i32 2
  %10 = load i8*, i8** %alloced, align 4
  store i8* %10, i8** %s, align 4
  %11 = load i8*, i8** %s, align 4
  %12 = load i32, i32* %umltot, align 4
  %add.ptr = getelementptr inbounds i8, i8* %11, i32 %12
  store i8* %add.ptr, i8** %send, align 4
  %13 = load i8**, i8*** %sp.addr, align 4
  %14 = load i8*, i8** %13, align 4
  %mstr = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 0
  store i8* %14, i8** %mstr, align 4
  %15 = load i32, i32* %l, align 4
  %mlen = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 1
  store i32 %15, i32* %mlen, align 4
  %16 = load i8*, i8** %s, align 4
  %ustr = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 2
  store i8* %16, i8** %ustr, align 4
  %17 = load i32, i32* %umltot, align 4
  %ulen = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 3
  store i32 %17, i32* %ulen, align 4
  %18 = load i32, i32* %fl.addr, align 4
  %flags = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 4
  store i32 %18, i32* %flags, align 4
  %19 = load i8*, i8** %replstr.addr, align 4
  %replstr3 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 5
  store i8* %19, i8** %replstr3, align 4
  %repllist = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  store %union.linkroot* null, %union.linkroot** %repllist, align 4
  %20 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %mustoff = getelementptr inbounds %struct.patprog, %struct.patprog* %20, i32 0, i32 2
  %21 = load i32, i32* %mustoff, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %22 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %23 = bitcast %struct.patprog* %22 to i8*
  %24 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %mustoff4 = getelementptr inbounds %struct.patprog, %struct.patprog* %24, i32 0, i32 2
  %25 = load i32, i32* %mustoff4, align 4
  %add.ptr5 = getelementptr inbounds i8, i8* %23, i32 %25
  store i8* %add.ptr5, i8** %muststr, align 4
  store i32 0, i32* %matched, align 4
  %26 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %patmlen = getelementptr inbounds %struct.patprog, %struct.patprog* %26, i32 0, i32 3
  %27 = load i32, i32* %patmlen, align 4
  %28 = load i32, i32* %umltot, align 4
  %cmp = icmp sle i32 %27, %28
  br i1 %cmp, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.then
  %29 = load i8*, i8** %s, align 4
  store i8* %29, i8** %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %30 = load i8*, i8** %t, align 4
  %31 = load i8*, i8** %send, align 4
  %32 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %patmlen7 = getelementptr inbounds %struct.patprog, %struct.patprog* %32, i32 0, i32 3
  %33 = load i32, i32* %patmlen7, align 4
  %idx.neg = sub i32 0, %33
  %add.ptr8 = getelementptr inbounds i8, i8* %31, i32 %idx.neg
  %cmp9 = icmp ule i8* %30, %add.ptr8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %muststr, align 4
  %35 = load i8*, i8** %t, align 4
  %36 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %patmlen10 = getelementptr inbounds %struct.patprog, %struct.patprog* %36, i32 0, i32 3
  %37 = load i32, i32* %patmlen10, align 4
  %call11 = call i32 @memcmp(i8* %34, i8* %35, i32 %37)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %for.body
  store i32 1, i32* %matched, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i8*, i8** %t, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %t, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then13, %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %39 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags16 = getelementptr inbounds %struct.patprog, %struct.patprog* %39, i32 0, i32 6
  %40 = load i32, i32* %flags16, align 4
  %and = and i32 %40, -1537
  store i32 %and, i32* %flags16, align 4
  %41 = load i32, i32* %fl.addr, align 4
  %and17 = and i32 %41, 256
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end39

if.then19:                                        ; preds = %if.end15
  %42 = load i32, i32* %matched, align 4
  %tobool20 = icmp ne i32 %42, 0
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then19
  %43 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %44 = load i8*, i8** %s, align 4
  %45 = load i32, i32* %umltot, align 4
  %call21 = call i32 @pattrylen(%struct.patprog* %43, i8* %44, i32 %45, i32 0, %struct.patstralloc* %patstralloc, i32 0)
  %tobool22 = icmp ne i32 %call21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then19
  %46 = phi i1 [ false, %if.then19 ], [ %tobool22, %land.rhs ]
  %land.ext = zext i1 %46 to i32
  store i32 %land.ext, i32* %i, align 4
  %47 = load i32, i32* %i, align 4
  %tobool23 = icmp ne i32 %47, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %land.end
  store i32 0, i32* %umltot, align 4
  %replstr25 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 5
  store i8* null, i8** %replstr25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.end
  %48 = load i32, i32* %umltot, align 4
  %call27 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 0, i32 %48)
  %49 = load i8**, i8*** %sp.addr, align 4
  store i8* %call27, i8** %49, align 4
  %50 = load i8**, i8*** %sp.addr, align 4
  %51 = load i8*, i8** %50, align 4
  %52 = load i8, i8* %51, align 1
  %tobool28 = icmp ne i8 %52, 0
  br i1 %tobool28, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26
  %53 = load i32, i32* %fl.addr, align 4
  %and29 = and i32 %53, 8
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true31, label %lor.lhs.false

land.lhs.true31:                                  ; preds = %land.lhs.true
  %54 = load i32, i32* %i, align 4
  %tobool32 = icmp ne i32 %54, 0
  br i1 %tobool32, label %lor.lhs.false, label %if.then37

lor.lhs.false:                                    ; preds = %land.lhs.true31, %land.lhs.true
  %55 = load i32, i32* %fl.addr, align 4
  %and33 = and i32 %55, 16
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.end38

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %56 = load i32, i32* %i, align 4
  %tobool36 = icmp ne i32 %56, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true35, %land.lhs.true31
  store i32 0, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %land.lhs.true35, %lor.lhs.false, %if.end26
  store i32 1, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end15
  %57 = load i32, i32* %matched, align 4
  %tobool40 = icmp ne i32 %57, 0
  br i1 %tobool40, label %if.then41, label %if.end380

if.then41:                                        ; preds = %if.end39
  %58 = load i32, i32* %fl.addr, align 4
  %and42 = and i32 %58, 7
  switch i32 %and42, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb69
    i32 3, label %sw.bb106
    i32 4, label %sw.bb144
    i32 6, label %sw.bb155
    i32 5, label %sw.bb276
    i32 7, label %sw.bb276
  ]

sw.bb:                                            ; preds = %if.then41, %if.then41
  %59 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %60 = load i8*, i8** %s, align 4
  %61 = load i32, i32* %umltot, align 4
  %call43 = call i32 @pattrylen(%struct.patprog* %59, i8* %60, i32 %61, i32 0, %struct.patstralloc* %patstralloc, i32 0)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end68

if.then45:                                        ; preds = %sw.bb
  %call47 = call i32 @patmatchlen()
  store i32 %call47, i32* %mlen46, align 4
  %62 = load i32, i32* %fl.addr, align 4
  %and48 = and i32 %62, 2
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.end66, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.then45
  %63 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags51 = getelementptr inbounds %struct.patprog, %struct.patprog* %63, i32 0, i32 6
  %64 = load i32, i32* %flags51, align 4
  %and52 = and i32 %64, 32
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end66, label %if.then54

if.then54:                                        ; preds = %land.lhs.true50
  %65 = load i8*, i8** %s, align 4
  %66 = load i32, i32* %mlen46, align 4
  %add.ptr55 = getelementptr inbounds i8, i8* %65, i32 %66
  store i8* %add.ptr55, i8** %send, align 4
  call void @mb_charinit()
  %67 = load i8*, i8** %s, align 4
  store i8* %67, i8** %t, align 4
  store i32 0, i32* %umlen, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %if.end63, %if.then54
  %68 = load i8*, i8** %t, align 4
  %69 = load i8*, i8** %send, align 4
  %cmp57 = icmp ult i8* %68, %69
  br i1 %cmp57, label %for.body58, label %for.end65

for.body58:                                       ; preds = %for.cond56
  %70 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %71 = load i8*, i8** %t, align 4
  %72 = load i8, i8* %71, align 1
  call void @set_pat_end(%struct.patprog* %70, i8 signext %72)
  %73 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %74 = load i8*, i8** %s, align 4
  %75 = load i32, i32* %umlen, align 4
  %call59 = call i32 @pattrylen(%struct.patprog* %73, i8* %74, i32 %75, i32 0, %struct.patstralloc* %patstralloc, i32 0)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.body58
  %call62 = call i32 @patmatchlen()
  store i32 %call62, i32* %mlen46, align 4
  br label %for.end65

if.end63:                                         ; preds = %for.body58
  %76 = load i8*, i8** %send, align 4
  %77 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %76 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %77 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call64 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub)
  %78 = load i32, i32* %umlen, align 4
  %add = add nsw i32 %78, %call64
  store i32 %add, i32* %umlen, align 4
  br label %for.cond56

for.end65:                                        ; preds = %if.then61, %for.cond56
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %land.lhs.true50, %if.then45
  %79 = load i32, i32* %mlen46, align 4
  %call67 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 0, i32 %79)
  %80 = load i8**, i8*** %sp.addr, align 4
  store i8* %call67, i8** %80, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then41
  call void @mb_charinit()
  store i8* null, i8** %tmatch, align 4
  store i32 0, i32* %ioff, align 4
  %81 = load i8*, i8** %s, align 4
  store i8* %81, i8** %t, align 4
  %82 = load i32, i32* %umltot, align 4
  store i32 %82, i32* %umlen, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc88, %sw.bb69
  %83 = load i8*, i8** %t, align 4
  %84 = load i8*, i8** %send, align 4
  %cmp71 = icmp ult i8* %83, %84
  br i1 %cmp71, label %for.body72, label %for.end89

for.body72:                                       ; preds = %for.cond70
  %85 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %86 = load i8*, i8** %t, align 4
  %87 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast73 = ptrtoint i8* %86 to i32
  %sub.ptr.rhs.cast74 = ptrtoint i8* %87 to i32
  %sub.ptr.sub75 = sub i32 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  call void @set_pat_start(%struct.patprog* %85, i32 %sub.ptr.sub75)
  %88 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %89 = load i8*, i8** %t, align 4
  %90 = load i32, i32* %umlen, align 4
  %91 = load i32, i32* %ioff, align 4
  %call76 = call i32 @pattrylen(%struct.patprog* %88, i8* %89, i32 %90, i32 0, %struct.patstralloc* %patstralloc, i32 %91)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.body72
  %92 = load i8*, i8** %t, align 4
  store i8* %92, i8** %tmatch, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %for.body72
  %93 = load i32, i32* %fl.addr, align 4
  %and80 = and i32 %93, 4096
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end79
  br label %for.end89

if.end83:                                         ; preds = %if.end79
  %94 = load i8*, i8** %send, align 4
  %95 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast84 = ptrtoint i8* %94 to i32
  %sub.ptr.rhs.cast85 = ptrtoint i8* %95 to i32
  %sub.ptr.sub86 = sub i32 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %call87 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub86)
  %96 = load i32, i32* %umlen, align 4
  %sub = sub nsw i32 %96, %call87
  store i32 %sub, i32* %umlen, align 4
  br label %for.inc88

for.inc88:                                        ; preds = %if.end83
  %97 = load i32, i32* %ioff, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %ioff, align 4
  br label %for.cond70

for.end89:                                        ; preds = %if.then82, %for.cond70
  %98 = load i8*, i8** %tmatch, align 4
  %tobool90 = icmp ne i8* %98, null
  br i1 %tobool90, label %if.then91, label %if.end96

if.then91:                                        ; preds = %for.end89
  %99 = load i8*, i8** %tmatch, align 4
  %100 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast92 = ptrtoint i8* %99 to i32
  %sub.ptr.rhs.cast93 = ptrtoint i8* %100 to i32
  %sub.ptr.sub94 = sub i32 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  %101 = load i32, i32* %umltot, align 4
  %call95 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %sub.ptr.sub94, i32 %101)
  %102 = load i8**, i8*** %sp.addr, align 4
  store i8* %call95, i8** %102, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %for.end89
  %103 = load i32, i32* %fl.addr, align 4
  %and97 = and i32 %103, 4096
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end105, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %if.end96
  %104 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %105 = load i8*, i8** %s, align 4
  %106 = load i32, i32* %umltot, align 4
  %add.ptr100 = getelementptr inbounds i8, i8* %105, i32 %106
  %107 = load i32, i32* %ioff, align 4
  %call101 = call i32 @pattrylen(%struct.patprog* %104, i8* %add.ptr100, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 %107)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %land.lhs.true99
  %108 = load i32, i32* %umltot, align 4
  %109 = load i32, i32* %umltot, align 4
  %call104 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %108, i32 %109)
  %110 = load i8**, i8*** %sp.addr, align 4
  store i8* %call104, i8** %110, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %land.lhs.true99, %if.end96
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.then41
  call void @mb_charinit()
  store i32 0, i32* %ioff, align 4
  %111 = load i8*, i8** %s, align 4
  store i8* %111, i8** %t, align 4
  %112 = load i32, i32* %umltot, align 4
  store i32 %112, i32* %umlen, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc133, %sw.bb106
  %113 = load i8*, i8** %t, align 4
  %114 = load i8*, i8** %send, align 4
  %cmp108 = icmp ule i8* %113, %114
  br i1 %cmp108, label %for.body109, label %for.end135

for.body109:                                      ; preds = %for.cond107
  %115 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %116 = load i8*, i8** %t, align 4
  %117 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast110 = ptrtoint i8* %116 to i32
  %sub.ptr.rhs.cast111 = ptrtoint i8* %117 to i32
  %sub.ptr.sub112 = sub i32 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  call void @set_pat_start(%struct.patprog* %115, i32 %sub.ptr.sub112)
  %118 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %119 = load i8*, i8** %t, align 4
  %120 = load i32, i32* %umlen, align 4
  %121 = load i32, i32* %ioff, align 4
  %call113 = call i32 @pattrylen(%struct.patprog* %118, i8* %119, i32 %120, i32 0, %struct.patstralloc* %patstralloc, i32 %121)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end120

if.then115:                                       ; preds = %for.body109
  %122 = load i8*, i8** %t, align 4
  %123 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast116 = ptrtoint i8* %122 to i32
  %sub.ptr.rhs.cast117 = ptrtoint i8* %123 to i32
  %sub.ptr.sub118 = sub i32 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %124 = load i32, i32* %umltot, align 4
  %call119 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %sub.ptr.sub118, i32 %124)
  %125 = load i8**, i8*** %sp.addr, align 4
  store i8* %call119, i8** %125, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end120:                                        ; preds = %for.body109
  %126 = load i32, i32* %fl.addr, align 4
  %and121 = and i32 %126, 4096
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  br label %for.end135

if.end124:                                        ; preds = %if.end120
  %127 = load i8*, i8** %t, align 4
  %128 = load i8*, i8** %send, align 4
  %cmp125 = icmp eq i8* %127, %128
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end124
  br label %for.end135

if.end127:                                        ; preds = %if.end124
  %129 = load i8*, i8** %send, align 4
  %130 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast128 = ptrtoint i8* %129 to i32
  %sub.ptr.rhs.cast129 = ptrtoint i8* %130 to i32
  %sub.ptr.sub130 = sub i32 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %call131 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub130)
  %131 = load i32, i32* %umlen, align 4
  %sub132 = sub nsw i32 %131, %call131
  store i32 %sub132, i32* %umlen, align 4
  br label %for.inc133

for.inc133:                                       ; preds = %if.end127
  %132 = load i32, i32* %ioff, align 4
  %inc134 = add nsw i32 %132, 1
  store i32 %inc134, i32* %ioff, align 4
  br label %for.cond107

for.end135:                                       ; preds = %if.then126, %if.then123, %for.cond107
  %133 = load i32, i32* %fl.addr, align 4
  %and136 = and i32 %133, 4096
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.end143, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %for.end135
  %134 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %135 = load i8*, i8** %send, align 4
  %136 = load i32, i32* %ioff, align 4
  %call139 = call i32 @pattrylen(%struct.patprog* %134, i8* %135, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 %136)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %land.lhs.true138
  %137 = load i32, i32* %umltot, align 4
  %138 = load i32, i32* %umltot, align 4
  %call142 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %137, i32 %138)
  %139 = load i8**, i8*** %sp.addr, align 4
  store i8* %call142, i8** %139, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end143:                                        ; preds = %land.lhs.true138, %for.end135
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.then41
  %140 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %141 = load i32, i32* %l, align 4
  call void @set_pat_start(%struct.patprog* %140, i32 %141)
  %142 = load i32, i32* %fl.addr, align 4
  %and145 = and i32 %142, 512
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.end154, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %sw.bb144
  %143 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %144 = load i8*, i8** %send, align 4
  %call148 = call i32 @pattrylen(%struct.patprog* %143, i8* %144, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 0)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %land.lhs.true150, label %if.end154

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %145 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %145, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool151 = icmp ne i32 %dec, 0
  br i1 %tobool151, label %if.end154, label %if.then152

if.then152:                                       ; preds = %land.lhs.true150
  %call153 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 0, i32 0)
  %146 = load i8**, i8*** %sp.addr, align 4
  store i8* %call153, i8** %146, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end154:                                        ; preds = %land.lhs.true150, %land.lhs.true147, %sw.bb144
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.then41, %if.end154
  %147 = load i8*, i8** %s, align 4
  store i8* %147, i8** %t, align 4
  %148 = load i32, i32* %fl.addr, align 4
  %and156 = and i32 %148, 512
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then158, label %if.end168

if.then158:                                       ; preds = %sw.bb155
  %149 = load i32, i32* %fl.addr, align 4
  %and159 = and i32 %149, 8192
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then158
  %call161 = call %union.linkroot* @znewlinklist()
  br label %cond.end

cond.false:                                       ; preds = %if.then158
  %call162 = call %union.linkroot* @newlinklist()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.linkroot* [ %call161, %cond.true ], [ %call162, %cond.false ]
  %repllist163 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  store %union.linkroot* %cond, %union.linkroot** %repllist163, align 4
  %150 = load %union.linkroot**, %union.linkroot*** %repllistp.addr, align 4
  %tobool164 = icmp ne %union.linkroot** %150, null
  br i1 %tobool164, label %if.then165, label %if.end167

if.then165:                                       ; preds = %cond.end
  %repllist166 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  %151 = load %union.linkroot*, %union.linkroot** %repllist166, align 4
  %152 = load %union.linkroot**, %union.linkroot*** %repllistp.addr, align 4
  store %union.linkroot* %151, %union.linkroot** %152, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %cond.end
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %sw.bb155
  store i32 0, i32* %ioff, align 4
  %153 = load i32, i32* %umltot, align 4
  store i32 %153, i32* %umlen, align 4
  call void @mb_charinit()
  br label %do.body

do.body:                                          ; preds = %land.end263, %if.end168
  store i32 0, i32* %matched, align 4
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc257, %do.body
  %154 = load i8*, i8** %t, align 4
  %155 = load i8*, i8** %send, align 4
  %cmp170 = icmp ule i8* %154, %155
  br i1 %cmp170, label %for.body171, label %for.end259

for.body171:                                      ; preds = %for.cond169
  %156 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %157 = load i8*, i8** %t, align 4
  %158 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast172 = ptrtoint i8* %157 to i32
  %sub.ptr.rhs.cast173 = ptrtoint i8* %158 to i32
  %sub.ptr.sub174 = sub i32 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  call void @set_pat_start(%struct.patprog* %156, i32 %sub.ptr.sub174)
  %159 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %160 = load i8*, i8** %t, align 4
  %161 = load i32, i32* %umlen, align 4
  %162 = load i32, i32* %ioff, align 4
  %call175 = call i32 @pattrylen(%struct.patprog* %159, i8* %160, i32 %161, i32 0, %struct.patstralloc* %patstralloc, i32 %162)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then177, label %if.end248

if.then177:                                       ; preds = %for.body171
  %163 = load i8*, i8** %t, align 4
  %call178 = call i32 @patmatchlen()
  %add.ptr179 = getelementptr inbounds i8, i8* %163, i32 %call178
  store i8* %add.ptr179, i8** %mpos, align 4
  %164 = load i32, i32* %fl.addr, align 4
  %and180 = and i32 %164, 2
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.end202, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %if.then177
  %165 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags183 = getelementptr inbounds %struct.patprog, %struct.patprog* %165, i32 0, i32 6
  %166 = load i32, i32* %flags183, align 4
  %and184 = and i32 %166, 32
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.end202, label %if.then186

if.then186:                                       ; preds = %land.lhs.true182
  %167 = load i8*, i8** %t, align 4
  store i8* %167, i8** %ptr, align 4
  store i32 0, i32* %umlen2, align 4
  br label %for.cond187

for.cond187:                                      ; preds = %if.end195, %if.then186
  %168 = load i8*, i8** %ptr, align 4
  %169 = load i8*, i8** %mpos, align 4
  %cmp188 = icmp ult i8* %168, %169
  br i1 %cmp188, label %for.body189, label %for.end201

for.body189:                                      ; preds = %for.cond187
  %170 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %171 = load i8*, i8** %ptr, align 4
  %172 = load i8, i8* %171, align 1
  call void @set_pat_end(%struct.patprog* %170, i8 signext %172)
  %173 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %174 = load i8*, i8** %t, align 4
  %175 = load i32, i32* %umlen2, align 4
  %176 = load i32, i32* %ioff, align 4
  %call190 = call i32 @pattrylen(%struct.patprog* %173, i8* %174, i32 %175, i32 0, %struct.patstralloc* %patstralloc, i32 %176)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then192, label %if.end195

if.then192:                                       ; preds = %for.body189
  %177 = load i8*, i8** %t, align 4
  %call193 = call i32 @patmatchlen()
  %add.ptr194 = getelementptr inbounds i8, i8* %177, i32 %call193
  store i8* %add.ptr194, i8** %mpos, align 4
  br label %for.end201

if.end195:                                        ; preds = %for.body189
  %178 = load i8*, i8** %mpos, align 4
  %179 = load i8*, i8** %ptr, align 4
  %sub.ptr.lhs.cast196 = ptrtoint i8* %178 to i32
  %sub.ptr.rhs.cast197 = ptrtoint i8* %179 to i32
  %sub.ptr.sub198 = sub i32 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %call199 = call i32 @iincchar(i8** %ptr, i32 %sub.ptr.sub198)
  %180 = load i32, i32* %umlen2, align 4
  %add200 = add nsw i32 %180, %call199
  store i32 %add200, i32* %umlen2, align 4
  br label %for.cond187

for.end201:                                       ; preds = %if.then192, %for.cond187
  br label %if.end202

if.end202:                                        ; preds = %for.end201, %land.lhs.true182, %if.then177
  %181 = load i32, i32* %n.addr, align 4
  %dec203 = add nsw i32 %181, -1
  store i32 %dec203, i32* %n.addr, align 4
  %tobool204 = icmp ne i32 %dec203, 0
  br i1 %tobool204, label %lor.lhs.false205, label %if.then210

lor.lhs.false205:                                 ; preds = %if.end202
  %182 = load i32, i32* %n.addr, align 4
  %cmp206 = icmp sle i32 %182, 0
  br i1 %cmp206, label %land.lhs.true207, label %if.end226

land.lhs.true207:                                 ; preds = %lor.lhs.false205
  %183 = load i32, i32* %fl.addr, align 4
  %and208 = and i32 %183, 512
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then210, label %if.end226

if.then210:                                       ; preds = %land.lhs.true207, %if.end202
  %184 = load i8*, i8** %t, align 4
  %185 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast211 = ptrtoint i8* %184 to i32
  %sub.ptr.rhs.cast212 = ptrtoint i8* %185 to i32
  %sub.ptr.sub213 = sub i32 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast212
  %186 = load i8*, i8** %mpos, align 4
  %187 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast214 = ptrtoint i8* %186 to i32
  %sub.ptr.rhs.cast215 = ptrtoint i8* %187 to i32
  %sub.ptr.sub216 = sub i32 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast215
  %call217 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %sub.ptr.sub213, i32 %sub.ptr.sub216)
  %188 = load i8**, i8*** %sp.addr, align 4
  store i8* %call217, i8** %188, align 4
  %189 = load i8*, i8** %mpos, align 4
  %190 = load i8*, i8** %t, align 4
  %cmp218 = icmp eq i8* %189, %190
  br i1 %cmp218, label %if.then219, label %if.end225

if.then219:                                       ; preds = %if.then210
  %191 = load i8*, i8** %mpos, align 4
  %192 = load i8*, i8** %send, align 4
  %193 = load i8*, i8** %mpos, align 4
  %sub.ptr.lhs.cast220 = ptrtoint i8* %192 to i32
  %sub.ptr.rhs.cast221 = ptrtoint i8* %193 to i32
  %sub.ptr.sub222 = sub i32 %sub.ptr.lhs.cast220, %sub.ptr.rhs.cast221
  %call223 = call i32 @mb_charlenconv(i8* %191, i32 %sub.ptr.sub222, i32* null)
  %194 = load i8*, i8** %mpos, align 4
  %add.ptr224 = getelementptr inbounds i8, i8* %194, i32 %call223
  store i8* %add.ptr224, i8** %mpos, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then219, %if.then210
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %land.lhs.true207, %lor.lhs.false205
  %195 = load i32, i32* %fl.addr, align 4
  %and227 = and i32 %195, 512
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.end237, label %if.then229

if.then229:                                       ; preds = %if.end226
  %196 = load i32, i32* %n.addr, align 4
  %tobool230 = icmp ne i32 %196, 0
  br i1 %tobool230, label %if.then231, label %if.else

if.then231:                                       ; preds = %if.then229
  %197 = load i8*, i8** %send, align 4
  %198 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast232 = ptrtoint i8* %197 to i32
  %sub.ptr.rhs.cast233 = ptrtoint i8* %198 to i32
  %sub.ptr.sub234 = sub i32 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %call235 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub234)
  %199 = load i32, i32* %umlen, align 4
  %sub236 = sub nsw i32 %199, %call235
  store i32 %sub236, i32* %umlen, align 4
  br label %for.inc257

if.else:                                          ; preds = %if.then229
  store i32 1, i32* %retval, align 4
  br label %return

if.end237:                                        ; preds = %if.end226
  store i32 1, i32* %matched, align 4
  %200 = load i8*, i8** %t, align 4
  %201 = load i8*, i8** %send, align 4
  %cmp238 = icmp eq i8* %200, %201
  br i1 %cmp238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.end237
  br label %for.end259

if.end240:                                        ; preds = %if.end237
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end240
  %202 = load i8*, i8** %t, align 4
  %203 = load i8*, i8** %mpos, align 4
  %cmp241 = icmp ult i8* %202, %203
  br i1 %cmp241, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %204 = load i32, i32* %ioff, align 4
  %inc242 = add nsw i32 %204, 1
  store i32 %inc242, i32* %ioff, align 4
  %205 = load i8*, i8** %send, align 4
  %206 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast243 = ptrtoint i8* %205 to i32
  %sub.ptr.rhs.cast244 = ptrtoint i8* %206 to i32
  %sub.ptr.sub245 = sub i32 %sub.ptr.lhs.cast243, %sub.ptr.rhs.cast244
  %call246 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub245)
  %207 = load i32, i32* %umlen, align 4
  %sub247 = sub nsw i32 %207, %call246
  store i32 %sub247, i32* %umlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.end259

if.end248:                                        ; preds = %for.body171
  %208 = load i8*, i8** %t, align 4
  %209 = load i8*, i8** %send, align 4
  %cmp249 = icmp eq i8* %208, %209
  br i1 %cmp249, label %if.then250, label %if.end251

if.then250:                                       ; preds = %if.end248
  br label %for.end259

if.end251:                                        ; preds = %if.end248
  %210 = load i8*, i8** %send, align 4
  %211 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast252 = ptrtoint i8* %210 to i32
  %sub.ptr.rhs.cast253 = ptrtoint i8* %211 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %call255 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub254)
  %212 = load i32, i32* %umlen, align 4
  %sub256 = sub nsw i32 %212, %call255
  store i32 %sub256, i32* %umlen, align 4
  br label %for.inc257

for.inc257:                                       ; preds = %if.end251, %if.then231
  %213 = load i32, i32* %ioff, align 4
  %inc258 = add nsw i32 %213, 1
  store i32 %inc258, i32* %ioff, align 4
  br label %for.cond169

for.end259:                                       ; preds = %if.then250, %while.end, %if.then239, %for.cond169
  br label %do.cond

do.cond:                                          ; preds = %for.end259
  %214 = load i32, i32* %matched, align 4
  %tobool260 = icmp ne i32 %214, 0
  br i1 %tobool260, label %land.rhs261, label %land.end263

land.rhs261:                                      ; preds = %do.cond
  %215 = load i8*, i8** %t, align 4
  %216 = load i8*, i8** %send, align 4
  %cmp262 = icmp ult i8* %215, %216
  br label %land.end263

land.end263:                                      ; preds = %land.rhs261, %do.cond
  %217 = phi i1 [ false, %do.cond ], [ %cmp262, %land.rhs261 ]
  br i1 %217, label %do.body, label %do.end

do.end:                                           ; preds = %land.end263
  %218 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %219 = load i32, i32* %l, align 4
  call void @set_pat_start(%struct.patprog* %218, i32 %219)
  %220 = load i32, i32* %fl.addr, align 4
  %and265 = and i32 %220, 514
  %cmp266 = icmp eq i32 %and265, 2
  br i1 %cmp266, label %land.lhs.true267, label %if.end275

land.lhs.true267:                                 ; preds = %do.end
  %221 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %222 = load i8*, i8** %send, align 4
  %call268 = call i32 @pattrylen(%struct.patprog* %221, i8* %222, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 0)
  %tobool269 = icmp ne i32 %call268, 0
  br i1 %tobool269, label %land.lhs.true270, label %if.end275

land.lhs.true270:                                 ; preds = %land.lhs.true267
  %223 = load i32, i32* %n.addr, align 4
  %dec271 = add nsw i32 %223, -1
  store i32 %dec271, i32* %n.addr, align 4
  %tobool272 = icmp ne i32 %dec271, 0
  br i1 %tobool272, label %if.end275, label %if.then273

if.then273:                                       ; preds = %land.lhs.true270
  %call274 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 0, i32 0)
  %224 = load i8**, i8*** %sp.addr, align 4
  store i8* %call274, i8** %224, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end275:                                        ; preds = %land.lhs.true270, %land.lhs.true267, %do.end
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.then41, %if.then41
  %225 = load i32, i32* %fl.addr, align 4
  %and277 = and i32 %225, 2
  %tobool278 = icmp ne i32 %and277, 0
  br i1 %tobool278, label %if.end288, label %if.then279

if.then279:                                       ; preds = %sw.bb276
  %226 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %227 = load i32, i32* %l, align 4
  call void @set_pat_start(%struct.patprog* %226, i32 %227)
  %228 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %229 = load i8*, i8** %send, align 4
  %230 = load i32, i32* %umltot, align 4
  %call280 = call i32 @pattrylen(%struct.patprog* %228, i8* %229, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 %230)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %land.lhs.true282, label %if.end287

land.lhs.true282:                                 ; preds = %if.then279
  %231 = load i32, i32* %n.addr, align 4
  %dec283 = add nsw i32 %231, -1
  store i32 %dec283, i32* %n.addr, align 4
  %tobool284 = icmp ne i32 %dec283, 0
  br i1 %tobool284, label %if.end287, label %if.then285

if.then285:                                       ; preds = %land.lhs.true282
  %232 = load i32, i32* %umltot, align 4
  %233 = load i32, i32* %umltot, align 4
  %call286 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %232, i32 %233)
  %234 = load i8**, i8*** %sp.addr, align 4
  store i8* %call286, i8** %234, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end287:                                        ; preds = %land.lhs.true282, %if.then279
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %sw.bb276
  store i32 0, i32* %nmatches, align 4
  store i8* null, i8** %tmatch, align 4
  call void @mb_charinit()
  store i32 0, i32* %ioff, align 4
  %235 = load i8*, i8** %s, align 4
  store i8* %235, i8** %t, align 4
  %236 = load i32, i32* %umltot, align 4
  store i32 %236, i32* %umlen, align 4
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc305, %if.end288
  %237 = load i8*, i8** %t, align 4
  %238 = load i8*, i8** %send, align 4
  %cmp290 = icmp ult i8* %237, %238
  br i1 %cmp290, label %for.body291, label %for.end307

for.body291:                                      ; preds = %for.cond289
  %239 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %240 = load i8*, i8** %t, align 4
  %241 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast292 = ptrtoint i8* %240 to i32
  %sub.ptr.rhs.cast293 = ptrtoint i8* %241 to i32
  %sub.ptr.sub294 = sub i32 %sub.ptr.lhs.cast292, %sub.ptr.rhs.cast293
  call void @set_pat_start(%struct.patprog* %239, i32 %sub.ptr.sub294)
  %242 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %243 = load i8*, i8** %t, align 4
  %244 = load i32, i32* %umlen, align 4
  %245 = load i32, i32* %ioff, align 4
  %call295 = call i32 @pattrylen(%struct.patprog* %242, i8* %243, i32 %244, i32 0, %struct.patstralloc* %patstralloc, i32 %245)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.then297, label %if.end299

if.then297:                                       ; preds = %for.body291
  %246 = load i32, i32* %nmatches, align 4
  %inc298 = add nsw i32 %246, 1
  store i32 %inc298, i32* %nmatches, align 4
  %247 = load i8*, i8** %t, align 4
  store i8* %247, i8** %tmatch, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %for.body291
  %248 = load i8*, i8** %send, align 4
  %249 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast300 = ptrtoint i8* %248 to i32
  %sub.ptr.rhs.cast301 = ptrtoint i8* %249 to i32
  %sub.ptr.sub302 = sub i32 %sub.ptr.lhs.cast300, %sub.ptr.rhs.cast301
  %call303 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub302)
  %250 = load i32, i32* %umlen, align 4
  %sub304 = sub nsw i32 %250, %call303
  store i32 %sub304, i32* %umlen, align 4
  br label %for.inc305

for.inc305:                                       ; preds = %if.end299
  %251 = load i32, i32* %ioff, align 4
  %inc306 = add nsw i32 %251, 1
  store i32 %inc306, i32* %ioff, align 4
  br label %for.cond289

for.end307:                                       ; preds = %for.cond289
  %252 = load i32, i32* %nmatches, align 4
  %tobool308 = icmp ne i32 %252, 0
  br i1 %tobool308, label %if.then309, label %if.end368

if.then309:                                       ; preds = %for.end307
  %253 = load i32, i32* %n.addr, align 4
  %cmp311 = icmp sgt i32 %253, 1
  br i1 %cmp311, label %if.then312, label %if.end335

if.then312:                                       ; preds = %if.then309
  %254 = load i32, i32* %nmatches, align 4
  %255 = load i32, i32* %n.addr, align 4
  %sub313 = sub nsw i32 %254, %255
  store i32 %sub313, i32* %n.addr, align 4
  call void @mb_charinit()
  store i32 0, i32* %ioff, align 4
  %256 = load i8*, i8** %s, align 4
  store i8* %256, i8** %t, align 4
  %257 = load i32, i32* %umltot, align 4
  store i32 %257, i32* %umlen, align 4
  br label %for.cond314

for.cond314:                                      ; preds = %for.inc332, %if.then312
  %258 = load i8*, i8** %t, align 4
  %259 = load i8*, i8** %send, align 4
  %cmp315 = icmp ult i8* %258, %259
  br i1 %cmp315, label %for.body316, label %for.end334

for.body316:                                      ; preds = %for.cond314
  %260 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %261 = load i8*, i8** %t, align 4
  %262 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast317 = ptrtoint i8* %261 to i32
  %sub.ptr.rhs.cast318 = ptrtoint i8* %262 to i32
  %sub.ptr.sub319 = sub i32 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
  call void @set_pat_start(%struct.patprog* %260, i32 %sub.ptr.sub319)
  %263 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %264 = load i8*, i8** %t, align 4
  %265 = load i32, i32* %umlen, align 4
  %266 = load i32, i32* %ioff, align 4
  %call320 = call i32 @pattrylen(%struct.patprog* %263, i8* %264, i32 %265, i32 0, %struct.patstralloc* %patstralloc, i32 %266)
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %land.lhs.true322, label %if.end326

land.lhs.true322:                                 ; preds = %for.body316
  %267 = load i32, i32* %n.addr, align 4
  %dec323 = add nsw i32 %267, -1
  store i32 %dec323, i32* %n.addr, align 4
  %tobool324 = icmp ne i32 %267, 0
  br i1 %tobool324, label %if.end326, label %if.then325

if.then325:                                       ; preds = %land.lhs.true322
  %268 = load i8*, i8** %t, align 4
  store i8* %268, i8** %tmatch, align 4
  br label %for.end334

if.end326:                                        ; preds = %land.lhs.true322, %for.body316
  %269 = load i8*, i8** %send, align 4
  %270 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast327 = ptrtoint i8* %269 to i32
  %sub.ptr.rhs.cast328 = ptrtoint i8* %270 to i32
  %sub.ptr.sub329 = sub i32 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %call330 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub329)
  %271 = load i32, i32* %umlen, align 4
  %sub331 = sub nsw i32 %271, %call330
  store i32 %sub331, i32* %umlen, align 4
  br label %for.inc332

for.inc332:                                       ; preds = %if.end326
  %272 = load i32, i32* %ioff, align 4
  %inc333 = add nsw i32 %272, 1
  store i32 %inc333, i32* %ioff, align 4
  br label %for.cond314

for.end334:                                       ; preds = %if.then325, %for.cond314
  br label %if.end335

if.end335:                                        ; preds = %for.end334, %if.then309
  %273 = load i8*, i8** %tmatch, align 4
  %call336 = call i32 @patmatchlen()
  %add.ptr337 = getelementptr inbounds i8, i8* %273, i32 %call336
  store i8* %add.ptr337, i8** %mpos310, align 4
  %274 = load i32, i32* %fl.addr, align 4
  %and338 = and i32 %274, 2
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %if.end360, label %land.lhs.true340

land.lhs.true340:                                 ; preds = %if.end335
  %275 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags341 = getelementptr inbounds %struct.patprog, %struct.patprog* %275, i32 0, i32 6
  %276 = load i32, i32* %flags341, align 4
  %and342 = and i32 %276, 32
  %tobool343 = icmp ne i32 %and342, 0
  br i1 %tobool343, label %if.end360, label %if.then344

if.then344:                                       ; preds = %land.lhs.true340
  %277 = load i8*, i8** %tmatch, align 4
  store i8* %277, i8** %t, align 4
  store i32 0, i32* %umlen, align 4
  br label %for.cond345

for.cond345:                                      ; preds = %if.end353, %if.then344
  %278 = load i8*, i8** %t, align 4
  %279 = load i8*, i8** %mpos310, align 4
  %cmp346 = icmp ult i8* %278, %279
  br i1 %cmp346, label %for.body347, label %for.end359

for.body347:                                      ; preds = %for.cond345
  %280 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %281 = load i8*, i8** %t, align 4
  %282 = load i8, i8* %281, align 1
  call void @set_pat_end(%struct.patprog* %280, i8 signext %282)
  %283 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %284 = load i8*, i8** %tmatch, align 4
  %285 = load i32, i32* %umlen, align 4
  %286 = load i32, i32* %ioff, align 4
  %call348 = call i32 @pattrylen(%struct.patprog* %283, i8* %284, i32 %285, i32 0, %struct.patstralloc* %patstralloc, i32 %286)
  %tobool349 = icmp ne i32 %call348, 0
  br i1 %tobool349, label %if.then350, label %if.end353

if.then350:                                       ; preds = %for.body347
  %287 = load i8*, i8** %tmatch, align 4
  %call351 = call i32 @patmatchlen()
  %add.ptr352 = getelementptr inbounds i8, i8* %287, i32 %call351
  store i8* %add.ptr352, i8** %mpos310, align 4
  br label %for.end359

if.end353:                                        ; preds = %for.body347
  %288 = load i8*, i8** %mpos310, align 4
  %289 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast354 = ptrtoint i8* %288 to i32
  %sub.ptr.rhs.cast355 = ptrtoint i8* %289 to i32
  %sub.ptr.sub356 = sub i32 %sub.ptr.lhs.cast354, %sub.ptr.rhs.cast355
  %call357 = call i32 @iincchar(i8** %t, i32 %sub.ptr.sub356)
  %290 = load i32, i32* %umlen, align 4
  %add358 = add nsw i32 %290, %call357
  store i32 %add358, i32* %umlen, align 4
  br label %for.cond345

for.end359:                                       ; preds = %if.then350, %for.cond345
  br label %if.end360

if.end360:                                        ; preds = %for.end359, %land.lhs.true340, %if.end335
  %291 = load i8*, i8** %tmatch, align 4
  %292 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast361 = ptrtoint i8* %291 to i32
  %sub.ptr.rhs.cast362 = ptrtoint i8* %292 to i32
  %sub.ptr.sub363 = sub i32 %sub.ptr.lhs.cast361, %sub.ptr.rhs.cast362
  %293 = load i8*, i8** %mpos310, align 4
  %294 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast364 = ptrtoint i8* %293 to i32
  %sub.ptr.rhs.cast365 = ptrtoint i8* %294 to i32
  %sub.ptr.sub366 = sub i32 %sub.ptr.lhs.cast364, %sub.ptr.rhs.cast365
  %call367 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %sub.ptr.sub363, i32 %sub.ptr.sub366)
  %295 = load i8**, i8*** %sp.addr, align 4
  store i8* %call367, i8** %295, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end368:                                        ; preds = %for.end307
  %296 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %297 = load i32, i32* %l, align 4
  call void @set_pat_start(%struct.patprog* %296, i32 %297)
  %298 = load i32, i32* %fl.addr, align 4
  %and369 = and i32 %298, 2
  %tobool370 = icmp ne i32 %and369, 0
  br i1 %tobool370, label %land.lhs.true371, label %if.end379

land.lhs.true371:                                 ; preds = %if.end368
  %299 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %300 = load i8*, i8** %send, align 4
  %301 = load i32, i32* %umltot, align 4
  %call372 = call i32 @pattrylen(%struct.patprog* %299, i8* %300, i32 0, i32 0, %struct.patstralloc* %patstralloc, i32 %301)
  %tobool373 = icmp ne i32 %call372, 0
  br i1 %tobool373, label %land.lhs.true374, label %if.end379

land.lhs.true374:                                 ; preds = %land.lhs.true371
  %302 = load i32, i32* %n.addr, align 4
  %dec375 = add nsw i32 %302, -1
  store i32 %dec375, i32* %n.addr, align 4
  %tobool376 = icmp ne i32 %dec375, 0
  br i1 %tobool376, label %if.end379, label %if.then377

if.then377:                                       ; preds = %land.lhs.true374
  %303 = load i32, i32* %umltot, align 4
  %304 = load i32, i32* %umltot, align 4
  %call378 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 %303, i32 %304)
  %305 = load i8**, i8*** %sp.addr, align 4
  store i8* %call378, i8** %305, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end379:                                        ; preds = %land.lhs.true374, %land.lhs.true371, %if.end368
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then41, %if.end379, %if.end275, %if.end143, %if.end105, %if.end68
  br label %if.end380

if.end380:                                        ; preds = %sw.epilog, %if.end39
  %repllist381 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  %306 = load %union.linkroot*, %union.linkroot** %repllist381, align 4
  %tobool382 = icmp ne %union.linkroot* %306, null
  br i1 %tobool382, label %land.lhs.true383, label %if.end436

land.lhs.true383:                                 ; preds = %if.end380
  %repllist384 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  %307 = load %union.linkroot*, %union.linkroot** %repllist384, align 4
  %list = bitcast %union.linkroot* %307 to %struct.linklist*
  %first = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 0
  %308 = load %struct.linknode*, %struct.linknode** %first, align 4
  %cmp385 = icmp ne %struct.linknode* %308, null
  br i1 %cmp385, label %if.then386, label %if.end436

if.then386:                                       ; preds = %land.lhs.true383
  %309 = load i8**, i8*** %sp.addr, align 4
  %310 = load i8*, i8** %309, align 4
  store i8* %310, i8** %s, align 4
  %311 = load i32, i32* %fl.addr, align 4
  %and389 = and i32 %311, 8192
  %tobool390 = icmp ne i32 %and389, 0
  br i1 %tobool390, label %if.end435, label %if.then391

if.then391:                                       ; preds = %if.then386
  store i32 0, i32* %lleft, align 4
  store i32 0, i32* %i388, align 4
  %repllist392 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  %312 = load %union.linkroot*, %union.linkroot** %repllist392, align 4
  %list393 = bitcast %union.linkroot* %312 to %struct.linklist*
  %first394 = getelementptr inbounds %struct.linklist, %struct.linklist* %list393, i32 0, i32 0
  %313 = load %struct.linknode*, %struct.linknode** %first394, align 4
  store %struct.linknode* %313, %struct.linknode** %nd, align 4
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc403, %if.then391
  %314 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %tobool396 = icmp ne %struct.linknode* %314, null
  br i1 %tobool396, label %for.body397, label %for.end404

for.body397:                                      ; preds = %for.cond395
  %315 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %dat = getelementptr inbounds %struct.linknode, %struct.linknode* %315, i32 0, i32 2
  %316 = load i8*, i8** %dat, align 4
  %317 = bitcast i8* %316 to %struct.repldata*
  store %struct.repldata* %317, %struct.repldata** %rd, align 4
  %318 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %b = getelementptr inbounds %struct.repldata, %struct.repldata* %318, i32 0, i32 0
  %319 = load i32, i32* %b, align 4
  %320 = load i32, i32* %i388, align 4
  %sub398 = sub nsw i32 %319, %320
  %321 = load i32, i32* %lleft, align 4
  %add399 = add nsw i32 %321, %sub398
  store i32 %add399, i32* %lleft, align 4
  %322 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %replstr400 = getelementptr inbounds %struct.repldata, %struct.repldata* %322, i32 0, i32 2
  %323 = load i8*, i8** %replstr400, align 4
  %call401 = call i32 @strlen(i8* %323)
  %324 = load i32, i32* %lleft, align 4
  %add402 = add i32 %324, %call401
  store i32 %add402, i32* %lleft, align 4
  %325 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %e = getelementptr inbounds %struct.repldata, %struct.repldata* %325, i32 0, i32 1
  %326 = load i32, i32* %e, align 4
  store i32 %326, i32* %i388, align 4
  br label %for.inc403

for.inc403:                                       ; preds = %for.body397
  %327 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %next = getelementptr inbounds %struct.linknode, %struct.linknode* %327, i32 0, i32 0
  %328 = load %struct.linknode*, %struct.linknode** %next, align 4
  store %struct.linknode* %328, %struct.linknode** %nd, align 4
  br label %for.cond395

for.end404:                                       ; preds = %for.cond395
  %329 = load i32, i32* %l, align 4
  %330 = load i32, i32* %i388, align 4
  %sub405 = sub nsw i32 %329, %330
  %331 = load i32, i32* %lleft, align 4
  %add406 = add nsw i32 %331, %sub405
  store i32 %add406, i32* %lleft, align 4
  %332 = load i32, i32* %lleft, align 4
  %add407 = add nsw i32 %332, 1
  %call408 = call i8* @zhalloc(i32 %add407)
  store i8* %call408, i8** %t, align 4
  store i8* %call408, i8** %start, align 4
  store i32 0, i32* %i388, align 4
  %repllist409 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  %333 = load %union.linkroot*, %union.linkroot** %repllist409, align 4
  %list410 = bitcast %union.linkroot* %333 to %struct.linklist*
  %first411 = getelementptr inbounds %struct.linklist, %struct.linklist* %list410, i32 0, i32 0
  %334 = load %struct.linknode*, %struct.linknode** %first411, align 4
  store %struct.linknode* %334, %struct.linknode** %nd, align 4
  br label %for.cond412

for.cond412:                                      ; preds = %for.inc430, %for.end404
  %335 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %tobool413 = icmp ne %struct.linknode* %335, null
  br i1 %tobool413, label %for.body414, label %for.end432

for.body414:                                      ; preds = %for.cond412
  %336 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %dat415 = getelementptr inbounds %struct.linknode, %struct.linknode* %336, i32 0, i32 2
  %337 = load i8*, i8** %dat415, align 4
  %338 = bitcast i8* %337 to %struct.repldata*
  store %struct.repldata* %338, %struct.repldata** %rd, align 4
  %339 = load i8*, i8** %t, align 4
  %340 = load i8*, i8** %s, align 4
  %341 = load i32, i32* %i388, align 4
  %add.ptr416 = getelementptr inbounds i8, i8* %340, i32 %341
  %342 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %b417 = getelementptr inbounds %struct.repldata, %struct.repldata* %342, i32 0, i32 0
  %343 = load i32, i32* %b417, align 4
  %344 = load i32, i32* %i388, align 4
  %sub418 = sub nsw i32 %343, %344
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %339, i8* %add.ptr416, i32 %sub418, i32 1, i1 false)
  %345 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %b419 = getelementptr inbounds %struct.repldata, %struct.repldata* %345, i32 0, i32 0
  %346 = load i32, i32* %b419, align 4
  %347 = load i32, i32* %i388, align 4
  %sub420 = sub nsw i32 %346, %347
  %348 = load i8*, i8** %t, align 4
  %add.ptr421 = getelementptr inbounds i8, i8* %348, i32 %sub420
  store i8* %add.ptr421, i8** %t, align 4
  %349 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %replstr422 = getelementptr inbounds %struct.repldata, %struct.repldata* %349, i32 0, i32 2
  %350 = load i8*, i8** %replstr422, align 4
  store i8* %350, i8** %ptr387, align 4
  br label %while.cond423

while.cond423:                                    ; preds = %while.body425, %for.body414
  %351 = load i8*, i8** %ptr387, align 4
  %352 = load i8, i8* %351, align 1
  %tobool424 = icmp ne i8 %352, 0
  br i1 %tobool424, label %while.body425, label %while.end428

while.body425:                                    ; preds = %while.cond423
  %353 = load i8*, i8** %ptr387, align 4
  %incdec.ptr426 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %incdec.ptr426, i8** %ptr387, align 4
  %354 = load i8, i8* %353, align 1
  %355 = load i8*, i8** %t, align 4
  %incdec.ptr427 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %incdec.ptr427, i8** %t, align 4
  store i8 %354, i8* %355, align 1
  br label %while.cond423

while.end428:                                     ; preds = %while.cond423
  %356 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %e429 = getelementptr inbounds %struct.repldata, %struct.repldata* %356, i32 0, i32 1
  %357 = load i32, i32* %e429, align 4
  store i32 %357, i32* %i388, align 4
  br label %for.inc430

for.inc430:                                       ; preds = %while.end428
  %358 = load %struct.linknode*, %struct.linknode** %nd, align 4
  %next431 = getelementptr inbounds %struct.linknode, %struct.linknode* %358, i32 0, i32 0
  %359 = load %struct.linknode*, %struct.linknode** %next431, align 4
  store %struct.linknode* %359, %struct.linknode** %nd, align 4
  br label %for.cond412

for.end432:                                       ; preds = %for.cond412
  %360 = load i8*, i8** %t, align 4
  %361 = load i8*, i8** %s, align 4
  %362 = load i32, i32* %i388, align 4
  %add.ptr433 = getelementptr inbounds i8, i8* %361, i32 %362
  %363 = load i32, i32* %l, align 4
  %364 = load i32, i32* %i388, align 4
  %sub434 = sub nsw i32 %363, %364
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %360, i8* %add.ptr433, i32 %sub434, i32 1, i1 false)
  %365 = load i8*, i8** %start, align 4
  %366 = load i32, i32* %lleft, align 4
  %arrayidx = getelementptr inbounds i8, i8* %365, i32 %366
  store i8 0, i8* %arrayidx, align 1
  %367 = load i8*, i8** %start, align 4
  %368 = load i8**, i8*** %sp.addr, align 4
  store i8* %367, i8** %368, align 4
  br label %if.end435

if.end435:                                        ; preds = %for.end432, %if.then386
  store i32 1, i32* %retval, align 4
  br label %return

if.end436:                                        ; preds = %land.lhs.true383, %if.end380
  %369 = load i32, i32* %fl.addr, align 4
  %and437 = and i32 %369, 8192
  %tobool438 = icmp ne i32 %and437, 0
  br i1 %tobool438, label %if.then439, label %if.end440

if.then439:                                       ; preds = %if.end436
  store i32 0, i32* %retval, align 4
  br label %return

if.end440:                                        ; preds = %if.end436
  %replstr441 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 5
  store i8* null, i8** %replstr441, align 4
  %repllist442 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %imd, i32 0, i32 6
  store %union.linkroot* null, %union.linkroot** %repllist442, align 4
  %call443 = call i8* @get_match_ret(%struct.imatchdata* %imd, i32 0, i32 0)
  %370 = load i8**, i8*** %sp.addr, align 4
  store i8* %call443, i8** %370, align 4
  %371 = load i32, i32* %fl.addr, align 4
  %and444 = and i32 %371, 2048
  %tobool445 = icmp ne i32 %and444, 0
  %cond446 = select i1 %tobool445, i32 0, i32 1
  store i32 %cond446, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end440, %if.then439, %if.end435, %if.then377, %if.end360, %if.then285, %if.then273, %if.else, %if.then152, %if.then141, %if.then115, %if.then103, %if.then91, %if.end66, %if.end38, %if.then37
  %372 = load i32, i32* %retval, align 4
  ret i32 %372
}

; Function Attrs: noinline nounwind
define void @getmatcharr(i8*** %ap, i8* %pat, i32 %fl, i32 %n, i8* %replstr) #0 {
entry:
  %ap.addr = alloca i8***, align 4
  %pat.addr = alloca i8*, align 4
  %fl.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %replstr.addr = alloca i8*, align 4
  %arr = alloca i8**, align 4
  %pp = alloca i8**, align 4
  %p = alloca %struct.patprog*, align 4
  store i8*** %ap, i8**** %ap.addr, align 4
  store i8* %pat, i8** %pat.addr, align 4
  store i32 %fl, i32* %fl.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %replstr, i8** %replstr.addr, align 4
  %0 = load i8***, i8**** %ap.addr, align 4
  %1 = load i8**, i8*** %0, align 4
  store i8** %1, i8*** %arr, align 4
  %2 = load i8*, i8** %pat.addr, align 4
  %call = call %struct.patprog* @compgetmatch(i8* %2, i32* %fl.addr, i8** %replstr.addr)
  store %struct.patprog* %call, %struct.patprog** %p, align 4
  %tobool = icmp ne %struct.patprog* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %arr, align 4
  %call1 = call i32 @arrlen(i8** %3)
  %add = add nsw i32 %call1, 1
  %mul = mul i32 4, %add
  %call2 = call i8* @hcalloc(i32 %mul)
  %4 = bitcast i8* %call2 to i8**
  store i8** %4, i8*** %pp, align 4
  %5 = load i8***, i8**** %ap.addr, align 4
  store i8** %4, i8*** %5, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %6 = load i8**, i8*** %arr, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %arr, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = load i8**, i8*** %pp, align 4
  store i8* %7, i8** %8, align 4
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8**, i8*** %pp, align 4
  %10 = load %struct.patprog*, %struct.patprog** %p, align 4
  %11 = load i32, i32* %fl.addr, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i8*, i8** %replstr.addr, align 4
  %call4 = call i32 @igetmatch(i8** %9, %struct.patprog* %10, i32 %11, i32 %12, i8* %13, %union.linkroot** null)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %14 = load i8**, i8*** %pp, align 4
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr7, i8*** %pp, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare i32 @arrlen(i8**) #1

; Function Attrs: noinline nounwind
define i32 @getmatchlist(i8* %str, %struct.patprog* %p, %union.linkroot** %repllistp) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %p.addr = alloca %struct.patprog*, align 4
  %repllistp.addr = alloca %union.linkroot**, align 4
  %sp = alloca i8**, align 4
  store i8* %str, i8** %str.addr, align 4
  store %struct.patprog* %p, %struct.patprog** %p.addr, align 4
  store %union.linkroot** %repllistp, %union.linkroot*** %repllistp.addr, align 4
  store i8** %str.addr, i8*** %sp, align 4
  %0 = load i8**, i8*** %sp, align 4
  %1 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %2 = load %union.linkroot**, %union.linkroot*** %repllistp.addr, align 4
  %call = call i32 @igetmatch(i8** %0, %struct.patprog* %1, i32 8710, i32 0, i8* null, %union.linkroot** %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind
define void @freematchlist(%union.linkroot* %repllist) #0 {
entry:
  %repllist.addr = alloca %union.linkroot*, align 4
  store %union.linkroot* %repllist, %union.linkroot** %repllist.addr, align 4
  %0 = load %union.linkroot*, %union.linkroot** %repllist.addr, align 4
  call void @freelinklist(%union.linkroot* %0, void (i8*)* @freerepldata)
  ret void
}

declare void @freelinklist(%union.linkroot*, void (i8*)*) #1

; Function Attrs: noinline nounwind
define internal void @freerepldata(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 4
  call void @zfree(i8* %0, i32 12)
  ret void
}

; Function Attrs: noinline nounwind
define void @tokenize(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  call void @zshtokenize(i8* %0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @zshtokenize(i8* %s, i32 %flags) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %bslash = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %bslash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %entry
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end71

for.body:                                         ; preds = %for.cond
  br label %cont

cont:                                             ; preds = %if.then42, %if.then28, %for.body
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 -125, label %sw.bb
    i32 -97, label %sw.bb1
    i32 -96, label %sw.bb1
    i32 92, label %sw.bb1
    i32 60, label %sw.bb5
    i32 40, label %sw.bb44
    i32 124, label %sw.bb44
    i32 41, label %sw.bb44
    i32 62, label %sw.bb49
    i32 94, label %sw.bb49
    i32 35, label %sw.bb49
    i32 126, label %sw.bb49
    i32 91, label %sw.bb49
    i32 93, label %sw.bb49
    i32 42, label %sw.bb49
    i32 63, label %sw.bb49
    i32 61, label %sw.bb49
    i32 45, label %sw.bb49
    i32 33, label %sw.bb49
  ]

sw.bb:                                            ; preds = %cont
  %4 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %cont, %cont, %cont
  %5 = load i32, i32* %bslash, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1
  %tobool3 = icmp ne i32 %and, 0
  %cond = select i1 %tobool3, i32 -96, i32 -97
  %conv4 = trunc i32 %cond to i8
  %7 = load i8*, i8** %s.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %7, i32 -1
  store i8 %conv4, i8* %arrayidx, align 1
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  store i32 1, i32* %bslash, align 4
  br label %for.inc69

sw.bb5:                                           ; preds = %cont
  %8 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %8, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb5
  br label %sw.epilog

if.end9:                                          ; preds = %sw.bb5
  %9 = load i32, i32* %bslash, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end9
  %10 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %10, 1
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 -96, i32 -97
  %conv15 = trunc i32 %cond14 to i8
  %11 = load i8*, i8** %s.addr, align 4
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i32 -1
  store i8 %conv15, i8* %arrayidx16, align 1
  br label %sw.epilog

if.end17:                                         ; preds = %if.end9
  %12 = load i8*, i8** %s.addr, align 4
  store i8* %12, i8** %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end17
  %13 = load i8*, i8** %s.addr, align 4
  %incdec.ptr18 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr18, i8** %s.addr, align 4
  %14 = load i8, i8* %incdec.ptr18, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx19 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %15 = load i16, i16* %arrayidx19, align 2
  %conv20 = sext i16 %15 to i32
  %and21 = and i32 %conv20, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %s.addr, align 4
  %17 = load i8, i8* %16, align 1
  %conv23 = sext i8 %17 to i32
  %cmp = icmp eq i32 %conv23, 45
  br i1 %cmp, label %if.end29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %18 = load i8*, i8** %s.addr, align 4
  %19 = load i8, i8* %18, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, -101
  br i1 %cmp26, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false
  br label %cont

if.end29:                                         ; preds = %lor.lhs.false, %while.end
  br label %while.cond30

while.cond30:                                     ; preds = %while.body37, %if.end29
  %20 = load i8*, i8** %s.addr, align 4
  %incdec.ptr31 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr31, i8** %s.addr, align 4
  %21 = load i8, i8* %incdec.ptr31, align 1
  %idxprom32 = zext i8 %21 to i32
  %arrayidx33 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom32
  %22 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %22 to i32
  %and35 = and i32 %conv34, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %while.body37, label %while.end38

while.body37:                                     ; preds = %while.cond30
  br label %while.cond30

while.end38:                                      ; preds = %while.cond30
  %23 = load i8*, i8** %s.addr, align 4
  %24 = load i8, i8* %23, align 1
  %conv39 = sext i8 %24 to i32
  %cmp40 = icmp ne i32 %conv39, 62
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %while.end38
  br label %cont

if.end43:                                         ; preds = %while.end38
  %25 = load i8*, i8** %t, align 4
  store i8 -108, i8* %25, align 1
  %26 = load i8*, i8** %s.addr, align 4
  store i8 -107, i8* %26, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %cont, %cont, %cont
  %27 = load i32, i32* %flags.addr, align 4
  %and45 = and i32 %27, 2
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %sw.bb44
  br label %sw.epilog

if.end48:                                         ; preds = %sw.bb44
  br label %sw.bb49

sw.bb49:                                          ; preds = %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %if.end48
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @ztokens, i32 0, i32 0), i8** %t, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc, %sw.bb49
  %28 = load i8*, i8** %t, align 4
  %29 = load i8, i8* %28, align 1
  %tobool51 = icmp ne i8 %29, 0
  br i1 %tobool51, label %for.body52, label %for.end

for.body52:                                       ; preds = %for.cond50
  %30 = load i8*, i8** %t, align 4
  %31 = load i8, i8* %30, align 1
  %conv53 = sext i8 %31 to i32
  %32 = load i8*, i8** %s.addr, align 4
  %33 = load i8, i8* %32, align 1
  %conv54 = sext i8 %33 to i32
  %cmp55 = icmp eq i32 %conv53, %conv54
  br i1 %cmp55, label %if.then57, label %if.end67

if.then57:                                        ; preds = %for.body52
  %34 = load i32, i32* %bslash, align 4
  %tobool58 = icmp ne i32 %34, 0
  br i1 %tobool58, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.then57
  %35 = load i32, i32* %flags.addr, align 4
  %and60 = and i32 %35, 1
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 -96, i32 -97
  %conv63 = trunc i32 %cond62 to i8
  %36 = load i8*, i8** %s.addr, align 4
  %arrayidx64 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8 %conv63, i8* %arrayidx64, align 1
  br label %if.end66

if.else:                                          ; preds = %if.then57
  %37 = load i8*, i8** %t, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([0 x i8]* @ztokens to i32)
  %add = add nsw i32 %sub.ptr.sub, -124
  %conv65 = trunc i32 %add to i8
  %38 = load i8*, i8** %s.addr, align 4
  store i8 %conv65, i8* %38, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then59
  br label %for.end

if.end67:                                         ; preds = %for.body52
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %39 = load i8*, i8** %t, align 4
  %incdec.ptr68 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr68, i8** %t, align 4
  br label %for.cond50

for.end:                                          ; preds = %if.end66, %for.cond50
  br label %sw.epilog

sw.epilog:                                        ; preds = %cont, %for.end, %if.then47, %if.end43, %if.then11, %if.then8, %if.then, %sw.bb
  store i32 0, i32* %bslash, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %sw.epilog, %if.end
  %40 = load i8*, i8** %s.addr, align 4
  %incdec.ptr70 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr70, i8** %s.addr, align 4
  br label %for.cond

for.end71:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind
define void @shtokenize(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %flags = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 1, i32* %flags, align 4
  %0 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 160), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, 2
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i32, i32* %flags, align 4
  call void @zshtokenize(i8* %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind
define void @remnulargs(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %o = alloca i8*, align 4
  %c = alloca i8, align 1
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 4
  store i8* %2, i8** %o, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.then3, %if.then
  %3 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %while.body, label %while.end32

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, -96
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  br label %while.cond

if.else:                                          ; preds = %while.body
  %6 = load i8, i8* %c, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv4 = sext i16 %7 to i32
  %and = and i32 %conv4, 16384
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end30

if.then6:                                         ; preds = %if.else
  %8 = load i8*, i8** %s.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %add.ptr, i8** %t, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %if.end24, %if.then6
  %9 = load i8*, i8** %s.addr, align 4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 4
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %c, align 1
  %tobool9 = icmp ne i8 %10, 0
  br i1 %tobool9, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %11 = load i8, i8* %c, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, -96
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %while.body10
  %12 = load i8*, i8** %t, align 4
  %incdec.ptr15 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr15, i8** %t, align 4
  store i8 92, i8* %12, align 1
  br label %if.end24

if.else16:                                        ; preds = %while.body10
  %13 = load i8, i8* %c, align 1
  %idxprom17 = zext i8 %13 to i32
  %arrayidx18 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom17
  %14 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %14 to i32
  %and20 = and i32 %conv19, 16384
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.else16
  %15 = load i8, i8* %c, align 1
  %16 = load i8*, i8** %t, align 4
  %incdec.ptr23 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr23, i8** %t, align 4
  store i8 %15, i8* %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.else16
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then14
  br label %while.cond7

while.end:                                        ; preds = %while.cond7
  %17 = load i8*, i8** %t, align 4
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %o, align 4
  %19 = load i8, i8* %18, align 1
  %tobool25 = icmp ne i8 %19, 0
  br i1 %tobool25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %while.end
  %20 = load i8*, i8** %o, align 4
  %arrayidx27 = getelementptr inbounds i8, i8* %20, i32 0
  store i8 -95, i8* %arrayidx27, align 1
  %21 = load i8*, i8** %o, align 4
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i32 1
  store i8 0, i8* %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %while.end
  br label %while.end32

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %while.cond

while.end32:                                      ; preds = %if.end29, %while.cond
  br label %if.end33

if.end33:                                         ; preds = %while.end32, %entry
  ret void
}

declare i8* @itype_end(i8*, i32, i32) #1

declare void @patcompstart() #1

declare i32 @patgetglobflags(i8**, i32*, i32*) #1

; Function Attrs: noinline nounwind
define internal %struct.complist* @parsecomplist(i8* %instr) #0 {
entry:
  %retval = alloca %struct.complist*, align 4
  %instr.addr = alloca i8*, align 4
  %p1 = alloca %struct.patprog*, align 4
  %l1 = alloca %struct.complist*, align 4
  %str = alloca i8*, align 4
  %compflags = alloca i32, align 4
  %shortglob = alloca i32, align 4
  %follow = alloca i32, align 4
  %pdflag = alloca i32, align 4
  %ef = alloca i32, align 4
  store i8* %instr, i8** %instr.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 17), align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 17, i32 1
  store i32 %cond, i32* %compflags, align 4
  %1 = load i8*, i8** %instr.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %1, i32 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, -121
  br i1 %cmp, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %instr.addr, align 4
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i32 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, -121
  br i1 %cmp4, label %if.then, label %if.end37

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %shortglob, align 4
  %5 = load i8*, i8** %instr.addr, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i32 2
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i8*, i8** %instr.addr, align 4
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i32 2
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, -121
  br i1 %cmp12, label %land.lhs.true14, label %lor.lhs.false19

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %instr.addr, align 4
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i32 3
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true14, %lor.lhs.false
  %11 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 66), align 1
  %conv20 = sext i8 %11 to i32
  store i32 %conv20, i32* %shortglob, align 4
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end36

if.then22:                                        ; preds = %lor.lhs.false19, %land.lhs.true14, %if.then
  %12 = load i8*, i8** %instr.addr, align 4
  %arrayidx23 = getelementptr inbounds i8, i8* %12, i32 2
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, -121
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %follow, align 4
  %14 = load i32, i32* %shortglob, align 4
  %tobool27 = icmp ne i32 %14, 0
  %cond28 = select i1 %tobool27, i32 1, i32 3
  %15 = load i32, i32* %follow, align 4
  %add = add nsw i32 %cond28, %15
  %16 = load i8*, i8** %instr.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %16, i32 %add
  store i8* %add.ptr, i8** %instr.addr, align 4
  %call = call i8* @zhalloc(i32 16)
  %17 = bitcast i8* %call to %struct.complist*
  store %struct.complist* %17, %struct.complist** %l1, align 4
  %18 = load i8*, i8** %instr.addr, align 4
  %call29 = call %struct.complist* @parsecomplist(i8* %18)
  %19 = load %struct.complist*, %struct.complist** %l1, align 4
  %next = getelementptr inbounds %struct.complist, %struct.complist* %19, i32 0, i32 0
  store %struct.complist* %call29, %struct.complist** %next, align 4
  %cmp30 = icmp eq %struct.complist* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end

if.then32:                                        ; preds = %if.then22
  %20 = load i32, i32* @errflag, align 4
  %or = or i32 %20, 1
  store i32 %or, i32* @errflag, align 4
  store %struct.complist* null, %struct.complist** %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then22
  %21 = load i32, i32* %compflags, align 4
  %or33 = or i32 %21, 4
  %call34 = call %struct.patprog* @patcompile(i8* null, i32 %or33, i8** null)
  %22 = load %struct.complist*, %struct.complist** %l1, align 4
  %pat = getelementptr inbounds %struct.complist, %struct.complist* %22, i32 0, i32 1
  store %struct.patprog* %call34, %struct.patprog** %pat, align 4
  %23 = load %struct.complist*, %struct.complist** %l1, align 4
  %closure = getelementptr inbounds %struct.complist, %struct.complist* %23, i32 0, i32 2
  store i32 1, i32* %closure, align 4
  %24 = load i32, i32* %follow, align 4
  %25 = load %struct.complist*, %struct.complist** %l1, align 4
  %follow35 = getelementptr inbounds %struct.complist, %struct.complist* %25, i32 0, i32 3
  store i32 %24, i32* %follow35, align 4
  %26 = load %struct.complist*, %struct.complist** %l1, align 4
  store %struct.complist* %26, %struct.complist** %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false19
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %entry
  %27 = load i8*, i8** %instr.addr, align 4
  store i8* %27, i8** %str, align 4
  %28 = load i8, i8* %27, align 1
  %conv38 = sext i8 %28 to i32
  %29 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 5), align 1
  %conv39 = sext i8 %29 to i32
  %cmp40 = icmp eq i32 %conv38, %conv39
  br i1 %cmp40, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %if.end37
  %call43 = call i32 @skipparens(i8 signext -120, i8 signext -118, i8** %str)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %30 = load i8*, i8** %str, align 4
  %31 = load i8, i8* %30, align 1
  %conv46 = sext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @zpc_special, i32 0, i32 11), align 1
  %conv47 = sext i8 %32 to i32
  %cmp48 = icmp eq i32 %conv46, %conv47
  br i1 %cmp48, label %land.lhs.true50, label %if.else

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %33 = load i8*, i8** %str, align 4
  %arrayidx51 = getelementptr inbounds i8, i8* %33, i32 -2
  %34 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %34 to i32
  %cmp53 = icmp eq i32 %conv52, 47
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %land.lhs.true50
  %35 = load i8*, i8** %instr.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %instr.addr, align 4
  %36 = load i8*, i8** %instr.addr, align 4
  %37 = load i32, i32* %compflags, align 4
  %call56 = call %struct.patprog* @patcompile(i8* %36, i32 %37, i8** %instr.addr)
  store %struct.patprog* %call56, %struct.patprog** %p1, align 4
  %tobool57 = icmp ne %struct.patprog* %call56, null
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.then55
  store %struct.complist* null, %struct.complist** %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then55
  %38 = load i8*, i8** %instr.addr, align 4
  %arrayidx60 = getelementptr inbounds i8, i8* %38, i32 0
  %39 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %39 to i32
  %cmp62 = icmp eq i32 %conv61, 47
  br i1 %cmp62, label %land.lhs.true64, label %if.end99

land.lhs.true64:                                  ; preds = %if.end59
  %40 = load i8*, i8** %instr.addr, align 4
  %arrayidx65 = getelementptr inbounds i8, i8* %40, i32 1
  %41 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %41 to i32
  %cmp67 = icmp eq i32 %conv66, -118
  br i1 %cmp67, label %land.lhs.true69, label %if.end99

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %42 = load i8*, i8** %instr.addr, align 4
  %arrayidx70 = getelementptr inbounds i8, i8* %42, i32 2
  %43 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %43 to i32
  %cmp72 = icmp eq i32 %conv71, -124
  br i1 %cmp72, label %if.then74, label %if.end99

if.then74:                                        ; preds = %land.lhs.true69
  store i32 0, i32* %pdflag, align 4
  %44 = load i8*, i8** %instr.addr, align 4
  %add.ptr75 = getelementptr inbounds i8, i8* %44, i32 3
  store i8* %add.ptr75, i8** %instr.addr, align 4
  %45 = load i8*, i8** %instr.addr, align 4
  %46 = load i8, i8* %45, align 1
  %conv76 = sext i8 %46 to i32
  %cmp77 = icmp eq i32 %conv76, -124
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.then74
  store i32 1, i32* %pdflag, align 4
  %47 = load i8*, i8** %instr.addr, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr80, i8** %instr.addr, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.then74
  %call82 = call i8* @zhalloc(i32 16)
  %48 = bitcast i8* %call82 to %struct.complist*
  store %struct.complist* %48, %struct.complist** %l1, align 4
  %49 = load %struct.patprog*, %struct.patprog** %p1, align 4
  %50 = load %struct.complist*, %struct.complist** %l1, align 4
  %pat83 = getelementptr inbounds %struct.complist, %struct.complist* %50, i32 0, i32 1
  store %struct.patprog* %49, %struct.patprog** %pat83, align 4
  %51 = load %struct.patprog*, %struct.patprog** %p1, align 4
  %52 = bitcast %struct.patprog* %51 to i8*
  %53 = load %struct.patprog*, %struct.patprog** %p1, align 4
  %startoff = getelementptr inbounds %struct.patprog, %struct.patprog* %53, i32 0, i32 0
  %54 = load i32, i32* %startoff, align 4
  %add.ptr84 = getelementptr inbounds i8, i8* %52, i32 %54
  %55 = load i8, i8* %add.ptr84, align 1
  %conv85 = sext i8 %55 to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end81
  %56 = load i32, i32* %pdflag, align 4
  %add87 = add nsw i32 1, %56
  br label %cond.end

cond.false:                                       ; preds = %if.end81
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond88 = phi i32 [ %add87, %cond.true ], [ 0, %cond.false ]
  %57 = load %struct.complist*, %struct.complist** %l1, align 4
  %closure89 = getelementptr inbounds %struct.complist, %struct.complist* %57, i32 0, i32 2
  store i32 %cond88, i32* %closure89, align 4
  %58 = load %struct.complist*, %struct.complist** %l1, align 4
  %follow90 = getelementptr inbounds %struct.complist, %struct.complist* %58, i32 0, i32 3
  store i32 0, i32* %follow90, align 4
  %59 = load i8*, i8** %instr.addr, align 4
  %call91 = call %struct.complist* @parsecomplist(i8* %59)
  %60 = load %struct.complist*, %struct.complist** %l1, align 4
  %next92 = getelementptr inbounds %struct.complist, %struct.complist* %60, i32 0, i32 0
  store %struct.complist* %call91, %struct.complist** %next92, align 4
  %61 = load %struct.complist*, %struct.complist** %l1, align 4
  %pat93 = getelementptr inbounds %struct.complist, %struct.complist* %61, i32 0, i32 1
  %62 = load %struct.patprog*, %struct.patprog** %pat93, align 4
  %tobool94 = icmp ne %struct.patprog* %62, null
  br i1 %tobool94, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %cond.end
  %63 = load %struct.complist*, %struct.complist** %l1, align 4
  br label %cond.end97

cond.false96:                                     ; preds = %cond.end
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi %struct.complist* [ %63, %cond.true95 ], [ null, %cond.false96 ]
  store %struct.complist* %cond98, %struct.complist** %retval, align 4
  br label %return

if.end99:                                         ; preds = %land.lhs.true69, %land.lhs.true64, %if.end59
  br label %if.end134

if.else:                                          ; preds = %land.lhs.true50, %land.lhs.true45, %land.lhs.true42, %if.end37
  %64 = load i8*, i8** %instr.addr, align 4
  %65 = load i32, i32* %compflags, align 4
  %or100 = or i32 %65, 2
  %call101 = call %struct.patprog* @patcompile(i8* %64, i32 %or100, i8** %instr.addr)
  store %struct.patprog* %call101, %struct.patprog** %p1, align 4
  %tobool102 = icmp ne %struct.patprog* %call101, null
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.else
  store %struct.complist* null, %struct.complist** %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.else
  %66 = load i8*, i8** %instr.addr, align 4
  %67 = load i8, i8* %66, align 1
  %conv105 = sext i8 %67 to i32
  %cmp106 = icmp eq i32 %conv105, 47
  br i1 %cmp106, label %if.then110, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end104
  %68 = load i8*, i8** %instr.addr, align 4
  %69 = load i8, i8* %68, align 1
  %tobool109 = icmp ne i8 %69, 0
  br i1 %tobool109, label %if.end133, label %if.then110

if.then110:                                       ; preds = %lor.lhs.false108, %if.end104
  %70 = load i8*, i8** %instr.addr, align 4
  %71 = load i8, i8* %70, align 1
  %conv111 = sext i8 %71 to i32
  %cmp112 = icmp eq i32 %conv111, 47
  %conv113 = zext i1 %cmp112 to i32
  store i32 %conv113, i32* %ef, align 4
  %call114 = call i8* @zhalloc(i32 16)
  %72 = bitcast i8* %call114 to %struct.complist*
  store %struct.complist* %72, %struct.complist** %l1, align 4
  %73 = load %struct.patprog*, %struct.patprog** %p1, align 4
  %74 = load %struct.complist*, %struct.complist** %l1, align 4
  %pat115 = getelementptr inbounds %struct.complist, %struct.complist* %74, i32 0, i32 1
  store %struct.patprog* %73, %struct.patprog** %pat115, align 4
  %75 = load %struct.complist*, %struct.complist** %l1, align 4
  %closure116 = getelementptr inbounds %struct.complist, %struct.complist* %75, i32 0, i32 2
  store i32 0, i32* %closure116, align 4
  %76 = load i32, i32* %ef, align 4
  %tobool117 = icmp ne i32 %76, 0
  br i1 %tobool117, label %cond.true118, label %cond.false121

cond.true118:                                     ; preds = %if.then110
  %77 = load i8*, i8** %instr.addr, align 4
  %add.ptr119 = getelementptr inbounds i8, i8* %77, i32 1
  %call120 = call %struct.complist* @parsecomplist(i8* %add.ptr119)
  br label %cond.end122

cond.false121:                                    ; preds = %if.then110
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false121, %cond.true118
  %cond123 = phi %struct.complist* [ %call120, %cond.true118 ], [ null, %cond.false121 ]
  %78 = load %struct.complist*, %struct.complist** %l1, align 4
  %next124 = getelementptr inbounds %struct.complist, %struct.complist* %78, i32 0, i32 0
  store %struct.complist* %cond123, %struct.complist** %next124, align 4
  %79 = load i32, i32* %ef, align 4
  %tobool125 = icmp ne i32 %79, 0
  br i1 %tobool125, label %land.lhs.true126, label %cond.false130

land.lhs.true126:                                 ; preds = %cond.end122
  %80 = load %struct.complist*, %struct.complist** %l1, align 4
  %next127 = getelementptr inbounds %struct.complist, %struct.complist* %80, i32 0, i32 0
  %81 = load %struct.complist*, %struct.complist** %next127, align 4
  %tobool128 = icmp ne %struct.complist* %81, null
  br i1 %tobool128, label %cond.false130, label %cond.true129

cond.true129:                                     ; preds = %land.lhs.true126
  br label %cond.end131

cond.false130:                                    ; preds = %land.lhs.true126, %cond.end122
  %82 = load %struct.complist*, %struct.complist** %l1, align 4
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false130, %cond.true129
  %cond132 = phi %struct.complist* [ null, %cond.true129 ], [ %82, %cond.false130 ]
  store %struct.complist* %cond132, %struct.complist** %retval, align 4
  br label %return

if.end133:                                        ; preds = %lor.lhs.false108
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end99
  %83 = load i32, i32* @errflag, align 4
  %or135 = or i32 %83, 1
  store i32 %or135, i32* @errflag, align 4
  store %struct.complist* null, %struct.complist** %retval, align 4
  br label %return

return:                                           ; preds = %if.end134, %cond.end131, %if.then103, %cond.end97, %if.then58, %if.end, %if.then32
  %84 = load %struct.complist*, %struct.complist** %retval, align 4
  ret %struct.complist* %84
}

declare void @init_dirsav(%struct.dirsav*) #1

declare i32 @lchdir(i8*, %struct.dirsav*, i32) #1

declare i8* @unmeta(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: noinline nounwind
define internal void @addpath(i8* %s, i32 %l) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %l.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @pathpos, align 4
  %1 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %0, %1
  %add1 = add nsw i32 %add, 1
  %2 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  %cmp = icmp sge i32 %add1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** @pathbuf, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 4), align 4
  %call = call i8* @zrealloc(i8* %3, i32 %mul)
  store i8* %call, i8** @pathbuf, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body3, %while.end
  %5 = load i32, i32* %l.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %l.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body3, label %while.end4

while.body3:                                      ; preds = %while.cond2
  %6 = load i8*, i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** @pathbuf, align 4
  %9 = load i32, i32* @pathpos, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @pathpos, align 4
  %arrayidx = getelementptr inbounds i8, i8* %8, i32 %9
  store i8 %7, i8* %arrayidx, align 1
  br label %while.cond2

while.end4:                                       ; preds = %while.cond2
  %10 = load i8*, i8** @pathbuf, align 4
  %11 = load i32, i32* @pathpos, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* @pathpos, align 4
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i32 %11
  store i8 47, i8* %arrayidx6, align 1
  %12 = load i8*, i8** @pathbuf, align 4
  %13 = load i32, i32* @pathpos, align 4
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i32 %13
  store i8 0, i8* %arrayidx7, align 1
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @statfullpath(i8* %s, %struct.stat* %st, i32 %l) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 4
  %st.addr = alloca %struct.stat*, align 4
  %l.addr = alloca i32, align 4
  %buf = alloca [4097 x i8], align 1
  %lbuf = alloca [1 x i8], align 1
  store i8* %s, i8** %s.addr, align 4
  store %struct.stat* %st, %struct.stat** %st.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** @pathbuf, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 %1
  %call = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr)
  %arraydecay1 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %2 = load i32, i32* @pathpos, align 4
  %add.ptr2 = getelementptr inbounds i8, i8* %arraydecay1, i32 %2
  %3 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %idx.neg = sub i32 0, %3
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i32 %idx.neg
  %4 = load i8*, i8** %s.addr, align 4
  %call4 = call i8* @strcpy(i8* %add.ptr3, i8* %4)
  %5 = load i8*, i8** %s.addr, align 4
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay5 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %7 = load i8, i8* %arraydecay5, align 1
  %conv = sext i8 %7 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* @pathpos, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %sub = sub nsw i32 %8, %9
  %arrayidx = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 %sub
  store i8 46, i8* %arrayidx, align 1
  %10 = load i32, i32* @pathpos, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 5), align 4
  %sub7 = sub nsw i32 %10, %11
  %add = add nsw i32 %sub7, 1
  %arrayidx8 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 %add
  store i8 0, i8* %arrayidx8, align 1
  store i32 0, i32* %l.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %arraydecay9 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call10 = call i8* @unmetafy(i8* %arraydecay9, i32* null)
  %12 = load %struct.stat*, %struct.stat** %st.addr, align 4
  %tobool11 = icmp ne %struct.stat* %12, null
  br i1 %tobool11, label %if.end21, label %if.then12

if.then12:                                        ; preds = %if.end
  %arraydecay13 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call14 = call i32 @access(i8* %arraydecay13, i32 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then12
  %13 = load i32, i32* %l.addr, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %arraydecay17 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %lbuf, i32 0, i32 0
  %call19 = call i32 @readlink(i8* %arraydecay17, i8* %arraydecay18, i32 1)
  %cmp = icmp slt i32 %call19, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.then12
  %15 = phi i1 [ false, %if.then12 ], [ %14, %lor.end ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  %16 = load i32, i32* %l.addr, align 4
  %tobool22 = icmp ne i32 %16, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end21
  %arraydecay23 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %17 = load %struct.stat*, %struct.stat** %st.addr, align 4
  %call24 = call i32 @lstat(i8* %arraydecay23, %struct.stat* %17)
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  %arraydecay25 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %18 = load %struct.stat*, %struct.stat** %st.addr, align 4
  %call26 = call i32 @stat(i8* %arraydecay25, %struct.stat* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call24, %cond.true ], [ %call26, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %land.end
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare i8* @dupstrpfx(i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @insert(i8* %s, i32 %checked) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %checked.addr = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %buf2 = alloca %struct.stat, align 8
  %bp = alloca %struct.stat*, align 4
  %news = alloca i8*, align 4
  %statted = alloca i32, align 4
  %mode = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp8 = alloca %struct.__sigset_t, align 4
  %ll = alloca i32, align 4
  %qo = alloca %struct.qual*, align 4
  %qn = alloca %struct.qual*, align 4
  %oset56 = alloca %struct.__sigset_t, align 4
  %tmp60 = alloca %struct.__sigset_t, align 4
  %tmp62 = alloca %struct.__sigset_t, align 4
  %oset109 = alloca %struct.__sigset_t, align 4
  %tmp113 = alloca %struct.__sigset_t, align 4
  %tmp115 = alloca %struct.__sigset_t, align 4
  %oset136 = alloca %struct.__sigset_t, align 4
  %tmp140 = alloca %struct.__sigset_t, align 4
  %tmp142 = alloca %struct.__sigset_t, align 4
  %mod = alloca i8*, align 4
  %oset243 = alloca %struct.__sigset_t, align 4
  %tmp247 = alloca %struct.__sigset_t, align 4
  %tmp249 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %checked, i32* %checked.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  store i8* %0, i8** %news, align 4
  store i32 0, i32* %statted, align 4
  %1 = load i32, i32* @queueing_enabled, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @queueing_enabled, align 4
  store i8** null, i8*** @inserts, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 18), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 16), align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end36

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %statted, align 4
  store i32 1, i32* %checked.addr, align 4
  %4 = load i8*, i8** %s.addr, align 4
  %call = call i32 @statfullpath(i8* %4, %struct.stat* %buf, i32 1)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then3
  %5 = load i32, i32* @queueing_enabled, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @queueing_enabled, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body6
  %6 = load i32, i32* @queue_front, align 4
  %7 = load i32, i32* @queue_rear, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* @queue_front, align 4
  %add = add nsw i32 %8, 1
  %rem = srem i32 %add, 128
  store i32 %rem, i32* @queue_front, align 4
  %9 = load i32, i32* @queue_front, align 4
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %9
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %arrayidx)
  %10 = bitcast %struct.__sigset_t* %oset to i8*
  %11 = bitcast %struct.__sigset_t* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 128, i32 4, i1 false)
  %12 = load i32, i32* @queue_front, align 4
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %12
  %13 = load i32, i32* %arrayidx7, align 4
  call void @zhandler(i32 %13)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp8, %struct.__sigset_t* byval align 4 %oset)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end9

do.end9:                                          ; preds = %if.end
  br label %return

if.end10:                                         ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 6
  %14 = load i32, i32* %st_mode, align 8
  store i32 %14, i32* %mode, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 20), align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end10
  %16 = load i32, i32* %mode, align 4
  %and = and i32 %16, 61440
  %cmp13 = icmp eq i32 %and, 40960
  br i1 %cmp13, label %lor.lhs.false14, label %if.then17

lor.lhs.false14:                                  ; preds = %if.then12
  %17 = load i8*, i8** %s.addr, align 4
  %call15 = call i32 @statfullpath(i8* %17, %struct.stat* %buf2, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14, %if.then12
  %18 = bitcast %struct.stat* %buf2 to i8*
  %19 = bitcast %struct.stat* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 120, i32 8, i1 false)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false14
  %20 = load i32, i32* %statted, align 4
  %or = or i32 %20, 2
  store i32 %or, i32* %statted, align 4
  %st_mode19 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 6
  %21 = load i32, i32* %st_mode19, align 8
  store i32 %21, i32* %mode, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end10
  %22 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 18), align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end20
  %23 = load i32, i32* %mode, align 4
  %and23 = and i32 %23, 61440
  %cmp24 = icmp eq i32 %and23, 16384
  br i1 %cmp24, label %if.then25, label %if.end35

if.then25:                                        ; preds = %lor.lhs.false22, %if.end20
  %24 = load i8*, i8** %s.addr, align 4
  %call27 = call i32 @strlen(i8* %24)
  store i32 %call27, i32* %ll, align 4
  %25 = load i32, i32* %ll, align 4
  %add28 = add nsw i32 %25, 2
  %call29 = call i8* @hcalloc(i32 %add28)
  store i8* %call29, i8** %news, align 4
  %26 = load i8*, i8** %news, align 4
  %27 = load i8*, i8** %s.addr, align 4
  %call30 = call i8* @strcpy(i8* %26, i8* %27)
  %28 = load i32, i32* %mode, align 4
  %call31 = call signext i8 @file_type(i32 %28)
  %29 = load i8*, i8** %news, align 4
  %30 = load i32, i32* %ll, align 4
  %arrayidx32 = getelementptr inbounds i8, i8* %29, i32 %30
  store i8 %call31, i8* %arrayidx32, align 1
  %31 = load i8*, i8** %news, align 4
  %32 = load i32, i32* %ll, align 4
  %add33 = add nsw i32 %32, 1
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i32 %add33
  store i8 0, i8* %arrayidx34, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then25, %lor.lhs.false22
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %lor.lhs.false
  %33 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 10), align 4
  %tobool37 = icmp ne i32 %33, 0
  br i1 %tobool37, label %if.then40, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end36
  %34 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 11), align 4
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %lor.lhs.false38, %if.end36
  %35 = load i32, i32* %statted, align 4
  %tobool43 = icmp ne i32 %35, 0
  br i1 %tobool43, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then40
  %36 = load i8*, i8** %s.addr, align 4
  %call44 = call i32 @statfullpath(i8* %36, %struct.stat* %buf, i32 1)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end67

if.then46:                                        ; preds = %land.lhs.true
  br label %do.body47

do.body47:                                        ; preds = %if.then46
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
  br label %return

if.end67:                                         ; preds = %land.lhs.true, %if.then40
  %46 = load i8*, i8** @pathbuf, align 4
  %47 = load i8*, i8** %news, align 4
  %call68 = call i8* @dyncat(i8* %46, i8* %47)
  store i8* %call68, i8** %news, align 4
  store i32 1, i32* %statted, align 4
  %48 = load %struct.qual*, %struct.qual** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 9), align 4
  store %struct.qual* %48, %struct.qual** %qo, align 4
  %49 = load %struct.qual*, %struct.qual** %qo, align 4
  store %struct.qual* %49, %struct.qual** %qn, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end121, %if.end120, %if.end67
  %50 = load %struct.qual*, %struct.qual** %qn, align 4
  %tobool69 = icmp ne %struct.qual* %50, null
  br i1 %tobool69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %51 = load %struct.qual*, %struct.qual** %qn, align 4
  %func = getelementptr inbounds %struct.qual, %struct.qual* %51, i32 0, i32 2
  %52 = load i32 (i8*, %struct.stat*, i32, i8*)*, i32 (i8*, %struct.stat*, i32, i8*)** %func, align 4
  %tobool70 = icmp ne i32 (i8*, %struct.stat*, i32, i8*)* %52, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %53 = phi i1 [ false, %for.cond ], [ %tobool70, %land.rhs ]
  br i1 %53, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %54 = load %struct.qual*, %struct.qual** %qn, align 4
  %range = getelementptr inbounds %struct.qual, %struct.qual* %54, i32 0, i32 6
  %55 = load i32, i32* %range, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 12), align 4
  %56 = load %struct.qual*, %struct.qual** %qn, align 4
  %amc = getelementptr inbounds %struct.qual, %struct.qual* %56, i32 0, i32 5
  %57 = load i32, i32* %amc, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 13), align 4
  %58 = load %struct.qual*, %struct.qual** %qn, align 4
  %units = getelementptr inbounds %struct.qual, %struct.qual* %58, i32 0, i32 7
  %59 = load i32, i32* %units, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 14), align 4
  %60 = load %struct.qual*, %struct.qual** %qn, align 4
  %sense = getelementptr inbounds %struct.qual, %struct.qual* %60, i32 0, i32 4
  %61 = load i32, i32* %sense, align 4
  %and71 = and i32 %61, 2
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.end86

land.lhs.true73:                                  ; preds = %for.body
  %62 = load i32, i32* %statted, align 4
  %and74 = and i32 %62, 2
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end86, label %if.then76

if.then76:                                        ; preds = %land.lhs.true73
  %st_mode77 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 6
  %63 = load i32, i32* %st_mode77, align 8
  %and78 = and i32 %63, 61440
  %cmp79 = icmp eq i32 %and78, 40960
  br i1 %cmp79, label %lor.lhs.false80, label %if.then83

lor.lhs.false80:                                  ; preds = %if.then76
  %64 = load i8*, i8** %s.addr, align 4
  %call81 = call i32 @statfullpath(i8* %64, %struct.stat* %buf2, i32 0)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %lor.lhs.false80, %if.then76
  %65 = bitcast %struct.stat* %buf2 to i8*
  %66 = bitcast %struct.stat* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %66, i32 120, i32 8, i1 false)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %lor.lhs.false80
  %67 = load i32, i32* %statted, align 4
  %or85 = or i32 %67, 2
  store i32 %or85, i32* %statted, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %land.lhs.true73, %for.body
  %68 = load %struct.qual*, %struct.qual** %qn, align 4
  %sense87 = getelementptr inbounds %struct.qual, %struct.qual* %68, i32 0, i32 4
  %69 = load i32, i32* %sense87, align 4
  %and88 = and i32 %69, 2
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end86
  br label %cond.end

cond.false:                                       ; preds = %if.end86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.stat* [ %buf2, %cond.true ], [ %buf, %cond.false ]
  store %struct.stat* %cond, %struct.stat** %bp, align 4
  %70 = load %struct.qual*, %struct.qual** %qn, align 4
  %func90 = getelementptr inbounds %struct.qual, %struct.qual* %70, i32 0, i32 2
  %71 = load i32 (i8*, %struct.stat*, i32, i8*)*, i32 (i8*, %struct.stat*, i32, i8*)** %func90, align 4
  %72 = load i8*, i8** %news, align 4
  %73 = load %struct.stat*, %struct.stat** %bp, align 4
  %74 = load %struct.qual*, %struct.qual** %qn, align 4
  %data = getelementptr inbounds %struct.qual, %struct.qual* %74, i32 0, i32 3
  %75 = load i32, i32* %data, align 4
  %76 = load %struct.qual*, %struct.qual** %qn, align 4
  %sdata = getelementptr inbounds %struct.qual, %struct.qual* %76, i32 0, i32 8
  %77 = load i8*, i8** %sdata, align 4
  %call91 = call i32 %71(i8* %72, %struct.stat* %73, i32 %75, i8* %77)
  %tobool92 = icmp ne i32 %call91, 0
  %lnot = xor i1 %tobool92, true
  %lnot.ext = zext i1 %lnot to i32
  %78 = load %struct.qual*, %struct.qual** %qn, align 4
  %sense93 = getelementptr inbounds %struct.qual, %struct.qual* %78, i32 0, i32 4
  %79 = load i32, i32* %sense93, align 4
  %xor = xor i32 %lnot.ext, %79
  %and94 = and i32 %xor, 1
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end121

if.then96:                                        ; preds = %cond.end
  %80 = load %struct.qual*, %struct.qual** %qo, align 4
  %or97 = getelementptr inbounds %struct.qual, %struct.qual* %80, i32 0, i32 1
  %81 = load %struct.qual*, %struct.qual** %or97, align 4
  store %struct.qual* %81, %struct.qual** %qo, align 4
  %tobool98 = icmp ne %struct.qual* %81, null
  br i1 %tobool98, label %if.end120, label %if.then99

if.then99:                                        ; preds = %if.then96
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  %82 = load i32, i32* @queueing_enabled, align 4
  %dec101 = add nsw i32 %82, -1
  store i32 %dec101, i32* @queueing_enabled, align 4
  %tobool102 = icmp ne i32 %dec101, 0
  br i1 %tobool102, label %if.end118, label %if.then103

if.then103:                                       ; preds = %do.body100
  br label %do.body104

do.body104:                                       ; preds = %if.then103
  br label %while.cond105

while.cond105:                                    ; preds = %while.body107, %do.body104
  %83 = load i32, i32* @queue_front, align 4
  %84 = load i32, i32* @queue_rear, align 4
  %cmp106 = icmp ne i32 %83, %84
  br i1 %cmp106, label %while.body107, label %while.end116

while.body107:                                    ; preds = %while.cond105
  %85 = load i32, i32* @queue_front, align 4
  %add110 = add nsw i32 %85, 1
  %rem111 = srem i32 %add110, 128
  store i32 %rem111, i32* @queue_front, align 4
  %86 = load i32, i32* @queue_front, align 4
  %arrayidx112 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %86
  call void @signal_setmask(%struct.__sigset_t* sret %tmp113, %struct.__sigset_t* byval align 4 %arrayidx112)
  %87 = bitcast %struct.__sigset_t* %oset109 to i8*
  %88 = bitcast %struct.__sigset_t* %tmp113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %87, i8* %88, i32 128, i32 4, i1 false)
  %89 = load i32, i32* @queue_front, align 4
  %arrayidx114 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %89
  %90 = load i32, i32* %arrayidx114, align 4
  call void @zhandler(i32 %90)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp115, %struct.__sigset_t* byval align 4 %oset109)
  br label %while.cond105

while.end116:                                     ; preds = %while.cond105
  br label %do.end117

do.end117:                                        ; preds = %while.end116
  br label %if.end118

if.end118:                                        ; preds = %do.end117, %do.body100
  br label %do.end119

do.end119:                                        ; preds = %if.end118
  br label %return

if.end120:                                        ; preds = %if.then96
  %91 = load %struct.qual*, %struct.qual** %qo, align 4
  store %struct.qual* %91, %struct.qual** %qn, align 4
  br label %for.cond

if.end121:                                        ; preds = %cond.end
  %92 = load %struct.qual*, %struct.qual** %qn, align 4
  %next = getelementptr inbounds %struct.qual, %struct.qual* %92, i32 0, i32 0
  %93 = load %struct.qual*, %struct.qual** %next, align 4
  store %struct.qual* %93, %struct.qual** %qn, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end152

if.else:                                          ; preds = %lor.lhs.false38
  %94 = load i32, i32* %checked.addr, align 4
  %tobool122 = icmp ne i32 %94, 0
  br i1 %tobool122, label %if.else149, label %if.then123

if.then123:                                       ; preds = %if.else
  %95 = load i8*, i8** %s.addr, align 4
  %call124 = call i32 @statfullpath(i8* %95, %struct.stat* %buf, i32 1)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then126, label %if.end147

if.then126:                                       ; preds = %if.then123
  br label %do.body127

do.body127:                                       ; preds = %if.then126
  %96 = load i32, i32* @queueing_enabled, align 4
  %dec128 = add nsw i32 %96, -1
  store i32 %dec128, i32* @queueing_enabled, align 4
  %tobool129 = icmp ne i32 %dec128, 0
  br i1 %tobool129, label %if.end145, label %if.then130

if.then130:                                       ; preds = %do.body127
  br label %do.body131

do.body131:                                       ; preds = %if.then130
  br label %while.cond132

while.cond132:                                    ; preds = %while.body134, %do.body131
  %97 = load i32, i32* @queue_front, align 4
  %98 = load i32, i32* @queue_rear, align 4
  %cmp133 = icmp ne i32 %97, %98
  br i1 %cmp133, label %while.body134, label %while.end143

while.body134:                                    ; preds = %while.cond132
  %99 = load i32, i32* @queue_front, align 4
  %add137 = add nsw i32 %99, 1
  %rem138 = srem i32 %add137, 128
  store i32 %rem138, i32* @queue_front, align 4
  %100 = load i32, i32* @queue_front, align 4
  %arrayidx139 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %100
  call void @signal_setmask(%struct.__sigset_t* sret %tmp140, %struct.__sigset_t* byval align 4 %arrayidx139)
  %101 = bitcast %struct.__sigset_t* %oset136 to i8*
  %102 = bitcast %struct.__sigset_t* %tmp140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %101, i8* %102, i32 128, i32 4, i1 false)
  %103 = load i32, i32* @queue_front, align 4
  %arrayidx141 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %103
  %104 = load i32, i32* %arrayidx141, align 4
  call void @zhandler(i32 %104)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp142, %struct.__sigset_t* byval align 4 %oset136)
  br label %while.cond132

while.end143:                                     ; preds = %while.cond132
  br label %do.end144

do.end144:                                        ; preds = %while.end143
  br label %if.end145

if.end145:                                        ; preds = %do.end144, %do.body127
  br label %do.end146

do.end146:                                        ; preds = %if.end145
  br label %return

if.end147:                                        ; preds = %if.then123
  store i32 1, i32* %statted, align 4
  %105 = load i8*, i8** @pathbuf, align 4
  %106 = load i8*, i8** %news, align 4
  %call148 = call i8* @dyncat(i8* %105, i8* %106)
  store i8* %call148, i8** %news, align 4
  br label %if.end151

if.else149:                                       ; preds = %if.else
  %107 = load i8*, i8** @pathbuf, align 4
  %108 = load i8*, i8** %news, align 4
  %call150 = call i8* @dyncat(i8* %107, i8* %108)
  store i8* %call150, i8** %news, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %if.end147
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %for.end
  br label %while.cond153

while.cond153:                                    ; preds = %if.end232, %if.end152
  %109 = load i8**, i8*** @inserts, align 4
  %tobool154 = icmp ne i8** %109, null
  br i1 %tobool154, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond153
  %110 = load i8**, i8*** @inserts, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %incdec.ptr, i8*** @inserts, align 4
  %111 = load i8*, i8** %110, align 4
  %call155 = call i8* @dupstring(i8* %111)
  store i8* %call155, i8** %news, align 4
  %tobool156 = icmp ne i8* %call155, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond153
  %112 = phi i1 [ true, %while.cond153 ], [ %tobool156, %lor.rhs ]
  br i1 %112, label %while.body157, label %while.end233

while.body157:                                    ; preds = %lor.end
  %113 = load i8*, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  %tobool158 = icmp ne i8* %113, null
  br i1 %tobool158, label %if.then159, label %if.end161

if.then159:                                       ; preds = %while.body157
  %114 = load i8*, i8** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 8), align 4
  store i8* %114, i8** %mod, align 4
  call void @modify(i8** %news, i8** %mod)
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %while.body157
  %115 = load i32, i32* %statted, align 4
  %tobool162 = icmp ne i32 %115, 0
  br i1 %tobool162, label %if.end168, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %if.end161
  %116 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  %and164 = and i32 %116, 248
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.then166, label %if.end168

if.then166:                                       ; preds = %land.lhs.true163
  %117 = load i8*, i8** %s.addr, align 4
  %call167 = call i32 @statfullpath(i8* %117, %struct.stat* %buf, i32 1)
  store i32 1, i32* %statted, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %land.lhs.true163, %if.end161
  %118 = load i32, i32* %statted, align 4
  %and169 = and i32 %118, 2
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %if.end193, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.end168
  %119 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 21), align 4
  %and172 = and i32 %119, 7936
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then174, label %if.end193

if.then174:                                       ; preds = %land.lhs.true171
  %120 = load i32, i32* %statted, align 4
  %tobool175 = icmp ne i32 %120, 0
  br i1 %tobool175, label %if.then176, label %if.else185

if.then176:                                       ; preds = %if.then174
  %st_mode177 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 6
  %121 = load i32, i32* %st_mode177, align 8
  %and178 = and i32 %121, 61440
  %cmp179 = icmp eq i32 %and178, 40960
  br i1 %cmp179, label %lor.lhs.false180, label %if.then183

lor.lhs.false180:                                 ; preds = %if.then176
  %122 = load i8*, i8** %s.addr, align 4
  %call181 = call i32 @statfullpath(i8* %122, %struct.stat* %buf2, i32 0)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %lor.lhs.false180, %if.then176
  %123 = bitcast %struct.stat* %buf2 to i8*
  %124 = bitcast %struct.stat* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %123, i8* %124, i32 120, i32 8, i1 false)
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %lor.lhs.false180
  br label %if.end191

if.else185:                                       ; preds = %if.then174
  %125 = load i8*, i8** %s.addr, align 4
  %call186 = call i32 @statfullpath(i8* %125, %struct.stat* %buf2, i32 0)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.else185
  %126 = load i8*, i8** %s.addr, align 4
  %call189 = call i32 @statfullpath(i8* %126, %struct.stat* %buf2, i32 1)
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.else185
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end184
  %127 = load i32, i32* %statted, align 4
  %or192 = or i32 %127, 2
  store i32 %or192, i32* %statted, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.end191, %land.lhs.true171, %if.end168
  %128 = load i8*, i8** %news, align 4
  %129 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %name = getelementptr inbounds %struct.gmatch, %struct.gmatch* %129, i32 0, i32 0
  store i8* %128, i8** %name, align 4
  %130 = load i32, i32* %statted, align 4
  %and194 = and i32 %130, 1
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then196, label %if.end204

if.then196:                                       ; preds = %if.end193
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 12
  %131 = load i32, i32* %st_size, align 8
  %132 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %size = getelementptr inbounds %struct.gmatch, %struct.gmatch* %132, i32 0, i32 3
  store i32 %131, i32* %size, align 4
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 18
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %133 = load i32, i32* %tv_sec, align 8
  %134 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %atime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %134, i32 0, i32 4
  store i32 %133, i32* %atime, align 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 19
  %tv_sec197 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %135 = load i32, i32* %tv_sec197, align 8
  %136 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %mtime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %136, i32 0, i32 5
  store i32 %135, i32* %mtime, align 4
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 20
  %tv_sec198 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 0
  %137 = load i32, i32* %tv_sec198, align 8
  %138 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %ctime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %138, i32 0, i32 6
  store i32 %137, i32* %ctime, align 4
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 4
  %139 = load i32, i32* %st_nlink, align 8
  %140 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %links = getelementptr inbounds %struct.gmatch, %struct.gmatch* %140, i32 0, i32 7
  store i32 %139, i32* %links, align 4
  %st_atim199 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 18
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim199, i32 0, i32 1
  %141 = load i32, i32* %tv_nsec, align 4
  %142 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %ansec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %142, i32 0, i32 13
  store i32 %141, i32* %ansec, align 4
  %st_mtim200 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 19
  %tv_nsec201 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim200, i32 0, i32 1
  %143 = load i32, i32* %tv_nsec201, align 4
  %144 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %mnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %144, i32 0, i32 15
  store i32 %143, i32* %mnsec, align 4
  %st_ctim202 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 20
  %tv_nsec203 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim202, i32 0, i32 1
  %145 = load i32, i32* %tv_nsec203, align 4
  %146 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %cnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %146, i32 0, i32 17
  store i32 %145, i32* %cnsec, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then196, %if.end193
  %147 = load i32, i32* %statted, align 4
  %and205 = and i32 %147, 2
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %if.then207, label %if.end222

if.then207:                                       ; preds = %if.end204
  %st_size208 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 12
  %148 = load i32, i32* %st_size208, align 8
  %149 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_size = getelementptr inbounds %struct.gmatch, %struct.gmatch* %149, i32 0, i32 8
  store i32 %148, i32* %_size, align 4
  %st_atim209 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 18
  %tv_sec210 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim209, i32 0, i32 0
  %150 = load i32, i32* %tv_sec210, align 8
  %151 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_atime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %151, i32 0, i32 9
  store i32 %150, i32* %_atime, align 4
  %st_mtim211 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 19
  %tv_sec212 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim211, i32 0, i32 0
  %152 = load i32, i32* %tv_sec212, align 8
  %153 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_mtime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %153, i32 0, i32 10
  store i32 %152, i32* %_mtime, align 4
  %st_ctim213 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 20
  %tv_sec214 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim213, i32 0, i32 0
  %154 = load i32, i32* %tv_sec214, align 8
  %155 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_ctime = getelementptr inbounds %struct.gmatch, %struct.gmatch* %155, i32 0, i32 11
  store i32 %154, i32* %_ctime, align 4
  %st_nlink215 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 4
  %156 = load i32, i32* %st_nlink215, align 8
  %157 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_links = getelementptr inbounds %struct.gmatch, %struct.gmatch* %157, i32 0, i32 12
  store i32 %156, i32* %_links, align 4
  %st_atim216 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 18
  %tv_nsec217 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim216, i32 0, i32 1
  %158 = load i32, i32* %tv_nsec217, align 4
  %159 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_ansec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %159, i32 0, i32 14
  store i32 %158, i32* %_ansec, align 4
  %st_mtim218 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 19
  %tv_nsec219 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim218, i32 0, i32 1
  %160 = load i32, i32* %tv_nsec219, align 4
  %161 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_mnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %161, i32 0, i32 16
  store i32 %160, i32* %_mnsec, align 4
  %st_ctim220 = getelementptr inbounds %struct.stat, %struct.stat* %buf2, i32 0, i32 20
  %tv_nsec221 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim220, i32 0, i32 1
  %162 = load i32, i32* %tv_nsec221, align 4
  %163 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %_cnsec = getelementptr inbounds %struct.gmatch, %struct.gmatch* %163, i32 0, i32 18
  store i32 %162, i32* %_cnsec, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then207, %if.end204
  %164 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %incdec.ptr223 = getelementptr inbounds %struct.gmatch, %struct.gmatch* %164, i32 1
  store %struct.gmatch* %incdec.ptr223, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %inc224 = add nsw i32 %165, 1
  store i32 %inc224, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 2), align 4
  %cmp225 = icmp eq i32 %inc224, %166
  br i1 %cmp225, label %if.then226, label %if.end229

if.then226:                                       ; preds = %if.end222
  %167 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %168 = bitcast %struct.gmatch* %167 to i8*
  %169 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 2), align 4
  %mul = mul nsw i32 %169, 2
  store i32 %mul, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 2), align 4
  %mul227 = mul i32 76, %mul
  %call228 = call i8* @zrealloc(i8* %168, i32 %mul227)
  %170 = bitcast i8* %call228 to %struct.gmatch*
  store %struct.gmatch* %170, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %171 = load %struct.gmatch*, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 6), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 3), align 4
  %add.ptr = getelementptr inbounds %struct.gmatch, %struct.gmatch* %171, i32 %172
  store %struct.gmatch* %add.ptr, %struct.gmatch** getelementptr inbounds (%struct.globdata, %struct.globdata* @curglobdata, i32 0, i32 7), align 4
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %if.end222
  %173 = load i8**, i8*** @inserts, align 4
  %tobool230 = icmp ne i8** %173, null
  br i1 %tobool230, label %if.end232, label %if.then231

if.then231:                                       ; preds = %if.end229
  br label %while.end233

if.end232:                                        ; preds = %if.end229
  br label %while.cond153

while.end233:                                     ; preds = %if.then231, %lor.end
  br label %do.body234

do.body234:                                       ; preds = %while.end233
  %174 = load i32, i32* @queueing_enabled, align 4
  %dec235 = add nsw i32 %174, -1
  store i32 %dec235, i32* @queueing_enabled, align 4
  %tobool236 = icmp ne i32 %dec235, 0
  br i1 %tobool236, label %if.end252, label %if.then237

if.then237:                                       ; preds = %do.body234
  br label %do.body238

do.body238:                                       ; preds = %if.then237
  br label %while.cond239

while.cond239:                                    ; preds = %while.body241, %do.body238
  %175 = load i32, i32* @queue_front, align 4
  %176 = load i32, i32* @queue_rear, align 4
  %cmp240 = icmp ne i32 %175, %176
  br i1 %cmp240, label %while.body241, label %while.end250

while.body241:                                    ; preds = %while.cond239
  %177 = load i32, i32* @queue_front, align 4
  %add244 = add nsw i32 %177, 1
  %rem245 = srem i32 %add244, 128
  store i32 %rem245, i32* @queue_front, align 4
  %178 = load i32, i32* @queue_front, align 4
  %arrayidx246 = getelementptr inbounds [128 x %struct.__sigset_t], [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %178
  call void @signal_setmask(%struct.__sigset_t* sret %tmp247, %struct.__sigset_t* byval align 4 %arrayidx246)
  %179 = bitcast %struct.__sigset_t* %oset243 to i8*
  %180 = bitcast %struct.__sigset_t* %tmp247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %180, i32 128, i32 4, i1 false)
  %181 = load i32, i32* @queue_front, align 4
  %arrayidx248 = getelementptr inbounds [128 x i32], [128 x i32]* @signal_queue, i32 0, i32 %181
  %182 = load i32, i32* %arrayidx248, align 4
  call void @zhandler(i32 %182)
  call void @signal_setmask(%struct.__sigset_t* sret %tmp249, %struct.__sigset_t* byval align 4 %oset243)
  br label %while.cond239

while.end250:                                     ; preds = %while.cond239
  br label %do.end251

do.end251:                                        ; preds = %while.end250
  br label %if.end252

if.end252:                                        ; preds = %do.end251, %do.body234
  br label %do.end253

do.end253:                                        ; preds = %if.end252
  br label %return

return:                                           ; preds = %do.end253, %do.end146, %do.end119, %do.end66, %do.end9
  ret void
}

declare %struct.__dirstream* @opendir(i8*) #1

declare i8* @zreaddir(%struct.__dirstream*, i32) #1

declare i32 @strpfx(i8*, i8*) #1

declare i32 @strsfx(i8*, i8*) #1

declare i32* @__errno_location() #1

declare void @zwarn(i8*, ...) #1

declare i8* @hrealloc(i8*, i32, i32) #1

declare i32 @closedir(%struct.__dirstream*) #1

declare i32 @restoredir(%struct.dirsav*) #1

declare void @zsfree(i8*) #1

declare i32 @close(i32) #1

declare i8* @zrealloc(i8*, i32) #1

declare i32 @access(i8*, i32) #1

declare i32 @readlink(i8*, i8*, i32) #1

declare i32 @lstat(i8*, %struct.stat*) #1

declare void @modify(i8**, i8**) #1

declare i32 @zstrcmp(i8*, i8*, i32) #1

declare i32 @mb_metacharlenconv(i8*, i32*) #1

declare void @singsub(i8**) #1

declare i32 @ztrlen(i8*) #1

declare i8* @patallocstr(%struct.patprog*, i8*, i32, i32, i32, %struct.patstralloc*) #1

declare i32 @memcmp(i8*, i8*, i32) #1

declare i32 @pattrylen(%struct.patprog*, i8*, i32, i32, %struct.patstralloc*, i32) #1

; Function Attrs: noinline nounwind
define internal i8* @get_match_ret(%struct.imatchdata* %imd, i32 %b, i32 %e) #0 {
entry:
  %retval = alloca i8*, align 4
  %imd.addr = alloca %struct.imatchdata*, align 4
  %b.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %buf = alloca [80 x i8], align 1
  %r = alloca i8*, align 4
  %p = alloca i8*, align 4
  %rr = alloca i8*, align 4
  %replstr = alloca i8*, align 4
  %ll = alloca i32, align 4
  %bl = alloca i32, align 4
  %t = alloca i32, align 4
  %add = alloca i32, align 4
  %fl = alloca i32, align 4
  %i = alloca i32, align 4
  %rd = alloca %struct.repldata*, align 4
  store %struct.imatchdata* %imd, %struct.imatchdata** %imd.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  %0 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %replstr1 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %0, i32 0, i32 5
  %1 = load i8*, i8** %replstr1, align 4
  store i8* %1, i8** %replstr, align 4
  store i32 0, i32* %ll, align 4
  store i32 0, i32* %bl, align 4
  store i32 0, i32* %t, align 4
  store i32 0, i32* %add, align 4
  %2 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %flags = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %2, i32 0, i32 4
  %3 = load i32, i32* %flags, align 4
  store i32 %3, i32* %fl, align 4
  %4 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %ustr = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %4, i32 0, i32 2
  %5 = load i8*, i8** %ustr, align 4
  store i8* %5, i8** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8*, i8** %p, align 4
  %7 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %ustr2 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %7, i32 0, i32 2
  %8 = load i8*, i8** %ustr2, align 4
  %9 = load i32, i32* %b.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 %9
  %cmp = icmp ult i8* %6, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %p, align 4
  %11 = load i8, i8* %10, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %12 to i32
  %and = and i32 %conv, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %add, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %add, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i8*, i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %add, align 4
  %16 = load i32, i32* %b.addr, align 4
  %add3 = add nsw i32 %16, %15
  store i32 %add3, i32* %b.addr, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc18, %for.end
  %17 = load i8*, i8** %p, align 4
  %18 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %ustr5 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %18, i32 0, i32 2
  %19 = load i8*, i8** %ustr5, align 4
  %20 = load i32, i32* %e.addr, align 4
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i32 %20
  %cmp7 = icmp ult i8* %17, %add.ptr6
  br i1 %cmp7, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond4
  %21 = load i8*, i8** %p, align 4
  %22 = load i8, i8* %21, align 1
  %idxprom10 = zext i8 %22 to i32
  %arrayidx11 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom10
  %23 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %23 to i32
  %and13 = and i32 %conv12, 4096
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body9
  %24 = load i32, i32* %add, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, i32* %add, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body9
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %25 = load i8*, i8** %p, align 4
  %incdec.ptr19 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr19, i8** %p, align 4
  br label %for.cond4

for.end20:                                        ; preds = %for.cond4
  %26 = load i32, i32* %add, align 4
  %27 = load i32, i32* %e.addr, align 4
  %add21 = add nsw i32 %27, %26
  store i32 %add21, i32* %e.addr, align 4
  %28 = load i8*, i8** %replstr, align 4
  %tobool22 = icmp ne i8* %28, null
  br i1 %tobool22, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end20
  %29 = load i32, i32* %fl, align 4
  %and23 = and i32 %29, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end56

if.then25:                                        ; preds = %lor.lhs.false, %for.end20
  %30 = load i32, i32* %fl, align 4
  %and26 = and i32 %30, 1024
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  %31 = load i8*, i8** %replstr, align 4
  %call = call i8* @dupstring(i8* %31)
  store i8* %call, i8** %replstr, align 4
  call void @singsub(i8** %replstr)
  %32 = load i8*, i8** %replstr, align 4
  call void @untokenize(i8* %32)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then25
  %33 = load i32, i32* %fl, align 4
  %and30 = and i32 %33, 8704
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end29
  %34 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %repllist = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %34, i32 0, i32 6
  %35 = load %union.linkroot*, %union.linkroot** %repllist, align 4
  %tobool32 = icmp ne %union.linkroot* %35, null
  br i1 %tobool32, label %if.then33, label %if.end53

if.then33:                                        ; preds = %land.lhs.true
  %36 = load i32, i32* %fl, align 4
  %and34 = and i32 %36, 8192
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then33
  %call36 = call i8* @zalloc(i32 12)
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  %call37 = call i8* @zhalloc(i32 12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call36, %cond.true ], [ %call37, %cond.false ]
  %37 = bitcast i8* %cond to %struct.repldata*
  store %struct.repldata* %37, %struct.repldata** %rd, align 4
  %38 = load i32, i32* %b.addr, align 4
  %39 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %b38 = getelementptr inbounds %struct.repldata, %struct.repldata* %39, i32 0, i32 0
  store i32 %38, i32* %b38, align 4
  %40 = load i32, i32* %e.addr, align 4
  %41 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %e39 = getelementptr inbounds %struct.repldata, %struct.repldata* %41, i32 0, i32 1
  store i32 %40, i32* %e39, align 4
  %42 = load i8*, i8** %replstr, align 4
  %43 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %replstr40 = getelementptr inbounds %struct.repldata, %struct.repldata* %43, i32 0, i32 2
  store i8* %42, i8** %replstr40, align 4
  %44 = load i32, i32* %fl, align 4
  %and41 = and i32 %44, 8192
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else

if.then43:                                        ; preds = %cond.end
  %45 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %repllist44 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %45, i32 0, i32 6
  %46 = load %union.linkroot*, %union.linkroot** %repllist44, align 4
  %47 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %repllist45 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %47, i32 0, i32 6
  %48 = load %union.linkroot*, %union.linkroot** %repllist45, align 4
  %list = bitcast %union.linkroot* %48 to %struct.linklist*
  %last = getelementptr inbounds %struct.linklist, %struct.linklist* %list, i32 0, i32 1
  %49 = load %struct.linknode*, %struct.linknode** %last, align 4
  %50 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %51 = bitcast %struct.repldata* %50 to i8*
  %call46 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %46, %struct.linknode* %49, i8* %51)
  br label %if.end52

if.else:                                          ; preds = %cond.end
  %52 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %repllist47 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %52, i32 0, i32 6
  %53 = load %union.linkroot*, %union.linkroot** %repllist47, align 4
  %54 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %repllist48 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %54, i32 0, i32 6
  %55 = load %union.linkroot*, %union.linkroot** %repllist48, align 4
  %list49 = bitcast %union.linkroot* %55 to %struct.linklist*
  %last50 = getelementptr inbounds %struct.linklist, %struct.linklist* %list49, i32 0, i32 1
  %56 = load %struct.linknode*, %struct.linknode** %last50, align 4
  %57 = load %struct.repldata*, %struct.repldata** %rd, align 4
  %58 = bitcast %struct.repldata* %57 to i8*
  %call51 = call %struct.linknode* @insertlinknode(%union.linkroot* %53, %struct.linknode* %56, i8* %58)
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then43
  %59 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %59, i32 0, i32 0
  %60 = load i8*, i8** %mstr, align 4
  store i8* %60, i8** %retval, align 4
  br label %return

if.end53:                                         ; preds = %land.lhs.true, %if.end29
  %61 = load i8*, i8** %replstr, align 4
  %call54 = call i32 @strlen(i8* %61)
  %62 = load i32, i32* %ll, align 4
  %add55 = add i32 %62, %call54
  store i32 %add55, i32* %ll, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %lor.lhs.false
  %63 = load i32, i32* %fl, align 4
  %and57 = and i32 %63, 8
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end56
  %64 = load i32, i32* %e.addr, align 4
  %65 = load i32, i32* %b.addr, align 4
  %sub = sub nsw i32 %64, %65
  %add60 = add nsw i32 1, %sub
  %66 = load i32, i32* %ll, align 4
  %add61 = add nsw i32 %66, %add60
  store i32 %add61, i32* %ll, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end56
  %67 = load i32, i32* %fl, align 4
  %and63 = and i32 %67, 16
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end62
  %68 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mlen = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %68, i32 0, i32 1
  %69 = load i32, i32* %mlen, align 4
  %70 = load i32, i32* %e.addr, align 4
  %71 = load i32, i32* %b.addr, align 4
  %sub66 = sub nsw i32 %70, %71
  %sub67 = sub nsw i32 %69, %sub66
  %add68 = add nsw i32 1, %sub67
  %72 = load i32, i32* %ll, align 4
  %add69 = add nsw i32 %72, %add68
  store i32 %add69, i32* %ll, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end62
  %73 = load i32, i32* %fl, align 4
  %and71 = and i32 %73, 32
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.end70
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %74 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr74 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %74, i32 0, i32 0
  %75 = load i8*, i8** %mstr74, align 4
  %76 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr75 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %76, i32 0, i32 0
  %77 = load i8*, i8** %mstr75, align 4
  %78 = load i32, i32* %b.addr, align 4
  %add.ptr76 = getelementptr inbounds i8, i8* %77, i32 %78
  %call77 = call i32 @mb_metastrlenend(i8* %75, i32 0, i8* %add.ptr76)
  %add78 = add nsw i32 %call77, 1
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %add78)
  %arraydecay80 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call81 = call i32 @strlen(i8* %arraydecay80)
  store i32 %call81, i32* %bl, align 4
  %79 = load i32, i32* %ll, align 4
  %add82 = add nsw i32 %79, %call81
  store i32 %add82, i32* %ll, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %if.end70
  %80 = load i32, i32* %fl, align 4
  %and84 = and i32 %80, 64
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.end98

if.then86:                                        ; preds = %if.end83
  %arraydecay87 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %81 = load i32, i32* %bl, align 4
  %add.ptr88 = getelementptr inbounds i8, i8* %arraydecay87, i32 %81
  %82 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr89 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %82, i32 0, i32 0
  %83 = load i8*, i8** %mstr89, align 4
  %84 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr90 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %84, i32 0, i32 0
  %85 = load i8*, i8** %mstr90, align 4
  %86 = load i32, i32* %e.addr, align 4
  %add.ptr91 = getelementptr inbounds i8, i8* %85, i32 %86
  %call92 = call i32 @mb_metastrlenend(i8* %83, i32 0, i8* %add.ptr91)
  %add93 = add nsw i32 %call92, 1
  %call94 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %add93)
  %arraydecay95 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call96 = call i32 @strlen(i8* %arraydecay95)
  store i32 %call96, i32* %bl, align 4
  %87 = load i32, i32* %ll, align 4
  %add97 = add nsw i32 %87, %call96
  store i32 %add97, i32* %ll, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then86, %if.end83
  %88 = load i32, i32* %fl, align 4
  %and99 = and i32 %88, 128
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.end113

if.then101:                                       ; preds = %if.end98
  %arraydecay102 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %89 = load i32, i32* %bl, align 4
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay102, i32 %89
  %90 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr104 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %90, i32 0, i32 0
  %91 = load i8*, i8** %mstr104, align 4
  %92 = load i32, i32* %b.addr, align 4
  %add.ptr105 = getelementptr inbounds i8, i8* %91, i32 %92
  %93 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr106 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %93, i32 0, i32 0
  %94 = load i8*, i8** %mstr106, align 4
  %95 = load i32, i32* %e.addr, align 4
  %add.ptr107 = getelementptr inbounds i8, i8* %94, i32 %95
  %call108 = call i32 @mb_metastrlenend(i8* %add.ptr105, i32 0, i8* %add.ptr107)
  %call109 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %call108)
  %arraydecay110 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call111 = call i32 @strlen(i8* %arraydecay110)
  store i32 %call111, i32* %bl, align 4
  %96 = load i32, i32* %ll, align 4
  %add112 = add nsw i32 %96, %call111
  store i32 %add112, i32* %ll, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then101, %if.end98
  %97 = load i32, i32* %bl, align 4
  %tobool114 = icmp ne i32 %97, 0
  br i1 %tobool114, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end113
  %98 = load i32, i32* %bl, align 4
  %sub116 = sub nsw i32 %98, 1
  %arrayidx117 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 %sub116
  store i8 0, i8* %arrayidx117, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end113
  %99 = load i32, i32* %ll, align 4
  %call119 = call i8* @hcalloc(i32 %99)
  store i8* %call119, i8** %r, align 4
  store i8* %call119, i8** %rr, align 4
  %100 = load i32, i32* %fl, align 4
  %and120 = and i32 %100, 8
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then122, label %if.end134

if.then122:                                       ; preds = %if.end118
  %101 = load i32, i32* %b.addr, align 4
  store i32 %101, i32* %i, align 4
  %102 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr123 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %102, i32 0, i32 0
  %103 = load i8*, i8** %mstr123, align 4
  %104 = load i32, i32* %b.addr, align 4
  %add.ptr124 = getelementptr inbounds i8, i8* %103, i32 %104
  store i8* %add.ptr124, i8** %p, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc131, %if.then122
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %e.addr, align 4
  %cmp126 = icmp slt i32 %105, %106
  br i1 %cmp126, label %for.body128, label %for.end133

for.body128:                                      ; preds = %for.cond125
  %107 = load i8*, i8** %p, align 4
  %incdec.ptr129 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr129, i8** %p, align 4
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %rr, align 4
  %incdec.ptr130 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr130, i8** %rr, align 4
  store i8 %108, i8* %109, align 1
  br label %for.inc131

for.inc131:                                       ; preds = %for.body128
  %110 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %110, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond125

for.end133:                                       ; preds = %for.cond125
  store i32 1, i32* %t, align 4
  br label %if.end134

if.end134:                                        ; preds = %for.end133, %if.end118
  %111 = load i32, i32* %fl, align 4
  %and135 = and i32 %111, 16
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then137, label %if.end173

if.then137:                                       ; preds = %if.end134
  %112 = load i32, i32* %t, align 4
  %tobool138 = icmp ne i32 %112, 0
  br i1 %tobool138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.then137
  %113 = load i8*, i8** %rr, align 4
  %incdec.ptr140 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr140, i8** %rr, align 4
  store i8 32, i8* %113, align 1
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.then137
  store i32 0, i32* %i, align 4
  %114 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr142 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %114, i32 0, i32 0
  %115 = load i8*, i8** %mstr142, align 4
  store i8* %115, i8** %p, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc149, %if.end141
  %116 = load i32, i32* %i, align 4
  %117 = load i32, i32* %b.addr, align 4
  %cmp144 = icmp slt i32 %116, %117
  br i1 %cmp144, label %for.body146, label %for.end151

for.body146:                                      ; preds = %for.cond143
  %118 = load i8*, i8** %p, align 4
  %incdec.ptr147 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr147, i8** %p, align 4
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %rr, align 4
  %incdec.ptr148 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr148, i8** %rr, align 4
  store i8 %119, i8* %120, align 1
  br label %for.inc149

for.inc149:                                       ; preds = %for.body146
  %121 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %121, 1
  store i32 %inc150, i32* %i, align 4
  br label %for.cond143

for.end151:                                       ; preds = %for.cond143
  %122 = load i8*, i8** %replstr, align 4
  %tobool152 = icmp ne i8* %122, null
  br i1 %tobool152, label %if.then153, label %if.end160

if.then153:                                       ; preds = %for.end151
  %123 = load i8*, i8** %replstr, align 4
  store i8* %123, i8** %p, align 4
  br label %for.cond154

for.cond154:                                      ; preds = %for.body156, %if.then153
  %124 = load i8*, i8** %p, align 4
  %125 = load i8, i8* %124, align 1
  %tobool155 = icmp ne i8 %125, 0
  br i1 %tobool155, label %for.body156, label %for.end159

for.body156:                                      ; preds = %for.cond154
  %126 = load i8*, i8** %p, align 4
  %incdec.ptr157 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr157, i8** %p, align 4
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %rr, align 4
  %incdec.ptr158 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr158, i8** %rr, align 4
  store i8 %127, i8* %128, align 1
  br label %for.cond154

for.end159:                                       ; preds = %for.cond154
  br label %if.end160

if.end160:                                        ; preds = %for.end159, %for.end151
  %129 = load i32, i32* %e.addr, align 4
  store i32 %129, i32* %i, align 4
  %130 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mstr161 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %130, i32 0, i32 0
  %131 = load i8*, i8** %mstr161, align 4
  %132 = load i32, i32* %e.addr, align 4
  %add.ptr162 = getelementptr inbounds i8, i8* %131, i32 %132
  store i8* %add.ptr162, i8** %p, align 4
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc170, %if.end160
  %133 = load i32, i32* %i, align 4
  %134 = load %struct.imatchdata*, %struct.imatchdata** %imd.addr, align 4
  %mlen164 = getelementptr inbounds %struct.imatchdata, %struct.imatchdata* %134, i32 0, i32 1
  %135 = load i32, i32* %mlen164, align 4
  %cmp165 = icmp slt i32 %133, %135
  br i1 %cmp165, label %for.body167, label %for.end172

for.body167:                                      ; preds = %for.cond163
  %136 = load i8*, i8** %p, align 4
  %incdec.ptr168 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr168, i8** %p, align 4
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %rr, align 4
  %incdec.ptr169 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr169, i8** %rr, align 4
  store i8 %137, i8* %138, align 1
  br label %for.inc170

for.inc170:                                       ; preds = %for.body167
  %139 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %139, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond163

for.end172:                                       ; preds = %for.cond163
  store i32 1, i32* %t, align 4
  br label %if.end173

if.end173:                                        ; preds = %for.end172, %if.end134
  %140 = load i8*, i8** %rr, align 4
  store i8 0, i8* %140, align 1
  %141 = load i32, i32* %bl, align 4
  %tobool174 = icmp ne i32 %141, 0
  br i1 %tobool174, label %if.then175, label %if.end182

if.then175:                                       ; preds = %if.end173
  %142 = load i32, i32* %t, align 4
  %tobool176 = icmp ne i32 %142, 0
  br i1 %tobool176, label %if.then177, label %if.end179

if.then177:                                       ; preds = %if.then175
  %143 = load i8*, i8** %rr, align 4
  %incdec.ptr178 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr178, i8** %rr, align 4
  store i8 32, i8* %143, align 1
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.then175
  %144 = load i8*, i8** %rr, align 4
  %arraydecay180 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call181 = call i8* @strcpy(i8* %144, i8* %arraydecay180)
  br label %if.end182

if.end182:                                        ; preds = %if.end179, %if.end173
  %145 = load i8*, i8** %r, align 4
  store i8* %145, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end182, %if.end52
  %146 = load i8*, i8** %retval, align 4
  ret i8* %146
}

declare i32 @patmatchlen() #1

; Function Attrs: noinline nounwind
define internal void @set_pat_end(%struct.patprog* %p, i8 signext %null_me) #0 {
entry:
  %p.addr = alloca %struct.patprog*, align 4
  %null_me.addr = alloca i8, align 1
  store %struct.patprog* %p, %struct.patprog** %p.addr, align 4
  store i8 %null_me, i8* %null_me.addr, align 1
  %0 = load i8, i8* %null_me.addr, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags = getelementptr inbounds %struct.patprog, %struct.patprog* %1, i32 0, i32 6
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 1024
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags1 = getelementptr inbounds %struct.patprog, %struct.patprog* %3, i32 0, i32 6
  %4 = load i32, i32* %flags1, align 4
  %and = and i32 %4, -1025
  store i32 %and, i32* %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @iincchar(i8** %tp, i32 %left) #0 {
entry:
  %tp.addr = alloca i8**, align 4
  %left.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  %mbclen = alloca i32, align 4
  store i8** %tp, i8*** %tp.addr, align 4
  store i32 %left, i32* %left.addr, align 4
  %0 = load i8**, i8*** %tp.addr, align 4
  %1 = load i8*, i8** %0, align 4
  store i8* %1, i8** %t, align 4
  %2 = load i8*, i8** %t, align 4
  %3 = load i32, i32* %left.addr, align 4
  %call = call i32 @mb_charlenconv(i8* %2, i32 %3, i32* null)
  store i32 %call, i32* %mbclen, align 4
  %4 = load i8*, i8** %t, align 4
  %5 = load i32, i32* %mbclen, align 4
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %5
  %6 = load i8**, i8*** %tp.addr, align 4
  store i8* %add.ptr, i8** %6, align 4
  %7 = load i32, i32* %mbclen, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal void @set_pat_start(%struct.patprog* %p, i32 %offs) #0 {
entry:
  %p.addr = alloca %struct.patprog*, align 4
  %offs.addr = alloca i32, align 4
  store %struct.patprog* %p, %struct.patprog** %p.addr, align 4
  store i32 %offs, i32* %offs.addr, align 4
  %0 = load i32, i32* %offs.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags = getelementptr inbounds %struct.patprog, %struct.patprog* %1, i32 0, i32 6
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 512
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.patprog*, %struct.patprog** %p.addr, align 4
  %flags1 = getelementptr inbounds %struct.patprog, %struct.patprog* %3, i32 0, i32 6
  %4 = load i32, i32* %flags1, align 4
  %and = and i32 %4, -513
  store i32 %and, i32* %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %union.linkroot* @znewlinklist() #1

declare i32 @mb_charlenconv(i8*, i32, i32*) #1

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*) #1

declare i32 @mb_metastrlenend(i8*, i32, i8*) #1

declare i32 @mode_to_octal(i32) #1

declare i32 @time(i32*) #1

declare void @unsetparam(i8*) #1

declare i8** @getaparam(i8*) #1

declare i8** @gethparam(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
