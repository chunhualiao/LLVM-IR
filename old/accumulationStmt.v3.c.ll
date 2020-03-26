; ModuleID = 'accumulationStmt.v1.c.ll'
source_filename = "accumulationStmt.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @foo(double* %arg, double %arg1, i32 %arg2) #0 {
bb:
  %tmp = alloca double*, align 8
  %tmp3 = alloca double, align 8
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store double* %arg, double** %tmp, align 8
  store double %arg1, double* %tmp3, align 8
  store i32 %arg2, i32* %tmp4, align 4
  store i32 0, i32* %tmp5, align 4
  br label %bb6

bb6:                                              ; preds = %bb18, %bb
  %tmp7 = load i32, i32* %tmp5, align 4
  %tmp8 = load i32, i32* %tmp4, align 4
  %tmp9 = icmp slt i32 %tmp7, %tmp8
  br i1 %tmp9, label %bb10, label %bb21

bb10:                                             ; preds = %bb6
  %tmp11 = load double, double* %tmp3, align 8
  %tmp12 = load double*, double** %tmp, align 8
  %tmp13 = load i32, i32* %tmp5, align 4
  %tmp14 = sext i32 %tmp13 to i64
  %tmp15 = getelementptr inbounds double, double* %tmp12, i64 %tmp14
  %tmp16 = load double, double* %tmp15, align 8
  %tmp17 = fadd double %tmp16, %tmp11
  store double %tmp17, double* %tmp15, align 8
  br label %bb18

bb18:                                             ; preds = %bb10
  %tmp19 = load i32, i32* %tmp5, align 4
  %tmp20 = add nsw i32 %tmp19, 1
  store i32 %tmp20, i32* %tmp5, align 4
  br label %bb6

bb21:                                             ; preds = %bb6
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
