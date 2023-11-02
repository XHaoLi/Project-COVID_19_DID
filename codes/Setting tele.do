* Turning 4-digit to 3-digit

* excluded: armed forces and other 
drop if j2cod08==0
drop if j2cod08==110
drop if j2cod08==210
drop if j2cod08<=13

generate d3isco08=111 if j2cod08==1111
replace d3isco08=111 if j2cod08==1112
replace d3isco08=111 if j2cod08==1113
replace d3isco08=111 if j2cod08==1114

replace d3isco08=112 if j2cod08==1120

replace d3isco08=121 if j2cod08==1211
replace d3isco08=121 if j2cod08==1212
replace d3isco08=121 if j2cod08==1213
replace d3isco08=121 if j2cod08==1219

replace d3isco08=122 if j2cod08==1221
replace d3isco08=122 if j2cod08==1222
replace d3isco08=122 if j2cod08==1223

replace d3isco08=131 if j2cod08==1311
replace d3isco08=131 if j2cod08==1312

replace d3isco08=132 if j2cod08==1321
replace d3isco08=132 if j2cod08==1322
replace d3isco08=132 if j2cod08==1323
replace d3isco08=132 if j2cod08==1324

replace d3isco08=133 if j2cod08==1330

replace d3isco08=134 if j2cod08==1341
replace d3isco08=134 if j2cod08==1342
replace d3isco08=134 if j2cod08==1343
replace d3isco08=134 if j2cod08==1344
replace d3isco08=134 if j2cod08==1345
replace d3isco08=134 if j2cod08==1346
replace d3isco08=134 if j2cod08==1349

replace d3isco08=141 if j2cod08==1411
replace d3isco08=141 if j2cod08==1412

replace d3isco08=142 if j2cod08==1420

replace d3isco08=143 if j2cod08==1431
replace d3isco08=143 if j2cod08==1439

replace d3isco08=211 if j2cod08==2111
replace d3isco08=211 if j2cod08==2112
replace d3isco08=211 if j2cod08==2113
replace d3isco08=211 if j2cod08==2114

replace d3isco08=212 if j2cod08==2120

replace d3isco08=213 if j2cod08==2131
replace d3isco08=213 if j2cod08==2132
replace d3isco08=213 if j2cod08==2133

replace d3isco08=214 if j2cod08==2141
replace d3isco08=214 if j2cod08==2142
replace d3isco08=214 if j2cod08==2143
replace d3isco08=214 if j2cod08==2144
replace d3isco08=214 if j2cod08==2145
replace d3isco08=214 if j2cod08==2146
replace d3isco08=214 if j2cod08==2149

replace d3isco08=215 if j2cod08==2151
replace d3isco08=215 if j2cod08==2152
replace d3isco08=215 if j2cod08==2153

replace d3isco08=216 if j2cod08==2161
replace d3isco08=216 if j2cod08==2162
replace d3isco08=216 if j2cod08==2163
replace d3isco08=216 if j2cod08==2164
replace d3isco08=216 if j2cod08==2165
replace d3isco08=216 if j2cod08==2166

replace d3isco08=221 if j2cod08==2211
replace d3isco08=221 if j2cod08==2212

replace d3isco08=222 if j2cod08==2221
replace d3isco08=222 if j2cod08==2222

replace d3isco08=223 if j2cod08==2230

replace d3isco08=224 if j2cod08==2240

replace d3isco08=225 if j2cod08==2250

replace d3isco08=226 if j2cod08==2261
replace d3isco08=226 if j2cod08==2262
replace d3isco08=226 if j2cod08==2263
replace d3isco08=226 if j2cod08==2264
replace d3isco08=226 if j2cod08==2265
replace d3isco08=226 if j2cod08==2266
replace d3isco08=226 if j2cod08==2267
replace d3isco08=226 if j2cod08==2269

replace d3isco08=231 if j2cod08==2310

replace d3isco08=232 if j2cod08==2320

replace d3isco08=233 if j2cod08==2330

replace d3isco08=234 if j2cod08==2341
replace d3isco08=234 if j2cod08==2342

