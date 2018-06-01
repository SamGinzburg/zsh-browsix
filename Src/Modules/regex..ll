; ModuleID = 'regex.c'
source_filename = "regex.c"
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
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.re_pattern_buffer = type { i32, i8*, [4 x i8*], i32, i8 }
%struct.regmatch_t = type { i32, i32 }

@module_features = internal global %struct.features { %struct.builtin* null, i32 0, %struct.conddef* getelementptr inbounds ([1 x %struct.conddef], [1 x %struct.conddef]* @cotab, i32 0, i32 0), i32 1, %struct.mathfunc* null, i32 0, %struct.paramdef* null, i32 0, i32 0 }, align 4
@cotab = internal global [1 x %struct.conddef] [%struct.conddef { %struct.conddef* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 1, i32 (i8**, i32)* @zcond_regex_match, i32 0, i32 0, i32 0, i8* null }], align 4
@.str = private unnamed_addr constant [12 x i8] c"regex-match\00", align 1
@opts = external global [181 x i8], align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to compile regex\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"INTERNAL ERROR: regcomp() returned negative subpattern count %d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BASH_REMATCH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"MATCH\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"MBEGIN\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MEND\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mbegin\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mend\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"regex matching error\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

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
  store %struct.module* %m, %struct.module** %m.addr, align 4
  store i32** %enables, i32*** %enables.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %1 = load i32**, i32*** %enables.addr, align 4
  %call = call i32 @handlefeatures(%struct.module* %0, %struct.features* @module_features, i32** %1)
  ret i32 %call
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
  store %struct.module* %m, %struct.module** %m.addr, align 4
  %0 = load %struct.module*, %struct.module** %m.addr, align 4
  %call = call i32 @setfeatureenables(%struct.module* %0, %struct.features* @module_features, i32* null)
  ret i32 %call
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
define internal i32 @zcond_regex_match(i8** %a, i32 %id) #0 {
entry:
  %a.addr = alloca i8**, align 4
  %id.addr = alloca i32, align 4
  %re = alloca %struct.re_pattern_buffer, align 4
  %m = alloca %struct.regmatch_t*, align 4
  %matches = alloca %struct.regmatch_t*, align 4
  %matchessz = alloca i32, align 4
  %lhstr = alloca i8*, align 4
  %lhstr_zshmeta = alloca i8*, align 4
  %rhre = alloca i8*, align 4
  %rhre_zshmeta = alloca i8*, align 4
  %s = alloca i8*, align 4
  %arr = alloca i8**, align 4
  %x = alloca i8**, align 4
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %return_value = alloca i32, align 4
  %rcflags = alloca i32, align 4
  %reflags = alloca i32, align 4
  %nelem = alloca i32, align 4
  %start = alloca i32, align 4
  %offs = alloca i32, align 4
  %ptr = alloca i8*, align 4
  %clen = alloca i32, align 4
  %leftlen = alloca i32, align 4
  %mbegin = alloca i8**, align 4
  %mend = alloca i8**, align 4
  %bptr = alloca i8**, align 4
  %eptr = alloca i8**, align 4
  %buf = alloca [12 x i8], align 1
  store i8** %a, i8*** %a.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  store %struct.regmatch_t* null, %struct.regmatch_t** %matches, align 4
  store i32 0, i32* %matchessz, align 4
  %0 = load i8**, i8*** %a.addr, align 4
  %call = call i8* @cond_str(i8** %0, i32 0, i32 0)
  store i8* %call, i8** %lhstr_zshmeta, align 4
  %1 = load i8**, i8*** %a.addr, align 4
  %call1 = call i8* @cond_str(i8** %1, i32 1, i32 0)
  store i8* %call1, i8** %rhre_zshmeta, align 4
  store i32 0, i32* %reflags, align 4
  store i32 0, i32* %rcflags, align 4
  store i32 0, i32* %return_value, align 4
  %2 = load i8*, i8** %lhstr_zshmeta, align 4
  %call2 = call i8* @ztrdup(i8* %2)
  store i8* %call2, i8** %lhstr, align 4
  %3 = load i8*, i8** %lhstr, align 4
  %call3 = call i8* @unmetafy(i8* %3, i32* null)
  %4 = load i8*, i8** %rhre_zshmeta, align 4
  %call4 = call i8* @ztrdup(i8* %4)
  store i8* %call4, i8** %rhre, align 4
  %5 = load i8*, i8** %rhre, align 4
  %call5 = call i8* @unmetafy(i8* %5, i32* null)
  %6 = load i32, i32* %id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %7 = load i32, i32* %rcflags, align 4
  %or = or i32 %7, 1
  store i32 %or, i32* %rcflags, align 4
  %8 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 27), align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load i32, i32* %rcflags, align 4
  %or6 = or i32 %9, 2
  store i32 %or6, i32* %rcflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %10 = load i8*, i8** %rhre, align 4
  %11 = load i32, i32* %rcflags, align 4
  %call7 = call i32 @regcomp(%struct.re_pattern_buffer* %re, i8* %10, i32 %11)
  store i32 %call7, i32* %r, align 4
  %12 = load i32, i32* %r, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %13 = load i32, i32* %r, align 4
  call void @zregex_regerrwarn(i32 %13, %struct.re_pattern_buffer* %re, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

if.end10:                                         ; preds = %if.end
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %14 = load i32, i32* %re_nsub, align 4
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end10
  %re_nsub12 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %15 = load i32, i32* %re_nsub12, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  br label %sw.epilog

if.end13:                                         ; preds = %if.end10
  %re_nsub14 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %16 = load i32, i32* %re_nsub14, align 4
  %add = add i32 %16, 1
  %mul = mul i32 %add, 8
  store i32 %mul, i32* %matchessz, align 4
  %17 = load i32, i32* %matchessz, align 4
  %call15 = call i8* @zalloc(i32 %17)
  %18 = bitcast i8* %call15 to %struct.regmatch_t*
  store %struct.regmatch_t* %18, %struct.regmatch_t** %matches, align 4
  %19 = load i8*, i8** %lhstr, align 4
  %re_nsub16 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %20 = load i32, i32* %re_nsub16, align 4
  %add17 = add i32 %20, 1
  %21 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  %22 = load i32, i32* %reflags, align 4
  %call18 = call i32 @regexec(%struct.re_pattern_buffer* %re, i8* %19, i32 %add17, %struct.regmatch_t* %21, i32 %22)
  store i32 %call18, i32* %r, align 4
  %23 = load i32, i32* %r, align 4
  %cmp19 = icmp eq i32 %23, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end13
  br label %if.end146

if.else:                                          ; preds = %if.end13
  %24 = load i32, i32* %r, align 4
  %cmp21 = icmp eq i32 %24, 0
  br i1 %cmp21, label %if.then22, label %if.else144

if.then22:                                        ; preds = %if.else
  store i32 1, i32* %return_value, align 4
  %25 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 21), align 1
  %tobool23 = icmp ne i8 %25, 0
  br i1 %tobool23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.then22
  store i32 0, i32* %start, align 4
  %re_nsub25 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %26 = load i32, i32* %re_nsub25, align 4
  %add26 = add i32 %26, 1
  store i32 %add26, i32* %nelem, align 4
  br label %if.end29

