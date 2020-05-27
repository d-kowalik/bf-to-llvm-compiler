target triple = "x86_64-pc-linux-gnu"

@tape = private unnamed_addr global [2000 x i8] zeroinitializer

declare i8 @getchar() nounwind
declare i8 @putchar(i8) nounwind

define i32 @main() {
  ; Convert [2000 x i8]* to i8*...
  %tape_ptr = alloca i8*
  %ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000
  store i8* %ptr, i8** %tape_ptr

  ; GENERATED ; ,+.
  ; ,
  %1 = call i8 @getchar()
  %deref = load i8*, i8** %tape_ptr
  store i8 %1, i8* %deref, align 1
  ; +
  %2 = load i8, i8* %deref
  %3 = add i8 1, %2
  store i8 %3, i8* %deref, align 1
  ; >
  ; %2 = inttoptr i64 1223 to i32*
  ; store i32* %2, i32** %1

  %deref2 = load i8*, i8** %tape_ptr
  %deref2i = ptrtoint i8* %deref2 to i64
  %derefp = add i64 1, %deref2i
  %deref3 = inttoptr i64 %derefp to i8*
  store i8* %deref3, i8** %tape_ptr
  ; store...
  ; .
  %4 = load i8, i8* %deref3
  call i8 @putchar(i8 %4)
  ; /GENERATED

  ret i32 0
}