replace d3isco08=235 if j2cod08==2351
replace d3isco08=235 if j2cod08==2352
replace d3isco08=235 if j2cod08==2353
replace d3isco08=235 if j2cod08==2354
replace d3isco08=235 if j2cod08==2355
replace d3isco08=235 if j2cod08==2356
replace d3isco08=235 if j2cod08==2359

replace d3isco08=241 if j2cod08==2411
replace d3isco08=241 if j2cod08==2412
replace d3isco08=241 if j2cod08==2413

replace d3isco08=242 if j2cod08==2421
replace d3isco08=242 if j2cod08==2422
replace d3isco08=242 if j2cod08==2423
replace d3isco08=242 if j2cod08==2424

replace d3isco08=243 if j2cod08==2431
replace d3isco08=243 if j2cod08==2432
replace d3isco08=243 if j2cod08==2433
replace d3isco08=243 if j2cod08==2434

replace d3isco08=251 if j2cod08==2511
replace d3isco08=251 if j2cod08==2512
replace d3isco08=251 if j2cod08==2513
replace d3isco08=251 if j2cod08==2514
replace d3isco08=251 if j2cod08==2519

replace d3isco08=252 if j2cod08==2521
replace d3isco08=252 if j2cod08==2522
replace d3isco08=252 if j2cod08==2523
replace d3isco08=252 if j2cod08==2529

replace d3isco08=261 if j2cod08==2611
replace d3isco08=261 if j2cod08==2612
replace d3isco08=261 if j2cod08==2619

replace d3isco08=262 if j2cod08==2621
replace d3isco08=262 if j2cod08==2622

replace d3isco08=263 if j2cod08==2631
replace d3isco08=263 if j2cod08==2632
replace d3isco08=263 if j2cod08==2633
replace d3isco08=263 if j2cod08==2634
replace d3isco08=263 if j2cod08==2635
replace d3isco08=263 if j2cod08==2636

replace d3isco08=264 if j2cod08==2641
replace d3isco08=264 if j2cod08==2642
replace d3isco08=264 if j2cod08==2643

replace d3isco08=265 if j2cod08==2651
replace d3isco08=265 if j2cod08==2652
replace d3isco08=265 if j2cod08==2653
replace d3isco08=265 if j2cod08==2654
replace d3isco08=265 if j2cod08==2655
replace d3isco08=265 if j2cod08==2656
replace d3isco08=265 if j2cod08==2659

replace d3isco08=311 if j2cod08==3111
replace d3isco08=311 if j2cod08==3112
replace d3isco08=311 if j2cod08==3113
replace d3isco08=311 if j2cod08==3114
replace d3isco08=311 if j2cod08==3115
replace d3isco08=311 if j2cod08==3116
replace d3isco08=311 if j2cod08==3117
replace d3isco08=311 if j2cod08==3118
replace d3isco08=311 if j2cod08==3119

replace d3isco08=312 if j2cod08==312
replace d3isco08=312 if j2cod08==3121
replace d3isco08=312 if j2cod08==3122
replace d3isco08=312 if j2cod08==3123

replace d3isco08=313 if j2cod08==3131
replace d3isco08=313 if j2cod08==3132
replace d3isco08=313 if j2cod08==3133
replace d3isco08=313 if j2cod08==3134
replace d3isco08=313 if j2cod08==3135
replace d3isco08=313 if j2cod08==3139

replace d3isco08=314 if j2cod08==3141
replace d3isco08=314 if j2cod08==3142
replace d3isco08=314 if j2cod08==3143

replace d3isco08=315 if j2cod08==3151
replace d3isco08=315 if j2cod08==3152
replace d3isco08=315 if j2cod08==3153
replace d3isco08=315 if j2cod08==3154
replace d3isco08=315 if j2cod08==3155

replace d3isco08=321 if j2cod08==3211
replace d3isco08=321 if j2cod08==3212
replace d3isco08=321 if j2cod08==3213
replace d3isco08=321 if j2cod08==3214

replace d3isco08=322 if j2cod08==3221
replace d3isco08=322 if j2cod08==3222

