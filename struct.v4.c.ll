; ModuleID = 'struct.v2.c.ll'
source_filename = "struct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.ST = type { i32, double, %struct.RT }
%struct.RT = type { i8, [10 x [20 x i32]], i8 }

; Function Attrs: nounwind ssp uwtable
define i32* @foo(%struct.ST* %arg) #0 {
bb:
  %tmp = getelementptr inbounds %struct.ST, %struct.ST* %arg, i32 0, i32 0
  %tmp1 = load i32, i32* %tmp, align 8, !tbaa !3
  %tmp2 = getelementptr inbounds %struct.ST, %struct.ST* %arg, i64 1
  %tmp3 = getelementptr inbounds %struct.ST, %struct.ST* %tmp2, i32 0, i32 2
  %tmp4 = getelementptr inbounds %struct.RT, %struct.RT* %tmp3, i32 0, i32 1
  %tmp5 = sext i32 %tmp1 to i64
  %tmp6 = getelementptr inbounds [10 x [20 x i32]], [10 x [20 x i32]]* %tmp4, i64 0, i64 %tmp5
  %tmp7 = getelementptr inbounds [20 x i32], [20 x i32]* %tmp6, i64 0, i64 13
  ret i32* %tmp7
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"ST", !5, i64 0, !8, i64 8, !9, i64 16}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"double", !6, i64 0}
!9 = !{!"RT", !6, i64 0, !6, i64 4, !6, i64 804}
