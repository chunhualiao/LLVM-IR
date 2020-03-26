; ModuleID = 'accumulationStmt.c'
source_filename = "accumulationStmt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: nounwind ssp uwtable
define void @foo(double*, double, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double* %0, double** %4, align 8, !tbaa !3
  store double %1, double* %5, align 8, !tbaa !7
  store i32 %2, i32* %6, align 4, !tbaa !9
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %7, align 4, !tbaa !9
  br label %9

; <label>:9:                                      ; preds = %23, %3
  %10 = load i32, i32* %7, align 4, !tbaa !9
  %11 = load i32, i32* %6, align 4, !tbaa !9
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #2
  br label %26

; <label>:15:                                     ; preds = %9
  %16 = load double, double* %5, align 8, !tbaa !7
  %17 = load double*, double** %4, align 8, !tbaa !3
  %18 = load i32, i32* %7, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8, !tbaa !7
  %22 = fadd double %21, %16
  store double %22, double* %20, align 8, !tbaa !7
  br label %23

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %7, align 4, !tbaa !9
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4, !tbaa !9
  br label %9

; <label>:26:                                     ; preds = %13
  ret void
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
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
