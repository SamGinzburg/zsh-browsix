; ModuleID = 'sort.c'
source_filename = "sort.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

%struct.sortelt = type { i8*, i8*, i32, i32 }
%struct.__mbstate_t = type { i32, i32 }

@sortdir = internal global i32 0, align 4
@sortnumeric = internal global i32 0, align 4
@opts = external global [181 x i8], align 1
@typtab = external global [256 x i16], align 2

; Function Attrs: noinline nounwind
define i32 @zstrcmp(i8* %as, i8* %bs, i32 %sortflags) #0 {
entry:
  %as.addr = alloca i8*, align 4
  %bs.addr = alloca i8*, align 4
  %sortflags.addr = alloca i32, align 4
  %ae = alloca %struct.sortelt, align 4
  %be = alloca %struct.sortelt, align 4
  %aeptr = alloca %struct.sortelt*, align 4
  %beptr = alloca %struct.sortelt*, align 4
  %oldsortdir = alloca i32, align 4
  %oldsortnumeric = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %as, i8** %as.addr, align 4
  store i8* %bs, i8** %bs.addr, align 4
  store i32 %sortflags, i32* %sortflags.addr, align 4
  %0 = load i32, i32* @sortdir, align 4
  store i32 %0, i32* %oldsortdir, align 4
  %1 = load i32, i32* @sortnumeric, align 4
  store i32 %1, i32* %oldsortnumeric, align 4
  %2 = load i8*, i8** %as.addr, align 4
  %cmp = getelementptr inbounds %struct.sortelt, %struct.sortelt* %ae, i32 0, i32 1
  store i8* %2, i8** %cmp, align 4
  %3 = load i8*, i8** %bs.addr, align 4
  %cmp1 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %be, i32 0, i32 1
  store i8* %3, i8** %cmp1, align 4
  %len = getelementptr inbounds %struct.sortelt, %struct.sortelt* %ae, i32 0, i32 3
  store i32 -1, i32* %len, align 4
  %len2 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %be, i32 0, i32 3
  store i32 -1, i32* %len2, align 4
  store %struct.sortelt* %ae, %struct.sortelt** %aeptr, align 4
  store %struct.sortelt* %be, %struct.sortelt** %beptr, align 4
  store i32 1, i32* @sortdir, align 4
  %4 = load i32, i32* %sortflags.addr, align 4
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* @sortnumeric, align 4
  %5 = bitcast %struct.sortelt** %aeptr to i8*
  %6 = bitcast %struct.sortelt** %beptr to i8*
  %call = call i32 @eltpcmp(i8* %5, i8* %6)
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %oldsortnumeric, align 4
  store i32 %7, i32* @sortnumeric, align 4
  %8 = load i32, i32* %oldsortdir, align 4
  store i32 %8, i32* @sortdir, align 4
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind
define internal i32 @eltpcmp(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 4
  %b.addr = alloca i8*, align 4
  %ae = alloca %struct.sortelt*, align 4
  %be = alloca %struct.sortelt*, align 4
  %as = alloca i8*, align 4
  %bs = alloca i8*, align 4
  %ao = alloca i8*, align 4
  %cmp2 = alloca i32, align 4
  %cmpa = alloca i8*, align 4
  %cmpb = alloca i8*, align 4
  %laststarta = alloca i8*, align 4
  %len6 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 4
  store i8* %b, i8** %b.addr, align 4
  %0 = load i8*, i8** %a.addr, align 4
  %1 = bitcast i8* %0 to %struct.sortelt**
  %2 = load %struct.sortelt*, %struct.sortelt** %1, align 4
  store %struct.sortelt* %2, %struct.sortelt** %ae, align 4
  %3 = load i8*, i8** %b.addr, align 4
  %4 = bitcast i8* %3 to %struct.sortelt**
  %5 = load %struct.sortelt*, %struct.sortelt** %4, align 4
  store %struct.sortelt* %5, %struct.sortelt** %be, align 4
  %6 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %cmp = getelementptr inbounds %struct.sortelt, %struct.sortelt* %6, i32 0, i32 1
  %7 = load i8*, i8** %cmp, align 4
  store i8* %7, i8** %as, align 4
  %8 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %cmp1 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %8, i32 0, i32 1
  %9 = load i8*, i8** %cmp1, align 4
  store i8* %9, i8** %bs, align 4
  %10 = load i8*, i8** %as, align 4
  store i8* %10, i8** %ao, align 4
  %11 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len = getelementptr inbounds %struct.sortelt, %struct.sortelt* %11, i32 0, i32 3
  %12 = load i32, i32* %len, align 4
  %cmp3 = icmp ne i32 %12, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len4 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %13, i32 0, i32 3
  %14 = load i32, i32* %len4, align 4
  %cmp5 = icmp ne i32 %14, -1
  br i1 %cmp5, label %if.then, label %if.end64

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load i8*, i8** %as, align 4
  store i8* %15, i8** %laststarta, align 4
  %16 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len7 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %16, i32 0, i32 3
  %17 = load i32, i32* %len7, align 4
  %cmp8 = icmp ne i32 %17, -1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %18 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len10 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %18, i32 0, i32 3
  %19 = load i32, i32* %len10, align 4
  store i32 %19, i32* %len6, align 4
  %20 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len11 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %20, i32 0, i32 3
  %21 = load i32, i32* %len11, align 4
  %cmp12 = icmp ne i32 %21, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then9
  %22 = load i32, i32* %len6, align 4
  %23 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len13 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %23, i32 0, i32 3
  %24 = load i32, i32* %len13, align 4
  %cmp14 = icmp sgt i32 %22, %24
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.lhs.true
  %25 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len16 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %25, i32 0, i32 3
  %26 = load i32, i32* %len16, align 4
  store i32 %26, i32* %len6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then9
  br label %if.end18

if.else:                                          ; preds = %if.then
  %27 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len17 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %27, i32 0, i32 3
  %28 = load i32, i32* %len17, align 4
  store i32 %28, i32* %len6, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  %29 = load i8*, i8** %as, align 4
  store i8* %29, i8** %cmpa, align 4
  %30 = load i8*, i8** %bs, align 4
  store i8* %30, i8** %cmpb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %31 = load i8*, i8** %cmpa, align 4
  %32 = load i8, i8* %31, align 1
  %conv = sext i8 %32 to i32
  %33 = load i8*, i8** %cmpb, align 4
  %34 = load i8, i8* %33, align 1
  %conv19 = sext i8 %34 to i32
  %cmp20 = icmp eq i32 %conv, %conv19
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %35 = load i32, i32* %len6, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %len6, align 4
  %tobool = icmp ne i32 %35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %36, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %37 = load i8*, i8** %cmpa, align 4
  %38 = load i8, i8* %37, align 1
  %tobool22 = icmp ne i8 %38, 0
  br i1 %tobool22, label %if.end33, label %if.then23

if.then23:                                        ; preds = %for.body
  %39 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len24 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %39, i32 0, i32 3
  %40 = load i32, i32* %len24, align 4
  %cmp25 = icmp eq i32 %40, -1
  br i1 %cmp25, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.then23
  %41 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len28 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %41, i32 0, i32 3
  %42 = load i32, i32* %len28, align 4
  %cmp29 = icmp eq i32 %42, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false27, %if.then23
  br label %for.end

if.end32:                                         ; preds = %lor.lhs.false27
  %43 = load i8*, i8** %cmpa, align 4
  %add.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %add.ptr, i8** %laststarta, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %44 = load i8*, i8** %cmpa, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %cmpa, align 4
  %45 = load i8*, i8** %cmpb, align 4
  %incdec.ptr34 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr34, i8** %cmpb, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then31, %land.end
  %46 = load i8*, i8** %cmpa, align 4
  %47 = load i8, i8* %46, align 1
  %conv35 = sext i8 %47 to i32
  %48 = load i8*, i8** %cmpb, align 4
  %49 = load i8, i8* %48, align 1
  %conv36 = sext i8 %49 to i32
  %cmp37 = icmp eq i32 %conv35, %conv36
  br i1 %cmp37, label %land.lhs.true39, label %if.end58

land.lhs.true39:                                  ; preds = %for.end
  %50 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len40 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %50, i32 0, i32 3
  %51 = load i32, i32* %len40, align 4
  %52 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len41 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %52, i32 0, i32 3
  %53 = load i32, i32* %len41, align 4
  %cmp42 = icmp ne i32 %51, %53
  br i1 %cmp42, label %if.then44, label %if.end58

if.then44:                                        ; preds = %land.lhs.true39
  %54 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len45 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %54, i32 0, i32 3
  %55 = load i32, i32* %len45, align 4
  %cmp46 = icmp ne i32 %55, -1
  br i1 %cmp46, label %if.then48, label %if.else56

if.then48:                                        ; preds = %if.then44
  %56 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len49 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %56, i32 0, i32 3
  %57 = load i32, i32* %len49, align 4
  %cmp50 = icmp ne i32 %57, -1
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.then48
  %58 = load %struct.sortelt*, %struct.sortelt** %ae, align 4
  %len53 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %58, i32 0, i32 3
  %59 = load i32, i32* %len53, align 4
  %60 = load %struct.sortelt*, %struct.sortelt** %be, align 4
  %len54 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %60, i32 0, i32 3
  %61 = load i32, i32* %len54, align 4
  %sub = sub nsw i32 %59, %61
  %62 = load i32, i32* @sortdir, align 4
  %mul = mul nsw i32 %sub, %62
  store i32 %mul, i32* %retval, align 4
  br label %return

if.else55:                                        ; preds = %if.then48
  %63 = load i32, i32* @sortdir, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.then44
  %64 = load i32, i32* @sortdir, align 4
  %sub57 = sub nsw i32 0, %64
  store i32 %sub57, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %land.lhs.true39, %for.end
  %65 = load i8*, i8** %laststarta, align 4
  %66 = load i8*, i8** %as, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %67 = load i8*, i8** %bs, align 4
  %add.ptr59 = getelementptr inbounds i8, i8* %67, i32 %sub.ptr.sub
  store i8* %add.ptr59, i8** %bs, align 4
  %68 = load i8*, i8** %laststarta, align 4
  %69 = load i8*, i8** %as, align 4
  %sub.ptr.lhs.cast60 = ptrtoint i8* %68 to i32
  %sub.ptr.rhs.cast61 = ptrtoint i8* %69 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %70 = load i8*, i8** %as, align 4
  %add.ptr63 = getelementptr inbounds i8, i8* %70, i32 %sub.ptr.sub62
  store i8* %add.ptr63, i8** %as, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %lor.lhs.false
  %71 = load i8*, i8** %as, align 4
  %72 = load i8*, i8** %bs, align 4
  %call = call i32 @strcoll(i8* %71, i8* %72)
  store i32 %call, i32* %cmp2, align 4
  %73 = load i32, i32* @sortnumeric, align 4
  %tobool65 = icmp ne i32 %73, 0
  br i1 %tobool65, label %if.then66, label %if.end208

if.then66:                                        ; preds = %if.end64
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc77, %if.then66
  %74 = load i8*, i8** %as, align 4
  %75 = load i8, i8* %74, align 1
  %conv68 = sext i8 %75 to i32
  %76 = load i8*, i8** %bs, align 4
  %77 = load i8, i8* %76, align 1
  %conv69 = sext i8 %77 to i32
  %cmp70 = icmp eq i32 %conv68, %conv69
  br i1 %cmp70, label %land.rhs72, label %land.end75

land.rhs72:                                       ; preds = %for.cond67
  %78 = load i8*, i8** %as, align 4
  %79 = load i8, i8* %78, align 1
  %conv73 = sext i8 %79 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br label %land.end75

land.end75:                                       ; preds = %land.rhs72, %for.cond67
  %80 = phi i1 [ false, %for.cond67 ], [ %tobool74, %land.rhs72 ]
  br i1 %80, label %for.body76, label %for.end80

for.body76:                                       ; preds = %land.end75
  br label %for.inc77

for.inc77:                                        ; preds = %for.body76
  %81 = load i8*, i8** %as, align 4
  %incdec.ptr78 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr78, i8** %as, align 4
  %82 = load i8*, i8** %bs, align 4
  %incdec.ptr79 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr79, i8** %bs, align 4
  br label %for.cond67

for.end80:                                        ; preds = %land.end75
  %83 = load i8*, i8** %as, align 4
  %84 = load i8, i8* %83, align 1
  %idxprom = zext i8 %84 to i32
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom
  %85 = load i16, i16* %arrayidx, align 2
  %conv81 = sext i16 %85 to i32
  %and = and i32 %conv81, 1
  %tobool82 = icmp ne i32 %and, 0
  br i1 %tobool82, label %if.then89, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %for.end80
  %86 = load i8*, i8** %bs, align 4
  %87 = load i8, i8* %86, align 1
  %idxprom84 = zext i8 %87 to i32
  %arrayidx85 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom84
  %88 = load i16, i16* %arrayidx85, align 2
  %conv86 = sext i16 %88 to i32
  %and87 = and i32 %conv86, 1
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then89, label %if.end207

if.then89:                                        ; preds = %lor.lhs.false83, %for.end80
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc102, %if.then89
  %89 = load i8*, i8** %as, align 4
  %90 = load i8*, i8** %ao, align 4
  %cmp91 = icmp ugt i8* %89, %90
  br i1 %cmp91, label %land.rhs93, label %land.end100

land.rhs93:                                       ; preds = %for.cond90
  %91 = load i8*, i8** %as, align 4
  %arrayidx94 = getelementptr inbounds i8, i8* %91, i32 -1
  %92 = load i8, i8* %arrayidx94, align 1
  %idxprom95 = zext i8 %92 to i32
  %arrayidx96 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom95
  %93 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %93 to i32
  %and98 = and i32 %conv97, 1
  %tobool99 = icmp ne i32 %and98, 0
  br label %land.end100

land.end100:                                      ; preds = %land.rhs93, %for.cond90
  %94 = phi i1 [ false, %for.cond90 ], [ %tobool99, %land.rhs93 ]
  br i1 %94, label %for.body101, label %for.end105

for.body101:                                      ; preds = %land.end100
  br label %for.inc102

for.inc102:                                       ; preds = %for.body101
  %95 = load i8*, i8** %as, align 4
  %incdec.ptr103 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %incdec.ptr103, i8** %as, align 4
  %96 = load i8*, i8** %bs, align 4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %incdec.ptr104, i8** %bs, align 4
  br label %for.cond90

for.end105:                                       ; preds = %land.end100
  %97 = load i8*, i8** %as, align 4
  %98 = load i8, i8* %97, align 1
  %idxprom106 = zext i8 %98 to i32
  %arrayidx107 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom106
  %99 = load i16, i16* %arrayidx107, align 2
  %conv108 = sext i16 %99 to i32
  %and109 = and i32 %conv108, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %land.lhs.true111, label %if.end206

land.lhs.true111:                                 ; preds = %for.end105
  %100 = load i8*, i8** %bs, align 4
  %101 = load i8, i8* %100, align 1
  %idxprom112 = zext i8 %101 to i32
  %arrayidx113 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom112
  %102 = load i16, i16* %arrayidx113, align 2
  %conv114 = sext i16 %102 to i32
  %and115 = and i32 %conv114, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.end206

if.then117:                                       ; preds = %land.lhs.true111
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then117
  %103 = load i8*, i8** %as, align 4
  %104 = load i8, i8* %103, align 1
  %conv118 = sext i8 %104 to i32
  %cmp119 = icmp eq i32 %conv118, 48
  br i1 %cmp119, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %105 = load i8*, i8** %as, align 4
  %incdec.ptr121 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr121, i8** %as, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond122

while.cond122:                                    ; preds = %while.body126, %while.end
  %106 = load i8*, i8** %bs, align 4
  %107 = load i8, i8* %106, align 1
  %conv123 = sext i8 %107 to i32
  %cmp124 = icmp eq i32 %conv123, 48
  br i1 %cmp124, label %while.body126, label %while.end128

while.body126:                                    ; preds = %while.cond122
  %108 = load i8*, i8** %bs, align 4
  %incdec.ptr127 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr127, i8** %bs, align 4
  br label %while.cond122

while.end128:                                     ; preds = %while.cond122
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc142, %while.end128
  %109 = load i8*, i8** %as, align 4
  %110 = load i8, i8* %109, align 1
  %idxprom130 = zext i8 %110 to i32
  %arrayidx131 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom130
  %111 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %111 to i32
  %and133 = and i32 %conv132, 1
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %land.rhs135, label %land.end140

land.rhs135:                                      ; preds = %for.cond129
  %112 = load i8*, i8** %as, align 4
  %113 = load i8, i8* %112, align 1
  %conv136 = sext i8 %113 to i32
  %114 = load i8*, i8** %bs, align 4
  %115 = load i8, i8* %114, align 1
  %conv137 = sext i8 %115 to i32
  %cmp138 = icmp eq i32 %conv136, %conv137
  br label %land.end140

land.end140:                                      ; preds = %land.rhs135, %for.cond129
  %116 = phi i1 [ false, %for.cond129 ], [ %cmp138, %land.rhs135 ]
  br i1 %116, label %for.body141, label %for.end145

for.body141:                                      ; preds = %land.end140
  br label %for.inc142

for.inc142:                                       ; preds = %for.body141
  %117 = load i8*, i8** %as, align 4
  %incdec.ptr143 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr143, i8** %as, align 4
  %118 = load i8*, i8** %bs, align 4
  %incdec.ptr144 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr144, i8** %bs, align 4
  br label %for.cond129

for.end145:                                       ; preds = %land.end140
  %119 = load i8*, i8** %as, align 4
  %120 = load i8, i8* %119, align 1
  %idxprom146 = zext i8 %120 to i32
  %arrayidx147 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom146
  %121 = load i16, i16* %arrayidx147, align 2
  %conv148 = sext i16 %121 to i32
  %and149 = and i32 %conv148, 1
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then157, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %for.end145
  %122 = load i8*, i8** %bs, align 4
  %123 = load i8, i8* %122, align 1
  %idxprom152 = zext i8 %123 to i32
  %arrayidx153 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom152
  %124 = load i16, i16* %arrayidx153, align 2
  %conv154 = sext i16 %124 to i32
  %and155 = and i32 %conv154, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then157, label %if.end205

if.then157:                                       ; preds = %lor.lhs.false151, %for.end145
  %125 = load i8*, i8** %as, align 4
  %126 = load i8, i8* %125, align 1
  %conv158 = zext i8 %126 to i32
  %127 = load i8*, i8** %bs, align 4
  %128 = load i8, i8* %127, align 1
  %conv159 = zext i8 %128 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %cmp2, align 4
  br label %while.cond161

while.cond161:                                    ; preds = %while.body174, %if.then157
  %129 = load i8*, i8** %as, align 4
  %130 = load i8, i8* %129, align 1
  %idxprom162 = zext i8 %130 to i32
  %arrayidx163 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom162
  %131 = load i16, i16* %arrayidx163, align 2
  %conv164 = sext i16 %131 to i32
  %and165 = and i32 %conv164, 1
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %land.rhs167, label %land.end173

land.rhs167:                                      ; preds = %while.cond161
  %132 = load i8*, i8** %bs, align 4
  %133 = load i8, i8* %132, align 1
  %idxprom168 = zext i8 %133 to i32
  %arrayidx169 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom168
  %134 = load i16, i16* %arrayidx169, align 2
  %conv170 = sext i16 %134 to i32
  %and171 = and i32 %conv170, 1
  %tobool172 = icmp ne i32 %and171, 0
  br label %land.end173

land.end173:                                      ; preds = %land.rhs167, %while.cond161
  %135 = phi i1 [ false, %while.cond161 ], [ %tobool172, %land.rhs167 ]
  br i1 %135, label %while.body174, label %while.end177

while.body174:                                    ; preds = %land.end173
  %136 = load i8*, i8** %as, align 4
  %incdec.ptr175 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr175, i8** %as, align 4
  %137 = load i8*, i8** %bs, align 4
  %incdec.ptr176 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr176, i8** %bs, align 4
  br label %while.cond161

while.end177:                                     ; preds = %land.end173
  %138 = load i8*, i8** %as, align 4
  %139 = load i8, i8* %138, align 1
  %idxprom178 = zext i8 %139 to i32
  %arrayidx179 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom178
  %140 = load i16, i16* %arrayidx179, align 2
  %conv180 = sext i16 %140 to i32
  %and181 = and i32 %conv180, 1
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %land.lhs.true183, label %if.end190

land.lhs.true183:                                 ; preds = %while.end177
  %141 = load i8*, i8** %bs, align 4
  %142 = load i8, i8* %141, align 1
  %idxprom184 = zext i8 %142 to i32
  %arrayidx185 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom184
  %143 = load i16, i16* %arrayidx185, align 2
  %conv186 = sext i16 %143 to i32
  %and187 = and i32 %conv186, 1
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.end190, label %if.then189

if.then189:                                       ; preds = %land.lhs.true183
  %144 = load i32, i32* @sortdir, align 4
  store i32 %144, i32* %retval, align 4
  br label %return

if.end190:                                        ; preds = %land.lhs.true183, %while.end177
  %145 = load i8*, i8** %bs, align 4
  %146 = load i8, i8* %145, align 1
  %idxprom191 = zext i8 %146 to i32
  %arrayidx192 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom191
  %147 = load i16, i16* %arrayidx192, align 2
  %conv193 = sext i16 %147 to i32
  %and194 = and i32 %conv193, 1
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %land.lhs.true196, label %if.end204

land.lhs.true196:                                 ; preds = %if.end190
  %148 = load i8*, i8** %as, align 4
  %149 = load i8, i8* %148, align 1
  %idxprom197 = zext i8 %149 to i32
  %arrayidx198 = getelementptr inbounds [256 x i16], [256 x i16]* @typtab, i32 0, i32 %idxprom197
  %150 = load i16, i16* %arrayidx198, align 2
  %conv199 = sext i16 %150 to i32
  %and200 = and i32 %conv199, 1
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.end204, label %if.then202

if.then202:                                       ; preds = %land.lhs.true196
  %151 = load i32, i32* @sortdir, align 4
  %sub203 = sub nsw i32 0, %151
  store i32 %sub203, i32* %retval, align 4
  br label %return

if.end204:                                        ; preds = %land.lhs.true196, %if.end190
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %lor.lhs.false151
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %land.lhs.true111, %for.end105
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %lor.lhs.false83
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end64
  %152 = load i32, i32* @sortdir, align 4
  %153 = load i32, i32* %cmp2, align 4
  %mul209 = mul nsw i32 %152, %153
  store i32 %mul209, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end208, %if.then202, %if.then189, %if.else56, %if.else55, %if.then52
  %154 = load i32, i32* %retval, align 4
  ret i32 %154
}

