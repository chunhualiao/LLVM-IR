; ModuleID = 'accumulationStmt.v2.c.ll'
source_filename = "accumulationStmt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define void @foo(double* %arg, double %arg1, i32 %arg2) #0 {
bb:
  br label %bb3

bb3:                                              ; preds = %bb10, %bb
  %.0 = phi i32 [ 0, %bb ], [ %tmp11, %bb10 ]
  %tmp = icmp slt i32 %.0, %arg2
  br i1 %tmp, label %bb5, label %bb4

bb4:                                              ; preds = %bb3
  br label %bb12

bb5:                                              ; preds = %bb3
  %tmp6 = sext i32 %.0 to i64
  %tmp7 = getelementptr inbounds double, double* %arg, i64 %tmp6
  %tmp8 = load double, double* %tmp7, align 8, !tbaa !3
  %tmp9 = fadd double %tmp8, %arg1
  store double %tmp9, double* %tmp7, align 8, !tbaa !3
  br label %bb10

bb10:                                             ; preds = %bb5
  %tmp11 = add nsw i32 %.0, 1
  br label %bb3

bb12:                                             ; preds = %bb4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
