;; https://stackoverflow.com/questions/25820628/purpose-of-first-opperand-in-getelementptr
%tape_ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000
store i8 65, i8* %tape_ptr, align 1