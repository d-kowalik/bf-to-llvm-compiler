target triple = "x86_64-pc-linux-gnu"

@tape = private unnamed_addr global [2000 x i8] zeroinitializer

; External declaration of the puts function
declare i8 @getchar() nounwind
declare i8 @putchar(i8) nounwind

; Definition of main function
define i32 @main() {
  ; Convert [13 x i8]* to i8*...
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

  ; Call puts function to write out the string to stdout.
  ;call i32 @puts(i8* %tape_ptr)
  ret i32 0
}

; Named metadata
!0 = !{i32 42, null, !"string"}
!foo = !{!0}