; Function Attrs: noinline nounwind
define void @strmetasort(i8** %array, i32 %sortwhat, i32* %unmetalenp) #0 {
entry:
  %array.addr = alloca i8**, align 4
  %sortwhat.addr = alloca i32, align 4
  %unmetalenp.addr = alloca i32*, align 4
  %arrptr = alloca i8**, align 4
  %sortptrarr = alloca %struct.sortelt**, align 4
  %sortptrarrptr = alloca %struct.sortelt**, align 4
  %sortarr = alloca %struct.sortelt*, align 4
  %sortarrptr = alloca %struct.sortelt*, align 4
  %oldsortdir = alloca i32, align 4
  %oldsortnumeric = alloca i32, align 4
  %nsort = alloca i32, align 4
  %metaptr = alloca i8*, align 4
  %needlen = alloca i32, align 4
  %needalloc = alloca i32, align 4
  %count = alloca i32, align 4
  %s = alloca i8*, align 4
  %t = alloca i8*, align 4
  %src = alloca i8*, align 4
  %dst = alloca i8*, align 4
  %len = alloca i32, align 4
  %t49 = alloca i8*, align 4
  %send = alloca i8*, align 4
  %mbsin = alloca %struct.__mbstate_t, align 4
  %mbsout = alloca %struct.__mbstate_t, align 4
  %clen = alloca i32, align 4
  %wc = alloca i32, align 4
  %end = alloca i8*, align 4
  store i8** %array, i8*** %array.addr, align 4
  store i32 %sortwhat, i32* %sortwhat.addr, align 4
  store i32* %unmetalenp, i32** %unmetalenp.addr, align 4
  %0 = load i8**, i8*** %array.addr, align 4
  %call = call i32 @arrlen(i8** %0)
  store i32 %call, i32* %nsort, align 4
  %1 = load i32, i32* %nsort, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @pushheap()
  %2 = load i32, i32* %nsort, align 4
  %mul = mul i32 %2, 4
  %call1 = call i8* @zhalloc(i32 %mul)
  %3 = bitcast i8* %call1 to %struct.sortelt**
  store %struct.sortelt** %3, %struct.sortelt*** %sortptrarr, align 4
  %4 = load i32, i32* %nsort, align 4
  %mul2 = mul i32 %4, 16
  %call3 = call i8* @zhalloc(i32 %mul2)
  %5 = bitcast i8* %call3 to %struct.sortelt*
  store %struct.sortelt* %5, %struct.sortelt** %sortarr, align 4
  %6 = load i8**, i8*** %array.addr, align 4
  store i8** %6, i8*** %arrptr, align 4
  %7 = load %struct.sortelt**, %struct.sortelt*** %sortptrarr, align 4
  store %struct.sortelt** %7, %struct.sortelt*** %sortptrarrptr, align 4
  %8 = load %struct.sortelt*, %struct.sortelt** %sortarr, align 4
  store %struct.sortelt* %8, %struct.sortelt** %sortarrptr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc178, %if.end
  %9 = load i8**, i8*** %arrptr, align 4
  %10 = load i8*, i8** %9, align 4
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %for.body, label %for.end182

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %12 = load %struct.sortelt**, %struct.sortelt*** %sortptrarrptr, align 4
  store %struct.sortelt* %11, %struct.sortelt** %12, align 4
  %13 = load i8**, i8*** %arrptr, align 4
  %14 = load i8*, i8** %13, align 4
  %15 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %orig = getelementptr inbounds %struct.sortelt, %struct.sortelt* %15, i32 0, i32 0
  store i8* %14, i8** %orig, align 4
  %16 = load i32*, i32** %unmetalenp.addr, align 4
  %tobool4 = icmp ne i32* %16, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  %17 = load i32*, i32** %unmetalenp.addr, align 4
  %18 = load i8**, i8*** %arrptr, align 4
  %19 = load i8**, i8*** %array.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8** %18 to i32
  %sub.ptr.rhs.cast = ptrtoint i8** %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4
  %arrayidx = getelementptr inbounds i32, i32* %17, i32 %sub.ptr.div
  %20 = load i32, i32* %arrayidx, align 4
  store i32 %20, i32* %count, align 4
  %21 = load i32, i32* %count, align 4
  %22 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %origlen = getelementptr inbounds %struct.sortelt, %struct.sortelt* %22, i32 0, i32 2
  store i32 %21, i32* %origlen, align 4
  %23 = load i8**, i8*** %arrptr, align 4
  %24 = load i8*, i8** %23, align 4
  store i8* %24, i8** %metaptr, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.then5
  %25 = load i8*, i8** %metaptr, align 4
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %cmp7 = icmp ne i32 %conv, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond6
  %27 = load i32, i32* %count, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %count, align 4
  %tobool9 = icmp ne i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond6
  %28 = phi i1 [ false, %for.cond6 ], [ %tobool9, %land.rhs ]
  br i1 %28, label %for.body10, label %for.end