replace d3isco08=323 if j2cod08==3230

replace d3isco08=324 if j2cod08==3240

replace d3isco08=325 if j2cod08==3251
replace d3isco08=325 if j2cod08==3252
replace d3isco08=325 if j2cod08==3253
replace d3isco08=325 if j2cod08==3254
replace d3isco08=325 if j2cod08==3255
replace d3isco08=325 if j2cod08==3256
replace d3isco08=325 if j2cod08==3257
replace d3isco08=325 if j2cod08==3258
replace d3isco08=325 if j2cod08==3259

replace d3isco08=331 if j2cod08==33
replace d3isco08=331 if j2cod08==3311
replace d3isco08=331 if j2cod08==3312
replace d3isco08=331 if j2cod08==3313
replace d3isco08=331 if j2cod08==3314
replace d3isco08=331 if j2cod08==3315

replace d3isco08=332 if j2cod08==3321
replace d3isco08=332 if j2cod08==3322
replace d3isco08=332 if j2cod08==3323
replace d3isco08=332 if j2cod08==3324

replace d3isco08=333 if j2cod08==3331
replace d3isco08=333 if j2cod08==3332
replace d3isco08=333 if j2cod08==3333
replace d3isco08=333 if j2cod08==3334
replace d3isco08=333 if j2cod08==3339

replace d3isco08=334 if j2cod08==3341
replace d3isco08=334 if j2cod08==3342
replace d3isco08=334 if j2cod08==3343
replace d3isco08=334 if j2cod08==3344

replace d3isco08=335 if j2cod08==3351
replace d3isco08=335 if j2cod08==3352
replace d3isco08=335 if j2cod08==3353
replace d3isco08=335 if j2cod08==3354
replace d3isco08=335 if j2cod08==3355
replace d3isco08=335 if j2cod08==3359

replace d3isco08=341 if j2cod08==3411
replace d3isco08=341 if j2cod08==3412
replace d3isco08=341 if j2cod08==3413

replace d3isco08=342 if j2cod08==3421
replace d3isco08=342 if j2cod08==3422
replace d3isco08=342 if j2cod08==3423

replace d3isco08=343 if j2cod08==3431
replace d3isco08=343 if j2cod08==3432
replace d3isco08=343 if j2cod08==3433
replace d3isco08=343 if j2cod08==3434
replace d3isco08=343 if j2cod08==3435

replace d3isco08=351 if j2cod08==3511
replace d3isco08=351 if j2cod08==3512
replace d3isco08=351 if j2cod08==3513
replace d3isco08=351 if j2cod08==3514

replace d3isco08=352 if j2cod08==3521
replace d3isco08=352 if j2cod08==3522

replace d3isco08=411 if j2cod08==4110

replace d3isco08=412 if j2cod08==4120

replace d3isco08=413 if j2cod08==4131
replace d3isco08=413 if j2cod08==4132

replace d3isco08=421 if j2cod08==4211
replace d3isco08=421 if j2cod08==4212
replace d3isco08=421 if j2cod08==4213
replace d3isco08=421 if j2cod08==4214

replace d3isco08=422 if j2cod08==4221
replace d3isco08=422 if j2cod08==4222
replace d3isco08=422 if j2cod08==4223
replace d3isco08=422 if j2cod08==4224
replace d3isco08=422 if j2cod08==4225
replace d3isco08=422 if j2cod08==4226
replace d3isco08=422 if j2cod08==4227
replace d3isco08=422 if j2cod08==4229

replace d3isco08=431 if j2cod08==4311
replace d3isco08=431 if j2cod08==4312
replace d3isco08=431 if j2cod08==4313

replace d3isco08=432 if j2cod08==4321
replace d3isco08=432 if j2cod08==4322
replace d3isco08=432 if j2cod08==4323

replace d3isco08=441 if j2cod08==4411
replace d3isco08=441 if j2cod08==4412
replace d3isco08=441 if j2cod08==4413
replace d3isco08=441 if j2cod08==4414
replace d3isco08=441 if j2cod08==4415
replace d3isco08=441 if j2cod08==4416
replace d3isco08=441 if j2cod08==4419

