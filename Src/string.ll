; ModuleID = 'string.c'
source_filename = "string.c"
target datalayout = "e-p:32:32-i64:64-v128:32:128-n32-S128"
target triple = "asmjs-unknown-emscripten"

; Function Attrs: noinline nounwind
define i8* @dupstring(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %1)
  %add = add i32 %call, 1
  %call1 = call i8* @zhalloc(i32 %add)
  store i8* %call1, i8** %t, align 4
  %2 = load i8*, i8** %t, align 4
  %3 = load i8*, i8** %s.addr, align 4
  %call2 = call i8* @strcpy(i8* %2, i8* %3)
  %4 = load i8*, i8** %t, align 4
  store i8* %4, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 4
  ret i8* %5
}

declare i8* @zhalloc(i32) #1

declare i32 @strlen(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind
define i8* @dupstring_wlen(i8* %s, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %add = add i32 %1, 1
  %call = call i8* @zhalloc(i32 %add)
  store i8* %call, i8** %t, align 4
  %2 = load i8*, i8** %t, align 4
  %3 = load i8*, i8** %s.addr, align 4
  %4 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 %4, i32 1, i1 false)
  %5 = load i8*, i8** %t, align 4
  %6 = load i32, i32* %len.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %5, i32 %6
  store i8 0, i8* %arrayidx, align 1
  %7 = load i8*, i8** %t, align 4
  store i8* %7, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval, align 4
  ret i8* %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define i8* @dupstring_glen(i8* %s, i32* %len_ret) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %len_ret.addr = alloca i32*, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %len_ret, i32** %len_ret.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %1)
  %2 = load i32*, i32** %len_ret.addr, align 4
  store i32 %call, i32* %2, align 4
  %add = add i32 %call, 1
  %call1 = call i8* @zhalloc(i32 %add)
  store i8* %call1, i8** %t, align 4
  %3 = load i8*, i8** %t, align 4
  %4 = load i8*, i8** %s.addr, align 4
  %call2 = call i8* @strcpy(i8* %3, i8* %4)
  %5 = load i8*, i8** %t, align 4
  store i8* %5, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 4
  ret i8* %6
}

; Function Attrs: noinline nounwind
define i8* @ztrdup(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8*, i8** %s.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 4
  %call = call i32 @strlen(i8* %1)
  %add = add i32 %call, 1
  %call1 = call i8* @zalloc(i32 %add)
  store i8* %call1, i8** %t, align 4
  %2 = load i8*, i8** %t, align 4
  %3 = load i8*, i8** %s.addr, align 4
  %call2 = call i8* @strcpy(i8* %2, i8* %3)
  %4 = load i8*, i8** %t, align 4
  store i8* %4, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 4
  ret i8* %5
}

declare i8* @zalloc(i32) #1

; Function Attrs: noinline nounwind
define i32* @wcs_ztrdup(i32* %s) #0 {
entry:
  %retval = alloca i32*, align 4
  %s.addr = alloca i32*, align 4
  %t = alloca i32*, align 4
  store i32* %s, i32** %s.addr, align 4
  %0 = load i32*, i32** %s.addr, align 4
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %s.addr, align 4
  %call = call i32 @wcslen(i32* %1)
  %add = add i32 %call, 1
  %mul = mul i32 4, %add
  %call1 = call i8* @zalloc(i32 %mul)
  %2 = bitcast i8* %call1 to i32*
  store i32* %2, i32** %t, align 4
  %3 = load i32*, i32** %t, align 4
  %4 = load i32*, i32** %s.addr, align 4
  %call2 = call i32* @wcscpy(i32* %3, i32* %4)
  %5 = load i32*, i32** %t, align 4
  store i32* %5, i32** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 4
  ret i32* %6
}

declare i32 @wcslen(i32*) #1

declare i32* @wcscpy(i32*, i32*) #1

; Function Attrs: noinline nounwind
define i8* @tricat(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %s3.addr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i8* %s3, i8** %s3.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l1, align 4
  %1 = load i8*, i8** %s2.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  store i32 %call1, i32* %l2, align 4
  %2 = load i32, i32* %l1, align 4
  %3 = load i32, i32* %l2, align 4
  %add = add i32 %2, %3
  %4 = load i8*, i8** %s3.addr, align 4
  %call2 = call i32 @strlen(i8* %4)
  %add3 = add i32 %add, %call2
  %add4 = add i32 %add3, 1
  %call5 = call i8* @zalloc(i32 %add4)
  store i8* %call5, i8** %ptr, align 4
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i8*, i8** %s1.addr, align 4
  %call6 = call i8* @strcpy(i8* %5, i8* %6)
  %7 = load i8*, i8** %ptr, align 4
  %8 = load i32, i32* %l1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 %8
  %9 = load i8*, i8** %s2.addr, align 4
  %call7 = call i8* @strcpy(i8* %add.ptr, i8* %9)
  %10 = load i8*, i8** %ptr, align 4
  %11 = load i32, i32* %l1, align 4
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i32 %11
  %12 = load i32, i32* %l2, align 4
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i32 %12
  %13 = load i8*, i8** %s3.addr, align 4
  %call10 = call i8* @strcpy(i8* %add.ptr9, i8* %13)
  %14 = load i8*, i8** %ptr, align 4
  ret i8* %14
}