for.body10:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %29 = load i8*, i8** %metaptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %metaptr, align 4
  br label %for.cond6

for.end:                                          ; preds = %land.end
  %30 = load i32, i32* %count, align 4
  %cmp11 = icmp ne i32 %30, 0
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %needlen, align 4
  br label %if.end25

if.else:                                          ; preds = %for.body
  store i32 0, i32* %needlen, align 4
  %31 = load i8**, i8*** %arrptr, align 4
  %32 = load i8*, i8** %31, align 4
  store i8* %32, i8** %metaptr, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %if.else
  %33 = load i8*, i8** %metaptr, align 4
  %34 = load i8, i8* %33, align 1
  %conv14 = sext i8 %34 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.rhs16, label %land.end20

land.rhs16:                                       ; preds = %for.cond13
  %35 = load i8*, i8** %metaptr, align 4
  %36 = load i8, i8* %35, align 1
  %conv17 = sext i8 %36 to i32
  %cmp18 = icmp ne i32 %conv17, -125
  br label %land.end20

land.end20:                                       ; preds = %land.rhs16, %for.cond13
  %37 = phi i1 [ false, %for.cond13 ], [ %cmp18, %land.rhs16 ]
  br i1 %37, label %for.body21, label %for.end24

for.body21:                                       ; preds = %land.end20
  br label %for.inc22

