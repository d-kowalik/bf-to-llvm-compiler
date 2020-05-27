target triple = "x86_64-pc-linux-gnu"

@tape = private unnamed_addr global [2000 x i8] zeroinitializer

declare i8 @getchar() nounwind
declare i8 @putchar(i8) nounwind

define i32 @main() {
  ; Convert [2000 x i8]* to i8*...
  %tape_ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000

  ; GENERATED ; .+,
  ; .
  %1 = call i8 @getchar()
  store i8 %1, i8* %tape_ptr, align 1
  ; +
  %2 = load i8, i8* %tape_ptr
  %3 = add i8 1, %2
  store i8 %3, i8* %tape_ptr, align 1
  ; ,
  %4 = load i8, i8* %tape_ptr
  call i8 @putchar(i8 %4)
  ; /GENERATED

  ret i32 0
}

