; ModuleID = 'arrayRefs.cpp'
source_filename = "arrayRefs.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define void @_Z5foo_pPii(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %5 = load i32*, i32** %3, align 8, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  store i32 0, i32* %8, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo1Pii(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %5 = load i32*, i32** %3, align 8, !tbaa !3
  %6 = load i32, i32* %4, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  store i32 0, i32* %8, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo2PA10_iii([10 x i32]*, i32, i32) #0 {
  %4 = alloca [10 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [10 x i32]* %0, [10 x i32]** %4, align 8, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !7
  %7 = load [10 x i32]*, [10 x i32]** %4, align 8, !tbaa !3
  %8 = load i32, i32* %5, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %9
  %11 = load i32, i32* %6, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %12
  store i32 0, i32* %13, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo3PA10_A10_iiii([10 x [10 x i32]]*, i32, i32, i32) #0 {
  %5 = alloca [10 x [10 x i32]]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [10 x [10 x i32]]* %0, [10 x [10 x i32]]** %5, align 8, !tbaa !3
  store i32 %1, i32* %6, align 4, !tbaa !7
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %9 = load [10 x [10 x i32]]*, [10 x [10 x i32]]** %5, align 8, !tbaa !3
  %10 = load i32, i32* %6, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %9, i64 %11
  %13 = load i32, i32* %7, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %12, i64 0, i64 %14
  %16 = load i32, i32* %8, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %15, i64 0, i64 %17
  store i32 0, i32* %18, align 4, !tbaa !7
  ret void
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
