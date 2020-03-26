; ModuleID = 'arrayRefs.v1.cpp.ll'
source_filename = "arrayRefs.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z5foo_pPii(i32* %arg, i32 %arg1) #0 {
bb:
  %tmp = alloca i32*, align 8
  %tmp2 = alloca i32, align 4
  store i32* %arg, i32** %tmp, align 8
  store i32 %arg1, i32* %tmp2, align 4
  %tmp3 = load i32*, i32** %tmp, align 8
  %tmp4 = load i32, i32* %tmp2, align 4
  %tmp5 = sext i32 %tmp4 to i64
  %tmp6 = getelementptr inbounds i32, i32* %tmp3, i64 %tmp5
  store i32 0, i32* %tmp6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z4foo1Pii(i32* %arg, i32 %arg1) #0 {
bb:
  %tmp = alloca i32*, align 8
  %tmp2 = alloca i32, align 4
  store i32* %arg, i32** %tmp, align 8
  store i32 %arg1, i32* %tmp2, align 4
  %tmp3 = load i32*, i32** %tmp, align 8
  %tmp4 = load i32, i32* %tmp2, align 4
  %tmp5 = sext i32 %tmp4 to i64
  %tmp6 = getelementptr inbounds i32, i32* %tmp3, i64 %tmp5
  store i32 0, i32* %tmp6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z4foo2PA10_iii([10 x i32]* %arg, i32 %arg1, i32 %arg2) #0 {
bb:
  %tmp = alloca [10 x i32]*, align 8
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store [10 x i32]* %arg, [10 x i32]** %tmp, align 8
  store i32 %arg1, i32* %tmp3, align 4
  store i32 %arg2, i32* %tmp4, align 4
  %tmp5 = load [10 x i32]*, [10 x i32]** %tmp, align 8
  %tmp6 = load i32, i32* %tmp3, align 4
  %tmp7 = sext i32 %tmp6 to i64
  %tmp8 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp5, i64 %tmp7
  %tmp9 = load i32, i32* %tmp4, align 4
  %tmp10 = sext i32 %tmp9 to i64
  %tmp11 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp8, i64 0, i64 %tmp10
  store i32 0, i32* %tmp11, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_Z4foo3PA10_A10_iiii([10 x [10 x i32]]* %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
bb:
  %tmp = alloca [10 x [10 x i32]]*, align 8
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store [10 x [10 x i32]]* %arg, [10 x [10 x i32]]** %tmp, align 8
  store i32 %arg1, i32* %tmp4, align 4
  store i32 %arg2, i32* %tmp5, align 4
  store i32 %arg3, i32* %tmp6, align 4
  %tmp7 = load [10 x [10 x i32]]*, [10 x [10 x i32]]** %tmp, align 8
  %tmp8 = load i32, i32* %tmp4, align 4
  %tmp9 = sext i32 %tmp8 to i64
  %tmp10 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %tmp7, i64 %tmp9
  %tmp11 = load i32, i32* %tmp5, align 4
  %tmp12 = sext i32 %tmp11 to i64
  %tmp13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %tmp10, i64 0, i64 %tmp12
  %tmp14 = load i32, i32* %tmp6, align 4
  %tmp15 = sext i32 %tmp14 to i64
  %tmp16 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp13, i64 0, i64 %tmp15
  store i32 0, i32* %tmp16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
