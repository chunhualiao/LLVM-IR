; ModuleID = 'constructor.v1.cpp.ll'
source_filename = "constructor.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.VectorX = type { double }

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z3foov() #0 {
bb:
  %tmp = alloca %class.VectorX, align 8
  call void @_ZN7VectorXC1Ed(%class.VectorX* %tmp, double 5.000000e-01)
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZN7VectorXC1Ed(%class.VectorX* %arg, double %arg1) unnamed_addr #0 align 2 {
bb:
  %tmp = alloca %class.VectorX*, align 8
  %tmp2 = alloca double, align 8
  store %class.VectorX* %arg, %class.VectorX** %tmp, align 8
  store double %arg1, double* %tmp2, align 8
  %tmp3 = load %class.VectorX*, %class.VectorX** %tmp, align 8
  %tmp4 = load double, double* %tmp2, align 8
  call void @_ZN7VectorXC2Ed(%class.VectorX* %tmp3, double %tmp4)
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN7VectorXC2Ed(%class.VectorX* %arg, double %arg1) unnamed_addr #2 align 2 {
bb:
  %tmp = alloca %class.VectorX*, align 8
  %tmp2 = alloca double, align 8
  store %class.VectorX* %arg, %class.VectorX** %tmp, align 8
  store double %arg1, double* %tmp2, align 8
  %tmp3 = load %class.VectorX*, %class.VectorX** %tmp, align 8
  %tmp4 = load double, double* %tmp2, align 8
  %tmp5 = getelementptr inbounds %class.VectorX, %class.VectorX* %tmp3, i32 0, i32 0
  store double %tmp4, double* %tmp5, align 8
  ret void
}

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