for.inc22:                                        ; preds = %for.body21
  %38 = load i8*, i8** %metaptr, align 4
  %incdec.ptr23 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr23, i8** %metaptr, align 4
  br label %for.cond13

for.end24:                                        ; preds = %land.end20
  br label %if.end25

if.end25:                                         ; preds = %for.end24, %for.end
  %39 = load i32, i32* %sortwhat.addr, align 4
  %and = and i32 %39, 9
  store i32 %and, i32* %needalloc, align 4
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %40 = load i8*, i8** %metaptr, align 4
  %41 = load i8, i8* %40, align 1
  %conv27 = sext i8 %41 to i32
  %cmp28 = icmp eq i32 %conv27, -125
  br i1 %cmp28, label %if.then30, label %if.else164

if.then30:                                        ; preds = %lor.lhs.false, %if.end25
  %42 = load i8**, i8*** %arrptr, align 4
  %43 = load i8*, i8** %42, align 4
  store i8* %43, i8** %src, align 4
  %44 = load i32, i32* %sortwhat.addr, align 4
  %and31 = and i32 %44, 1
  %tobool32 = icmp ne i32 %and31, 0
  %cond = select i1 %tobool32, i32 2, i32 1
  %45 = load i8*, i8** %src, align 4
  %call33 = call i32 @strlen(i8* %45)
  %mul34 = mul i32 %cond, %call33
  %add = add i32 %mul34, 1
  %call35 = call i8* @zhalloc(i32 %add)
  store i8* %call35, i8** %dst, align 4
  %46 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %cmp36 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %46, i32 0, i32 1
  store i8* %call35, i8** %cmp36, align 4
  %47 = load i32*, i32** %unmetalenp.addr, align 4
  %tobool37 = icmp ne i32* %47, null
  br i1 %tobool37, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.then30
  %48 = load i32*, i32** %unmetalenp.addr, align 4
  %49 = load i8**, i8*** %arrptr, align 4
  %50 = load i8**, i8*** %array.addr, align 4
  %sub.ptr.lhs.cast39 = ptrtoint i8** %49 to i32
  %sub.ptr.rhs.cast40 = ptrtoint i8** %50 to i32
  %sub.ptr.sub41 = sub i32 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i32 %sub.ptr.sub41, 4
  %arrayidx43 = getelementptr inbounds i32, i32* %48, i32 %sub.ptr.div42
  %51 = load i32, i32* %arrayidx43, align 4
  store i32 %51, i32* %len, align 4
  br label %if.end85

