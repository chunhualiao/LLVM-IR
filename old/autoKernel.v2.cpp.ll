; ModuleID = 'autoKernel.cpp'
source_filename = "autoKernel.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.anon = type { double*, double }

; Function Attrs: norecurse ssp uwtable
define i32 @main() #0 {
  %1 = alloca double*, align 8
  %2 = alloca double, align 8
  %3 = alloca %class.anon, align 8
  %4 = alloca %class.anon, align 8
  %5 = bitcast double** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #4
  %6 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4
  %7 = bitcast %class.anon* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %7) #4
  %8 = getelementptr inbounds %class.anon, %class.anon* %3, i32 0, i32 0
  %9 = load double*, double** %1, align 8, !tbaa !3
  store double* %9, double** %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %class.anon, %class.anon* %3, i32 0, i32 1
  %11 = load double, double* %2, align 8, !tbaa !10
  store double %11, double* %10, align 8, !tbaa !11
  %12 = bitcast %class.anon* %4 to i8*
  %13 = bitcast %class.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !12
  %14 = bitcast %class.anon* %4 to { double*, double }*
  %15 = getelementptr inbounds { double*, double }, { double*, double }* %14, i32 0, i32 0
  %16 = load double*, double** %15, align 8
  %17 = getelementptr inbounds { double*, double }, { double*, double }* %14, i32 0, i32 1
  %18 = load double, double* %17, align 8
  call void @"_Z6forallIZ4mainE3$_0EvT_"(double* %16, double %18)
  %19 = bitcast %class.anon* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %19) #4
  %20 = bitcast double* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #4
  %21 = bitcast double** %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: ssp uwtable
define internal void @"_Z6forallIZ4mainE3$_0EvT_"(double*, double) #2 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @"_ZZ4mainENK3$_0clEi"(%class.anon*, i32) #3 align 2 {
  %3 = alloca %class.anon*, align 8
  %4 = alloca i32, align 4
  store %class.anon* %0, %class.anon** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !13
  %5 = load %class.anon*, %class.anon** %3, align 8
  %6 = getelementptr inbounds %class.anon, %class.anon* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %class.anon, %class.anon* %5, i32 0, i32 0
  %9 = load double*, double** %8, align 8, !tbaa !7
  %10 = load i32, i32* %4, align 4, !tbaa !13
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, double* %9, i64 %11
  %13 = load double, double* %12, align 8, !tbaa !10
  %14 = fadd double %13, %7
  store double %14, double* %12, align 8, !tbaa !10
  ret void
}

attributes #0 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSZ4mainE3$_0", !4, i64 0, !9, i64 8}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{i64 0, i64 8, !3, i64 8, i64 8, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !5, i64 0}
