; ModuleID = 'constructor.v2.cpp.ll'
source_filename = "constructor.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.VectorX = type { double }

; Function Attrs: ssp uwtable
define i32 @_Z3foov() #0 {
bb:
  %tmp = alloca %class.VectorX, align 8
  %tmp1 = bitcast %class.VectorX* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp1) #3
  call void @_ZN7VectorXC1Ed(%class.VectorX* %tmp, double 5.000000e-01)
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN7VectorXC1Ed(%class.VectorX* %arg, double %arg1) unnamed_addr #0 align 2 {
bb:
  call void @_ZN7VectorXC2Ed(%class.VectorX* %arg, double %arg1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN7VectorXC2Ed(%class.VectorX* %arg, double %arg1) unnamed_addr #2 align 2 {
bb:
  %tmp = getelementptr inbounds %class.VectorX, %class.VectorX* %arg, i32 0, i32 0
  store double %arg1, double* %tmp, align 8, !tbaa !3
  ret void
}

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTS7VectorX", !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
