; ModuleID = 'parallelfor.v1.c.ll'
source_filename = "parallelfor.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
bb:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca [1000 x i32], align 16
  %tmp3 = alloca i32, align 4
  store i32 0, i32* %tmp, align 4
  store i32 0, i32* %tmp1, align 4
  br label %bb4

bb4:                                              ; preds = %bb16, %bb
  %tmp5 = load i32, i32* %tmp1, align 4
  %tmp6 = icmp slt i32 %tmp5, 1000
  br i1 %tmp6, label %bb7, label %bb19

bb7:                                              ; preds = %bb4
  %tmp8 = load i32, i32* %tmp1, align 4
  %tmp9 = mul nsw i32 %tmp8, 2
  %tmp10 = load i32, i32* %tmp1, align 4
  %tmp11 = sext i32 %tmp10 to i64
  %tmp12 = getelementptr inbounds [1000 x i32], [1000 x i32]* %tmp2, i64 0, i64 %tmp11
  store i32 %tmp9, i32* %tmp12, align 4
  %tmp13 = load i32, i32* %tmp1, align 4
  %tmp14 = load i32, i32* %tmp3, align 4
  %tmp15 = add nsw i32 %tmp14, %tmp13
  store i32 %tmp15, i32* %tmp3, align 4
  br label %bb16

bb16:                                             ; preds = %bb7
  %tmp17 = load i32, i32* %tmp1, align 4
  %tmp18 = add nsw i32 %tmp17, 1
  store i32 %tmp18, i32* %tmp1, align 4
  br label %bb4

bb19:                                             ; preds = %bb4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