replace d3isco08=511 if j2cod08==5111
replace d3isco08=511 if j2cod08==5112
replace d3isco08=511 if j2cod08==5113

replace d3isco08=512 if j2cod08==5120

replace d3isco08=513 if j2cod08==5131
replace d3isco08=513 if j2cod08==5132

replace d3isco08=514 if j2cod08==5141
replace d3isco08=514 if j2cod08==5142

replace d3isco08=515 if j2cod08==5151
replace d3isco08=515 if j2cod08==5152
replace d3isco08=515 if j2cod08==5153

replace d3isco08=516 if j2cod08==5161
replace d3isco08=516 if j2cod08==5162
replace d3isco08=516 if j2cod08==5163
replace d3isco08=516 if j2cod08==5164
replace d3isco08=516 if j2cod08==5165
replace d3isco08=516 if j2cod08==5169

replace d3isco08=521 if j2cod08==5211
replace d3isco08=521 if j2cod08==5212

replace d3isco08=522 if j2cod08==5221
replace d3isco08=522 if j2cod08==5222
replace d3isco08=522 if j2cod08==5223

replace d3isco08=523 if j2cod08==5230

replace d3isco08=524 if j2cod08==5241
replace d3isco08=524 if j2cod08==5242
replace d3isco08=524 if j2cod08==5243
replace d3isco08=524 if j2cod08==5244
replace d3isco08=524 if j2cod08==5245
replace d3isco08=524 if j2cod08==5246
replace d3isco08=524 if j2cod08==5249

replace d3isco08=531 if j2cod08==5311
replace d3isco08=531 if j2cod08==5312

replace d3isco08=532 if j2cod08==5321
replace d3isco08=532 if j2cod08==5322
replace d3isco08=532 if j2cod08==5329

replace d3isco08=541 if j2cod08==5411
replace d3isco08=541 if j2cod08==5412
replace d3isco08=541 if j2cod08==5413
replace d3isco08=541 if j2cod08==5414
replace d3isco08=541 if j2cod08==5419

replace d3isco08=611 if j2cod08==6111
replace d3isco08=611 if j2cod08==6112
replace d3isco08=611 if j2cod08==6113
replace d3isco08=611 if j2cod08==6114

replace d3isco08=612 if j2cod08==6121
replace d3isco08=612 if j2cod08==6122
replace d3isco08=612 if j2cod08==6123
replace d3isco08=612 if j2cod08==6129

replace d3isco08=613 if j2cod08==6130

replace d3isco08=621 if j2cod08==6210

replace d3isco08=622 if j2cod08==6221
replace d3isco08=622 if j2cod08==6222
replace d3isco08=622 if j2cod08==6223
replace d3isco08=622 if j2cod08==6224

replace d3isco08=631 if j2cod08==6310

replace d3isco08=632 if j2cod08==6320

replace d3isco08=633 if j2cod08==6330

replace d3isco08=634 if j2cod08==6340

replace d3isco08=711 if j2cod08==7111
replace d3isco08=711 if j2cod08==7112
replace d3isco08=711 if j2cod08==7113
replace d3isco08=711 if j2cod08==7114
replace d3isco08=711 if j2cod08==7115
replace d3isco08=711 if j2cod08==7119

replace d3isco08=712 if j2cod08==7121
replace d3isco08=712 if j2cod08==7122
replace d3isco08=712 if j2cod08==7123
replace d3isco08=712 if j2cod08==7124
replace d3isco08=712 if j2cod08==7125
replace d3isco08=712 if j2cod08==7126
replace d3isco08=712 if j2cod08==7127

replace d3isco08=713 if j2cod08==7131
replace d3isco08=713 if j2cod08==7132
replace d3isco08=713 if j2cod08==7133

replace d3isco08=721 if j2cod08==7211
replace d3isco08=721 if j2cod08==7212
replace d3isco08=721 if j2cod08==7213
replace d3isco08=721 if j2cod08==7214
replace d3isco08=721 if j2cod08==7215

