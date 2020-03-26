; ModuleID = 'arrayRefs.v2.cpp.ll'
source_filename = "arrayRefs.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define void @_Z5foo_pPii(i32* %arg, i32 %arg1) #0 {
bb:
  %tmp = sext i32 %arg1 to i64
  %tmp2 = getelementptr inbounds i32, i32* %arg, i64 %tmp
  store i32 0, i32* %tmp2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo1Pii(i32* %arg, i32 %arg1) #0 {
bb:
  %tmp = sext i32 %arg1 to i64
  %tmp2 = getelementptr inbounds i32, i32* %arg, i64 %tmp
  store i32 0, i32* %tmp2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo2PA10_iii([10 x i32]* %arg, i32 %arg1, i32 %arg2) #0 {
bb:
  %tmp = sext i32 %arg1 to i64
  %tmp3 = getelementptr inbounds [10 x i32], [10 x i32]* %arg, i64 %tmp
  %tmp4 = sext i32 %arg2 to i64
  %tmp5 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp3, i64 0, i64 %tmp4
  store i32 0, i32* %tmp5, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_Z4foo3PA10_A10_iiii([10 x [10 x i32]]* %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
bb:
  %tmp = sext i32 %arg1 to i64
  %tmp4 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %arg, i64 %tmp
  %tmp5 = sext i32 %arg2 to i64
  %tmp6 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %tmp4, i64 0, i64 %tmp5
  %tmp7 = sext i32 %arg3 to i64
  %tmp8 = getelementptr inbounds [10 x i32], [10 x i32]* %tmp6, i64 0, i64 %tmp7
  store i32 0, i32* %tmp8, align 4, !tbaa !3
  ret void
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