if.else44:                                        ; preds = %if.then30
  %52 = load i8*, i8** %metaptr, align 4
  %53 = load i8, i8* %52, align 1
  %conv45 = sext i8 %53 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.then48, label %if.else80

if.then48:                                        ; preds = %if.else44
  %54 = load i8*, i8** %dst, align 4
  %55 = load i8*, i8** %metaptr, align 4
  %56 = load i8*, i8** %src, align 4
  %sub.ptr.lhs.cast50 = ptrtoint i8* %55 to i32
  %sub.ptr.rhs.cast51 = ptrtoint i8* %56 to i32
  %sub.ptr.sub52 = sub i32 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %add.ptr = getelementptr inbounds i8, i8* %54, i32 %sub.ptr.sub52
  store i8* %add.ptr, i8** %t49, align 4
  %57 = load i8*, i8** %metaptr, align 4
  %58 = load i8*, i8** %src, align 4
  %cmp53 = icmp ne i8* %57, %58
  br i1 %cmp53, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.then48
  %59 = load i8*, i8** %dst, align 4
  %60 = load i8*, i8** %src, align 4
  %61 = load i8*, i8** %metaptr, align 4
  %62 = load i8*, i8** %src, align 4
  %sub.ptr.lhs.cast56 = ptrtoint i8* %61 to i32
  %sub.ptr.rhs.cast57 = ptrtoint i8* %62 to i32
  %sub.ptr.sub58 = sub i32 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %59, i8* %60, i32 %sub.ptr.sub58, i32 1, i1 false)
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then48
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %if.end59
  %63 = load i8*, i8** %metaptr, align 4
  %incdec.ptr60 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr60, i8** %metaptr, align 4
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %t49, align 4
  store i8 %64, i8* %65, align 1
  %tobool61 = icmp ne i8 %64, 0
  br i1 %tobool61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i8*, i8** %t49, align 4
  %incdec.ptr62 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr62, i8** %t49, align 4
  %67 = load i8, i8* %66, align 1
  %conv63 = sext i8 %67 to i32
  %cmp64 = icmp eq i32 %conv63, -125
  br i1 %cmp64, label %if.then66, label %if.end76