replace d3isco08=722 if j2cod08==7221
replace d3isco08=722 if j2cod08==7222
replace d3isco08=722 if j2cod08==7223
replace d3isco08=722 if j2cod08==7224

replace d3isco08=723 if j2cod08==7231
replace d3isco08=723 if j2cod08==7232
replace d3isco08=723 if j2cod08==7233
replace d3isco08=723 if j2cod08==7234

replace d3isco08=731 if j2cod08==7311
replace d3isco08=731 if j2cod08==7312
replace d3isco08=731 if j2cod08==7313
replace d3isco08=731 if j2cod08==7314
replace d3isco08=731 if j2cod08==7315
replace d3isco08=731 if j2cod08==7316
replace d3isco08=731 if j2cod08==7317
replace d3isco08=731 if j2cod08==7318
replace d3isco08=731 if j2cod08==7319

replace d3isco08=732 if j2cod08==7321
replace d3isco08=732 if j2cod08==7322
replace d3isco08=732 if j2cod08==7323

replace d3isco08=741 if j2cod08==7411
replace d3isco08=741 if j2cod08==7412
replace d3isco08=741 if j2cod08==7413

replace d3isco08=742 if j2cod08==7421
replace d3isco08=742 if j2cod08==7422

replace d3isco08=751 if j2cod08==7511
replace d3isco08=751 if j2cod08==7512
replace d3isco08=751 if j2cod08==7513
replace d3isco08=751 if j2cod08==7514
replace d3isco08=751 if j2cod08==7515
replace d3isco08=751 if j2cod08==7516

replace d3isco08=752 if j2cod08==7521
replace d3isco08=752 if j2cod08==7522
replace d3isco08=752 if j2cod08==7523

replace d3isco08=753 if j2cod08==7531
replace d3isco08=753 if j2cod08==7532
replace d3isco08=753 if j2cod08==7533
replace d3isco08=753 if j2cod08==7534
replace d3isco08=753 if j2cod08==7535
replace d3isco08=753 if j2cod08==7536

replace d3isco08=754 if j2cod08==7541
replace d3isco08=754 if j2cod08==7542
replace d3isco08=754 if j2cod08==7543
replace d3isco08=754 if j2cod08==7544
replace d3isco08=754 if j2cod08==7549

replace d3isco08=811 if j2cod08==8111
replace d3isco08=811 if j2cod08==8112
replace d3isco08=811 if j2cod08==8113
replace d3isco08=811 if j2cod08==8114

replace d3isco08=812 if j2cod08==8121
replace d3isco08=812 if j2cod08==8122

replace d3isco08=813 if j2cod08==8131
replace d3isco08=813 if j2cod08==8132

replace d3isco08=814 if j2cod08==8141
replace d3isco08=814 if j2cod08==8142
replace d3isco08=814 if j2cod08==8143

replace d3isco08=815 if j2cod08==8151
replace d3isco08=815 if j2cod08==8152
replace d3isco08=815 if j2cod08==8153
replace d3isco08=815 if j2cod08==8154
replace d3isco08=815 if j2cod08==8155
replace d3isco08=815 if j2cod08==8156
replace d3isco08=815 if j2cod08==8157
replace d3isco08=815 if j2cod08==8159

replace d3isco08=816 if j2cod08==8160

replace d3isco08=817 if j2cod08==8171
replace d3isco08=817 if j2cod08==8172

replace d3isco08=818 if j2cod08==8181
replace d3isco08=818 if j2cod08==8182
replace d3isco08=818 if j2cod08==8183
replace d3isco08=818 if j2cod08==8189

replace d3isco08=821 if j2cod08==821
replace d3isco08=821 if j2cod08==8211
replace d3isco08=821 if j2cod08==8212
replace d3isco08=821 if j2cod08==8219

replace d3isco08=831 if j2cod08==8311
replace d3isco08=831 if j2cod08==8312

replace d3isco08=832 if j2cod08==8321
replace d3isco08=832 if j2cod08==8322

replace d3isco08=833 if j2cod08==8331
replace d3isco08=833 if j2cod08==8332