if.else27:                                        ; preds = %if.then22
  store i32 1, i32* %start, align 4
  %re_nsub28 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %27 = load i32, i32* %re_nsub28, align 4
  store i32 %27, i32* %nelem, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then24
  store i8** null, i8*** %arr, align 4
  %28 = load i32, i32* %nelem, align 4
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %if.then31, label %if.end41

if.then31:                                        ; preds = %if.end29
  %29 = load i32, i32* %nelem, align 4
  %add32 = add nsw i32 %29, 1
  %mul33 = mul i32 4, %add32
  %call34 = call i8* @zalloc(i32 %mul33)
  %30 = bitcast i8* %call34 to i8**
  store i8** %30, i8*** %x, align 4
  store i8** %30, i8*** %arr, align 4
  %31 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  %32 = load i32, i32* %start, align 4
  %add.ptr = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %31, i32 %32
  store %struct.regmatch_t* %add.ptr, %struct.regmatch_t** %m, align 4
  %33 = load i32, i32* %start, align 4
  store i32 %33, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then31
  %34 = load i32, i32* %n, align 4
  %re_nsub35 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %re, i32 0, i32 0
  %35 = load i32, i32* %re_nsub35, align 4
  %cmp36 = icmp sle i32 %34, %35
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %lhstr, align 4
  %37 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %37, i32 0, i32 0
  %38 = load i32, i32* %rm_so, align 4
  %add.ptr37 = getelementptr inbounds i8, i8* %36, i32 %38
  %39 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %39, i32 0, i32 1
  %40 = load i32, i32* %rm_eo, align 4
  %41 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so38 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %41, i32 0, i32 0
  %42 = load i32, i32* %rm_so38, align 4
  %sub = sub nsw i32 %40, %42
  %call39 = call i8* @metafy(i8* %add.ptr37, i32 %sub, i32 3)
  %43 = load i8**, i8*** %x, align 4
  store i8* %call39, i8** %43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %n, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %n, align 4
  %45 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %incdec.ptr = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %45, i32 1
  store %struct.regmatch_t* %incdec.ptr, %struct.regmatch_t** %m, align 4
  %46 = load i8**, i8*** %x, align 4
  %incdec.ptr40 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %incdec.ptr40, i8*** %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i8**, i8*** %x, align 4
  store i8* null, i8** %47, align 4
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end29
  %48 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 21), align 1
  %tobool42 = icmp ne i8 %48, 0
  br i1 %tobool42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.end41
  %49 = load i8**, i8*** %arr, align 4
  %call44 = call %struct.param* @assignaparam(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8** %49, i32 0)
  br label %if.end143

