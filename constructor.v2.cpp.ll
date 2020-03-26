; ModuleID = 'constructor.cpp'
source_filename = "constructor.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.VectorX = type { double }

; Function Attrs: ssp uwtable
define i32 @_Z3foov() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %class.VectorX, align 8
  %3 = bitcast %class.VectorX* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3
  call void @_ZN7VectorXC1Ed(%class.VectorX* %2, double 5.000000e-01)
  unreachable
                                                  ; No predecessors!
  %5 = load i32, i32* %1, align 4
  ret i32 %5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN7VectorXC1Ed(%class.VectorX*, double) unnamed_addr #0 align 2 {
  %3 = alloca %class.VectorX*, align 8
  %4 = alloca double, align 8
  store %class.VectorX* %0, %class.VectorX** %3, align 8, !tbaa !3
  store double %1, double* %4, align 8, !tbaa !7
  %5 = load %class.VectorX*, %class.VectorX** %3, align 8
  %6 = load double, double* %4, align 8, !tbaa !7
  call void @_ZN7VectorXC2Ed(%class.VectorX* %5, double %6)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN7VectorXC2Ed(%class.VectorX*, double) unnamed_addr #2 align 2 {
  %3 = alloca %class.VectorX*, align 8
  %4 = alloca double, align 8
  store %class.VectorX* %0, %class.VectorX** %3, align 8, !tbaa !3
  store double %1, double* %4, align 8, !tbaa !7
  %5 = load %class.VectorX*, %class.VectorX** %3, align 8
  %6 = load double, double* %4, align 8, !tbaa !7
  %7 = getelementptr inbounds %class.VectorX, %class.VectorX* %5, i32 0, i32 0
  store double %6, double* %7, align 8, !tbaa !9
  ret void
}

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

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
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"_ZTS7VectorX", !8, i64 0}