replace d3isco08=834 if j2cod08==83
replace d3isco08=834 if j2cod08==8341
replace d3isco08=834 if j2cod08==8342
replace d3isco08=834 if j2cod08==8343
replace d3isco08=834 if j2cod08==8344

replace d3isco08=835 if j2cod08==8350

replace d3isco08=911 if j2cod08==9111
replace d3isco08=911 if j2cod08==9112

replace d3isco08=912 if j2cod08==9121
replace d3isco08=912 if j2cod08==9122
replace d3isco08=912 if j2cod08==9123
replace d3isco08=912 if j2cod08==9129

replace d3isco08=921 if j2cod08==921
replace d3isco08=921 if j2cod08==9211
replace d3isco08=921 if j2cod08==9212
replace d3isco08=921 if j2cod08==9213
replace d3isco08=921 if j2cod08==9214
replace d3isco08=921 if j2cod08==9215
replace d3isco08=921 if j2cod08==9216

replace d3isco08=931 if j2cod08==9311
replace d3isco08=931 if j2cod08==9312
replace d3isco08=931 if j2cod08==9313

replace d3isco08=932 if j2cod08==9321
replace d3isco08=932 if j2cod08==9329

replace d3isco08=933 if j2cod08==9331
replace d3isco08=933 if j2cod08==9332
replace d3isco08=933 if j2cod08==9333
replace d3isco08=933 if j2cod08==9334

replace d3isco08=941 if j2cod08==9411
replace d3isco08=941 if j2cod08==9412

replace d3isco08=951 if j2cod08==9510

replace d3isco08=952 if j2cod08==9520

replace d3isco08=961 if j2cod08==9611
replace d3isco08=961 if j2cod08==9612
replace d3isco08=961 if j2cod08==9613

replace d3isco08=962 if j2cod08==9621
replace d3isco08=962 if j2cod08==9622
replace d3isco08=962 if j2cod08==9623
replace d3isco08=962 if j2cod08==9624
replace d3isco08=962 if j2cod08==9629

replace d3isco08=011 if j2cod08==0110

replace d3isco08=021 if j2cod08==0210

replace d3isco08=031 if j2cod08==0310


*Setting Teleworkability

generate teleworkability=1 if d3isco08==111
replace teleworkability=1 if d3isco08==112
replace teleworkability=1 if d3isco08==121
replace teleworkability=1 if d3isco08==122
replace teleworkability=0 if d3isco08==131
replace teleworkability=0.18 if d3isco08==132
replace teleworkability=1 if d3isco08==133
replace teleworkability=1 if d3isco08==134
replace teleworkability=0.97 if d3isco08==141
replace teleworkability=0.07 if d3isco08==142
replace teleworkability=0.89 if d3isco08==143
replace teleworkability=0.23 if d3isco08==211
replace teleworkability=1 if d3isco08==212
replace teleworkability=0.26 if d3isco08==213
replace teleworkability=0.25 if d3isco08==214
replace teleworkability=0 if d3isco08==215
replace teleworkability=0.38 if d3isco08==216
replace teleworkability=0.39 if d3isco08==221
replace teleworkability=0 if d3isco08==222
replace teleworkability=0 if d3isco08==225
replace teleworkability=0.59 if d3isco08==226
replace teleworkability=0.49 if d3isco08==231
replace teleworkability=1 if d3isco08==232
replace teleworkability=1 if d3isco08==233
replace teleworkability=0.61 if d3isco08==234
replace teleworkability=0.86 if d3isco08==235
replace teleworkability=1 if d3isco08==241