if.else45:                                        ; preds = %if.end41
  %50 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  store %struct.regmatch_t* %50, %struct.regmatch_t** %m, align 4
  %51 = load i8*, i8** %lhstr, align 4
  %52 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so46 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %52, i32 0, i32 0
  %53 = load i32, i32* %rm_so46, align 4
  %add.ptr47 = getelementptr inbounds i8, i8* %51, i32 %53
  %54 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_eo48 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %54, i32 0, i32 1
  %55 = load i32, i32* %rm_eo48, align 4
  %56 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so49 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %56, i32 0, i32 0
  %57 = load i32, i32* %rm_so49, align 4
  %sub50 = sub nsw i32 %55, %57
  %call51 = call i8* @metafy(i8* %add.ptr47, i32 %sub50, i32 3)
  store i8* %call51, i8** %s, align 4
  %58 = load i8*, i8** %s, align 4
  %call52 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %58, i32 0)
  %59 = load i8*, i8** %lhstr, align 4
  store i8* %59, i8** %ptr, align 4
  %60 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so53 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %60, i32 0, i32 0
  %61 = load i32, i32* %rm_so53, align 4
  store i32 %61, i32* %leftlen, align 4
  store i32 0, i32* %offs, align 4
  call void @mb_charinit()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else45
  %62 = load i32, i32* %leftlen, align 4
  %tobool54 = icmp ne i32 %62, 0
  br i1 %tobool54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %63 = load i32, i32* %offs, align 4
  %inc55 = add nsw i32 %63, 1
  store i32 %inc55, i32* %offs, align 4
  %64 = load i8*, i8** %ptr, align 4
  %65 = load i32, i32* %leftlen, align 4
  %call56 = call i32 @mb_charlenconv(i8* %64, i32 %65, i32* null)
  store i32 %call56, i32* %clen, align 4
  %66 = load i32, i32* %clen, align 4
  %67 = load i8*, i8** %ptr, align 4
  %add.ptr57 = getelementptr inbounds i8, i8* %67, i32 %66
  store i8* %add.ptr57, i8** %ptr, align 4
  %68 = load i32, i32* %clen, align 4
  %69 = load i32, i32* %leftlen, align 4
  %sub58 = sub nsw i32 %69, %68
  store i32 %sub58, i32* %leftlen, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %70 = load i32, i32* %offs, align 4
  %71 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool59 = icmp ne i8 %71, 0
  %lnot = xor i1 %tobool59, true
  %lnot.ext = zext i1 %lnot to i32
  %add60 = add nsw i32 %70, %lnot.ext
  %call61 = call %struct.param* @assigniparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %add60, i32 0)
  %72 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_eo62 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %72, i32 0, i32 1
  %73 = load i32, i32* %rm_eo62, align 4
  %74 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so63 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %74, i32 0, i32 0
  %75 = load i32, i32* %rm_so63, align 4
  %sub64 = sub nsw i32 %73, %75
  store i32 %sub64, i32* %leftlen, align 4
  br label %while.cond65

while.cond65:                                     ; preds = %while.body67, %while.end
  %76 = load i32, i32* %leftlen, align 4
  %tobool66 = icmp ne i32 %76, 0
  br i1 %tobool66, label %while.body67, label %while.end72

