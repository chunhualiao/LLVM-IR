; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.ST = type { i32, double, %struct.RT }
%struct.RT = type { i8, [10 x [20 x i32]], i8 }

; Function Attrs: nounwind ssp uwtable
define i32* @foo(%struct.ST*) #0 {
  %2 = alloca %struct.ST*, align 8
  %3 = alloca i32, align 4
  store %struct.ST* %0, %struct.ST** %2, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = load %struct.ST*, %struct.ST** %2, align 8, !tbaa !3
  %6 = getelementptr inbounds %struct.ST, %struct.ST* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !7
  store i32 %7, i32* %3, align 4, !tbaa !12
  %8 = load %struct.ST*, %struct.ST** %2, align 8, !tbaa !3
  %9 = getelementptr inbounds %struct.ST, %struct.ST* %8, i64 1
  %10 = getelementptr inbounds %struct.ST, %struct.ST* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.RT, %struct.RT* %10, i32 0, i32 1
  %12 = load i32, i32* %3, align 4, !tbaa !12
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x [20 x i32]], [10 x [20 x i32]]* %11, i64 0, i64 %13
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 13
  %16 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #2
  ret i32* %15
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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"ST", !9, i64 0, !10, i64 8, !11, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"RT", !5, i64 0, !5, i64 4, !5, i64 804}
!12 = !{!9, !9, i64 0}
