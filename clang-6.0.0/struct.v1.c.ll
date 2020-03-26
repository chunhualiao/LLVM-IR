; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.ST = type { i32, double, %struct.RT }
%struct.RT = type { i8, [10 x [20 x i32]], i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32* @foo(%struct.ST*) #0 {
  %2 = alloca %struct.ST*, align 8
  %3 = alloca i32, align 4
  store %struct.ST* %0, %struct.ST** %2, align 8
  %4 = load %struct.ST*, %struct.ST** %2, align 8
  %5 = getelementptr inbounds %struct.ST, %struct.ST* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ST*, %struct.ST** %2, align 8
  %8 = getelementptr inbounds %struct.ST, %struct.ST* %7, i64 1
  %9 = getelementptr inbounds %struct.ST, %struct.ST* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.RT, %struct.RT* %9, i32 0, i32 1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x [20 x i32]], [10 x [20 x i32]]* %10, i64 0, i64 %12
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 13
  ret i32* %14
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