while.body67:                                     ; preds = %while.cond65
  %77 = load i32, i32* %offs, align 4
  %inc68 = add nsw i32 %77, 1
  store i32 %inc68, i32* %offs, align 4
  %78 = load i8*, i8** %ptr, align 4
  %79 = load i32, i32* %leftlen, align 4
  %call69 = call i32 @mb_charlenconv(i8* %78, i32 %79, i32* null)
  store i32 %call69, i32* %clen, align 4
  %80 = load i32, i32* %clen, align 4
  %81 = load i8*, i8** %ptr, align 4
  %add.ptr70 = getelementptr inbounds i8, i8* %81, i32 %80
  store i8* %add.ptr70, i8** %ptr, align 4
  %82 = load i32, i32* %clen, align 4
  %83 = load i32, i32* %leftlen, align 4
  %sub71 = sub nsw i32 %83, %82
  store i32 %sub71, i32* %leftlen, align 4
  br label %while.cond65

while.end72:                                      ; preds = %while.cond65
  %84 = load i32, i32* %offs, align 4
  %85 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool73 = icmp ne i8 %85, 0
  %lnot74 = xor i1 %tobool73, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %add76 = add nsw i32 %84, %lnot.ext75
  %sub77 = sub nsw i32 %add76, 1
  %call78 = call %struct.param* @assigniparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %sub77, i32 0)
  %86 = load i32, i32* %nelem, align 4
  %tobool79 = icmp ne i32 %86, 0
  br i1 %tobool79, label %if.then80, label %if.end142

if.then80:                                        ; preds = %while.end72
  %87 = load i32, i32* %nelem, align 4
  %add81 = add nsw i32 %87, 1
  %mul82 = mul i32 4, %add81
  %call83 = call i8* @zalloc(i32 %mul82)
  %88 = bitcast i8* %call83 to i8**
  store i8** %88, i8*** %mbegin, align 4
  store i8** %88, i8*** %bptr, align 4
  %89 = load i32, i32* %nelem, align 4
  %add84 = add nsw i32 %89, 1
  %mul85 = mul i32 4, %add84
  %call86 = call i8* @zalloc(i32 %mul85)
  %90 = bitcast i8* %call86 to i8**
  store i8** %90, i8*** %mend, align 4
  store i8** %90, i8*** %eptr, align 4
  %91 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  %92 = load i32, i32* %start, align 4
  %add.ptr87 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %91, i32 %92
  store %struct.regmatch_t* %add.ptr87, %struct.regmatch_t** %m, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc133, %if.then80
  %93 = load i32, i32* %n, align 4
  %94 = load i32, i32* %nelem, align 4
  %cmp89 = icmp slt i32 %93, %94
  br i1 %cmp89, label %for.body90, label %for.end138

for.body90:                                       ; preds = %for.cond88
  %95 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so91 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %95, i32 0, i32 0
  %96 = load i32, i32* %rm_so91, align 4
  %cmp92 = icmp slt i32 %96, 0
  br i1 %cmp92, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body90
  %97 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_eo93 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %97, i32 0, i32 1
  %98 = load i32, i32* %rm_eo93, align 4
  %cmp94 = icmp slt i32 %98, 0
  br i1 %cmp94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %lor.lhs.false, %for.body90
  %call96 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %99 = load i8**, i8*** %bptr, align 4
  store i8* %call96, i8** %99, align 4
  %call97 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %100 = load i8**, i8*** %eptr, align 4
  store i8* %call97, i8** %100, align 4
  br label %for.inc133

if.end98:                                         ; preds = %lor.lhs.false
  %101 = load i8*, i8** %lhstr, align 4
  store i8* %101, i8** %ptr, align 4
  %102 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so99 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %102, i32 0, i32 0
  %103 = load i32, i32* %rm_so99, align 4
  store i32 %103, i32* %leftlen, align 4
  store i32 0, i32* %offs, align 4
  call void @mb_charinit()
  br label %while.cond100

while.cond100:                                    ; preds = %while.body102, %if.end98
  %104 = load i32, i32* %leftlen, align 4
  %tobool101 = icmp ne i32 %104, 0
  br i1 %tobool101, label %while.body102, label %while.end107

while.body102:                                    ; preds = %while.cond100
  %105 = load i32, i32* %offs, align 4
  %inc103 = add nsw i32 %105, 1
  store i32 %inc103, i32* %offs, align 4
  %106 = load i8*, i8** %ptr, align 4
  %107 = load i32, i32* %leftlen, align 4
  %call104 = call i32 @mb_charlenconv(i8* %106, i32 %107, i32* null)
  store i32 %call104, i32* %clen, align 4
  %108 = load i32, i32* %clen, align 4
  %109 = load i8*, i8** %ptr, align 4
  %add.ptr105 = getelementptr inbounds i8, i8* %109, i32 %108
  store i8* %add.ptr105, i8** %ptr, align 4
  %110 = load i32, i32* %clen, align 4
  %111 = load i32, i32* %leftlen, align 4
  %sub106 = sub nsw i32 %111, %110
  store i32 %sub106, i32* %leftlen, align 4
  br label %while.cond100

