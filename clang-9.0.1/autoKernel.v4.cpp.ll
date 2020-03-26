; ModuleID = 'autoKernel.v2.cpp.ll'
source_filename = "autoKernel.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%class.anon = type { double*, double }

; Function Attrs: norecurse ssp uwtable
define i32 @main() #0 {
bb:
  %tmp = alloca %class.anon, align 8
  %tmp1 = alloca %class.anon, align 8
  %tmp2 = bitcast %class.anon* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %tmp2) #4
  %tmp3 = getelementptr inbounds %class.anon, %class.anon* %tmp, i32 0, i32 0
  store double* undef, double** %tmp3, align 8, !tbaa !3
  %tmp4 = getelementptr inbounds %class.anon, %class.anon* %tmp, i32 0, i32 1
  store double undef, double* %tmp4, align 8, !tbaa !9
  %tmp5 = bitcast %class.anon* %tmp1 to i8*
  %tmp6 = bitcast %class.anon* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp5, i8* align 8 %tmp6, i64 16, i1 false), !tbaa.struct !10
  %tmp7 = bitcast %class.anon* %tmp1 to { double*, double }*
  %tmp8 = getelementptr inbounds { double*, double }, { double*, double }* %tmp7, i32 0, i32 0
  %tmp9 = load double*, double** %tmp8, align 8
  %tmp10 = getelementptr inbounds { double*, double }, { double*, double }* %tmp7, i32 0, i32 1
  %tmp11 = load double, double* %tmp10, align 8
  call void @"_Z6forallIZ4mainE3$_0EvT_"(double* %tmp9, double %tmp11)
  %tmp12 = bitcast %class.anon* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp12) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: ssp uwtable
define internal void @"_Z6forallIZ4mainE3$_0EvT_"(double* %arg, double %arg1) #2 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @"_ZZ4mainENK3$_0clEi"(%class.anon* %arg, i32 %arg1) #3 align 2 {
bb:
  %tmp = getelementptr inbounds %class.anon, %class.anon* %arg, i32 0, i32 1
  %tmp2 = load double, double* %tmp, align 8, !tbaa !9
  %tmp3 = getelementptr inbounds %class.anon, %class.anon* %arg, i32 0, i32 0
  %tmp4 = load double*, double** %tmp3, align 8, !tbaa !3
  %tmp5 = sext i32 %arg1 to i64
  %tmp6 = getelementptr inbounds double, double* %tmp4, i64 %tmp5
  %tmp7 = load double, double* %tmp6, align 8, !tbaa !12
  %tmp8 = fadd double %tmp7, %tmp2
  store double %tmp8, double* %tmp6, align 8, !tbaa !12
  ret void
}

attributes #0 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTSZ4mainE3$_0", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"double", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{i64 0, i64 8, !11, i64 8, i64 8, !12}
!11 = !{!5, !5, i64 0}
!12 = !{!8, !8, i64 0}