if.then66:                                        ; preds = %while.body
  %68 = load i8*, i8** %metaptr, align 4
  %incdec.ptr67 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr67, i8** %metaptr, align 4
  %69 = load i8, i8* %68, align 1
  %conv68 = sext i8 %69 to i32
  %xor = xor i32 %conv68, 32
  %conv69 = trunc i32 %xor to i8
  %70 = load i8*, i8** %t49, align 4
  %arrayidx70 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8 %conv69, i8* %arrayidx70, align 1
  %conv71 = sext i8 %conv69 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then66
  store i32 1, i32* %needlen, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then66
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load i8*, i8** %t49, align 4
  %72 = load i8*, i8** %dst, align 4
  %sub.ptr.lhs.cast77 = ptrtoint i8* %71 to i32
  %sub.ptr.rhs.cast78 = ptrtoint i8* %72 to i32
  %sub.ptr.sub79 = sub i32 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  store i32 %sub.ptr.sub79, i32* %len, align 4
  %73 = load i8*, i8** %dst, align 4
  store i8* %73, i8** %src, align 4
  br label %if.end84

if.else80:                                        ; preds = %if.else44
  %74 = load i8*, i8** %metaptr, align 4
  %75 = load i8*, i8** %src, align 4
  %sub.ptr.lhs.cast81 = ptrtoint i8* %74 to i32
  %sub.ptr.rhs.cast82 = ptrtoint i8* %75 to i32
  %sub.ptr.sub83 = sub i32 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  store i32 %sub.ptr.sub83, i32* %len, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %while.end
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then38
  %76 = load i32, i32* %sortwhat.addr, align 4
  %and86 = and i32 %76, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end140

if.then88:                                        ; preds = %if.end85
  %77 = load i8*, i8** %src, align 4
  %78 = load i32, i32* %len, align 4
  %add.ptr89 = getelementptr inbounds i8, i8* %77, i32 %78
  store i8* %add.ptr89, i8** %send, align 4
  %79 = load i8, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @opts, i32 0, i32 118), align 1
  %tobool90 = icmp ne i8 %79, 0
  br i1 %tobool90, label %if.then91, label %if.else128

if.then91:                                        ; preds = %if.then88
  %80 = bitcast %struct.__mbstate_t* %mbsin to i8*
  call void @llvm.memset.p0i8.i32(i8* %80, i8 0, i32 8, i32 4, i1 false)
  %81 = bitcast %struct.__mbstate_t* %mbsout to i8*
  call void @llvm.memset.p0i8.i32(i8* %81, i8 0, i32 8, i32 4, i1 false)
  %82 = load i8*, i8** %src, align 4
  store i8* %82, i8** %s, align 4
  %83 = load i8*, i8** %dst, align 4
  store i8* %83, i8** %t, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %if.end119, %if.then116, %if.then91
  %84 = load i8*, i8** %s, align 4
  %85 = load i8*, i8** %send, align 4
  %cmp93 = icmp ult i8* %84, %85
  br i1 %cmp93, label %for.body95, label %for.end124

for.body95:                                       ; preds = %for.cond92
  %86 = load i8*, i8** %s, align 4
  %87 = load i8*, i8** %send, align 4
  %88 = load i8*, i8** %s, align 4
  %sub.ptr.lhs.cast96 = ptrtoint i8* %87 to i32
  %sub.ptr.rhs.cast97 = ptrtoint i8* %88 to i32
  %sub.ptr.sub98 = sub i32 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %call99 = call i32 @mbrtowc(i32* %wc, i8* %86, i32 %sub.ptr.sub98, %struct.__mbstate_t* %mbsin)
  store i32 %call99, i32* %clen, align 4
  %89 = load i32, i32* %clen, align 4
  %cmp100 = icmp slt i32 %89, 0
  br i1 %cmp100, label %if.then102, label %if.end113

if.then102:                                       ; preds = %for.body95
  br label %while.cond103

while.cond103:                                    ; preds = %while.body106, %if.then102
  %90 = load i8*, i8** %s, align 4
  %91 = load i8*, i8** %send, align 4
  %cmp104 = icmp ult i8* %90, %91
  br i1 %cmp104, label %while.body106, label %while.end112

while.body106:                                    ; preds = %while.cond103
  %92 = load i8*, i8** %s, align 4
  %incdec.ptr107 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr107, i8** %s, align 4
  %93 = load i8, i8* %92, align 1
  %conv108 = sext i8 %93 to i32
  %call109 = call i32 @tulower(i32 %conv108)
  %conv110 = trunc i32 %call109 to i8
  %94 = load i8*, i8** %t, align 4
  %incdec.ptr111 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr111, i8** %t, align 4
  store i8 %conv110, i8* %94, align 1
  br label %while.cond103

