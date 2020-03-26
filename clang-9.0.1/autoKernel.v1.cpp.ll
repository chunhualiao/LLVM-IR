; ModuleID = 'autoKernel.cpp'
source_filename = "autoKernel.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.anon = type { double*, double }

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca double*, align 8
  %2 = alloca double, align 8
  %3 = alloca %class.anon, align 8
  %4 = alloca %class.anon, align 8
  %5 = getelementptr inbounds %class.anon, %class.anon* %3, i32 0, i32 0
  %6 = load double*, double** %1, align 8
  store double* %6, double** %5, align 8
  %7 = getelementptr inbounds %class.anon, %class.anon* %3, i32 0, i32 1
  %8 = load double, double* %2, align 8
  store double %8, double* %7, align 8
  %9 = bitcast %class.anon* %4 to i8*
  %10 = bitcast %class.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = bitcast %class.anon* %4 to { double*, double }*
  %12 = getelementptr inbounds { double*, double }, { double*, double }* %11, i32 0, i32 0
  %13 = load double*, double** %12, align 8
  %14 = getelementptr inbounds { double*, double }, { double*, double }* %11, i32 0, i32 1
  %15 = load double, double* %14, align 8
  call void @"_Z6forallIZ4mainE3$_0EvT_"(double* %13, double %15)
  ret i32 0
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @"_Z6forallIZ4mainE3$_0EvT_"(double*, double) #1 {
  %3 = alloca %class.anon, align 8
  %4 = bitcast %class.anon* %3 to { double*, double }*
  %5 = getelementptr inbounds { double*, double }, { double*, double }* %4, i32 0, i32 0
  store double* %0, double** %5, align 8
  %6 = getelementptr inbounds { double*, double }, { double*, double }* %4, i32 0, i32 1
  store double %1, double* %6, align 8
  call void @"_ZZ4mainENK3$_0clEi"(%class.anon* %3, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @"_ZZ4mainENK3$_0clEi"(%class.anon*, i32) #3 align 2 {
  %3 = alloca %class.anon*, align 8
  %4 = alloca i32, align 4
  store %class.anon* %0, %class.anon** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.anon*, %class.anon** %3, align 8
  %6 = getelementptr inbounds %class.anon, %class.anon* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %class.anon, %class.anon* %5, i32 0, i32 0
  %9 = load double*, double** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, double* %9, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fadd double %13, %7
  store double %14, double* %12, align 8
  ret void
}

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
