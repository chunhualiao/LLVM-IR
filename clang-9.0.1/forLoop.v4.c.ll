; ModuleID = 'forLoop.v2.c.ll'
source_filename = "forLoop.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define i32 @sum(i32 %arg) #0 {
bb:
  br label %bb2

bb2:                                              ; preds = %bb6, %bb
  %.01 = phi i32 [ 0, %bb ], [ %tmp5, %bb6 ]
  %.0 = phi i32 [ 1, %bb ], [ %tmp7, %bb6 ]
  %tmp = icmp sle i32 %.0, %arg
  br i1 %tmp, label %bb4, label %bb3

bb3:                                              ; preds = %bb2
  br label %bb8

bb4:                                              ; preds = %bb2
  %tmp5 = add nsw i32 %.01, %.0
  br label %bb6

bb6:                                              ; preds = %bb4
  %tmp7 = add nsw i32 %.0, 1
  br label %bb2

bb8:                                              ; preds = %bb3
  ret i32 %.01
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