; Function Attrs: noinline nounwind
define i8* @zhtricat(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %s3.addr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i8* %s3, i8** %s3.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l1, align 4
  %1 = load i8*, i8** %s2.addr, align 4
  %call1 = call i32 @strlen(i8* %1)
  store i32 %call1, i32* %l2, align 4
  %2 = load i32, i32* %l1, align 4
  %3 = load i32, i32* %l2, align 4
  %add = add i32 %2, %3
  %4 = load i8*, i8** %s3.addr, align 4
  %call2 = call i32 @strlen(i8* %4)
  %add3 = add i32 %add, %call2
  %add4 = add i32 %add3, 1
  %call5 = call i8* @zhalloc(i32 %add4)
  store i8* %call5, i8** %ptr, align 4
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i8*, i8** %s1.addr, align 4
  %call6 = call i8* @strcpy(i8* %5, i8* %6)
  %7 = load i8*, i8** %ptr, align 4
  %8 = load i32, i32* %l1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %7, i32 %8
  %9 = load i8*, i8** %s2.addr, align 4
  %call7 = call i8* @strcpy(i8* %add.ptr, i8* %9)
  %10 = load i8*, i8** %ptr, align 4
  %11 = load i32, i32* %l1, align 4
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i32 %11
  %12 = load i32, i32* %l2, align 4
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i32 %12
  %13 = load i8*, i8** %s3.addr, align 4
  %call10 = call i8* @strcpy(i8* %add.ptr9, i8* %13)
  %14 = load i8*, i8** %ptr, align 4
  ret i8* %14
}

; Function Attrs: noinline nounwind
define i8* @dyncat(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %l1 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l1, align 4
  %1 = load i32, i32* %l1, align 4
  %2 = load i8*, i8** %s2.addr, align 4
  %call1 = call i32 @strlen(i8* %2)
  %add = add i32 %1, %call1
  %add2 = add i32 %add, 1
  %call3 = call i8* @zhalloc(i32 %add2)
  store i8* %call3, i8** %ptr, align 4
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8*, i8** %s1.addr, align 4
  %call4 = call i8* @strcpy(i8* %3, i8* %4)
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i32, i32* %l1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %6
  %7 = load i8*, i8** %s2.addr, align 4
  %call5 = call i8* @strcpy(i8* %add.ptr, i8* %7)
  %8 = load i8*, i8** %ptr, align 4
  ret i8* %8
}

; Function Attrs: noinline nounwind
define i8* @bicat(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %l1 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 4
  %call = call i32 @strlen(i8* %0)
  store i32 %call, i32* %l1, align 4
  %1 = load i32, i32* %l1, align 4
  %2 = load i8*, i8** %s2.addr, align 4
  %call1 = call i32 @strlen(i8* %2)
  %add = add i32 %1, %call1
  %add2 = add i32 %add, 1
  %call3 = call i8* @zalloc(i32 %add2)
  store i8* %call3, i8** %ptr, align 4
  %3 = load i8*, i8** %ptr, align 4
  %4 = load i8*, i8** %s1.addr, align 4
  %call4 = call i8* @strcpy(i8* %3, i8* %4)
  %5 = load i8*, i8** %ptr, align 4
  %6 = load i32, i32* %l1, align 4
  %add.ptr = getelementptr inbounds i8, i8* %5, i32 %6
  %7 = load i8*, i8** %s2.addr, align 4
  %call5 = call i8* @strcpy(i8* %add.ptr, i8* %7)
  %8 = load i8*, i8** %ptr, align 4
  ret i8* %8
}

; Function Attrs: noinline nounwind
define i8* @dupstrpfx(i8* %s, i32 %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %r = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %call = call i8* @zhalloc(i32 %add)
  store i8* %call, i8** %r, align 4
  %1 = load i8*, i8** %r, align 4
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 %3, i32 1, i1 false)
  %4 = load i8*, i8** %r, align 4
  %5 = load i32, i32* %len.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5
  store i8 0, i8* %arrayidx, align 1
  %6 = load i8*, i8** %r, align 4
  ret i8* %6
}

; Function Attrs: noinline nounwind
define i8* @ztrduppfx(i8* %s, i32 %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %r = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %call = call i8* @zalloc(i32 %add)
  store i8* %call, i8** %r, align 4
  %1 = load i8*, i8** %r, align 4
  %2 = load i8*, i8** %s.addr, align 4
  %3 = load i32, i32* %len.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 %3, i32 1, i1 false)
  %4 = load i8*, i8** %r, align 4
  %5 = load i32, i32* %len.addr, align 4
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5
  store i8 0, i8* %arrayidx, align 1
  %6 = load i8*, i8** %r, align 4
  ret i8* %6
}

; Function Attrs: noinline nounwind
define i8* @appstr(i8* %base, i8* %append) #0 {
entry:
  %base.addr = alloca i8*, align 4
  %append.addr = alloca i8*, align 4
  store i8* %base, i8** %base.addr, align 4
  store i8* %append, i8** %append.addr, align 4
  %0 = load i8*, i8** %base.addr, align 4
  %1 = load i8*, i8** %base.addr, align 4
  %call = call i32 @strlen(i8* %1)
  %2 = load i8*, i8** %append.addr, align 4
  %call1 = call i32 @strlen(i8* %2)
  %add = add i32 %call, %call1
  %add2 = add i32 %add, 1
  %call3 = call i8* @realloc(i8* %0, i32 %add2)
  %3 = load i8*, i8** %append.addr, align 4
  %call4 = call i8* @strcat(i8* %call3, i8* %3)
  ret i8* %call4
}

declare i8* @strcat(i8*, i8*) #1

declare i8* @realloc(i8*, i32) #1

; Function Attrs: noinline nounwind
define i8* @strend(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 4
  %str.addr = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 4
  store i8* %2, i8** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 4
  %4 = load i8*, i8** %str.addr, align 4
  %call = call i32 @strlen(i8* %4)
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %call
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i32 -1
  store i8* %add.ptr2, i8** %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 4
  ret i8* %5
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0  (emscripten 1.37.22 : 1.37.22)"}