while.end107:                                     ; preds = %while.cond100
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %112 = load i32, i32* %offs, align 4
  %113 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool108 = icmp ne i8 %113, 0
  %lnot109 = xor i1 %tobool108, true
  %lnot.ext110 = zext i1 %lnot109 to i32
  %add111 = add nsw i32 %112, %lnot.ext110
  call void @convbase(i8* %arraydecay, i32 %add111, i32 10)
  %arraydecay112 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call113 = call i8* @ztrdup(i8* %arraydecay112)
  %114 = load i8**, i8*** %bptr, align 4
  store i8* %call113, i8** %114, align 4
  %115 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_eo114 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %115, i32 0, i32 1
  %116 = load i32, i32* %rm_eo114, align 4
  %117 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %rm_so115 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %117, i32 0, i32 0
  %118 = load i32, i32* %rm_so115, align 4
  %sub116 = sub nsw i32 %116, %118
  store i32 %sub116, i32* %leftlen, align 4
  br label %while.cond117

while.cond117:                                    ; preds = %while.body119, %while.end107
  %119 = load i32, i32* %leftlen, align 4
  %tobool118 = icmp ne i32 %119, 0
  br i1 %tobool118, label %while.body119, label %while.end124

while.body119:                                    ; preds = %while.cond117
  %120 = load i32, i32* %offs, align 4
  %inc120 = add nsw i32 %120, 1
  store i32 %inc120, i32* %offs, align 4
  %121 = load i8*, i8** %ptr, align 4
  %122 = load i32, i32* %leftlen, align 4
  %call121 = call i32 @mb_charlenconv(i8* %121, i32 %122, i32* null)
  store i32 %call121, i32* %clen, align 4
  %123 = load i32, i32* %clen, align 4
  %124 = load i8*, i8** %ptr, align 4
  %add.ptr122 = getelementptr inbounds i8, i8* %124, i32 %123
  store i8* %add.ptr122, i8** %ptr, align 4
  %125 = load i32, i32* %clen, align 4
  %126 = load i32, i32* %leftlen, align 4
  %sub123 = sub nsw i32 %126, %125
  store i32 %sub123, i32* %leftlen, align 4
  br label %while.cond117

while.end124:                                     ; preds = %while.cond117
  %arraydecay125 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %127 = load i32, i32* %offs, align 4
  %128 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 96), align 1
  %tobool126 = icmp ne i8 %128, 0
  %lnot127 = xor i1 %tobool126, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %add129 = add nsw i32 %127, %lnot.ext128
  %sub130 = sub nsw i32 %add129, 1
  call void @convbase(i8* %arraydecay125, i32 %sub130, i32 10)
  %arraydecay131 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i32 0, i32 0
  %call132 = call i8* @ztrdup(i8* %arraydecay131)
  %129 = load i8**, i8*** %eptr, align 4
  store i8* %call132, i8** %129, align 4
  br label %for.inc133

for.inc133:                                       ; preds = %while.end124, %if.then95
  %130 = load i32, i32* %n, align 4
  %inc134 = add nsw i32 %130, 1
  store i32 %inc134, i32* %n, align 4
  %131 = load %struct.regmatch_t*, %struct.regmatch_t** %m, align 4
  %incdec.ptr135 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %131, i32 1
  store %struct.regmatch_t* %incdec.ptr135, %struct.regmatch_t** %m, align 4
  %132 = load i8**, i8*** %bptr, align 4
  %incdec.ptr136 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %incdec.ptr136, i8*** %bptr, align 4
  %133 = load i8**, i8*** %eptr, align 4
  %incdec.ptr137 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %incdec.ptr137, i8*** %eptr, align 4
  br label %for.cond88

for.end138:                                       ; preds = %for.cond88
  %134 = load i8**, i8*** %eptr, align 4
  store i8* null, i8** %134, align 4
  %135 = load i8**, i8*** %bptr, align 4
  store i8* null, i8** %135, align 4
  %136 = load i8**, i8*** %arr, align 4
  %call139 = call %struct.param* @setaparam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8** %136)
  %137 = load i8**, i8*** %mbegin, align 4
  %call140 = call %struct.param* @setaparam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8** %137)
  %138 = load i8**, i8*** %mend, align 4
  %call141 = call %struct.param* @setaparam(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8** %138)
  br label %if.end142

