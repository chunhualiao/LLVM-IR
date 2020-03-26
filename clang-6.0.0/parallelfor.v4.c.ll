; ModuleID = 'parallelfor.v2.c.ll'
source_filename = "parallelfor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
bb:
  %tmp = alloca [1000 x i32], align 16
  %tmp2 = bitcast [1000 x i32]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %tmp2) #2
  br label %bb3

bb3:                                              ; preds = %bb10, %bb
  %.01 = phi i32 [ 0, %bb ], [ %tmp11, %bb10 ]
  %.0 = phi i32 [ undef, %bb ], [ %tmp9, %bb10 ]
  %tmp4 = icmp slt i32 %.01, 1000
  br i1 %tmp4, label %bb5, label %bb12

bb5:                                              ; preds = %bb3
  %tmp6 = mul nsw i32 %.01, 2
  %tmp7 = sext i32 %.01 to i64
  %tmp8 = getelementptr inbounds [1000 x i32], [1000 x i32]* %tmp, i64 0, i64 %tmp7
  store i32 %tmp6, i32* %tmp8, align 4, !tbaa !3
  %tmp9 = add nsw i32 %.0, %.01
  br label %bb10

bb10:                                             ; preds = %bb5
  %tmp11 = add nsw i32 %.01, 1
  br label %bb3

bb12:                                             ; preds = %bb3
  %tmp13 = bitcast [1000 x i32]* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %tmp13) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