while.end112:                                     ; preds = %while.cond103
  br label %for.end124

if.end113:                                        ; preds = %for.body95
  %95 = load i32, i32* %clen, align 4
  %cmp114 = icmp eq i32 %95, 0
  br i1 %cmp114, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.end113
  %96 = load i8*, i8** %t, align 4
  %incdec.ptr117 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr117, i8** %t, align 4
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %s, align 4
  %incdec.ptr118 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr118, i8** %s, align 4
  br label %for.cond92

if.end119:                                        ; preds = %if.end113
  %98 = load i32, i32* %clen, align 4
  %99 = load i8*, i8** %s, align 4
  %add.ptr120 = getelementptr inbounds i8, i8* %99, i32 %98
  store i8* %add.ptr120, i8** %s, align 4
  %100 = load i32, i32* %wc, align 4
  %call121 = call i32 @towlower(i32 %100)
  store i32 %call121, i32* %wc, align 4
  %101 = load i8*, i8** %t, align 4
  %102 = load i32, i32* %wc, align 4
  %call122 = call i32 @wcrtomb(i8* %101, i32 %102, %struct.__mbstate_t* %mbsout)
  store i32 %call122, i32* %clen, align 4
  %103 = load i32, i32* %clen, align 4
  %104 = load i8*, i8** %t, align 4
  %add.ptr123 = getelementptr inbounds i8, i8* %104, i32 %103
  store i8* %add.ptr123, i8** %t, align 4
  br label %for.cond92

for.end124:                                       ; preds = %while.end112, %for.cond92
  %105 = load i8*, i8** %t, align 4
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %t, align 4
  %107 = load i8*, i8** %dst, align 4
  %sub.ptr.lhs.cast125 = ptrtoint i8* %106 to i32
  %sub.ptr.rhs.cast126 = ptrtoint i8* %107 to i32
  %sub.ptr.sub127 = sub i32 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  store i32 %sub.ptr.sub127, i32* %len, align 4
  br label %if.end139

if.else128:                                       ; preds = %if.then88
  %108 = load i8*, i8** %src, align 4
  store i8* %108, i8** %s, align 4
  %109 = load i8*, i8** %dst, align 4
  store i8* %109, i8** %t, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.body132, %if.else128
  %110 = load i8*, i8** %s, align 4
  %111 = load i8*, i8** %send, align 4
  %cmp130 = icmp ult i8* %110, %111
  br i1 %cmp130, label %for.body132, label %for.end138

for.body132:                                      ; preds = %for.cond129
  %112 = load i8*, i8** %s, align 4
  %incdec.ptr133 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr133, i8** %s, align 4
  %113 = load i8, i8* %112, align 1
  %conv134 = sext i8 %113 to i32
  %call135 = call i32 @tulower(i32 %conv134)
  %conv136 = trunc i32 %call135 to i8
  %114 = load i8*, i8** %t, align 4
  %incdec.ptr137 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr137, i8** %t, align 4
  store i8 %conv136, i8* %114, align 1
  br label %for.cond129

for.end138:                                       ; preds = %for.cond129
  br label %if.end139

if.end139:                                        ; preds = %for.end138, %for.end124
  %115 = load i8*, i8** %dst, align 4
  store i8* %115, i8** %src, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end85
  %116 = load i32, i32* %sortwhat.addr, align 4
  %and141 = and i32 %116, 8
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then143, label %if.end160

if.then143:                                       ; preds = %if.end140
  %117 = load i8*, i8** %src, align 4
  %118 = load i32, i32* %len, align 4
  %add.ptr144 = getelementptr inbounds i8, i8* %117, i32 %118
  %add.ptr145 = getelementptr inbounds i8, i8* %add.ptr144, i32 1
  store i8* %add.ptr145, i8** %end, align 4
  %119 = load i8*, i8** %src, align 4
  store i8* %119, i8** %s, align 4
  %120 = load i8*, i8** %dst, align 4
  store i8* %120, i8** %t, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %if.end156, %if.then143
  %121 = load i8*, i8** %s, align 4
  %122 = load i8*, i8** %end, align 4
  %cmp147 = icmp ult i8* %121, %122
  br i1 %cmp147, label %for.body149, label %for.end159

for.body149:                                      ; preds = %for.cond146
  %123 = load i8*, i8** %s, align 4
  %124 = load i8, i8* %123, align 1
  %conv150 = sext i8 %124 to i32
  %cmp151 = icmp eq i32 %conv150, 92
  br i1 %cmp151, label %if.then153, label %if.end156

if.then153:                                       ; preds = %for.body149
  %125 = load i8*, i8** %s, align 4
  %incdec.ptr154 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr154, i8** %s, align 4
  %126 = load i32, i32* %len, align 4
  %dec155 = add nsw i32 %126, -1
  store i32 %dec155, i32* %len, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %for.body149
  %127 = load i8*, i8** %s, align 4
  %incdec.ptr157 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr157, i8** %s, align 4
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %t, align 4
  %incdec.ptr158 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr158, i8** %t, align 4
  store i8 %128, i8* %129, align 1
  br label %for.cond146

for.end159:                                       ; preds = %for.cond146
  br label %if.end160

if.end160:                                        ; preds = %for.end159, %if.end140
  %130 = load i32, i32* %needlen, align 4
  %tobool161 = icmp ne i32 %130, 0
  br i1 %tobool161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end160
  %131 = load i32, i32* %len, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end160
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond162 = phi i32 [ %131, %cond.true ], [ -1, %cond.false ]
  %132 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %len163 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %132, i32 0, i32 3
  store i32 %cond162, i32* %len163, align 4
  br label %if.end177

if.else164:                                       ; preds = %lor.lhs.false
  %133 = load i8**, i8*** %arrptr, align 4
  %134 = load i8*, i8** %133, align 4
  %135 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %cmp165 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %135, i32 0, i32 1
  store i8* %134, i8** %cmp165, align 4
  %136 = load i32, i32* %needlen, align 4
  %tobool166 = icmp ne i32 %136, 0
  br i1 %tobool166, label %cond.true167, label %cond.false173