if.end142:                                        ; preds = %for.end138, %while.end72
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then43
  br label %if.end145

if.else144:                                       ; preds = %if.else
  %139 = load i32, i32* %r, align 4
  call void @zregex_regerrwarn(i32 %139, %struct.re_pattern_buffer* %re, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end145

if.end145:                                        ; preds = %if.else144, %if.end143
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %return_value, align 4
  br label %CLEAN_BASEMETA

sw.epilog:                                        ; preds = %if.end146, %if.then11, %if.then9
  %140 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  %tobool147 = icmp ne %struct.regmatch_t* %140, null
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %sw.epilog
  %141 = load %struct.regmatch_t*, %struct.regmatch_t** %matches, align 4
  %142 = bitcast %struct.regmatch_t* %141 to i8*
  %143 = load i32, i32* %matchessz, align 4
  call void @zfree(i8* %142, i32 %143)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %sw.epilog
  call void @regfree(%struct.re_pattern_buffer* %re)
  br label %CLEAN_BASEMETA

CLEAN_BASEMETA:                                   ; preds = %if.end149, %sw.default
  %144 = load i8*, i8** %lhstr, align 4
  call void @free(i8* %144)
  %145 = load i8*, i8** %rhre, align 4
  call void @free(i8* %145)
  %146 = load i32, i32* %return_value, align 4
  ret i32 %146
}

declare i8* @cond_str(i8**, i32, i32) #1

declare i8* @ztrdup(i8*) #1

declare i8* @unmetafy(i8*, i32*) #1

declare i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #1

; Function Attrs: noinline nounwind
define internal void @zregex_regerrwarn(i32 %r, %struct.re_pattern_buffer* %re, i8* %msg) #0 {
entry:
  %r.addr = alloca i32, align 4
  %re.addr = alloca %struct.re_pattern_buffer*, align 4
  %msg.addr = alloca i8*, align 4
  %errbuf = alloca i8*, align 4
  %errbufsz = alloca i32, align 4
  store i32 %r, i32* %r.addr, align 4
  store %struct.re_pattern_buffer* %re, %struct.re_pattern_buffer** %re.addr, align 4
  store i8* %msg, i8** %msg.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %re.addr, align 4
  %call = call i32 @regerror(i32 %0, %struct.re_pattern_buffer* %1, i8* null, i32 0)
  store i32 %call, i32* %errbufsz, align 4
  %2 = load i32, i32* %errbufsz, align 4
  %mul = mul i32 %2, 1
  %call1 = call i8* @zalloc(i32 %mul)
  store i8* %call1, i8** %errbuf, align 4
  %3 = load i32, i32* %r.addr, align 4
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %re.addr, align 4
  %5 = load i8*, i8** %errbuf, align 4
  %6 = load i32, i32* %errbufsz, align 4
  %call2 = call i32 @regerror(i32 %3, %struct.re_pattern_buffer* %4, i8* %5, i32 %6)
  %7 = load i8*, i8** %msg.addr, align 4
  %8 = load i8*, i8** %errbuf, align 4
  call void (i8*, ...) @zwarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %7, i8* %8)
  %9 = load i8*, i8** %errbuf, align 4
  %10 = load i32, i32* %errbufsz, align 4
  call void @zfree(i8* %9, i32 %10)
  ret void
}

declare void @zwarn(i8*, ...) #1

declare i8* @zalloc(i32) #1

declare i32 @regexec(%struct.re_pattern_buffer*, i8*, i32, %struct.regmatch_t*, i32) #1

declare i8* @metafy(i8*, i32, i32) #1

declare %struct.param* @assignaparam(i8*, i8**, i32) #1

declare %struct.param* @assignsparam(i8*, i8*, i32) #1

declare void @mb_charinit() #1

declare i32 @mb_charlenconv(i8*, i32, i32*) #1

declare %struct.param* @assigniparam(i8*, i32, i32) #1

declare void @convbase(i8*, i32, i32) #1

declare %struct.param* @setaparam(i8*, i8**) #1

declare void @zfree(i8*, i32) #1

declare void @regfree(%struct.re_pattern_buffer*) #1

declare void @free(i8*) #1

declare i32 @regerror(i32, %struct.re_pattern_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
