; ModuleID = 'pointerArray.v1.c.ll'
source_filename = "pointerArray.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @foo(i32* %arg, i32 %arg1) #0 {
bb:
  %tmp = alloca i32*, align 8
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store i32* %arg, i32** %tmp, align 8
  store i32 %arg1, i32* %tmp2, align 4
  %tmp4 = load i32*, i32** %tmp, align 8
  %tmp5 = load i32, i32* %tmp2, align 4
  %tmp6 = sext i32 %tmp5 to i64
  %tmp7 = getelementptr inbounds i32, i32* %tmp4, i64 %tmp6
  %tmp8 = load i32, i32* %tmp7, align 4
  store i32 %tmp8, i32* %tmp3, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.1 "}