cond.true167:                                     ; preds = %if.else164
  %137 = load i32*, i32** %unmetalenp.addr, align 4
  %138 = load i8**, i8*** %arrptr, align 4
  %139 = load i8**, i8*** %array.addr, align 4
  %sub.ptr.lhs.cast168 = ptrtoint i8** %138 to i32
  %sub.ptr.rhs.cast169 = ptrtoint i8** %139 to i32
  %sub.ptr.sub170 = sub i32 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  %sub.ptr.div171 = sdiv exact i32 %sub.ptr.sub170, 4
  %arrayidx172 = getelementptr inbounds i32, i32* %137, i32 %sub.ptr.div171
  %140 = load i32, i32* %arrayidx172, align 4
  br label %cond.end174

cond.false173:                                    ; preds = %if.else164
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false173, %cond.true167
  %cond175 = phi i32 [ %140, %cond.true167 ], [ -1, %cond.false173 ]
  %141 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %len176 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %141, i32 0, i32 3
  store i32 %cond175, i32* %len176, align 4
  br label %if.end177

if.end177:                                        ; preds = %cond.end174, %cond.end
  br label %for.inc178

for.inc178:                                       ; preds = %if.end177
  %142 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr179 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %incdec.ptr179, i8*** %arrptr, align 4
  %143 = load %struct.sortelt**, %struct.sortelt*** %sortptrarrptr, align 4
  %incdec.ptr180 = getelementptr inbounds %struct.sortelt*, %struct.sortelt** %143, i32 1
  store %struct.sortelt** %incdec.ptr180, %struct.sortelt*** %sortptrarrptr, align 4
  %144 = load %struct.sortelt*, %struct.sortelt** %sortarrptr, align 4
  %incdec.ptr181 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %144, i32 1
  store %struct.sortelt* %incdec.ptr181, %struct.sortelt** %sortarrptr, align 4
  br label %for.cond

for.end182:                                       ; preds = %for.cond
  %145 = load i32, i32* @sortdir, align 4
  store i32 %145, i32* %oldsortdir, align 4
  %146 = load i32, i32* @sortnumeric, align 4
  store i32 %146, i32* %oldsortnumeric, align 4
  %147 = load i32, i32* %sortwhat.addr, align 4
  %and183 = and i32 %147, 4
  %tobool184 = icmp ne i32 %and183, 0
  %cond185 = select i1 %tobool184, i32 -1, i32 1
  store i32 %cond185, i32* @sortdir, align 4
  %148 = load i32, i32* %sortwhat.addr, align 4
  %and186 = and i32 %148, 2
  %tobool187 = icmp ne i32 %and186, 0
  %cond188 = select i1 %tobool187, i32 1, i32 0
  store i32 %cond188, i32* @sortnumeric, align 4
  %149 = load %struct.sortelt**, %struct.sortelt*** %sortptrarr, align 4
  %150 = bitcast %struct.sortelt** %149 to i8*
  %151 = load i32, i32* %nsort, align 4
  call void @qsort(i8* %150, i32 %151, i32 4, i32 (i8*, i8*)* @eltpcmp)
  %152 = load i32, i32* %oldsortnumeric, align 4
  store i32 %152, i32* @sortnumeric, align 4
  %153 = load i32, i32* %oldsortdir, align 4
  store i32 %153, i32* @sortdir, align 4
  %154 = load i8**, i8*** %array.addr, align 4
  store i8** %154, i8*** %arrptr, align 4
  %155 = load %struct.sortelt**, %struct.sortelt*** %sortptrarr, align 4
  store %struct.sortelt** %155, %struct.sortelt*** %sortptrarrptr, align 4
  br label %for.cond189

for.cond189:                                      ; preds = %if.end201, %for.end182
  %156 = load i32, i32* %nsort, align 4
  %dec190 = add nsw i32 %156, -1
  store i32 %dec190, i32* %nsort, align 4
  %tobool191 = icmp ne i32 %156, 0
  br i1 %tobool191, label %for.body192, label %for.end205

for.body192:                                      ; preds = %for.cond189
  %157 = load i32*, i32** %unmetalenp.addr, align 4
  %tobool193 = icmp ne i32* %157, null
  br i1 %tobool193, label %if.then194, label %if.end201

if.then194:                                       ; preds = %for.body192
  %158 = load %struct.sortelt**, %struct.sortelt*** %sortptrarrptr, align 4
  %159 = load %struct.sortelt*, %struct.sortelt** %158, align 4
  %origlen195 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %159, i32 0, i32 2
  %160 = load i32, i32* %origlen195, align 4
  %161 = load i32*, i32** %unmetalenp.addr, align 4
  %162 = load i8**, i8*** %arrptr, align 4
  %163 = load i8**, i8*** %array.addr, align 4
  %sub.ptr.lhs.cast196 = ptrtoint i8** %162 to i32
  %sub.ptr.rhs.cast197 = ptrtoint i8** %163 to i32
  %sub.ptr.sub198 = sub i32 %sub.ptr.lhs.cast196, %sub.ptr.rhs.cast197
  %sub.ptr.div199 = sdiv exact i32 %sub.ptr.sub198, 4
  %arrayidx200 = getelementptr inbounds i32, i32* %161, i32 %sub.ptr.div199
  store i32 %160, i32* %arrayidx200, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then194, %for.body192
  %164 = load %struct.sortelt**, %struct.sortelt*** %sortptrarrptr, align 4
  %incdec.ptr202 = getelementptr inbounds %struct.sortelt*, %struct.sortelt** %164, i32 1
  store %struct.sortelt** %incdec.ptr202, %struct.sortelt*** %sortptrarrptr, align 4
  %165 = load %struct.sortelt*, %struct.sortelt** %164, align 4
  %orig203 = getelementptr inbounds %struct.sortelt, %struct.sortelt* %165, i32 0, i32 0
  %166 = load i8*, i8** %orig203, align 4
  %167 = load i8**, i8*** %arrptr, align 4
  %incdec.ptr204 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %incdec.ptr204, i8*** %arrptr, align 4
  store i8* %166, i8** %167, align 4
  br label %for.cond189

for.end205:                                       ; preds = %for.cond189
  call void @popheap()
  br label %return

return:                                           ; preds = %for.end205, %if.then
  ret void
}

declare i32 @arrlen(i8**) #1

declare void @pushheap() #1

declare i8* @zhalloc(i32) #1

declare i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) #1

declare i32 @tulower(i32) #1

declare i32 @towlower(i32) #1

declare i32 @wcrtomb(i8*, i32, %struct.__mbstate_t*) #1

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #1

declare void @popheap() #1

declare i32 @strcoll(i8*, i8*) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