replace teleworkability=0.97 if d3isco08==242
replace teleworkability=1 if d3isco08==243
replace teleworkability=1 if d3isco08==251
replace teleworkability=1 if d3isco08==252
replace teleworkability=1 if d3isco08==261
replace teleworkability=1 if d3isco08==262
replace teleworkability=0.98 if d3isco08==263
replace teleworkability=1 if d3isco08==264
replace teleworkability=0.34 if d3isco08==265
replace teleworkability=0.01 if d3isco08==311
replace teleworkability=0 if d3isco08==312
replace teleworkability=0.02 if d3isco08==313
replace teleworkability=0.63 if d3isco08==314
replace teleworkability=0.09 if d3isco08==315
replace teleworkability=0 if d3isco08==321
replace teleworkability=0 if d3isco08==322
replace teleworkability=0 if d3isco08==324
replace teleworkability=0.35 if d3isco08==325
replace teleworkability=1 if d3isco08==331
replace teleworkability=1 if d3isco08==332
replace teleworkability=1 if d3isco08==333
replace teleworkability=1 if d3isco08==334
replace teleworkability=0.53 if d3isco08==335
replace teleworkability=1 if d3isco08==341
replace teleworkability=0.04 if d3isco08==342
replace teleworkability=0.11 if d3isco08==343
replace teleworkability=0.93 if d3isco08==351
replace teleworkability=0 if d3isco08==352
replace teleworkability=1 if d3isco08==411
replace teleworkability=1 if d3isco08==412
replace teleworkability=1 if d3isco08==413
replace teleworkability=0.93 if d3isco08==421
replace teleworkability=1 if d3isco08==422
replace teleworkability=1 if d3isco08==431
replace teleworkability=0.4 if d3isco08==432
replace teleworkability=0.82 if d3isco08==441

replace teleworkability=0.73 if d3isco08==511
replace teleworkability=0 if d3isco08==512
replace teleworkability=0 if d3isco08==513
replace teleworkability=0 if d3isco08==514
replace teleworkability=0 if d3isco08==515
replace teleworkability=0.32 if d3isco08==516
replace teleworkability=0 if d3isco08==521
replace teleworkability=0.04 if d3isco08==522
replace teleworkability=0.1 if d3isco08==523
replace teleworkability=0.33 if d3isco08==524
replace teleworkability=0 if d3isco08==531
replace teleworkability=0 if d3isco08==532
replace teleworkability=0.4 if d3isco08==541
replace teleworkability=0 if d3isco08==611
replace teleworkability=0 if d3isco08==612
replace teleworkability=0 if d3isco08==613
replace teleworkability=0 if d3isco08==621
replace teleworkability=0 if d3isco08==622
replace teleworkability=0 if d3isco08==711
replace teleworkability=0 if d3isco08==712
replace teleworkability=0 if d3isco08==713
replace teleworkability=0 if d3isco08==721
replace teleworkability=0 if d3isco08==722
replace teleworkability=0 if d3isco08==723
replace teleworkability=0 if d3isco08==731
replace teleworkability=0.33 if d3isco08==732
replace teleworkability=0 if d3isco08==741
replace teleworkability=0 if d3isco08==742
replace teleworkability=0 if d3isco08==751
replace teleworkability=0 if d3isco08==752
replace teleworkability=0 if d3isco08==753
replace teleworkability=0 if d3isco08==754
replace teleworkability=0 if d3isco08==811
replace teleworkability=0 if d3isco08==812
replace teleworkability=0 if d3isco08==813
replace teleworkability=0 if d3isco08==814
replace teleworkability=0.25 if d3isco08==815
replace teleworkability=0 if d3isco08==816
replace teleworkability=0 if d3isco08==817
replace teleworkability=0 if d3isco08==818
replace teleworkability=0 if d3isco08==821
replace teleworkability=0 if d3isco08==831
replace teleworkability=0 if d3isco08==832
replace teleworkability=0 if d3isco08==833
replace teleworkability=0 if d3isco08==834
replace teleworkability=0 if d3isco08==835
replace teleworkability=0 if d3isco08==911
replace teleworkability=0 if d3isco08==912
replace teleworkability=0 if d3isco08==921
replace teleworkability=0 if d3isco08==931
replace teleworkability=0 if d3isco08==932
replace teleworkability=0 if d3isco08==933
replace teleworkability=0 if d3isco08==941
replace teleworkability=0 if d3isco08==951
replace teleworkability=0 if d3isco08==952
replace teleworkability=0 if d3isco08==961
replace teleworkability=0.28 if d3isco08==962

