target triple = "x86_64-pc-linux-gnu"
@tape = private unnamed_addr global [2000 x i8] zeroinitializer
declare i8 @getchar() nounwind
declare i8 @putchar(i8) nounwind
define i32 @main() {
%tape_ptr = alloca i8*
%ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000
store i8* %ptr, i8** %tape_ptr
%1 = load i8*, i8** %tape_ptr
%2 = ptrtoint i8* %1 to i64
%3 = add i64 %2, 1
%4 = inttoptr i64 %3 to i8*
store i8* %4, i8** %tape_ptr
%5 = load i8*, i8** %tape_ptr
%6 = ptrtoint i8* %5 to i64
%7 = add i64 %6, 1
%8 = inttoptr i64 %7 to i8*
store i8* %8, i8** %tape_ptr
%9 = load i8*, i8** %tape_ptr
%10 = ptrtoint i8* %9 to i64
%11 = add i64 %10, 1
%12 = inttoptr i64 %11 to i8*
store i8* %12, i8** %tape_ptr
%13 = load i8*, i8** %tape_ptr
%14 = load i8, i8* %13
%15 = add i8 %14, 1
store i8* %13, i8 %15
br label %for0.body
for0.body:
%16 = load i8*, i8** %tape_ptr
%17 = load i8, i8* %16
%18 = icmp eq i8 %17, 0
br i1 %18, label %for2.end, label %for1.inner
for1.inner:
br label %for3.body
for3.body:
%19 = load i8*, i8** %tape_ptr
%20 = load i8, i8* %19
%21 = icmp eq i8 %20, 0
br i1 %21, label %for5.end, label %for4.inner
for4.inner:
%22 = load i8*, i8** %tape_ptr
%23 = load i8, i8* %22
%24 = sub i8 %23, 1
store i8* %22, i8 %24
br label %for3.body
for5.end:
%25 = load i8*, i8** %tape_ptr
%26 = ptrtoint i8* %25 to i64
%27 = add i64 %26, 1
%28 = inttoptr i64 %27 to i8*
store i8* %28, i8** %tape_ptr
%29 = load i8*, i8** %tape_ptr
%30 = ptrtoint i8* %29 to i64
%31 = add i64 %30, 1
%32 = inttoptr i64 %31 to i8*
store i8* %32, i8** %tape_ptr
br label %for6.body
for6.body:
%33 = load i8*, i8** %tape_ptr
%34 = load i8, i8* %33
%35 = icmp eq i8 %34, 0
br i1 %35, label %for8.end, label %for7.inner
for7.inner:
%36 = load i8*, i8** %tape_ptr
%37 = load i8, i8* %36
%38 = sub i8 %37, 1
store i8* %36, i8 %38
br label %for6.body
for8.end:
%39 = load i8*, i8** %tape_ptr
%40 = load i8, i8* %39
%41 = add i8 %40, 1
store i8* %39, i8 %41
%42 = load i8*, i8** %tape_ptr
%43 = load i8, i8* %42
%44 = add i8 %43, 1
store i8* %42, i8 %44
%45 = load i8*, i8** %tape_ptr
%46 = ptrtoint i8* %45 to i64
%47 = add i64 %46, 1
%48 = inttoptr i64 %47 to i8*
store i8* %48, i8** %tape_ptr
%49 = load i8*, i8** %tape_ptr
%50 = load i8, i8* %49
%51 = add i8 %50, 1
store i8* %49, i8 %51
%52 = load i8*, i8** %tape_ptr
%53 = ptrtoint i8* %52 to i64
%54 = add i64 %53, 1
%55 = inttoptr i64 %54 to i8*
store i8* %55, i8** %tape_ptr
%56 = load i8*, i8** %tape_ptr
%57 = load i8, i8* %56
%58 = add i8 %57, 1
store i8* %56, i8 %58
%59 = load i8*, i8** %tape_ptr
%60 = load i8, i8* %59
%61 = add i8 %60, 1
store i8* %59, i8 %61
%62 = load i8*, i8** %tape_ptr
%63 = load i8, i8* %62
%64 = add i8 %63, 1
store i8* %62, i8 %64
%65 = load i8*, i8** %tape_ptr
%66 = load i8, i8* %65
%67 = add i8 %66, 1
store i8* %65, i8 %67
%68 = load i8*, i8** %tape_ptr
%69 = load i8, i8* %68
%70 = add i8 %69, 1
store i8* %68, i8 %70
%71 = load i8*, i8** %tape_ptr
%72 = load i8, i8* %71
%73 = add i8 %72, 1
store i8* %71, i8 %73
%74 = load i8*, i8** %tape_ptr
%75 = load i8, i8* %74
%76 = add i8 %75, 1
store i8* %74, i8 %76
br label %for9.body
for9.body:
%77 = load i8*, i8** %tape_ptr
%78 = load i8, i8* %77
%79 = icmp eq i8 %78, 0
br i1 %79, label %for11.end, label %for10.inner
for10.inner:
%80 = load i8*, i8** %tape_ptr
%81 = ptrtoint i8* %80 to i64
%82 = sub i64 %81, 1
%83 = inttoptr i64 %82 to i8*
store i8* %83, i8** %tape_ptr
%84 = load i8*, i8** %tape_ptr
%85 = load i8, i8* %84
%86 = add i8 %85, 1
store i8* %84, i8 %86
%87 = load i8*, i8** %tape_ptr
%88 = load i8, i8* %87
%89 = add i8 %88, 1
store i8* %87, i8 %89
%90 = load i8*, i8** %tape_ptr
%91 = load i8, i8* %90
%92 = add i8 %91, 1
store i8* %90, i8 %92
%93 = load i8*, i8** %tape_ptr
%94 = load i8, i8* %93
%95 = add i8 %94, 1
store i8* %93, i8 %95
%96 = load i8*, i8** %tape_ptr
%97 = ptrtoint i8* %96 to i64
%98 = add i64 %97, 1
%99 = inttoptr i64 %98 to i8*
store i8* %99, i8** %tape_ptr
%100 = load i8*, i8** %tape_ptr
%101 = ptrtoint i8* %100 to i64
%102 = add i64 %101, 1
%103 = inttoptr i64 %102 to i8*
store i8* %103, i8** %tape_ptr
%104 = load i8*, i8** %tape_ptr
%105 = load i8, i8* %104
%106 = add i8 %105, 1
store i8* %104, i8 %106
%107 = load i8*, i8** %tape_ptr
%108 = load i8, i8* %107
%109 = add i8 %108, 1
store i8* %107, i8 %109
%110 = load i8*, i8** %tape_ptr
%111 = ptrtoint i8* %110 to i64
%112 = sub i64 %111, 1
%113 = inttoptr i64 %112 to i8*
store i8* %113, i8** %tape_ptr
%114 = load i8*, i8** %tape_ptr
%115 = load i8, i8* %114
%116 = sub i8 %115, 1
store i8* %114, i8 %116
br label %for9.body
for11.end:
%117 = load i8*, i8** %tape_ptr
%118 = load i8, i8* %117
%119 = add i8 %118, 1
store i8* %117, i8 %119
%120 = load i8*, i8** %tape_ptr
%121 = load i8, i8* %120
%122 = add i8 %121, 1
store i8* %120, i8 %122
%123 = load i8*, i8** %tape_ptr
%124 = ptrtoint i8* %123 to i64
%125 = add i64 %124, 1
%126 = inttoptr i64 %125 to i8*
store i8* %126, i8** %tape_ptr
%127 = load i8*, i8** %tape_ptr
%128 = ptrtoint i8* %127 to i64
%129 = add i64 %128, 1
%130 = inttoptr i64 %129 to i8*
store i8* %130, i8** %tape_ptr
%131 = load i8*, i8** %tape_ptr
%132 = load i8, i8* %131
%133 = add i8 %132, 1
store i8* %131, i8 %133
%134 = load i8*, i8** %tape_ptr
%135 = ptrtoint i8* %134 to i64
%136 = add i64 %135, 1
%137 = inttoptr i64 %136 to i8*
store i8* %137, i8** %tape_ptr
%138 = load i8*, i8** %tape_ptr
%139 = load i8, i8* %138
%140 = add i8 %139, 1
store i8* %138, i8 %140
%141 = load i8*, i8** %tape_ptr
%142 = ptrtoint i8* %141 to i64
%143 = add i64 %142, 1
%144 = inttoptr i64 %143 to i8*
store i8* %144, i8** %tape_ptr
%145 = load i8*, i8** %tape_ptr
%146 = load i8, i8* %145
%147 = add i8 %146, 1
store i8* %145, i8 %147
%148 = load i8*, i8** %tape_ptr
%149 = load i8, i8* %148
%150 = add i8 %149, 1
store i8* %148, i8 %150
%151 = load i8*, i8** %tape_ptr
%152 = load i8, i8* %151
%153 = add i8 %152, 1
store i8* %151, i8 %153
%154 = load i8*, i8** %tape_ptr
%155 = load i8, i8* %154
%156 = add i8 %155, 1
store i8* %154, i8 %156
%157 = load i8*, i8** %tape_ptr
%158 = load i8, i8* %157
%159 = add i8 %158, 1
store i8* %157, i8 %159
br label %for12.body
for12.body:
%160 = load i8*, i8** %tape_ptr
%161 = load i8, i8* %160
%162 = icmp eq i8 %161, 0
br i1 %162, label %for14.end, label %for13.inner
for13.inner:
%163 = load i8*, i8** %tape_ptr
%164 = ptrtoint i8* %163 to i64
%165 = add i64 %164, 1
%166 = inttoptr i64 %165 to i8*
store i8* %166, i8** %tape_ptr
%167 = load i8*, i8** %tape_ptr
%168 = load i8, i8* %167
%169 = add i8 %168, 1
store i8* %167, i8 %169
%170 = load i8*, i8** %tape_ptr
%171 = load i8, i8* %170
%172 = add i8 %171, 1
store i8* %170, i8 %172
%173 = load i8*, i8** %tape_ptr
%174 = ptrtoint i8* %173 to i64
%175 = add i64 %174, 1
%176 = inttoptr i64 %175 to i8*
store i8* %176, i8** %tape_ptr
%177 = load i8*, i8** %tape_ptr
%178 = load i8, i8* %177
%179 = add i8 %178, 1
store i8* %177, i8 %179
%180 = load i8*, i8** %tape_ptr
%181 = load i8, i8* %180
%182 = add i8 %181, 1
store i8* %180, i8 %182
%183 = load i8*, i8** %tape_ptr
%184 = load i8, i8* %183
%185 = add i8 %184, 1
store i8* %183, i8 %185
%186 = load i8*, i8** %tape_ptr
%187 = load i8, i8* %186
%188 = add i8 %187, 1
store i8* %186, i8 %188
%189 = load i8*, i8** %tape_ptr
%190 = load i8, i8* %189
%191 = add i8 %190, 1
store i8* %189, i8 %191
%192 = load i8*, i8** %tape_ptr
%193 = load i8, i8* %192
%194 = add i8 %193, 1
store i8* %192, i8 %194
%195 = load i8*, i8** %tape_ptr
%196 = ptrtoint i8* %195 to i64
%197 = sub i64 %196, 1
%198 = inttoptr i64 %197 to i8*
store i8* %198, i8** %tape_ptr
%199 = load i8*, i8** %tape_ptr
%200 = ptrtoint i8* %199 to i64
%201 = sub i64 %200, 1
%202 = inttoptr i64 %201 to i8*
store i8* %202, i8** %tape_ptr
%203 = load i8*, i8** %tape_ptr
%204 = load i8, i8* %203
%205 = sub i8 %204, 1
store i8* %203, i8 %205
br label %for12.body
for14.end:
%206 = load i8*, i8** %tape_ptr
%207 = load i8, i8* %206
%208 = add i8 %207, 1
store i8* %206, i8 %208
%209 = load i8*, i8** %tape_ptr
%210 = ptrtoint i8* %209 to i64
%211 = add i64 %210, 1
%212 = inttoptr i64 %211 to i8*
store i8* %212, i8** %tape_ptr
%213 = load i8*, i8** %tape_ptr
%214 = ptrtoint i8* %213 to i64
%215 = add i64 %214, 1
%216 = inttoptr i64 %215 to i8*
store i8* %216, i8** %tape_ptr
%217 = load i8*, i8** %tape_ptr
%218 = ptrtoint i8* %217 to i64
%219 = add i64 %218, 1
%220 = inttoptr i64 %219 to i8*
store i8* %220, i8** %tape_ptr
%221 = load i8*, i8** %tape_ptr
%222 = call i8 @getchar()
store i8* %221, i8 %222
%223 = load i8*, i8** %tape_ptr
%224 = ptrtoint i8* %223 to i64
%225 = sub i64 %224, 1
%226 = inttoptr i64 %225 to i8*
store i8* %226, i8** %tape_ptr
%227 = load i8*, i8** %tape_ptr
%228 = load i8, i8* %227
%229 = add i8 %228, 1
store i8* %227, i8 %229
%230 = load i8*, i8** %tape_ptr
%231 = load i8, i8* %230
%232 = add i8 %231, 1
store i8* %230, i8 %232
br label %for15.body
for15.body:
%233 = load i8*, i8** %tape_ptr
%234 = load i8, i8* %233
%235 = icmp eq i8 %234, 0
br i1 %235, label %for17.end, label %for16.inner
for16.inner:
br label %for18.body
for18.body:
%236 = load i8*, i8** %tape_ptr
%237 = load i8, i8* %236
%238 = icmp eq i8 %237, 0
br i1 %238, label %for20.end, label %for19.inner
for19.inner:
%239 = load i8*, i8** %tape_ptr
%240 = ptrtoint i8* %239 to i64
%241 = add i64 %240, 1
%242 = inttoptr i64 %241 to i8*
store i8* %242, i8** %tape_ptr
br label %for21.body
for21.body:
%243 = load i8*, i8** %tape_ptr
%244 = load i8, i8* %243
%245 = icmp eq i8 %244, 0
br i1 %245, label %for23.end, label %for22.inner
for22.inner:
%246 = load i8*, i8** %tape_ptr
%247 = load i8, i8* %246
%248 = sub i8 %247, 1
store i8* %246, i8 %248
%249 = load i8*, i8** %tape_ptr
%250 = ptrtoint i8* %249 to i64
%251 = add i64 %250, 1
%252 = inttoptr i64 %251 to i8*
store i8* %252, i8** %tape_ptr
%253 = load i8*, i8** %tape_ptr
%254 = ptrtoint i8* %253 to i64
%255 = add i64 %254, 1
%256 = inttoptr i64 %255 to i8*
store i8* %256, i8** %tape_ptr
br label %for21.body
for23.end:
%257 = load i8*, i8** %tape_ptr
%258 = ptrtoint i8* %257 to i64
%259 = sub i64 %258, 1
%260 = inttoptr i64 %259 to i8*
store i8* %260, i8** %tape_ptr
br label %for24.body
for24.body:
%261 = load i8*, i8** %tape_ptr
%262 = load i8, i8* %261
%263 = icmp eq i8 %262, 0
br i1 %263, label %for26.end, label %for25.inner
for25.inner:
%264 = load i8*, i8** %tape_ptr
%265 = ptrtoint i8* %264 to i64
%266 = add i64 %265, 1
%267 = inttoptr i64 %266 to i8*
store i8* %267, i8** %tape_ptr
%268 = load i8*, i8** %tape_ptr
%269 = ptrtoint i8* %268 to i64
%270 = add i64 %269, 1
%271 = inttoptr i64 %270 to i8*
store i8* %271, i8** %tape_ptr
br label %for24.body
for26.end:
%272 = load i8*, i8** %tape_ptr
%273 = ptrtoint i8* %272 to i64
%274 = sub i64 %273, 1
%275 = inttoptr i64 %274 to i8*
store i8* %275, i8** %tape_ptr
%276 = load i8*, i8** %tape_ptr
%277 = ptrtoint i8* %276 to i64
%278 = sub i64 %277, 1
%279 = inttoptr i64 %278 to i8*
store i8* %279, i8** %tape_ptr
%280 = load i8*, i8** %tape_ptr
%281 = load i8, i8* %280
%282 = sub i8 %281, 1
store i8* %280, i8 %282
br label %for18.body
for20.end:
%283 = load i8*, i8** %tape_ptr
%284 = ptrtoint i8* %283 to i64
%285 = sub i64 %284, 1
%286 = inttoptr i64 %285 to i8*
store i8* %286, i8** %tape_ptr
br label %for27.body
for27.body:
%287 = load i8*, i8** %tape_ptr
%288 = load i8, i8* %287
%289 = icmp eq i8 %288, 0
br i1 %289, label %for29.end, label %for28.inner
for28.inner:
%290 = load i8*, i8** %tape_ptr
%291 = ptrtoint i8* %290 to i64
%292 = sub i64 %291, 1
%293 = inttoptr i64 %292 to i8*
store i8* %293, i8** %tape_ptr
br label %for27.body
for29.end:
%294 = load i8*, i8** %tape_ptr
%295 = ptrtoint i8* %294 to i64
%296 = sub i64 %295, 1
%297 = inttoptr i64 %296 to i8*
store i8* %297, i8** %tape_ptr
%298 = load i8*, i8** %tape_ptr
%299 = load i8, i8* %298
%300 = add i8 %299, 1
store i8* %298, i8 %300
%301 = load i8*, i8** %tape_ptr
%302 = ptrtoint i8* %301 to i64
%303 = add i64 %302, 1
%304 = inttoptr i64 %303 to i8*
store i8* %304, i8** %tape_ptr
%305 = load i8*, i8** %tape_ptr
%306 = ptrtoint i8* %305 to i64
%307 = add i64 %306, 1
%308 = inttoptr i64 %307 to i8*
store i8* %308, i8** %tape_ptr
br label %for30.body
for30.body:
%309 = load i8*, i8** %tape_ptr
%310 = load i8, i8* %309
%311 = icmp eq i8 %310, 0
br i1 %311, label %for32.end, label %for31.inner
for31.inner:
%312 = load i8*, i8** %tape_ptr
%313 = ptrtoint i8* %312 to i64
%314 = add i64 %313, 1
%315 = inttoptr i64 %314 to i8*
store i8* %315, i8** %tape_ptr
br label %for30.body
for32.end:
%316 = load i8*, i8** %tape_ptr
%317 = ptrtoint i8* %316 to i64
%318 = add i64 %317, 1
%319 = inttoptr i64 %318 to i8*
store i8* %319, i8** %tape_ptr
br label %for33.body
for33.body:
%320 = load i8*, i8** %tape_ptr
%321 = load i8, i8* %320
%322 = icmp eq i8 %321, 0
br i1 %322, label %for35.end, label %for34.inner
for34.inner:
%323 = load i8*, i8** %tape_ptr
%324 = ptrtoint i8* %323 to i64
%325 = sub i64 %324, 1
%326 = inttoptr i64 %325 to i8*
store i8* %326, i8** %tape_ptr
%327 = load i8*, i8** %tape_ptr
%328 = load i8, i8* %327
%329 = add i8 %328, 1
store i8* %327, i8 %329
%330 = load i8*, i8** %tape_ptr
%331 = ptrtoint i8* %330 to i64
%332 = add i64 %331, 1
%333 = inttoptr i64 %332 to i8*
store i8* %333, i8** %tape_ptr
%334 = load i8*, i8** %tape_ptr
%335 = load i8, i8* %334
%336 = sub i8 %335, 1
store i8* %334, i8 %336
br label %for36.body
for36.body:
%337 = load i8*, i8** %tape_ptr
%338 = load i8, i8* %337
%339 = icmp eq i8 %338, 0
br i1 %339, label %for38.end, label %for37.inner
for37.inner:
br label %for39.body
for39.body:
%340 = load i8*, i8** %tape_ptr
%341 = load i8, i8* %340
%342 = icmp eq i8 %341, 0
br i1 %342, label %for41.end, label %for40.inner
for40.inner:
%343 = load i8*, i8** %tape_ptr
%344 = ptrtoint i8* %343 to i64
%345 = sub i64 %344, 1
%346 = inttoptr i64 %345 to i8*
store i8* %346, i8** %tape_ptr
%347 = load i8*, i8** %tape_ptr
%348 = load i8, i8* %347
%349 = add i8 %348, 1
store i8* %347, i8 %349
%350 = load i8*, i8** %tape_ptr
%351 = ptrtoint i8* %350 to i64
%352 = add i64 %351, 1
%353 = inttoptr i64 %352 to i8*
store i8* %353, i8** %tape_ptr
%354 = load i8*, i8** %tape_ptr
%355 = load i8, i8* %354
%356 = sub i8 %355, 1
store i8* %354, i8 %356
br label %for39.body
for41.end:
%357 = load i8*, i8** %tape_ptr
%358 = ptrtoint i8* %357 to i64
%359 = add i64 %358, 1
%360 = inttoptr i64 %359 to i8*
store i8* %360, i8** %tape_ptr
br label %for36.body
for38.end:
%361 = load i8*, i8** %tape_ptr
%362 = ptrtoint i8* %361 to i64
%363 = sub i64 %362, 1
%364 = inttoptr i64 %363 to i8*
store i8* %364, i8** %tape_ptr
br label %for42.body
for42.body:
%365 = load i8*, i8** %tape_ptr
%366 = load i8, i8* %365
%367 = icmp eq i8 %366, 0
br i1 %367, label %for44.end, label %for43.inner
for43.inner:
br label %for45.body
for45.body:
%368 = load i8*, i8** %tape_ptr
%369 = load i8, i8* %368
%370 = icmp eq i8 %369, 0
br i1 %370, label %for47.end, label %for46.inner
for46.inner:
br label %for48.body
for48.body:
%371 = load i8*, i8** %tape_ptr
%372 = load i8, i8* %371
%373 = icmp eq i8 %372, 0
br i1 %373, label %for50.end, label %for49.inner
for49.inner:
%374 = load i8*, i8** %tape_ptr
%375 = load i8, i8* %374
%376 = sub i8 %375, 1
store i8* %374, i8 %376
br label %for48.body
for50.end:
%377 = load i8*, i8** %tape_ptr
%378 = ptrtoint i8* %377 to i64
%379 = sub i64 %378, 1
%380 = inttoptr i64 %379 to i8*
store i8* %380, i8** %tape_ptr
br label %for45.body
for47.end:
%381 = load i8*, i8** %tape_ptr
%382 = load i8, i8* %381
%383 = add i8 %382, 1
store i8* %381, i8 %383
%384 = load i8*, i8** %tape_ptr
%385 = load i8, i8* %384
%386 = add i8 %385, 1
store i8* %384, i8 %386
%387 = load i8*, i8** %tape_ptr
%388 = ptrtoint i8* %387 to i64
%389 = sub i64 %388, 1
%390 = inttoptr i64 %389 to i8*
store i8* %390, i8** %tape_ptr
%391 = load i8*, i8** %tape_ptr
%392 = load i8, i8* %391
%393 = sub i8 %392, 1
store i8* %391, i8 %393
br label %for51.body
for51.body:
%394 = load i8*, i8** %tape_ptr
%395 = load i8, i8* %394
%396 = icmp eq i8 %395, 0
br i1 %396, label %for53.end, label %for52.inner
for52.inner:
%397 = load i8*, i8** %tape_ptr
%398 = ptrtoint i8* %397 to i64
%399 = sub i64 %398, 1
%400 = inttoptr i64 %399 to i8*
store i8* %400, i8** %tape_ptr
%401 = load i8*, i8** %tape_ptr
%402 = load i8, i8* %401
%403 = add i8 %402, 1
store i8* %401, i8 %403
%404 = load i8*, i8** %tape_ptr
%405 = load i8, i8* %404
%406 = add i8 %405, 1
store i8* %404, i8 %406
%407 = load i8*, i8** %tape_ptr
%408 = load i8, i8* %407
%409 = add i8 %408, 1
store i8* %407, i8 %409
%410 = load i8*, i8** %tape_ptr
%411 = load i8, i8* %410
%412 = add i8 %411, 1
store i8* %410, i8 %412
%413 = load i8*, i8** %tape_ptr
%414 = load i8, i8* %413
%415 = add i8 %414, 1
store i8* %413, i8 %415
%416 = load i8*, i8** %tape_ptr
%417 = load i8, i8* %416
%418 = add i8 %417, 1
store i8* %416, i8 %418
%419 = load i8*, i8** %tape_ptr
%420 = load i8, i8* %419
%421 = add i8 %420, 1
store i8* %419, i8 %421
%422 = load i8*, i8** %tape_ptr
%423 = load i8, i8* %422
%424 = add i8 %423, 1
store i8* %422, i8 %424
%425 = load i8*, i8** %tape_ptr
%426 = load i8, i8* %425
%427 = add i8 %426, 1
store i8* %425, i8 %427
%428 = load i8*, i8** %tape_ptr
%429 = ptrtoint i8* %428 to i64
%430 = add i64 %429, 1
%431 = inttoptr i64 %430 to i8*
store i8* %431, i8** %tape_ptr
br label %for54.body
for54.body:
%432 = load i8*, i8** %tape_ptr
%433 = load i8, i8* %432
%434 = icmp eq i8 %433, 0
br i1 %434, label %for56.end, label %for55.inner
for55.inner:
%435 = load i8*, i8** %tape_ptr
%436 = ptrtoint i8* %435 to i64
%437 = sub i64 %436, 1
%438 = inttoptr i64 %437 to i8*
store i8* %438, i8** %tape_ptr
%439 = load i8*, i8** %tape_ptr
%440 = load i8, i8* %439
%441 = sub i8 %440, 1
store i8* %439, i8 %441
%442 = load i8*, i8** %tape_ptr
%443 = ptrtoint i8* %442 to i64
%444 = add i64 %443, 1
%445 = inttoptr i64 %444 to i8*
store i8* %445, i8** %tape_ptr
%446 = load i8*, i8** %tape_ptr
%447 = load i8, i8* %446
%448 = sub i8 %447, 1
store i8* %446, i8 %448
br label %for54.body
for56.end:
%449 = load i8*, i8** %tape_ptr
%450 = ptrtoint i8* %449 to i64
%451 = add i64 %450, 1
%452 = inttoptr i64 %451 to i8*
store i8* %452, i8** %tape_ptr
%453 = load i8*, i8** %tape_ptr
%454 = ptrtoint i8* %453 to i64
%455 = add i64 %454, 1
%456 = inttoptr i64 %455 to i8*
store i8* %456, i8** %tape_ptr
br label %for51.body
for53.end:
%457 = load i8*, i8** %tape_ptr
%458 = ptrtoint i8* %457 to i64
%459 = add i64 %458, 1
%460 = inttoptr i64 %459 to i8*
store i8* %460, i8** %tape_ptr
%461 = load i8*, i8** %tape_ptr
%462 = ptrtoint i8* %461 to i64
%463 = add i64 %462, 1
%464 = inttoptr i64 %463 to i8*
store i8* %464, i8** %tape_ptr
br label %for42.body
for44.end:
br label %for33.body
for35.end:
%465 = load i8*, i8** %tape_ptr
%466 = ptrtoint i8* %465 to i64
%467 = sub i64 %466, 1
%468 = inttoptr i64 %467 to i8*
store i8* %468, i8** %tape_ptr
%469 = load i8*, i8** %tape_ptr
%470 = ptrtoint i8* %469 to i64
%471 = sub i64 %470, 1
%472 = inttoptr i64 %471 to i8*
store i8* %472, i8** %tape_ptr
br label %for15.body
for17.end:
%473 = load i8*, i8** %tape_ptr
%474 = ptrtoint i8* %473 to i64
%475 = sub i64 %474, 1
%476 = inttoptr i64 %475 to i8*
store i8* %476, i8** %tape_ptr
br label %for0.body
for2.end:
%477 = load i8*, i8** %tape_ptr
%478 = ptrtoint i8* %477 to i64
%479 = sub i64 %478, 1
%480 = inttoptr i64 %479 to i8*
store i8* %480, i8** %tape_ptr
br label %for57.body
for57.body:
%481 = load i8*, i8** %tape_ptr
%482 = load i8, i8* %481
%483 = icmp eq i8 %482, 0
br i1 %483, label %for59.end, label %for58.inner
for58.inner:
br label %for60.body
for60.body:
%484 = load i8*, i8** %tape_ptr
%485 = load i8, i8* %484
%486 = icmp eq i8 %485, 0
br i1 %486, label %for62.end, label %for61.inner
for61.inner:
%487 = load i8*, i8** %tape_ptr
%488 = ptrtoint i8* %487 to i64
%489 = sub i64 %488, 1
%490 = inttoptr i64 %489 to i8*
store i8* %490, i8** %tape_ptr
br label %for60.body
for62.end:
%491 = load i8*, i8** %tape_ptr
%492 = ptrtoint i8* %491 to i64
%493 = add i64 %492, 1
%494 = inttoptr i64 %493 to i8*
store i8* %494, i8** %tape_ptr
br label %for63.body
for63.body:
%495 = load i8*, i8** %tape_ptr
%496 = load i8, i8* %495
%497 = icmp eq i8 %496, 0
br i1 %497, label %for65.end, label %for64.inner
for64.inner:
br label %for66.body
for66.body:
%498 = load i8*, i8** %tape_ptr
%499 = load i8, i8* %498
%500 = icmp eq i8 %499, 0
br i1 %500, label %for68.end, label %for67.inner
for67.inner:
%501 = load i8*, i8** %tape_ptr
%502 = ptrtoint i8* %501 to i64
%503 = add i64 %502, 1
%504 = inttoptr i64 %503 to i8*
store i8* %504, i8** %tape_ptr
br label %for66.body
for68.end:
%505 = load i8*, i8** %tape_ptr
%506 = ptrtoint i8* %505 to i64
%507 = add i64 %506, 1
%508 = inttoptr i64 %507 to i8*
store i8* %508, i8** %tape_ptr
%509 = load i8*, i8** %tape_ptr
%510 = ptrtoint i8* %509 to i64
%511 = add i64 %510, 1
%512 = inttoptr i64 %511 to i8*
store i8* %512, i8** %tape_ptr
br label %for69.body
for69.body:
%513 = load i8*, i8** %tape_ptr
%514 = load i8, i8* %513
%515 = icmp eq i8 %514, 0
br i1 %515, label %for71.end, label %for70.inner
for70.inner:
%516 = load i8*, i8** %tape_ptr
%517 = ptrtoint i8* %516 to i64
%518 = add i64 %517, 1
%519 = inttoptr i64 %518 to i8*
store i8* %519, i8** %tape_ptr
%520 = load i8*, i8** %tape_ptr
%521 = ptrtoint i8* %520 to i64
%522 = add i64 %521, 1
%523 = inttoptr i64 %522 to i8*
store i8* %523, i8** %tape_ptr
br label %for69.body
for71.end:
%524 = load i8*, i8** %tape_ptr
%525 = load i8, i8* %524
%526 = add i8 %525, 1
store i8* %524, i8 %526
br label %for72.body
for72.body:
%527 = load i8*, i8** %tape_ptr
%528 = load i8, i8* %527
%529 = icmp eq i8 %528, 0
br i1 %529, label %for74.end, label %for73.inner
for73.inner:
%530 = load i8*, i8** %tape_ptr
%531 = ptrtoint i8* %530 to i64
%532 = sub i64 %531, 1
%533 = inttoptr i64 %532 to i8*
store i8* %533, i8** %tape_ptr
%534 = load i8*, i8** %tape_ptr
%535 = ptrtoint i8* %534 to i64
%536 = sub i64 %535, 1
%537 = inttoptr i64 %536 to i8*
store i8* %537, i8** %tape_ptr
br label %for72.body
for74.end:
%538 = load i8*, i8** %tape_ptr
%539 = ptrtoint i8* %538 to i64
%540 = sub i64 %539, 1
%541 = inttoptr i64 %540 to i8*
store i8* %541, i8** %tape_ptr
br label %for75.body
for75.body:
%542 = load i8*, i8** %tape_ptr
%543 = load i8, i8* %542
%544 = icmp eq i8 %543, 0
br i1 %544, label %for77.end, label %for76.inner
for76.inner:
%545 = load i8*, i8** %tape_ptr
%546 = ptrtoint i8* %545 to i64
%547 = sub i64 %546, 1
%548 = inttoptr i64 %547 to i8*
store i8* %548, i8** %tape_ptr
br label %for75.body
for77.end:
%549 = load i8*, i8** %tape_ptr
%550 = ptrtoint i8* %549 to i64
%551 = sub i64 %550, 1
%552 = inttoptr i64 %551 to i8*
store i8* %552, i8** %tape_ptr
%553 = load i8*, i8** %tape_ptr
%554 = load i8, i8* %553
%555 = add i8 %554, 1
store i8* %553, i8 %555
%556 = load i8*, i8** %tape_ptr
%557 = ptrtoint i8* %556 to i64
%558 = add i64 %557, 1
%559 = inttoptr i64 %558 to i8*
store i8* %559, i8** %tape_ptr
%560 = load i8*, i8** %tape_ptr
%561 = ptrtoint i8* %560 to i64
%562 = add i64 %561, 1
%563 = inttoptr i64 %562 to i8*
store i8* %563, i8** %tape_ptr
%564 = load i8*, i8** %tape_ptr
%565 = load i8, i8* %564
%566 = sub i8 %565, 1
store i8* %564, i8 %566
br label %for63.body
for65.end:
%567 = load i8*, i8** %tape_ptr
%568 = ptrtoint i8* %567 to i64
%569 = add i64 %568, 1
%570 = inttoptr i64 %569 to i8*
store i8* %570, i8** %tape_ptr
br label %for78.body
for78.body:
%571 = load i8*, i8** %tape_ptr
%572 = load i8, i8* %571
%573 = icmp eq i8 %572, 0
br i1 %573, label %for80.end, label %for79.inner
for79.inner:
%574 = load i8*, i8** %tape_ptr
%575 = ptrtoint i8* %574 to i64
%576 = add i64 %575, 1
%577 = inttoptr i64 %576 to i8*
store i8* %577, i8** %tape_ptr
br label %for78.body
for80.end:
%578 = load i8*, i8** %tape_ptr
%579 = load i8, i8* %578
%580 = add i8 %579, 1
store i8* %578, i8 %580
br label %for81.body
for81.body:
%581 = load i8*, i8** %tape_ptr
%582 = load i8, i8* %581
%583 = icmp eq i8 %582, 0
br i1 %583, label %for83.end, label %for82.inner
for82.inner:
%584 = load i8*, i8** %tape_ptr
%585 = load i8, i8* %584
%586 = sub i8 %585, 1
store i8* %584, i8 %586
%587 = load i8*, i8** %tape_ptr
%588 = ptrtoint i8* %587 to i64
%589 = add i64 %588, 1
%590 = inttoptr i64 %589 to i8*
store i8* %590, i8** %tape_ptr
%591 = load i8*, i8** %tape_ptr
%592 = ptrtoint i8* %591 to i64
%593 = add i64 %592, 1
%594 = inttoptr i64 %593 to i8*
store i8* %594, i8** %tape_ptr
br label %for81.body
for83.end:
%595 = load i8*, i8** %tape_ptr
%596 = ptrtoint i8* %595 to i64
%597 = sub i64 %596, 1
%598 = inttoptr i64 %597 to i8*
store i8* %598, i8** %tape_ptr
%599 = load i8*, i8** %tape_ptr
%600 = ptrtoint i8* %599 to i64
%601 = sub i64 %600, 1
%602 = inttoptr i64 %601 to i8*
store i8* %602, i8** %tape_ptr
%603 = load i8*, i8** %tape_ptr
%604 = ptrtoint i8* %603 to i64
%605 = sub i64 %604, 1
%606 = inttoptr i64 %605 to i8*
store i8* %606, i8** %tape_ptr
%607 = load i8*, i8** %tape_ptr
%608 = ptrtoint i8* %607 to i64
%609 = sub i64 %608, 1
%610 = inttoptr i64 %609 to i8*
store i8* %610, i8** %tape_ptr
br label %for84.body
for84.body:
%611 = load i8*, i8** %tape_ptr
%612 = load i8, i8* %611
%613 = icmp eq i8 %612, 0
br i1 %613, label %for86.end, label %for85.inner
for85.inner:
br label %for87.body
for87.body:
%614 = load i8*, i8** %tape_ptr
%615 = load i8, i8* %614
%616 = icmp eq i8 %615, 0
br i1 %616, label %for89.end, label %for88.inner
for88.inner:
%617 = load i8*, i8** %tape_ptr
%618 = ptrtoint i8* %617 to i64
%619 = sub i64 %618, 1
%620 = inttoptr i64 %619 to i8*
store i8* %620, i8** %tape_ptr
%621 = load i8*, i8** %tape_ptr
%622 = ptrtoint i8* %621 to i64
%623 = sub i64 %622, 1
%624 = inttoptr i64 %623 to i8*
store i8* %624, i8** %tape_ptr
br label %for87.body
for89.end:
%625 = load i8*, i8** %tape_ptr
%626 = ptrtoint i8* %625 to i64
%627 = sub i64 %626, 1
%628 = inttoptr i64 %627 to i8*
store i8* %628, i8** %tape_ptr
br label %for90.body
for90.body:
%629 = load i8*, i8** %tape_ptr
%630 = load i8, i8* %629
%631 = icmp eq i8 %630, 0
br i1 %631, label %for92.end, label %for91.inner
for91.inner:
%632 = load i8*, i8** %tape_ptr
%633 = ptrtoint i8* %632 to i64
%634 = sub i64 %633, 1
%635 = inttoptr i64 %634 to i8*
store i8* %635, i8** %tape_ptr
br label %for90.body
for92.end:
%636 = load i8*, i8** %tape_ptr
%637 = load i8, i8* %636
%638 = add i8 %637, 1
store i8* %636, i8 %638
%639 = load i8*, i8** %tape_ptr
%640 = ptrtoint i8* %639 to i64
%641 = sub i64 %640, 1
%642 = inttoptr i64 %641 to i8*
store i8* %642, i8** %tape_ptr
%643 = load i8*, i8** %tape_ptr
%644 = ptrtoint i8* %643 to i64
%645 = sub i64 %644, 1
%646 = inttoptr i64 %645 to i8*
store i8* %646, i8** %tape_ptr
br label %for93.body
for93.body:
%647 = load i8*, i8** %tape_ptr
%648 = load i8, i8* %647
%649 = icmp eq i8 %648, 0
br i1 %649, label %for95.end, label %for94.inner
for94.inner:
%650 = load i8*, i8** %tape_ptr
%651 = load i8, i8* %650
%652 = add i8 %651, 1
store i8* %650, i8 %652
%653 = load i8*, i8** %tape_ptr
%654 = ptrtoint i8* %653 to i64
%655 = add i64 %654, 1
%656 = inttoptr i64 %655 to i8*
store i8* %656, i8** %tape_ptr
%657 = load i8*, i8** %tape_ptr
%658 = load i8, i8* %657
%659 = add i8 %658, 1
store i8* %657, i8 %659
%660 = load i8*, i8** %tape_ptr
%661 = ptrtoint i8* %660 to i64
%662 = sub i64 %661, 1
%663 = inttoptr i64 %662 to i8*
store i8* %663, i8** %tape_ptr
%664 = load i8*, i8** %tape_ptr
%665 = ptrtoint i8* %664 to i64
%666 = sub i64 %665, 1
%667 = inttoptr i64 %666 to i8*
store i8* %667, i8** %tape_ptr
%668 = load i8*, i8** %tape_ptr
%669 = load i8, i8* %668
%670 = sub i8 %669, 1
store i8* %668, i8 %670
br label %for96.body
for96.body:
%671 = load i8*, i8** %tape_ptr
%672 = load i8, i8* %671
%673 = icmp eq i8 %672, 0
br i1 %673, label %for98.end, label %for97.inner
for97.inner:
%674 = load i8*, i8** %tape_ptr
%675 = ptrtoint i8* %674 to i64
%676 = add i64 %675, 1
%677 = inttoptr i64 %676 to i8*
store i8* %677, i8** %tape_ptr
%678 = load i8*, i8** %tape_ptr
%679 = load i8, i8* %678
%680 = sub i8 %679, 1
store i8* %678, i8 %680
%681 = load i8*, i8** %tape_ptr
%682 = load i8, i8* %681
%683 = sub i8 %682, 1
store i8* %681, i8 %683
%684 = load i8*, i8** %tape_ptr
%685 = ptrtoint i8* %684 to i64
%686 = add i64 %685, 1
%687 = inttoptr i64 %686 to i8*
store i8* %687, i8** %tape_ptr
%688 = load i8*, i8** %tape_ptr
%689 = load i8, i8* %688
%690 = add i8 %689, 1
store i8* %688, i8 %690
%691 = load i8*, i8** %tape_ptr
%692 = ptrtoint i8* %691 to i64
%693 = sub i64 %692, 1
%694 = inttoptr i64 %693 to i8*
store i8* %694, i8** %tape_ptr
%695 = load i8*, i8** %tape_ptr
%696 = ptrtoint i8* %695 to i64
%697 = sub i64 %696, 1
%698 = inttoptr i64 %697 to i8*
store i8* %698, i8** %tape_ptr
%699 = load i8*, i8** %tape_ptr
%700 = load i8, i8* %699
%701 = sub i8 %700, 1
store i8* %699, i8 %701
br label %for99.body
for99.body:
%702 = load i8*, i8** %tape_ptr
%703 = load i8, i8* %702
%704 = icmp eq i8 %703, 0
br i1 %704, label %for101.end, label %for100.inner
for100.inner:
%705 = load i8*, i8** %tape_ptr
%706 = ptrtoint i8* %705 to i64
%707 = add i64 %706, 1
%708 = inttoptr i64 %707 to i8*
store i8* %708, i8** %tape_ptr
%709 = load i8*, i8** %tape_ptr
%710 = load i8, i8* %709
%711 = add i8 %710, 1
store i8* %709, i8 %711
%712 = load i8*, i8** %tape_ptr
%713 = ptrtoint i8* %712 to i64
%714 = sub i64 %713, 1
%715 = inttoptr i64 %714 to i8*
store i8* %715, i8** %tape_ptr
br label %for102.body
for102.body:
%716 = load i8*, i8** %tape_ptr
%717 = load i8, i8* %716
%718 = icmp eq i8 %717, 0
br i1 %718, label %for104.end, label %for103.inner
for103.inner:
%719 = load i8*, i8** %tape_ptr
%720 = ptrtoint i8* %719 to i64
%721 = add i64 %720, 1
%722 = inttoptr i64 %721 to i8*
store i8* %722, i8** %tape_ptr
%723 = load i8*, i8** %tape_ptr
%724 = ptrtoint i8* %723 to i64
%725 = add i64 %724, 1
%726 = inttoptr i64 %725 to i8*
store i8* %726, i8** %tape_ptr
%727 = load i8*, i8** %tape_ptr
%728 = load i8, i8* %727
%729 = add i8 %728, 1
store i8* %727, i8 %729
%730 = load i8*, i8** %tape_ptr
%731 = ptrtoint i8* %730 to i64
%732 = sub i64 %731, 1
%733 = inttoptr i64 %732 to i8*
store i8* %733, i8** %tape_ptr
%734 = load i8*, i8** %tape_ptr
%735 = ptrtoint i8* %734 to i64
%736 = sub i64 %735, 1
%737 = inttoptr i64 %736 to i8*
store i8* %737, i8** %tape_ptr
%738 = load i8*, i8** %tape_ptr
%739 = load i8, i8* %738
%740 = sub i8 %739, 1
store i8* %738, i8 %740
br label %for102.body
for104.end:
br label %for99.body
for101.end:
br label %for96.body
for98.end:
%741 = load i8*, i8** %tape_ptr
%742 = ptrtoint i8* %741 to i64
%743 = add i64 %742, 1
%744 = inttoptr i64 %743 to i8*
store i8* %744, i8** %tape_ptr
br label %for105.body
for105.body:
%745 = load i8*, i8** %tape_ptr
%746 = load i8, i8* %745
%747 = icmp eq i8 %746, 0
br i1 %747, label %for107.end, label %for106.inner
for106.inner:
%748 = load i8*, i8** %tape_ptr
%749 = ptrtoint i8* %748 to i64
%750 = sub i64 %749, 1
%751 = inttoptr i64 %750 to i8*
store i8* %751, i8** %tape_ptr
%752 = load i8*, i8** %tape_ptr
%753 = load i8, i8* %752
%754 = add i8 %753, 1
store i8* %752, i8 %754
%755 = load i8*, i8** %tape_ptr
%756 = ptrtoint i8* %755 to i64
%757 = add i64 %756, 1
%758 = inttoptr i64 %757 to i8*
store i8* %758, i8** %tape_ptr
%759 = load i8*, i8** %tape_ptr
%760 = load i8, i8* %759
%761 = sub i8 %760, 1
store i8* %759, i8 %761
br label %for105.body
for107.end:
%762 = load i8*, i8** %tape_ptr
%763 = ptrtoint i8* %762 to i64
%764 = sub i64 %763, 1
%765 = inttoptr i64 %764 to i8*
store i8* %765, i8** %tape_ptr
br label %for93.body
for95.end:
%766 = load i8*, i8** %tape_ptr
%767 = load i8, i8* %766
%768 = add i8 %767, 1
store i8* %766, i8 %768
%769 = load i8*, i8** %tape_ptr
%770 = load i8, i8* %769
%771 = add i8 %770, 1
store i8* %769, i8 %771
%772 = load i8*, i8** %tape_ptr
%773 = ptrtoint i8* %772 to i64
%774 = add i64 %773, 1
%775 = inttoptr i64 %774 to i8*
store i8* %775, i8** %tape_ptr
%776 = load i8*, i8** %tape_ptr
%777 = ptrtoint i8* %776 to i64
%778 = add i64 %777, 1
%779 = inttoptr i64 %778 to i8*
store i8* %779, i8** %tape_ptr
%780 = load i8*, i8** %tape_ptr
%781 = load i8, i8* %780
%782 = sub i8 %781, 1
store i8* %780, i8 %782
%783 = load i8*, i8** %tape_ptr
%784 = load i8, i8* %783
%785 = sub i8 %784, 1
store i8* %783, i8 %785
%786 = load i8*, i8** %tape_ptr
%787 = ptrtoint i8* %786 to i64
%788 = add i64 %787, 1
%789 = inttoptr i64 %788 to i8*
store i8* %789, i8** %tape_ptr
br label %for108.body
for108.body:
%790 = load i8*, i8** %tape_ptr
%791 = load i8, i8* %790
%792 = icmp eq i8 %791, 0
br i1 %792, label %for110.end, label %for109.inner
for109.inner:
%793 = load i8*, i8** %tape_ptr
%794 = ptrtoint i8* %793 to i64
%795 = add i64 %794, 1
%796 = inttoptr i64 %795 to i8*
store i8* %796, i8** %tape_ptr
br label %for108.body
for110.end:
%797 = load i8*, i8** %tape_ptr
%798 = ptrtoint i8* %797 to i64
%799 = add i64 %798, 1
%800 = inttoptr i64 %799 to i8*
store i8* %800, i8** %tape_ptr
%801 = load i8*, i8** %tape_ptr
%802 = ptrtoint i8* %801 to i64
%803 = add i64 %802, 1
%804 = inttoptr i64 %803 to i8*
store i8* %804, i8** %tape_ptr
br label %for111.body
for111.body:
%805 = load i8*, i8** %tape_ptr
%806 = load i8, i8* %805
%807 = icmp eq i8 %806, 0
br i1 %807, label %for113.end, label %for112.inner
for112.inner:
%808 = load i8*, i8** %tape_ptr
%809 = ptrtoint i8* %808 to i64
%810 = add i64 %809, 1
%811 = inttoptr i64 %810 to i8*
store i8* %811, i8** %tape_ptr
%812 = load i8*, i8** %tape_ptr
%813 = ptrtoint i8* %812 to i64
%814 = add i64 %813, 1
%815 = inttoptr i64 %814 to i8*
store i8* %815, i8** %tape_ptr
br label %for111.body
for113.end:
br label %for84.body
for86.end:
%816 = load i8*, i8** %tape_ptr
%817 = ptrtoint i8* %816 to i64
%818 = sub i64 %817, 1
%819 = inttoptr i64 %818 to i8*
store i8* %819, i8** %tape_ptr
%820 = load i8*, i8** %tape_ptr
%821 = ptrtoint i8* %820 to i64
%822 = sub i64 %821, 1
%823 = inttoptr i64 %822 to i8*
store i8* %823, i8** %tape_ptr
br label %for114.body
for114.body:
%824 = load i8*, i8** %tape_ptr
%825 = load i8, i8* %824
%826 = icmp eq i8 %825, 0
br i1 %826, label %for116.end, label %for115.inner
for115.inner:
%827 = load i8*, i8** %tape_ptr
%828 = ptrtoint i8* %827 to i64
%829 = add i64 %828, 1
%830 = inttoptr i64 %829 to i8*
store i8* %830, i8** %tape_ptr
%831 = load i8*, i8** %tape_ptr
%832 = ptrtoint i8* %831 to i64
%833 = add i64 %832, 1
%834 = inttoptr i64 %833 to i8*
store i8* %834, i8** %tape_ptr
%835 = load i8*, i8** %tape_ptr
%836 = load i8, i8* %835
%837 = add i8 %836, 1
store i8* %835, i8 %837
%838 = load i8*, i8** %tape_ptr
%839 = ptrtoint i8* %838 to i64
%840 = sub i64 %839, 1
%841 = inttoptr i64 %840 to i8*
store i8* %841, i8** %tape_ptr
br label %for117.body
for117.body:
%842 = load i8*, i8** %tape_ptr
%843 = load i8, i8* %842
%844 = icmp eq i8 %843, 0
br i1 %844, label %for119.end, label %for118.inner
for118.inner:
br label %for120.body
for120.body:
%845 = load i8*, i8** %tape_ptr
%846 = load i8, i8* %845
%847 = icmp eq i8 %846, 0
br i1 %847, label %for122.end, label %for121.inner
for121.inner:
%848 = load i8*, i8** %tape_ptr
%849 = ptrtoint i8* %848 to i64
%850 = sub i64 %849, 1
%851 = inttoptr i64 %850 to i8*
store i8* %851, i8** %tape_ptr
br label %for120.body
for122.end:
%852 = load i8*, i8** %tape_ptr
%853 = ptrtoint i8* %852 to i64
%854 = sub i64 %853, 1
%855 = inttoptr i64 %854 to i8*
store i8* %855, i8** %tape_ptr
br label %for117.body
for119.end:
%856 = load i8*, i8** %tape_ptr
%857 = ptrtoint i8* %856 to i64
%858 = add i64 %857, 1
%859 = inttoptr i64 %858 to i8*
store i8* %859, i8** %tape_ptr
br label %for123.body
for123.body:
%860 = load i8*, i8** %tape_ptr
%861 = load i8, i8* %860
%862 = icmp eq i8 %861, 0
br i1 %862, label %for125.end, label %for124.inner
for124.inner:
br label %for126.body
for126.body:
%863 = load i8*, i8** %tape_ptr
%864 = load i8, i8* %863
%865 = icmp eq i8 %864, 0
br i1 %865, label %for128.end, label %for127.inner
for127.inner:
%866 = load i8*, i8** %tape_ptr
%867 = ptrtoint i8* %866 to i64
%868 = sub i64 %867, 1
%869 = inttoptr i64 %868 to i8*
store i8* %869, i8** %tape_ptr
%870 = load i8*, i8** %tape_ptr
%871 = ptrtoint i8* %870 to i64
%872 = sub i64 %871, 1
%873 = inttoptr i64 %872 to i8*
store i8* %873, i8** %tape_ptr
br label %for126.body
for128.end:
%874 = load i8*, i8** %tape_ptr
%875 = ptrtoint i8* %874 to i64
%876 = sub i64 %875, 1
%877 = inttoptr i64 %876 to i8*
store i8* %877, i8** %tape_ptr
br label %for129.body
for129.body:
%878 = load i8*, i8** %tape_ptr
%879 = load i8, i8* %878
%880 = icmp eq i8 %879, 0
br i1 %880, label %for131.end, label %for130.inner
for130.inner:
%881 = load i8*, i8** %tape_ptr
%882 = ptrtoint i8* %881 to i64
%883 = sub i64 %882, 1
%884 = inttoptr i64 %883 to i8*
store i8* %884, i8** %tape_ptr
br label %for129.body
for131.end:
%885 = load i8*, i8** %tape_ptr
%886 = load i8, i8* %885
%887 = add i8 %886, 1
store i8* %885, i8 %887
br label %for132.body
for132.body:
%888 = load i8*, i8** %tape_ptr
%889 = load i8, i8* %888
%890 = icmp eq i8 %889, 0
br i1 %890, label %for134.end, label %for133.inner
for133.inner:
%891 = load i8*, i8** %tape_ptr
%892 = load i8, i8* %891
%893 = sub i8 %892, 1
store i8* %891, i8 %893
%894 = load i8*, i8** %tape_ptr
%895 = ptrtoint i8* %894 to i64
%896 = sub i64 %895, 1
%897 = inttoptr i64 %896 to i8*
store i8* %897, i8** %tape_ptr
%898 = load i8*, i8** %tape_ptr
%899 = load i8, i8* %898
%900 = add i8 %899, 1
store i8* %898, i8 %900
%901 = load i8*, i8** %tape_ptr
%902 = ptrtoint i8* %901 to i64
%903 = add i64 %902, 1
%904 = inttoptr i64 %903 to i8*
store i8* %904, i8** %tape_ptr
%905 = load i8*, i8** %tape_ptr
%906 = ptrtoint i8* %905 to i64
%907 = add i64 %906, 1
%908 = inttoptr i64 %907 to i8*
store i8* %908, i8** %tape_ptr
%909 = load i8*, i8** %tape_ptr
%910 = load i8, i8* %909
%911 = sub i8 %910, 1
store i8* %909, i8 %911
br label %for135.body
for135.body:
%912 = load i8*, i8** %tape_ptr
%913 = load i8, i8* %912
%914 = icmp eq i8 %913, 0
br i1 %914, label %for137.end, label %for136.inner
for136.inner:
%915 = load i8*, i8** %tape_ptr
%916 = ptrtoint i8* %915 to i64
%917 = sub i64 %916, 1
%918 = inttoptr i64 %917 to i8*
store i8* %918, i8** %tape_ptr
%919 = load i8*, i8** %tape_ptr
%920 = ptrtoint i8* %919 to i64
%921 = sub i64 %920, 1
%922 = inttoptr i64 %921 to i8*
store i8* %922, i8** %tape_ptr
%923 = load i8*, i8** %tape_ptr
%924 = load i8, i8* %923
%925 = add i8 %924, 1
store i8* %923, i8 %925
%926 = load i8*, i8** %tape_ptr
%927 = ptrtoint i8* %926 to i64
%928 = add i64 %927, 1
%929 = inttoptr i64 %928 to i8*
store i8* %929, i8** %tape_ptr
%930 = load i8*, i8** %tape_ptr
%931 = load i8, i8* %930
%932 = add i8 %931, 1
store i8* %930, i8 %932
%933 = load i8*, i8** %tape_ptr
%934 = load i8, i8* %933
%935 = add i8 %934, 1
store i8* %933, i8 %935
%936 = load i8*, i8** %tape_ptr
%937 = ptrtoint i8* %936 to i64
%938 = add i64 %937, 1
%939 = inttoptr i64 %938 to i8*
store i8* %939, i8** %tape_ptr
%940 = load i8*, i8** %tape_ptr
%941 = load i8, i8* %940
%942 = sub i8 %941, 1
store i8* %940, i8 %942
br label %for138.body
for138.body:
%943 = load i8*, i8** %tape_ptr
%944 = load i8, i8* %943
%945 = icmp eq i8 %944, 0
br i1 %945, label %for140.end, label %for139.inner
for139.inner:
%946 = load i8*, i8** %tape_ptr
%947 = ptrtoint i8* %946 to i64
%948 = sub i64 %947, 1
%949 = inttoptr i64 %948 to i8*
store i8* %949, i8** %tape_ptr
%950 = load i8*, i8** %tape_ptr
%951 = load i8, i8* %950
%952 = sub i8 %951, 1
store i8* %950, i8 %952
%953 = load i8*, i8** %tape_ptr
%954 = ptrtoint i8* %953 to i64
%955 = add i64 %954, 1
%956 = inttoptr i64 %955 to i8*
store i8* %956, i8** %tape_ptr
br label %for141.body
for141.body:
%957 = load i8*, i8** %tape_ptr
%958 = load i8, i8* %957
%959 = icmp eq i8 %958, 0
br i1 %959, label %for143.end, label %for142.inner
for142.inner:
%960 = load i8*, i8** %tape_ptr
%961 = ptrtoint i8* %960 to i64
%962 = sub i64 %961, 1
%963 = inttoptr i64 %962 to i8*
store i8* %963, i8** %tape_ptr
%964 = load i8*, i8** %tape_ptr
%965 = ptrtoint i8* %964 to i64
%966 = sub i64 %965, 1
%967 = inttoptr i64 %966 to i8*
store i8* %967, i8** %tape_ptr
%968 = load i8*, i8** %tape_ptr
%969 = load i8, i8* %968
%970 = add i8 %969, 1
store i8* %968, i8 %970
%971 = load i8*, i8** %tape_ptr
%972 = ptrtoint i8* %971 to i64
%973 = add i64 %972, 1
%974 = inttoptr i64 %973 to i8*
store i8* %974, i8** %tape_ptr
%975 = load i8*, i8** %tape_ptr
%976 = ptrtoint i8* %975 to i64
%977 = add i64 %976, 1
%978 = inttoptr i64 %977 to i8*
store i8* %978, i8** %tape_ptr
%979 = load i8*, i8** %tape_ptr
%980 = load i8, i8* %979
%981 = sub i8 %980, 1
store i8* %979, i8 %981
br label %for141.body
for143.end:
br label %for138.body
for140.end:
br label %for135.body
for137.end:
%982 = load i8*, i8** %tape_ptr
%983 = ptrtoint i8* %982 to i64
%984 = sub i64 %983, 1
%985 = inttoptr i64 %984 to i8*
store i8* %985, i8** %tape_ptr
br label %for144.body
for144.body:
%986 = load i8*, i8** %tape_ptr
%987 = load i8, i8* %986
%988 = icmp eq i8 %987, 0
br i1 %988, label %for146.end, label %for145.inner
for145.inner:
%989 = load i8*, i8** %tape_ptr
%990 = ptrtoint i8* %989 to i64
%991 = add i64 %990, 1
%992 = inttoptr i64 %991 to i8*
store i8* %992, i8** %tape_ptr
%993 = load i8*, i8** %tape_ptr
%994 = load i8, i8* %993
%995 = add i8 %994, 1
store i8* %993, i8 %995
%996 = load i8*, i8** %tape_ptr
%997 = ptrtoint i8* %996 to i64
%998 = sub i64 %997, 1
%999 = inttoptr i64 %998 to i8*
store i8* %999, i8** %tape_ptr
%1000 = load i8*, i8** %tape_ptr
%1001 = load i8, i8* %1000
%1002 = sub i8 %1001, 1
store i8* %1000, i8 %1002
br label %for144.body
for146.end:
%1003 = load i8*, i8** %tape_ptr
%1004 = ptrtoint i8* %1003 to i64
%1005 = add i64 %1004, 1
%1006 = inttoptr i64 %1005 to i8*
store i8* %1006, i8** %tape_ptr
br label %for132.body
for134.end:
%1007 = load i8*, i8** %tape_ptr
%1008 = ptrtoint i8* %1007 to i64
%1009 = add i64 %1008, 1
%1010 = inttoptr i64 %1009 to i8*
store i8* %1010, i8** %tape_ptr
br label %for147.body
for147.body:
%1011 = load i8*, i8** %tape_ptr
%1012 = load i8, i8* %1011
%1013 = icmp eq i8 %1012, 0
br i1 %1013, label %for149.end, label %for148.inner
for148.inner:
%1014 = load i8*, i8** %tape_ptr
%1015 = ptrtoint i8* %1014 to i64
%1016 = add i64 %1015, 1
%1017 = inttoptr i64 %1016 to i8*
store i8* %1017, i8** %tape_ptr
br label %for147.body
for149.end:
%1018 = load i8*, i8** %tape_ptr
%1019 = ptrtoint i8* %1018 to i64
%1020 = add i64 %1019, 1
%1021 = inttoptr i64 %1020 to i8*
store i8* %1021, i8** %tape_ptr
br label %for123.body
for125.end:
%1022 = load i8*, i8** %tape_ptr
%1023 = ptrtoint i8* %1022 to i64
%1024 = add i64 %1023, 1
%1025 = inttoptr i64 %1024 to i8*
store i8* %1025, i8** %tape_ptr
br label %for150.body
for150.body:
%1026 = load i8*, i8** %tape_ptr
%1027 = load i8, i8* %1026
%1028 = icmp eq i8 %1027, 0
br i1 %1028, label %for152.end, label %for151.inner
for151.inner:
%1029 = load i8*, i8** %tape_ptr
%1030 = ptrtoint i8* %1029 to i64
%1031 = add i64 %1030, 1
%1032 = inttoptr i64 %1031 to i8*
store i8* %1032, i8** %tape_ptr
%1033 = load i8*, i8** %tape_ptr
%1034 = ptrtoint i8* %1033 to i64
%1035 = add i64 %1034, 1
%1036 = inttoptr i64 %1035 to i8*
store i8* %1036, i8** %tape_ptr
br label %for150.body
for152.end:
%1037 = load i8*, i8** %tape_ptr
%1038 = ptrtoint i8* %1037 to i64
%1039 = add i64 %1038, 1
%1040 = inttoptr i64 %1039 to i8*
store i8* %1040, i8** %tape_ptr
%1041 = load i8*, i8** %tape_ptr
%1042 = ptrtoint i8* %1041 to i64
%1043 = add i64 %1042, 1
%1044 = inttoptr i64 %1043 to i8*
store i8* %1044, i8** %tape_ptr
br label %for114.body
for116.end:
%1045 = load i8*, i8** %tape_ptr
%1046 = ptrtoint i8* %1045 to i64
%1047 = sub i64 %1046, 1
%1048 = inttoptr i64 %1047 to i8*
store i8* %1048, i8** %tape_ptr
%1049 = load i8*, i8** %tape_ptr
%1050 = ptrtoint i8* %1049 to i64
%1051 = sub i64 %1050, 1
%1052 = inttoptr i64 %1051 to i8*
store i8* %1052, i8** %tape_ptr
br label %for153.body
for153.body:
%1053 = load i8*, i8** %tape_ptr
%1054 = load i8, i8* %1053
%1055 = icmp eq i8 %1054, 0
br i1 %1055, label %for155.end, label %for154.inner
for154.inner:
%1056 = load i8*, i8** %tape_ptr
%1057 = ptrtoint i8* %1056 to i64
%1058 = add i64 %1057, 1
%1059 = inttoptr i64 %1058 to i8*
store i8* %1059, i8** %tape_ptr
%1060 = load i8*, i8** %tape_ptr
%1061 = ptrtoint i8* %1060 to i64
%1062 = add i64 %1061, 1
%1063 = inttoptr i64 %1062 to i8*
store i8* %1063, i8** %tape_ptr
%1064 = load i8*, i8** %tape_ptr
%1065 = load i8, i8* %1064
%1066 = add i8 %1065, 1
store i8* %1064, i8 %1066
%1067 = load i8*, i8** %tape_ptr
%1068 = ptrtoint i8* %1067 to i64
%1069 = add i64 %1068, 1
%1070 = inttoptr i64 %1069 to i8*
store i8* %1070, i8** %tape_ptr
%1071 = load i8*, i8** %tape_ptr
%1072 = ptrtoint i8* %1071 to i64
%1073 = add i64 %1072, 1
%1074 = inttoptr i64 %1073 to i8*
store i8* %1074, i8** %tape_ptr
%1075 = load i8*, i8** %tape_ptr
%1076 = load i8, i8* %1075
%1077 = add i8 %1076, 1
store i8* %1075, i8 %1077
%1078 = load i8*, i8** %tape_ptr
%1079 = ptrtoint i8* %1078 to i64
%1080 = add i64 %1079, 1
%1081 = inttoptr i64 %1080 to i8*
store i8* %1081, i8** %tape_ptr
%1082 = load i8*, i8** %tape_ptr
%1083 = ptrtoint i8* %1082 to i64
%1084 = add i64 %1083, 1
%1085 = inttoptr i64 %1084 to i8*
store i8* %1085, i8** %tape_ptr
br label %for153.body
for155.end:
%1086 = load i8*, i8** %tape_ptr
%1087 = ptrtoint i8* %1086 to i64
%1088 = sub i64 %1087, 1
%1089 = inttoptr i64 %1088 to i8*
store i8* %1089, i8** %tape_ptr
%1090 = load i8*, i8** %tape_ptr
%1091 = ptrtoint i8* %1090 to i64
%1092 = sub i64 %1091, 1
%1093 = inttoptr i64 %1092 to i8*
store i8* %1093, i8** %tape_ptr
br label %for156.body
for156.body:
%1094 = load i8*, i8** %tape_ptr
%1095 = load i8, i8* %1094
%1096 = icmp eq i8 %1095, 0
br i1 %1096, label %for158.end, label %for157.inner
for157.inner:
%1097 = load i8*, i8** %tape_ptr
%1098 = load i8, i8* %1097
%1099 = sub i8 %1098, 1
store i8* %1097, i8 %1099
%1100 = load i8*, i8** %tape_ptr
%1101 = ptrtoint i8* %1100 to i64
%1102 = add i64 %1101, 1
%1103 = inttoptr i64 %1102 to i8*
store i8* %1103, i8** %tape_ptr
%1104 = load i8*, i8** %tape_ptr
%1105 = ptrtoint i8* %1104 to i64
%1106 = add i64 %1105, 1
%1107 = inttoptr i64 %1106 to i8*
store i8* %1107, i8** %tape_ptr
%1108 = load i8*, i8** %tape_ptr
%1109 = ptrtoint i8* %1108 to i64
%1110 = add i64 %1109, 1
%1111 = inttoptr i64 %1110 to i8*
store i8* %1111, i8** %tape_ptr
%1112 = load i8*, i8** %tape_ptr
%1113 = ptrtoint i8* %1112 to i64
%1114 = add i64 %1113, 1
%1115 = inttoptr i64 %1114 to i8*
store i8* %1115, i8** %tape_ptr
%1116 = load i8*, i8** %tape_ptr
%1117 = ptrtoint i8* %1116 to i64
%1118 = add i64 %1117, 1
%1119 = inttoptr i64 %1118 to i8*
store i8* %1119, i8** %tape_ptr
%1120 = load i8*, i8** %tape_ptr
%1121 = ptrtoint i8* %1120 to i64
%1122 = add i64 %1121, 1
%1123 = inttoptr i64 %1122 to i8*
store i8* %1123, i8** %tape_ptr
%1124 = load i8*, i8** %tape_ptr
%1125 = ptrtoint i8* %1124 to i64
%1126 = add i64 %1125, 1
%1127 = inttoptr i64 %1126 to i8*
store i8* %1127, i8** %tape_ptr
%1128 = load i8*, i8** %tape_ptr
%1129 = ptrtoint i8* %1128 to i64
%1130 = add i64 %1129, 1
%1131 = inttoptr i64 %1130 to i8*
store i8* %1131, i8** %tape_ptr
br label %for156.body
for158.end:
%1132 = load i8*, i8** %tape_ptr
%1133 = ptrtoint i8* %1132 to i64
%1134 = sub i64 %1133, 1
%1135 = inttoptr i64 %1134 to i8*
store i8* %1135, i8** %tape_ptr
%1136 = load i8*, i8** %tape_ptr
%1137 = ptrtoint i8* %1136 to i64
%1138 = sub i64 %1137, 1
%1139 = inttoptr i64 %1138 to i8*
store i8* %1139, i8** %tape_ptr
br label %for159.body
for159.body:
%1140 = load i8*, i8** %tape_ptr
%1141 = load i8, i8* %1140
%1142 = icmp eq i8 %1141, 0
br i1 %1142, label %for161.end, label %for160.inner
for160.inner:
%1143 = load i8*, i8** %tape_ptr
%1144 = ptrtoint i8* %1143 to i64
%1145 = add i64 %1144, 1
%1146 = inttoptr i64 %1145 to i8*
store i8* %1146, i8** %tape_ptr
%1147 = load i8*, i8** %tape_ptr
%1148 = load i8, i8* %1147
call i8 @putchar(i8 %1148)
%1150 = load i8*, i8** %tape_ptr
%1151 = ptrtoint i8* %1150 to i64
%1152 = add i64 %1151, 1
%1153 = inttoptr i64 %1152 to i8*
store i8* %1153, i8** %tape_ptr
%1154 = load i8*, i8** %tape_ptr
%1155 = ptrtoint i8* %1154 to i64
%1156 = add i64 %1155, 1
%1157 = inttoptr i64 %1156 to i8*
store i8* %1157, i8** %tape_ptr
%1158 = load i8*, i8** %tape_ptr
%1159 = ptrtoint i8* %1158 to i64
%1160 = add i64 %1159, 1
%1161 = inttoptr i64 %1160 to i8*
store i8* %1161, i8** %tape_ptr
%1162 = load i8*, i8** %tape_ptr
%1163 = ptrtoint i8* %1162 to i64
%1164 = add i64 %1163, 1
%1165 = inttoptr i64 %1164 to i8*
store i8* %1165, i8** %tape_ptr
%1166 = load i8*, i8** %tape_ptr
%1167 = ptrtoint i8* %1166 to i64
%1168 = add i64 %1167, 1
%1169 = inttoptr i64 %1168 to i8*
store i8* %1169, i8** %tape_ptr
%1170 = load i8*, i8** %tape_ptr
%1171 = ptrtoint i8* %1170 to i64
%1172 = add i64 %1171, 1
%1173 = inttoptr i64 %1172 to i8*
store i8* %1173, i8** %tape_ptr
%1174 = load i8*, i8** %tape_ptr
%1175 = ptrtoint i8* %1174 to i64
%1176 = add i64 %1175, 1
%1177 = inttoptr i64 %1176 to i8*
store i8* %1177, i8** %tape_ptr
br label %for159.body
for161.end:
%1178 = load i8*, i8** %tape_ptr
%1179 = ptrtoint i8* %1178 to i64
%1180 = sub i64 %1179, 1
%1181 = inttoptr i64 %1180 to i8*
store i8* %1181, i8** %tape_ptr
%1182 = load i8*, i8** %tape_ptr
%1183 = ptrtoint i8* %1182 to i64
%1184 = sub i64 %1183, 1
%1185 = inttoptr i64 %1184 to i8*
store i8* %1185, i8** %tape_ptr
br label %for162.body
for162.body:
%1186 = load i8*, i8** %tape_ptr
%1187 = load i8, i8* %1186
%1188 = icmp eq i8 %1187, 0
br i1 %1188, label %for164.end, label %for163.inner
for163.inner:
%1189 = load i8*, i8** %tape_ptr
%1190 = ptrtoint i8* %1189 to i64
%1191 = add i64 %1190, 1
%1192 = inttoptr i64 %1191 to i8*
store i8* %1192, i8** %tape_ptr
%1193 = load i8*, i8** %tape_ptr
%1194 = load i8, i8* %1193
%1195 = sub i8 %1194, 1
store i8* %1193, i8 %1195
%1196 = load i8*, i8** %tape_ptr
%1197 = ptrtoint i8* %1196 to i64
%1198 = add i64 %1197, 1
%1199 = inttoptr i64 %1198 to i8*
store i8* %1199, i8** %tape_ptr
%1200 = load i8*, i8** %tape_ptr
%1201 = ptrtoint i8* %1200 to i64
%1202 = add i64 %1201, 1
%1203 = inttoptr i64 %1202 to i8*
store i8* %1203, i8** %tape_ptr
%1204 = load i8*, i8** %tape_ptr
%1205 = ptrtoint i8* %1204 to i64
%1206 = add i64 %1205, 1
%1207 = inttoptr i64 %1206 to i8*
store i8* %1207, i8** %tape_ptr
%1208 = load i8*, i8** %tape_ptr
%1209 = ptrtoint i8* %1208 to i64
%1210 = add i64 %1209, 1
%1211 = inttoptr i64 %1210 to i8*
store i8* %1211, i8** %tape_ptr
%1212 = load i8*, i8** %tape_ptr
%1213 = ptrtoint i8* %1212 to i64
%1214 = add i64 %1213, 1
%1215 = inttoptr i64 %1214 to i8*
store i8* %1215, i8** %tape_ptr
br label %for162.body
for164.end:
%1216 = load i8*, i8** %tape_ptr
%1217 = ptrtoint i8* %1216 to i64
%1218 = sub i64 %1217, 1
%1219 = inttoptr i64 %1218 to i8*
store i8* %1219, i8** %tape_ptr
%1220 = load i8*, i8** %tape_ptr
%1221 = ptrtoint i8* %1220 to i64
%1222 = sub i64 %1221, 1
%1223 = inttoptr i64 %1222 to i8*
store i8* %1223, i8** %tape_ptr
br label %for165.body
for165.body:
%1224 = load i8*, i8** %tape_ptr
%1225 = load i8, i8* %1224
%1226 = icmp eq i8 %1225, 0
br i1 %1226, label %for167.end, label %for166.inner
for166.inner:
%1227 = load i8*, i8** %tape_ptr
%1228 = ptrtoint i8* %1227 to i64
%1229 = add i64 %1228, 1
%1230 = inttoptr i64 %1229 to i8*
store i8* %1230, i8** %tape_ptr
%1231 = load i8*, i8** %tape_ptr
%1232 = call i8 @getchar()
store i8* %1231, i8 %1232
%1233 = load i8*, i8** %tape_ptr
%1234 = ptrtoint i8* %1233 to i64
%1235 = add i64 %1234, 1
%1236 = inttoptr i64 %1235 to i8*
store i8* %1236, i8** %tape_ptr
%1237 = load i8*, i8** %tape_ptr
%1238 = ptrtoint i8* %1237 to i64
%1239 = add i64 %1238, 1
%1240 = inttoptr i64 %1239 to i8*
store i8* %1240, i8** %tape_ptr
%1241 = load i8*, i8** %tape_ptr
%1242 = ptrtoint i8* %1241 to i64
%1243 = add i64 %1242, 1
%1244 = inttoptr i64 %1243 to i8*
store i8* %1244, i8** %tape_ptr
br label %for165.body
for167.end:
%1245 = load i8*, i8** %tape_ptr
%1246 = ptrtoint i8* %1245 to i64
%1247 = sub i64 %1246, 1
%1248 = inttoptr i64 %1247 to i8*
store i8* %1248, i8** %tape_ptr
%1249 = load i8*, i8** %tape_ptr
%1250 = ptrtoint i8* %1249 to i64
%1251 = sub i64 %1250, 1
%1252 = inttoptr i64 %1251 to i8*
store i8* %1252, i8** %tape_ptr
br label %for168.body
for168.body:
%1253 = load i8*, i8** %tape_ptr
%1254 = load i8, i8* %1253
%1255 = icmp eq i8 %1254, 0
br i1 %1255, label %for170.end, label %for169.inner
for169.inner:
%1256 = load i8*, i8** %tape_ptr
%1257 = ptrtoint i8* %1256 to i64
%1258 = add i64 %1257, 1
%1259 = inttoptr i64 %1258 to i8*
store i8* %1259, i8** %tape_ptr
%1260 = load i8*, i8** %tape_ptr
%1261 = load i8, i8* %1260
%1262 = add i8 %1261, 1
store i8* %1260, i8 %1262
%1263 = load i8*, i8** %tape_ptr
%1264 = ptrtoint i8* %1263 to i64
%1265 = add i64 %1264, 1
%1266 = inttoptr i64 %1265 to i8*
store i8* %1266, i8** %tape_ptr
br label %for168.body
for170.end:
%1267 = load i8*, i8** %tape_ptr
%1268 = ptrtoint i8* %1267 to i64
%1269 = sub i64 %1268, 1
%1270 = inttoptr i64 %1269 to i8*
store i8* %1270, i8** %tape_ptr
%1271 = load i8*, i8** %tape_ptr
%1272 = ptrtoint i8* %1271 to i64
%1273 = sub i64 %1272, 1
%1274 = inttoptr i64 %1273 to i8*
store i8* %1274, i8** %tape_ptr
br label %for171.body
for171.body:
%1275 = load i8*, i8** %tape_ptr
%1276 = load i8, i8* %1275
%1277 = icmp eq i8 %1276, 0
br i1 %1277, label %for173.end, label %for172.inner
for172.inner:
%1278 = load i8*, i8** %tape_ptr
%1279 = load i8, i8* %1278
%1280 = add i8 %1279, 1
store i8* %1278, i8 %1280
%1281 = load i8*, i8** %tape_ptr
%1282 = ptrtoint i8* %1281 to i64
%1283 = sub i64 %1282, 1
%1284 = inttoptr i64 %1283 to i8*
store i8* %1284, i8** %tape_ptr
%1285 = load i8*, i8** %tape_ptr
%1286 = ptrtoint i8* %1285 to i64
%1287 = sub i64 %1286, 1
%1288 = inttoptr i64 %1287 to i8*
store i8* %1288, i8** %tape_ptr
br label %for171.body
for173.end:
%1289 = load i8*, i8** %tape_ptr
%1290 = ptrtoint i8* %1289 to i64
%1291 = sub i64 %1290, 1
%1292 = inttoptr i64 %1291 to i8*
store i8* %1292, i8** %tape_ptr
br label %for57.body
for59.end:
ret i32 0
}
