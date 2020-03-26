; ModuleID = 'struct.v1.c.ll'
source_filename = "struct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.ST = type { i32, double, %struct.RT }
%struct.RT = type { i8, [10 x [20 x i32]], i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @foo(%struct.ST* %arg) #0 {
bb:
  %tmp = alloca %struct.ST*, align 8
  %tmp1 = alloca i32, align 4
  store %struct.ST* %arg, %struct.ST** %tmp, align 8
  %tmp2 = load %struct.ST*, %struct.ST** %tmp, align 8
  %tmp3 = getelementptr inbounds %struct.ST, %struct.ST* %tmp2, i32 0, i32 0
  %tmp4 = load i32, i32* %tmp3, align 8
  store i32 %tmp4, i32* %tmp1, align 4
  %tmp5 = load %struct.ST*, %struct.ST** %tmp, align 8
  %tmp6 = getelementptr inbounds %struct.ST, %struct.ST* %tmp5, i64 1
  %tmp7 = getelementptr inbounds %struct.ST, %struct.ST* %tmp6, i32 0, i32 2
  %tmp8 = getelementptr inbounds %struct.RT, %struct.RT* %tmp7, i32 0, i32 1
  %tmp9 = load i32, i32* %tmp1, align 4
  %tmp10 = sext i32 %tmp9 to i64
  %tmp11 = getelementptr inbounds [10 x [20 x i32]], [10 x [20 x i32]]* %tmp8, i64 0, i64 %tmp10
  %tmp12 = getelementptr inbounds [20 x i32], [20 x i32]* %tmp11, i64 0, i64 13
  ret i32* %tmp12
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
