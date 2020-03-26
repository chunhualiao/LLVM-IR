; ModuleID = 'autoKernel.v1.cpp.ll'
source_filename = "autoKernel.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.anon = type { double*, double }

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
bb:
  %tmp = alloca double*, align 8
  %tmp1 = alloca double, align 8
  %tmp2 = alloca %class.anon, align 8
  %tmp3 = alloca %class.anon, align 8
  %tmp4 = getelementptr inbounds %class.anon, %class.anon* %tmp2, i32 0, i32 0
  %tmp5 = load double*, double** %tmp, align 8
  store double* %tmp5, double** %tmp4, align 8
  %tmp6 = getelementptr inbounds %class.anon, %class.anon* %tmp2, i32 0, i32 1
  %tmp7 = load double, double* %tmp1, align 8
  store double %tmp7, double* %tmp6, align 8
  %tmp8 = bitcast %class.anon* %tmp3 to i8*
  %tmp9 = bitcast %class.anon* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp8, i8* %tmp9, i64 16, i32 8, i1 false)
  %tmp10 = bitcast %class.anon* %tmp3 to { double*, double }*
  %tmp11 = getelementptr inbounds { double*, double }, { double*, double }* %tmp10, i32 0, i32 0
  %tmp12 = load double*, double** %tmp11, align 8
  %tmp13 = getelementptr inbounds { double*, double }, { double*, double }* %tmp10, i32 0, i32 1
  %tmp14 = load double, double* %tmp13, align 8
  call void @"_Z6forallIZ4mainE3$_0EvT_"(double* %tmp12, double %tmp14)
  ret i32 0
}

; Function Attrs: noinline optnone ssp uwtable
define internal void @"_Z6forallIZ4mainE3$_0EvT_"(double* %arg, double %arg1) #1 {
bb:
  %tmp = alloca %class.anon, align 8
  %tmp2 = bitcast %class.anon* %tmp to { double*, double }*
  %tmp3 = getelementptr inbounds { double*, double }, { double*, double }* %tmp2, i32 0, i32 0
  store double* %arg, double** %tmp3, align 8
  %tmp4 = getelementptr inbounds { double*, double }, { double*, double }* %tmp2, i32 0, i32 1
  store double %arg1, double* %tmp4, align 8
  call void @"_ZZ4mainENK3$_0clEi"(%class.anon* %tmp, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @"_ZZ4mainENK3$_0clEi"(%class.anon* %arg, i32 %arg1) #3 align 2 {
bb:
  %tmp = alloca %class.anon*, align 8
  %tmp2 = alloca i32, align 4
  store %class.anon* %arg, %class.anon** %tmp, align 8
  store i32 %arg1, i32* %tmp2, align 4
  %tmp3 = load %class.anon*, %class.anon** %tmp, align 8
  %tmp4 = getelementptr inbounds %class.anon, %class.anon* %tmp3, i32 0, i32 1
  %tmp5 = load double, double* %tmp4, align 8
  %tmp6 = getelementptr inbounds %class.anon, %class.anon* %tmp3, i32 0, i32 0
  %tmp7 = load double*, double** %tmp6, align 8
  %tmp8 = load i32, i32* %tmp2, align 4
  %tmp9 = sext i32 %tmp8 to i64
  %tmp10 = getelementptr inbounds double, double* %tmp7, i64 %tmp9
  %tmp11 = load double, double* %tmp10, align 8
  %tmp12 = fadd double %tmp11, %tmp5
  store double %tmp12, double* %tmp10, align 8
  ret void
}

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
