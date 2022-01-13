module Decode(
  input  [31:0] io_inst,
  output [4:0]  io_alu_type,
  output [2:0]  io_op1_type,
  output [2:0]  io_op2_type,
  output [2:0]  io_imm_type,
  output [2:0]  io_mem_rtype,
  output [2:0]  io_wb_type,
  output [2:0]  io_csr_type
);
  wire [31:0] _ctrl_T = io_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_1 = 32'h33 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_3 = 32'h40000033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_5 = 32'h1033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_7 = 32'h2033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_9 = 32'h3033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_11 = 32'h4033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_13 = 32'h5033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_15 = 32'h40005033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_17 = 32'h6033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_19 = 32'h7033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_20 = io_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_21 = 32'h13 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_22 = io_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_23 = 32'h1013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_25 = 32'h2013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_27 = 32'h3013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_29 = 32'h4013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_31 = 32'h5013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_33 = 32'h40005013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_35 = 32'h6013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_37 = 32'h7013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_39 = 32'h3 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_41 = 32'h1003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_43 = 32'h2003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_45 = 32'h3003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_47 = 32'h4003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_49 = 32'h5003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_51 = 32'h6003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_53 = 32'h23 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_55 = 32'h1023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_57 = 32'h2023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_59 = 32'h3023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_60 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_61 = 32'h37 == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_63 = 32'h17 == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_65 = 32'h63 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_67 = 32'h1063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_69 = 32'h4063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_71 = 32'h5063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_73 = 32'h6063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_75 = 32'h7063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_77 = 32'h6f == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_79 = 32'h67 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_81 = 32'h1b == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_83 = 32'h3b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_85 = 32'h101b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_87 = 32'h501b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_89 = 32'h4000501b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_91 = 32'h4000003b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_93 = 32'h103b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_95 = 32'h503b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_97 = 32'h4000503b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_99 = 32'h1073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_101 = 32'h2073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_103 = 32'h3073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_105 = 32'h5073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_107 = 32'h6073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_109 = 32'h7073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_111 = 32'h73 == io_inst; // @[Lookup.scala 31:38]
  wire  _ctrl_T_113 = 32'h30200073 == io_inst; // @[Lookup.scala 31:38]
  wire  _ctrl_T_115 = 32'h7b == io_inst; // @[Lookup.scala 31:38]
  wire [4:0] _ctrl_T_230 = _ctrl_T_115 ? 5'h14 : 5'h0; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_231 = _ctrl_T_113 ? 5'h0 : _ctrl_T_230; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_232 = _ctrl_T_111 ? 5'h0 : _ctrl_T_231; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_233 = _ctrl_T_109 ? 5'h12 : _ctrl_T_232; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_234 = _ctrl_T_107 ? 5'h12 : _ctrl_T_233; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_235 = _ctrl_T_105 ? 5'h12 : _ctrl_T_234; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_236 = _ctrl_T_103 ? 5'h12 : _ctrl_T_235; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_237 = _ctrl_T_101 ? 5'h12 : _ctrl_T_236; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_238 = _ctrl_T_99 ? 5'h12 : _ctrl_T_237; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_239 = _ctrl_T_97 ? 5'h10 : _ctrl_T_238; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_240 = _ctrl_T_95 ? 5'hf : _ctrl_T_239; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_241 = _ctrl_T_93 ? 5'he : _ctrl_T_240; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_242 = _ctrl_T_91 ? 5'h11 : _ctrl_T_241; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_243 = _ctrl_T_89 ? 5'h10 : _ctrl_T_242; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_244 = _ctrl_T_87 ? 5'hf : _ctrl_T_243; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_245 = _ctrl_T_85 ? 5'he : _ctrl_T_244; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_246 = _ctrl_T_83 ? 5'hd : _ctrl_T_245; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_247 = _ctrl_T_81 ? 5'hd : _ctrl_T_246; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_248 = _ctrl_T_79 ? 5'h1 : _ctrl_T_247; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_249 = _ctrl_T_77 ? 5'h1 : _ctrl_T_248; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_250 = _ctrl_T_75 ? 5'hc : _ctrl_T_249; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_251 = _ctrl_T_73 ? 5'h4 : _ctrl_T_250; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_252 = _ctrl_T_71 ? 5'hb : _ctrl_T_251; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_253 = _ctrl_T_69 ? 5'h3 : _ctrl_T_252; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_254 = _ctrl_T_67 ? 5'h5 : _ctrl_T_253; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_255 = _ctrl_T_65 ? 5'h2 : _ctrl_T_254; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_256 = _ctrl_T_63 ? 5'h1 : _ctrl_T_255; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_257 = _ctrl_T_61 ? 5'h13 : _ctrl_T_256; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_258 = _ctrl_T_59 ? 5'h1 : _ctrl_T_257; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_259 = _ctrl_T_57 ? 5'h1 : _ctrl_T_258; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_260 = _ctrl_T_55 ? 5'h1 : _ctrl_T_259; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_261 = _ctrl_T_53 ? 5'h1 : _ctrl_T_260; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_262 = _ctrl_T_51 ? 5'h1 : _ctrl_T_261; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_263 = _ctrl_T_49 ? 5'h1 : _ctrl_T_262; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_264 = _ctrl_T_47 ? 5'h1 : _ctrl_T_263; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_265 = _ctrl_T_45 ? 5'h1 : _ctrl_T_264; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_266 = _ctrl_T_43 ? 5'h1 : _ctrl_T_265; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_267 = _ctrl_T_41 ? 5'h1 : _ctrl_T_266; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_268 = _ctrl_T_39 ? 5'h1 : _ctrl_T_267; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_269 = _ctrl_T_37 ? 5'h7 : _ctrl_T_268; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_270 = _ctrl_T_35 ? 5'h6 : _ctrl_T_269; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_271 = _ctrl_T_33 ? 5'ha : _ctrl_T_270; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_272 = _ctrl_T_31 ? 5'h9 : _ctrl_T_271; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_273 = _ctrl_T_29 ? 5'h5 : _ctrl_T_272; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_274 = _ctrl_T_27 ? 5'h4 : _ctrl_T_273; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_275 = _ctrl_T_25 ? 5'h3 : _ctrl_T_274; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_276 = _ctrl_T_23 ? 5'h8 : _ctrl_T_275; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_277 = _ctrl_T_21 ? 5'h1 : _ctrl_T_276; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_278 = _ctrl_T_19 ? 5'h7 : _ctrl_T_277; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_279 = _ctrl_T_17 ? 5'h6 : _ctrl_T_278; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_280 = _ctrl_T_15 ? 5'ha : _ctrl_T_279; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_281 = _ctrl_T_13 ? 5'h9 : _ctrl_T_280; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_282 = _ctrl_T_11 ? 5'h5 : _ctrl_T_281; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_283 = _ctrl_T_9 ? 5'h4 : _ctrl_T_282; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_284 = _ctrl_T_7 ? 5'h3 : _ctrl_T_283; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_285 = _ctrl_T_5 ? 5'h8 : _ctrl_T_284; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_286 = _ctrl_T_3 ? 5'h2 : _ctrl_T_285; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_290 = _ctrl_T_109 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_291 = _ctrl_T_107 ? 3'h2 : _ctrl_T_290; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_292 = _ctrl_T_105 ? 3'h2 : _ctrl_T_291; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_293 = _ctrl_T_103 ? 3'h1 : _ctrl_T_292; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_294 = _ctrl_T_101 ? 3'h1 : _ctrl_T_293; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_295 = _ctrl_T_99 ? 3'h1 : _ctrl_T_294; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_296 = _ctrl_T_97 ? 3'h1 : _ctrl_T_295; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_297 = _ctrl_T_95 ? 3'h1 : _ctrl_T_296; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_298 = _ctrl_T_93 ? 3'h1 : _ctrl_T_297; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_299 = _ctrl_T_91 ? 3'h1 : _ctrl_T_298; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_300 = _ctrl_T_89 ? 3'h1 : _ctrl_T_299; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_301 = _ctrl_T_87 ? 3'h1 : _ctrl_T_300; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_302 = _ctrl_T_85 ? 3'h1 : _ctrl_T_301; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_303 = _ctrl_T_83 ? 3'h1 : _ctrl_T_302; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_304 = _ctrl_T_81 ? 3'h1 : _ctrl_T_303; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_305 = _ctrl_T_79 ? 3'h3 : _ctrl_T_304; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_306 = _ctrl_T_77 ? 3'h3 : _ctrl_T_305; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_307 = _ctrl_T_75 ? 3'h1 : _ctrl_T_306; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_308 = _ctrl_T_73 ? 3'h1 : _ctrl_T_307; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_309 = _ctrl_T_71 ? 3'h1 : _ctrl_T_308; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_310 = _ctrl_T_69 ? 3'h1 : _ctrl_T_309; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_311 = _ctrl_T_67 ? 3'h1 : _ctrl_T_310; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_312 = _ctrl_T_65 ? 3'h1 : _ctrl_T_311; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_313 = _ctrl_T_63 ? 3'h3 : _ctrl_T_312; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_314 = _ctrl_T_61 ? 3'h0 : _ctrl_T_313; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_315 = _ctrl_T_59 ? 3'h1 : _ctrl_T_314; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_316 = _ctrl_T_57 ? 3'h1 : _ctrl_T_315; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_317 = _ctrl_T_55 ? 3'h1 : _ctrl_T_316; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_318 = _ctrl_T_53 ? 3'h1 : _ctrl_T_317; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_319 = _ctrl_T_51 ? 3'h1 : _ctrl_T_318; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_320 = _ctrl_T_49 ? 3'h1 : _ctrl_T_319; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_321 = _ctrl_T_47 ? 3'h1 : _ctrl_T_320; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_322 = _ctrl_T_45 ? 3'h1 : _ctrl_T_321; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_323 = _ctrl_T_43 ? 3'h1 : _ctrl_T_322; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_324 = _ctrl_T_41 ? 3'h1 : _ctrl_T_323; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_325 = _ctrl_T_39 ? 3'h1 : _ctrl_T_324; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_326 = _ctrl_T_37 ? 3'h1 : _ctrl_T_325; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_327 = _ctrl_T_35 ? 3'h1 : _ctrl_T_326; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_328 = _ctrl_T_33 ? 3'h1 : _ctrl_T_327; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_329 = _ctrl_T_31 ? 3'h1 : _ctrl_T_328; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_330 = _ctrl_T_29 ? 3'h1 : _ctrl_T_329; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_331 = _ctrl_T_27 ? 3'h1 : _ctrl_T_330; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_332 = _ctrl_T_25 ? 3'h1 : _ctrl_T_331; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_333 = _ctrl_T_23 ? 3'h1 : _ctrl_T_332; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_334 = _ctrl_T_21 ? 3'h1 : _ctrl_T_333; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_335 = _ctrl_T_19 ? 3'h1 : _ctrl_T_334; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_336 = _ctrl_T_17 ? 3'h1 : _ctrl_T_335; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_337 = _ctrl_T_15 ? 3'h1 : _ctrl_T_336; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_338 = _ctrl_T_13 ? 3'h1 : _ctrl_T_337; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_339 = _ctrl_T_11 ? 3'h1 : _ctrl_T_338; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_340 = _ctrl_T_9 ? 3'h1 : _ctrl_T_339; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_341 = _ctrl_T_7 ? 3'h1 : _ctrl_T_340; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_342 = _ctrl_T_5 ? 3'h1 : _ctrl_T_341; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_343 = _ctrl_T_3 ? 3'h1 : _ctrl_T_342; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_353 = _ctrl_T_97 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_354 = _ctrl_T_95 ? 3'h1 : _ctrl_T_353; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_355 = _ctrl_T_93 ? 3'h1 : _ctrl_T_354; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_356 = _ctrl_T_91 ? 3'h1 : _ctrl_T_355; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_357 = _ctrl_T_89 ? 3'h2 : _ctrl_T_356; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_358 = _ctrl_T_87 ? 3'h2 : _ctrl_T_357; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_359 = _ctrl_T_85 ? 3'h2 : _ctrl_T_358; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_360 = _ctrl_T_83 ? 3'h1 : _ctrl_T_359; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_361 = _ctrl_T_81 ? 3'h2 : _ctrl_T_360; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_362 = _ctrl_T_79 ? 3'h4 : _ctrl_T_361; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_363 = _ctrl_T_77 ? 3'h4 : _ctrl_T_362; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_364 = _ctrl_T_75 ? 3'h1 : _ctrl_T_363; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_365 = _ctrl_T_73 ? 3'h1 : _ctrl_T_364; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_366 = _ctrl_T_71 ? 3'h1 : _ctrl_T_365; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_367 = _ctrl_T_69 ? 3'h1 : _ctrl_T_366; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_368 = _ctrl_T_67 ? 3'h1 : _ctrl_T_367; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_369 = _ctrl_T_65 ? 3'h1 : _ctrl_T_368; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_370 = _ctrl_T_63 ? 3'h2 : _ctrl_T_369; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_371 = _ctrl_T_61 ? 3'h2 : _ctrl_T_370; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_372 = _ctrl_T_59 ? 3'h2 : _ctrl_T_371; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_373 = _ctrl_T_57 ? 3'h2 : _ctrl_T_372; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_374 = _ctrl_T_55 ? 3'h2 : _ctrl_T_373; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_375 = _ctrl_T_53 ? 3'h2 : _ctrl_T_374; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_376 = _ctrl_T_51 ? 3'h2 : _ctrl_T_375; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_377 = _ctrl_T_49 ? 3'h2 : _ctrl_T_376; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_378 = _ctrl_T_47 ? 3'h2 : _ctrl_T_377; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_379 = _ctrl_T_45 ? 3'h2 : _ctrl_T_378; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_380 = _ctrl_T_43 ? 3'h2 : _ctrl_T_379; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_381 = _ctrl_T_41 ? 3'h2 : _ctrl_T_380; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_382 = _ctrl_T_39 ? 3'h2 : _ctrl_T_381; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_383 = _ctrl_T_37 ? 3'h2 : _ctrl_T_382; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_384 = _ctrl_T_35 ? 3'h2 : _ctrl_T_383; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_385 = _ctrl_T_33 ? 3'h2 : _ctrl_T_384; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_386 = _ctrl_T_31 ? 3'h2 : _ctrl_T_385; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_387 = _ctrl_T_29 ? 3'h2 : _ctrl_T_386; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_388 = _ctrl_T_27 ? 3'h2 : _ctrl_T_387; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_389 = _ctrl_T_25 ? 3'h2 : _ctrl_T_388; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_390 = _ctrl_T_23 ? 3'h2 : _ctrl_T_389; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_391 = _ctrl_T_21 ? 3'h2 : _ctrl_T_390; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_392 = _ctrl_T_19 ? 3'h1 : _ctrl_T_391; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_393 = _ctrl_T_17 ? 3'h1 : _ctrl_T_392; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_394 = _ctrl_T_15 ? 3'h1 : _ctrl_T_393; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_395 = _ctrl_T_13 ? 3'h1 : _ctrl_T_394; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_396 = _ctrl_T_11 ? 3'h1 : _ctrl_T_395; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_397 = _ctrl_T_9 ? 3'h1 : _ctrl_T_396; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_398 = _ctrl_T_7 ? 3'h1 : _ctrl_T_397; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_399 = _ctrl_T_5 ? 3'h1 : _ctrl_T_398; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_400 = _ctrl_T_3 ? 3'h1 : _ctrl_T_399; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_404 = _ctrl_T_109 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_405 = _ctrl_T_107 ? 3'h7 : _ctrl_T_404; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_406 = _ctrl_T_105 ? 3'h7 : _ctrl_T_405; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_407 = _ctrl_T_103 ? 3'h0 : _ctrl_T_406; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_408 = _ctrl_T_101 ? 3'h0 : _ctrl_T_407; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_409 = _ctrl_T_99 ? 3'h0 : _ctrl_T_408; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_410 = _ctrl_T_97 ? 3'h0 : _ctrl_T_409; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_411 = _ctrl_T_95 ? 3'h0 : _ctrl_T_410; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_412 = _ctrl_T_93 ? 3'h0 : _ctrl_T_411; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_413 = _ctrl_T_91 ? 3'h0 : _ctrl_T_412; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_414 = _ctrl_T_89 ? 3'h1 : _ctrl_T_413; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_415 = _ctrl_T_87 ? 3'h1 : _ctrl_T_414; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_416 = _ctrl_T_85 ? 3'h1 : _ctrl_T_415; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_417 = _ctrl_T_83 ? 3'h0 : _ctrl_T_416; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_418 = _ctrl_T_81 ? 3'h1 : _ctrl_T_417; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_419 = _ctrl_T_79 ? 3'h1 : _ctrl_T_418; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_420 = _ctrl_T_77 ? 3'h5 : _ctrl_T_419; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_421 = _ctrl_T_75 ? 3'h3 : _ctrl_T_420; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_422 = _ctrl_T_73 ? 3'h3 : _ctrl_T_421; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_423 = _ctrl_T_71 ? 3'h3 : _ctrl_T_422; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_424 = _ctrl_T_69 ? 3'h3 : _ctrl_T_423; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_425 = _ctrl_T_67 ? 3'h3 : _ctrl_T_424; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_426 = _ctrl_T_65 ? 3'h3 : _ctrl_T_425; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_427 = _ctrl_T_63 ? 3'h4 : _ctrl_T_426; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_428 = _ctrl_T_61 ? 3'h4 : _ctrl_T_427; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_429 = _ctrl_T_59 ? 3'h2 : _ctrl_T_428; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_430 = _ctrl_T_57 ? 3'h2 : _ctrl_T_429; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_431 = _ctrl_T_55 ? 3'h2 : _ctrl_T_430; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_432 = _ctrl_T_53 ? 3'h2 : _ctrl_T_431; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_433 = _ctrl_T_51 ? 3'h1 : _ctrl_T_432; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_434 = _ctrl_T_49 ? 3'h1 : _ctrl_T_433; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_435 = _ctrl_T_47 ? 3'h1 : _ctrl_T_434; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_436 = _ctrl_T_45 ? 3'h1 : _ctrl_T_435; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_437 = _ctrl_T_43 ? 3'h1 : _ctrl_T_436; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_438 = _ctrl_T_41 ? 3'h1 : _ctrl_T_437; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_439 = _ctrl_T_39 ? 3'h1 : _ctrl_T_438; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_440 = _ctrl_T_37 ? 3'h1 : _ctrl_T_439; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_441 = _ctrl_T_35 ? 3'h1 : _ctrl_T_440; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_442 = _ctrl_T_33 ? 3'h1 : _ctrl_T_441; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_443 = _ctrl_T_31 ? 3'h1 : _ctrl_T_442; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_444 = _ctrl_T_29 ? 3'h1 : _ctrl_T_443; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_445 = _ctrl_T_27 ? 3'h1 : _ctrl_T_444; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_446 = _ctrl_T_25 ? 3'h1 : _ctrl_T_445; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_447 = _ctrl_T_23 ? 3'h1 : _ctrl_T_446; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_448 = _ctrl_T_21 ? 3'h1 : _ctrl_T_447; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_449 = _ctrl_T_19 ? 3'h0 : _ctrl_T_448; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_450 = _ctrl_T_17 ? 3'h0 : _ctrl_T_449; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_451 = _ctrl_T_15 ? 3'h0 : _ctrl_T_450; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_452 = _ctrl_T_13 ? 3'h0 : _ctrl_T_451; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_453 = _ctrl_T_11 ? 3'h0 : _ctrl_T_452; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_454 = _ctrl_T_9 ? 3'h0 : _ctrl_T_453; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_455 = _ctrl_T_7 ? 3'h0 : _ctrl_T_454; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_456 = _ctrl_T_5 ? 3'h0 : _ctrl_T_455; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_457 = _ctrl_T_3 ? 3'h0 : _ctrl_T_456; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_490 = _ctrl_T_51 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_491 = _ctrl_T_49 ? 3'h6 : _ctrl_T_490; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_492 = _ctrl_T_47 ? 3'h5 : _ctrl_T_491; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_493 = _ctrl_T_45 ? 3'h4 : _ctrl_T_492; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_494 = _ctrl_T_43 ? 3'h3 : _ctrl_T_493; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_495 = _ctrl_T_41 ? 3'h2 : _ctrl_T_494; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_496 = _ctrl_T_39 ? 3'h1 : _ctrl_T_495; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_497 = _ctrl_T_37 ? 3'h0 : _ctrl_T_496; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_498 = _ctrl_T_35 ? 3'h0 : _ctrl_T_497; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_499 = _ctrl_T_33 ? 3'h0 : _ctrl_T_498; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_500 = _ctrl_T_31 ? 3'h0 : _ctrl_T_499; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_501 = _ctrl_T_29 ? 3'h0 : _ctrl_T_500; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_502 = _ctrl_T_27 ? 3'h0 : _ctrl_T_501; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_503 = _ctrl_T_25 ? 3'h0 : _ctrl_T_502; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_504 = _ctrl_T_23 ? 3'h0 : _ctrl_T_503; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_505 = _ctrl_T_21 ? 3'h0 : _ctrl_T_504; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_506 = _ctrl_T_19 ? 3'h0 : _ctrl_T_505; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_507 = _ctrl_T_17 ? 3'h0 : _ctrl_T_506; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_508 = _ctrl_T_15 ? 3'h0 : _ctrl_T_507; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_509 = _ctrl_T_13 ? 3'h0 : _ctrl_T_508; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_510 = _ctrl_T_11 ? 3'h0 : _ctrl_T_509; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_511 = _ctrl_T_9 ? 3'h0 : _ctrl_T_510; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_512 = _ctrl_T_7 ? 3'h0 : _ctrl_T_511; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_513 = _ctrl_T_5 ? 3'h0 : _ctrl_T_512; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_514 = _ctrl_T_3 ? 3'h0 : _ctrl_T_513; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_518 = _ctrl_T_109 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_519 = _ctrl_T_107 ? 3'h1 : _ctrl_T_518; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_520 = _ctrl_T_105 ? 3'h1 : _ctrl_T_519; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_521 = _ctrl_T_103 ? 3'h1 : _ctrl_T_520; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_522 = _ctrl_T_101 ? 3'h1 : _ctrl_T_521; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_523 = _ctrl_T_99 ? 3'h1 : _ctrl_T_522; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_524 = _ctrl_T_97 ? 3'h1 : _ctrl_T_523; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_525 = _ctrl_T_95 ? 3'h1 : _ctrl_T_524; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_526 = _ctrl_T_93 ? 3'h1 : _ctrl_T_525; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_527 = _ctrl_T_91 ? 3'h1 : _ctrl_T_526; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_528 = _ctrl_T_89 ? 3'h1 : _ctrl_T_527; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_529 = _ctrl_T_87 ? 3'h1 : _ctrl_T_528; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_530 = _ctrl_T_85 ? 3'h1 : _ctrl_T_529; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_531 = _ctrl_T_83 ? 3'h1 : _ctrl_T_530; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_532 = _ctrl_T_81 ? 3'h1 : _ctrl_T_531; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_533 = _ctrl_T_79 ? 3'h1 : _ctrl_T_532; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_534 = _ctrl_T_77 ? 3'h1 : _ctrl_T_533; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_535 = _ctrl_T_75 ? 3'h0 : _ctrl_T_534; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_536 = _ctrl_T_73 ? 3'h0 : _ctrl_T_535; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_537 = _ctrl_T_71 ? 3'h0 : _ctrl_T_536; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_538 = _ctrl_T_69 ? 3'h0 : _ctrl_T_537; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_539 = _ctrl_T_67 ? 3'h0 : _ctrl_T_538; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_540 = _ctrl_T_65 ? 3'h0 : _ctrl_T_539; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_541 = _ctrl_T_63 ? 3'h1 : _ctrl_T_540; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_542 = _ctrl_T_61 ? 3'h1 : _ctrl_T_541; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_543 = _ctrl_T_59 ? 3'h5 : _ctrl_T_542; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_544 = _ctrl_T_57 ? 3'h4 : _ctrl_T_543; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_545 = _ctrl_T_55 ? 3'h3 : _ctrl_T_544; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_546 = _ctrl_T_53 ? 3'h2 : _ctrl_T_545; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_547 = _ctrl_T_51 ? 3'h1 : _ctrl_T_546; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_548 = _ctrl_T_49 ? 3'h1 : _ctrl_T_547; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_549 = _ctrl_T_47 ? 3'h1 : _ctrl_T_548; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_550 = _ctrl_T_45 ? 3'h1 : _ctrl_T_549; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_551 = _ctrl_T_43 ? 3'h1 : _ctrl_T_550; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_552 = _ctrl_T_41 ? 3'h1 : _ctrl_T_551; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_553 = _ctrl_T_39 ? 3'h1 : _ctrl_T_552; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_554 = _ctrl_T_37 ? 3'h1 : _ctrl_T_553; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_555 = _ctrl_T_35 ? 3'h1 : _ctrl_T_554; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_556 = _ctrl_T_33 ? 3'h1 : _ctrl_T_555; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_557 = _ctrl_T_31 ? 3'h1 : _ctrl_T_556; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_558 = _ctrl_T_29 ? 3'h1 : _ctrl_T_557; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_559 = _ctrl_T_27 ? 3'h1 : _ctrl_T_558; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_560 = _ctrl_T_25 ? 3'h1 : _ctrl_T_559; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_561 = _ctrl_T_23 ? 3'h1 : _ctrl_T_560; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_562 = _ctrl_T_21 ? 3'h1 : _ctrl_T_561; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_563 = _ctrl_T_19 ? 3'h1 : _ctrl_T_562; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_564 = _ctrl_T_17 ? 3'h1 : _ctrl_T_563; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_565 = _ctrl_T_15 ? 3'h1 : _ctrl_T_564; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_566 = _ctrl_T_13 ? 3'h1 : _ctrl_T_565; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_567 = _ctrl_T_11 ? 3'h1 : _ctrl_T_566; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_568 = _ctrl_T_9 ? 3'h1 : _ctrl_T_567; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_569 = _ctrl_T_7 ? 3'h1 : _ctrl_T_568; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_570 = _ctrl_T_5 ? 3'h1 : _ctrl_T_569; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_571 = _ctrl_T_3 ? 3'h1 : _ctrl_T_570; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_573 = _ctrl_T_113 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_574 = _ctrl_T_111 ? 3'h1 : _ctrl_T_573; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_575 = _ctrl_T_109 ? 3'h5 : _ctrl_T_574; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_576 = _ctrl_T_107 ? 3'h4 : _ctrl_T_575; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_577 = _ctrl_T_105 ? 3'h3 : _ctrl_T_576; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_578 = _ctrl_T_103 ? 3'h5 : _ctrl_T_577; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_579 = _ctrl_T_101 ? 3'h4 : _ctrl_T_578; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_580 = _ctrl_T_99 ? 3'h3 : _ctrl_T_579; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_581 = _ctrl_T_97 ? 3'h0 : _ctrl_T_580; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_582 = _ctrl_T_95 ? 3'h0 : _ctrl_T_581; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_583 = _ctrl_T_93 ? 3'h0 : _ctrl_T_582; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_584 = _ctrl_T_91 ? 3'h0 : _ctrl_T_583; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_585 = _ctrl_T_89 ? 3'h0 : _ctrl_T_584; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_586 = _ctrl_T_87 ? 3'h0 : _ctrl_T_585; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_587 = _ctrl_T_85 ? 3'h0 : _ctrl_T_586; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_588 = _ctrl_T_83 ? 3'h0 : _ctrl_T_587; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_589 = _ctrl_T_81 ? 3'h0 : _ctrl_T_588; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_590 = _ctrl_T_79 ? 3'h0 : _ctrl_T_589; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_591 = _ctrl_T_77 ? 3'h0 : _ctrl_T_590; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_592 = _ctrl_T_75 ? 3'h0 : _ctrl_T_591; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_593 = _ctrl_T_73 ? 3'h0 : _ctrl_T_592; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_594 = _ctrl_T_71 ? 3'h0 : _ctrl_T_593; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_595 = _ctrl_T_69 ? 3'h0 : _ctrl_T_594; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_596 = _ctrl_T_67 ? 3'h0 : _ctrl_T_595; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_597 = _ctrl_T_65 ? 3'h0 : _ctrl_T_596; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_598 = _ctrl_T_63 ? 3'h0 : _ctrl_T_597; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_599 = _ctrl_T_61 ? 3'h0 : _ctrl_T_598; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_600 = _ctrl_T_59 ? 3'h0 : _ctrl_T_599; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_601 = _ctrl_T_57 ? 3'h0 : _ctrl_T_600; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_602 = _ctrl_T_55 ? 3'h0 : _ctrl_T_601; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_603 = _ctrl_T_53 ? 3'h0 : _ctrl_T_602; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_604 = _ctrl_T_51 ? 3'h0 : _ctrl_T_603; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_605 = _ctrl_T_49 ? 3'h0 : _ctrl_T_604; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_606 = _ctrl_T_47 ? 3'h0 : _ctrl_T_605; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_607 = _ctrl_T_45 ? 3'h0 : _ctrl_T_606; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_608 = _ctrl_T_43 ? 3'h0 : _ctrl_T_607; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_609 = _ctrl_T_41 ? 3'h0 : _ctrl_T_608; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_610 = _ctrl_T_39 ? 3'h0 : _ctrl_T_609; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_611 = _ctrl_T_37 ? 3'h0 : _ctrl_T_610; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_612 = _ctrl_T_35 ? 3'h0 : _ctrl_T_611; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_613 = _ctrl_T_33 ? 3'h0 : _ctrl_T_612; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_614 = _ctrl_T_31 ? 3'h0 : _ctrl_T_613; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_615 = _ctrl_T_29 ? 3'h0 : _ctrl_T_614; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_616 = _ctrl_T_27 ? 3'h0 : _ctrl_T_615; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_617 = _ctrl_T_25 ? 3'h0 : _ctrl_T_616; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_618 = _ctrl_T_23 ? 3'h0 : _ctrl_T_617; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_619 = _ctrl_T_21 ? 3'h0 : _ctrl_T_618; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_620 = _ctrl_T_19 ? 3'h0 : _ctrl_T_619; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_621 = _ctrl_T_17 ? 3'h0 : _ctrl_T_620; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_622 = _ctrl_T_15 ? 3'h0 : _ctrl_T_621; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_623 = _ctrl_T_13 ? 3'h0 : _ctrl_T_622; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_624 = _ctrl_T_11 ? 3'h0 : _ctrl_T_623; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_625 = _ctrl_T_9 ? 3'h0 : _ctrl_T_624; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_626 = _ctrl_T_7 ? 3'h0 : _ctrl_T_625; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_627 = _ctrl_T_5 ? 3'h0 : _ctrl_T_626; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_628 = _ctrl_T_3 ? 3'h0 : _ctrl_T_627; // @[Lookup.scala 33:37]
  assign io_alu_type = _ctrl_T_1 ? 5'h1 : _ctrl_T_286; // @[Lookup.scala 33:37]
  assign io_op1_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_343; // @[Lookup.scala 33:37]
  assign io_op2_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_400; // @[Lookup.scala 33:37]
  assign io_imm_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_457; // @[Lookup.scala 33:37]
  assign io_mem_rtype = _ctrl_T_1 ? 3'h0 : _ctrl_T_514; // @[Lookup.scala 33:37]
  assign io_wb_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_571; // @[Lookup.scala 33:37]
  assign io_csr_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_628; // @[Lookup.scala 33:37]
endmodule
module RegFile(
  input         clock,
  input         reset,
  input  [4:0]  io_rs1_addr,
  input  [4:0]  io_rs2_addr,
  output [63:0] io_rs1_data,
  output [63:0] io_rs2_data,
  input  [4:0]  io_rd_addr,
  input  [63:0] io_rd_data,
  input         io_rd_wen,
  output [63:0] rf_10
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  wire  dt_ar_clock; // @[RegFile.scala 25:21]
  wire [7:0] dt_ar_coreid; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_0; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_1; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_2; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_3; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_4; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_5; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_6; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_7; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_8; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_9; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_10; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_11; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_12; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_13; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_14; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_15; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_16; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_17; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_18; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_19; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_20; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_21; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_22; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_23; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_24; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_25; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_26; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_27; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_28; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_29; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_30; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_31; // @[RegFile.scala 25:21]
  reg [63:0] rf__0; // @[RegFile.scala 16:19]
  reg [63:0] rf__1; // @[RegFile.scala 16:19]
  reg [63:0] rf__2; // @[RegFile.scala 16:19]
  reg [63:0] rf__3; // @[RegFile.scala 16:19]
  reg [63:0] rf__4; // @[RegFile.scala 16:19]
  reg [63:0] rf__5; // @[RegFile.scala 16:19]
  reg [63:0] rf__6; // @[RegFile.scala 16:19]
  reg [63:0] rf__7; // @[RegFile.scala 16:19]
  reg [63:0] rf__8; // @[RegFile.scala 16:19]
  reg [63:0] rf__9; // @[RegFile.scala 16:19]
  reg [63:0] rf__10; // @[RegFile.scala 16:19]
  reg [63:0] rf__11; // @[RegFile.scala 16:19]
  reg [63:0] rf__12; // @[RegFile.scala 16:19]
  reg [63:0] rf__13; // @[RegFile.scala 16:19]
  reg [63:0] rf__14; // @[RegFile.scala 16:19]
  reg [63:0] rf__15; // @[RegFile.scala 16:19]
  reg [63:0] rf__16; // @[RegFile.scala 16:19]
  reg [63:0] rf__17; // @[RegFile.scala 16:19]
  reg [63:0] rf__18; // @[RegFile.scala 16:19]
  reg [63:0] rf__19; // @[RegFile.scala 16:19]
  reg [63:0] rf__20; // @[RegFile.scala 16:19]
  reg [63:0] rf__21; // @[RegFile.scala 16:19]
  reg [63:0] rf__22; // @[RegFile.scala 16:19]
  reg [63:0] rf__23; // @[RegFile.scala 16:19]
  reg [63:0] rf__24; // @[RegFile.scala 16:19]
  reg [63:0] rf__25; // @[RegFile.scala 16:19]
  reg [63:0] rf__26; // @[RegFile.scala 16:19]
  reg [63:0] rf__27; // @[RegFile.scala 16:19]
  reg [63:0] rf__28; // @[RegFile.scala 16:19]
  reg [63:0] rf__29; // @[RegFile.scala 16:19]
  reg [63:0] rf__30; // @[RegFile.scala 16:19]
  reg [63:0] rf__31; // @[RegFile.scala 16:19]
  wire [63:0] _GEN_65 = 5'h1 == io_rs1_addr ? rf__1 : rf__0; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_66 = 5'h2 == io_rs1_addr ? rf__2 : _GEN_65; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_67 = 5'h3 == io_rs1_addr ? rf__3 : _GEN_66; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_68 = 5'h4 == io_rs1_addr ? rf__4 : _GEN_67; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_69 = 5'h5 == io_rs1_addr ? rf__5 : _GEN_68; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_70 = 5'h6 == io_rs1_addr ? rf__6 : _GEN_69; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_71 = 5'h7 == io_rs1_addr ? rf__7 : _GEN_70; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_72 = 5'h8 == io_rs1_addr ? rf__8 : _GEN_71; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_73 = 5'h9 == io_rs1_addr ? rf__9 : _GEN_72; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_74 = 5'ha == io_rs1_addr ? rf__10 : _GEN_73; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_75 = 5'hb == io_rs1_addr ? rf__11 : _GEN_74; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_76 = 5'hc == io_rs1_addr ? rf__12 : _GEN_75; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_77 = 5'hd == io_rs1_addr ? rf__13 : _GEN_76; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_78 = 5'he == io_rs1_addr ? rf__14 : _GEN_77; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_79 = 5'hf == io_rs1_addr ? rf__15 : _GEN_78; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_80 = 5'h10 == io_rs1_addr ? rf__16 : _GEN_79; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_81 = 5'h11 == io_rs1_addr ? rf__17 : _GEN_80; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_82 = 5'h12 == io_rs1_addr ? rf__18 : _GEN_81; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_83 = 5'h13 == io_rs1_addr ? rf__19 : _GEN_82; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_84 = 5'h14 == io_rs1_addr ? rf__20 : _GEN_83; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_85 = 5'h15 == io_rs1_addr ? rf__21 : _GEN_84; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_86 = 5'h16 == io_rs1_addr ? rf__22 : _GEN_85; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_87 = 5'h17 == io_rs1_addr ? rf__23 : _GEN_86; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_88 = 5'h18 == io_rs1_addr ? rf__24 : _GEN_87; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_89 = 5'h19 == io_rs1_addr ? rf__25 : _GEN_88; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_90 = 5'h1a == io_rs1_addr ? rf__26 : _GEN_89; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_91 = 5'h1b == io_rs1_addr ? rf__27 : _GEN_90; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_92 = 5'h1c == io_rs1_addr ? rf__28 : _GEN_91; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_93 = 5'h1d == io_rs1_addr ? rf__29 : _GEN_92; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_94 = 5'h1e == io_rs1_addr ? rf__30 : _GEN_93; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_95 = 5'h1f == io_rs1_addr ? rf__31 : _GEN_94; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_97 = 5'h1 == io_rs2_addr ? rf__1 : rf__0; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_98 = 5'h2 == io_rs2_addr ? rf__2 : _GEN_97; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_99 = 5'h3 == io_rs2_addr ? rf__3 : _GEN_98; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_100 = 5'h4 == io_rs2_addr ? rf__4 : _GEN_99; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_101 = 5'h5 == io_rs2_addr ? rf__5 : _GEN_100; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_102 = 5'h6 == io_rs2_addr ? rf__6 : _GEN_101; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_103 = 5'h7 == io_rs2_addr ? rf__7 : _GEN_102; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_104 = 5'h8 == io_rs2_addr ? rf__8 : _GEN_103; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_105 = 5'h9 == io_rs2_addr ? rf__9 : _GEN_104; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_106 = 5'ha == io_rs2_addr ? rf__10 : _GEN_105; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_107 = 5'hb == io_rs2_addr ? rf__11 : _GEN_106; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_108 = 5'hc == io_rs2_addr ? rf__12 : _GEN_107; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_109 = 5'hd == io_rs2_addr ? rf__13 : _GEN_108; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_110 = 5'he == io_rs2_addr ? rf__14 : _GEN_109; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_111 = 5'hf == io_rs2_addr ? rf__15 : _GEN_110; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_112 = 5'h10 == io_rs2_addr ? rf__16 : _GEN_111; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_113 = 5'h11 == io_rs2_addr ? rf__17 : _GEN_112; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_114 = 5'h12 == io_rs2_addr ? rf__18 : _GEN_113; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_115 = 5'h13 == io_rs2_addr ? rf__19 : _GEN_114; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_116 = 5'h14 == io_rs2_addr ? rf__20 : _GEN_115; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_117 = 5'h15 == io_rs2_addr ? rf__21 : _GEN_116; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_118 = 5'h16 == io_rs2_addr ? rf__22 : _GEN_117; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_119 = 5'h17 == io_rs2_addr ? rf__23 : _GEN_118; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_120 = 5'h18 == io_rs2_addr ? rf__24 : _GEN_119; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_121 = 5'h19 == io_rs2_addr ? rf__25 : _GEN_120; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_122 = 5'h1a == io_rs2_addr ? rf__26 : _GEN_121; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_123 = 5'h1b == io_rs2_addr ? rf__27 : _GEN_122; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_124 = 5'h1c == io_rs2_addr ? rf__28 : _GEN_123; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_125 = 5'h1d == io_rs2_addr ? rf__29 : _GEN_124; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_126 = 5'h1e == io_rs2_addr ? rf__30 : _GEN_125; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_127 = 5'h1f == io_rs2_addr ? rf__31 : _GEN_126; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  DifftestArchIntRegState dt_ar ( // @[RegFile.scala 25:21]
    .clock(dt_ar_clock),
    .coreid(dt_ar_coreid),
    .gpr_0(dt_ar_gpr_0),
    .gpr_1(dt_ar_gpr_1),
    .gpr_2(dt_ar_gpr_2),
    .gpr_3(dt_ar_gpr_3),
    .gpr_4(dt_ar_gpr_4),
    .gpr_5(dt_ar_gpr_5),
    .gpr_6(dt_ar_gpr_6),
    .gpr_7(dt_ar_gpr_7),
    .gpr_8(dt_ar_gpr_8),
    .gpr_9(dt_ar_gpr_9),
    .gpr_10(dt_ar_gpr_10),
    .gpr_11(dt_ar_gpr_11),
    .gpr_12(dt_ar_gpr_12),
    .gpr_13(dt_ar_gpr_13),
    .gpr_14(dt_ar_gpr_14),
    .gpr_15(dt_ar_gpr_15),
    .gpr_16(dt_ar_gpr_16),
    .gpr_17(dt_ar_gpr_17),
    .gpr_18(dt_ar_gpr_18),
    .gpr_19(dt_ar_gpr_19),
    .gpr_20(dt_ar_gpr_20),
    .gpr_21(dt_ar_gpr_21),
    .gpr_22(dt_ar_gpr_22),
    .gpr_23(dt_ar_gpr_23),
    .gpr_24(dt_ar_gpr_24),
    .gpr_25(dt_ar_gpr_25),
    .gpr_26(dt_ar_gpr_26),
    .gpr_27(dt_ar_gpr_27),
    .gpr_28(dt_ar_gpr_28),
    .gpr_29(dt_ar_gpr_29),
    .gpr_30(dt_ar_gpr_30),
    .gpr_31(dt_ar_gpr_31)
  );
  assign io_rs1_data = io_rs1_addr != 5'h0 ? _GEN_95 : 64'h0; // @[RegFile.scala 22:21]
  assign io_rs2_data = io_rs2_addr != 5'h0 ? _GEN_127 : 64'h0; // @[RegFile.scala 23:21]
  assign rf_10 = rf__10;
  assign dt_ar_clock = clock; // @[RegFile.scala 26:19]
  assign dt_ar_coreid = 8'h0; // @[RegFile.scala 27:19]
  assign dt_ar_gpr_0 = rf__0; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_1 = rf__1; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_2 = rf__2; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_3 = rf__3; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_4 = rf__4; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_5 = rf__5; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_6 = rf__6; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_7 = rf__7; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_8 = rf__8; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_9 = rf__9; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_10 = rf__10; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_11 = rf__11; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_12 = rf__12; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_13 = rf__13; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_14 = rf__14; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_15 = rf__15; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_16 = rf__16; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_17 = rf__17; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_18 = rf__18; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_19 = rf__19; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_20 = rf__20; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_21 = rf__21; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_22 = rf__22; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_23 = rf__23; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_24 = rf__24; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_25 = rf__25; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_26 = rf__26; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_27 = rf__27; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_28 = rf__28; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_29 = rf__29; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_30 = rf__30; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_31 = rf__31; // @[RegFile.scala 28:19]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 16:19]
      rf__0 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h0 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__0 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__1 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__1 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__2 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h2 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__2 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__3 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h3 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__3 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__4 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h4 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__4 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__5 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h5 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__5 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__6 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h6 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__6 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__7 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h7 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__7 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__8 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h8 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__8 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__9 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h9 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__9 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__10 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'ha == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__10 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__11 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'hb == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__11 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__12 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'hc == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__12 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__13 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'hd == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__13 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__14 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'he == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__14 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__15 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'hf == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__15 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__16 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h10 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__16 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__17 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h11 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__17 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__18 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h12 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__18 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__19 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h13 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__19 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__20 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h14 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__20 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__21 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h15 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__21 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__22 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h16 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__22 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__23 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h17 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__23 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__24 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h18 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__24 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__25 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h19 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__25 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__26 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1a == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__26 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__27 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1b == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__27 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__28 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1c == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__28 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__29 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1d == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__29 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__30 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1e == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__30 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__31 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_wen & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:44]
      if (5'h1f == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__31 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  rf__0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  rf__1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  rf__2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  rf__3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  rf__4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  rf__5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  rf__6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  rf__7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  rf__8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  rf__9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  rf__10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  rf__11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  rf__12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  rf__13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  rf__14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  rf__15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  rf__16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  rf__17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  rf__18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  rf__19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  rf__20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  rf__21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  rf__22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  rf__23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  rf__24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  rf__25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  rf__26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  rf__27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  rf__28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  rf__29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  rf__30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  rf__31 = _RAND_31[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ImmGen(
  input  [2:0]  io_imm_type,
  input  [31:0] io_inst,
  output [63:0] io_imm
);
  wire [52:0] imm_i_hi = io_inst[31] ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12]
  wire [10:0] imm_i_lo = io_inst[30:20]; // @[ImmGen.scala 16:43]
  wire [63:0] imm_i = {imm_i_hi,imm_i_lo}; // @[Cat.scala 30:58]
  wire [5:0] imm_s_hi_lo = io_inst[30:25]; // @[ImmGen.scala 17:43]
  wire [4:0] imm_s_lo = io_inst[11:7]; // @[ImmGen.scala 17:57]
  wire [63:0] imm_s = {imm_i_hi,imm_s_hi_lo,imm_s_lo}; // @[Cat.scala 30:58]
  wire [51:0] imm_b_hi_hi_hi = io_inst[31] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire  imm_b_hi_hi_lo = io_inst[7]; // @[ImmGen.scala 18:43]
  wire [3:0] imm_b_lo_hi = io_inst[11:8]; // @[ImmGen.scala 18:66]
  wire [63:0] imm_b = {imm_b_hi_hi_hi,imm_b_hi_hi_lo,imm_s_hi_lo,imm_b_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [32:0] imm_u_hi_hi = io_inst[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [18:0] imm_u_hi_lo = io_inst[30:12]; // @[ImmGen.scala 19:43]
  wire [63:0] imm_u = {imm_u_hi_hi,imm_u_hi_lo,12'h0}; // @[Cat.scala 30:58]
  wire [43:0] imm_j_hi_hi_hi = io_inst[31] ? 44'hfffffffffff : 44'h0; // @[Bitwise.scala 72:12]
  wire [7:0] imm_j_hi_hi_lo = io_inst[19:12]; // @[ImmGen.scala 20:43]
  wire  imm_j_hi_lo = io_inst[20]; // @[ImmGen.scala 20:57]
  wire [9:0] imm_j_lo_hi = io_inst[30:21]; // @[ImmGen.scala 20:67]
  wire [63:0] imm_j = {imm_j_hi_hi_hi,imm_j_hi_hi_lo,imm_j_hi_lo,imm_j_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [4:0] imm_csr_lo = io_inst[19:15]; // @[ImmGen.scala 21:38]
  wire [63:0] imm_csr = {59'h0,imm_csr_lo}; // @[Cat.scala 30:58]
  wire [63:0] _io_imm_T_1 = 3'h1 == io_imm_type ? imm_i : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_3 = 3'h2 == io_imm_type ? imm_s : _io_imm_T_1; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_5 = 3'h3 == io_imm_type ? imm_b : _io_imm_T_3; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_7 = 3'h4 == io_imm_type ? imm_u : _io_imm_T_5; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_9 = 3'h5 == io_imm_type ? imm_j : _io_imm_T_7; // @[Mux.scala 80:57]
  assign io_imm = 3'h7 == io_imm_type ? imm_csr : _io_imm_T_9; // @[Mux.scala 80:57]
endmodule
module ALU(
  input  [4:0]  io_alu_type,
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_alu_out
);
  wire [5:0] shamt = io_in2[5:0]; // @[ALU.scala 25:12]
  wire  _T = 5'h1 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_1 = io_in1 + io_in2; // @[ALU.scala 29:30]
  wire  _T_1 = 5'hd == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] alu_out_hi = _alu_out_T_1[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] alu_out_lo = _alu_out_T_1[31:0]; // @[ALU.scala 30:62]
  wire [63:0] _alu_out_T_8 = {alu_out_hi,alu_out_lo}; // @[Cat.scala 30:58]
  wire  _T_2 = 5'h2 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_10 = io_in1 - io_in2; // @[ALU.scala 31:30]
  wire  _T_3 = 5'h11 == io_alu_type; // @[Conditional.scala 37:30]
  wire [32:0] alu_out_hi_1 = _alu_out_T_10[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_1 = _alu_out_T_10[30:0]; // @[ALU.scala 32:74]
  wire [63:0] _alu_out_T_13 = {alu_out_hi_1,alu_out_lo_1}; // @[Cat.scala 30:58]
  wire  _T_4 = 5'h3 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_14 = io_in1; // @[ALU.scala 33:31]
  wire [63:0] _alu_out_T_15 = io_in2; // @[ALU.scala 33:44]
  wire  _T_5 = 5'h4 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_6 = 5'h5 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_18 = io_in1 ^ io_in2; // @[ALU.scala 35:31]
  wire  _T_7 = 5'h6 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_19 = io_in1 | io_in2; // @[ALU.scala 36:31]
  wire  _T_8 = 5'h7 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_20 = io_in1 & io_in2; // @[ALU.scala 37:31]
  wire  _T_9 = 5'h8 == io_alu_type; // @[Conditional.scala 37:30]
  wire [126:0] _GEN_20 = {{63'd0}, io_in1}; // @[ALU.scala 38:31]
  wire [126:0] _alu_out_T_21 = _GEN_20 << shamt; // @[ALU.scala 38:31]
  wire  _T_10 = 5'he == io_alu_type; // @[Conditional.scala 37:30]
  wire [94:0] _GEN_21 = {{31'd0}, io_in1}; // @[ALU.scala 39:29]
  wire [94:0] x_1 = _GEN_21 << shamt[4:0]; // @[ALU.scala 39:29]
  wire [32:0] alu_out_hi_2 = x_1[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_2 = x_1[30:0]; // @[ALU.scala 39:85]
  wire [63:0] _alu_out_T_25 = {alu_out_hi_2,alu_out_lo_2}; // @[Cat.scala 30:58]
  wire  _T_11 = 5'h9 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_26 = io_in1 >> shamt; // @[ALU.scala 40:31]
  wire  _T_12 = 5'hf == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] x_2 = io_in1[31:0] >> shamt[4:0]; // @[ALU.scala 41:42]
  wire [31:0] alu_out_hi_3 = x_2[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _alu_out_T_29 = {alu_out_hi_3,x_2}; // @[Cat.scala 30:58]
  wire  _T_13 = 5'ha == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_32 = $signed(io_in1) >>> shamt; // @[ALU.scala 42:54]
  wire  _T_14 = 5'h10 == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] _x_T_5 = io_in1[31:0]; // @[ALU.scala 43:35]
  wire [31:0] x_3 = $signed(_x_T_5) >>> shamt[4:0]; // @[ALU.scala 43:63]
  wire [32:0] alu_out_hi_4 = x_3[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_4 = x_3[30:0]; // @[ALU.scala 43:98]
  wire [63:0] _alu_out_T_35 = {alu_out_hi_4,alu_out_lo_4}; // @[Cat.scala 30:58]
  wire  _T_15 = 5'hb == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_16 = 5'hc == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_17 = 5'h12 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_18 = 5'h13 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_1 = _T_18 ? io_in2 : 64'h0; // @[Conditional.scala 39:67 ALU.scala 47:23]
  wire [63:0] _GEN_2 = _T_17 ? io_in1 : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 46:23]
  wire [63:0] _GEN_3 = _T_16 ? {{63'd0}, io_in1 >= io_in2} : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 45:23]
  wire [63:0] _GEN_4 = _T_15 ? {{63'd0}, $signed(_alu_out_T_14) >= $signed(_alu_out_T_15)} : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 44:23]
  wire [63:0] _GEN_5 = _T_14 ? _alu_out_T_35 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 43:74]
  wire [63:0] _GEN_6 = _T_13 ? _alu_out_T_32 : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 42:23]
  wire [63:0] _GEN_7 = _T_12 ? _alu_out_T_29 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 41:73]
  wire [63:0] _GEN_8 = _T_11 ? _alu_out_T_26 : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 40:23]
  wire [63:0] _GEN_9 = _T_10 ? _alu_out_T_25 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 39:61]
  wire [63:0] _GEN_10 = _T_9 ? _alu_out_T_21[63:0] : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 38:23]
  wire [63:0] _GEN_11 = _T_8 ? _alu_out_T_20 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 37:23]
  wire [63:0] _GEN_12 = _T_7 ? _alu_out_T_19 : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 36:23]
  wire [63:0] _GEN_13 = _T_6 ? _alu_out_T_18 : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 35:23]
  wire [63:0] _GEN_14 = _T_5 ? {{63'd0}, io_in1 < io_in2} : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 34:23]
  wire [63:0] _GEN_15 = _T_4 ? {{63'd0}, $signed(_alu_out_T_14) < $signed(_alu_out_T_15)} : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 33:23]
  wire [63:0] _GEN_16 = _T_3 ? _alu_out_T_13 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 32:51]
  wire [63:0] _GEN_17 = _T_2 ? _alu_out_T_10 : _GEN_16; // @[Conditional.scala 39:67 ALU.scala 31:23]
  wire [63:0] _GEN_18 = _T_1 ? _alu_out_T_8 : _GEN_17; // @[Conditional.scala 39:67 ALU.scala 30:23]
  assign io_alu_out = _T ? _alu_out_T_1 : _GEN_18; // @[Conditional.scala 40:58 ALU.scala 29:23]
endmodule
module Clint(
  input         clock,
  input         reset,
  input         io_time_valid,
  input         io_cmp_wen,
  input  [63:0] io_cmp_wdata,
  output        io_time_intrpt,
  input  [63:0] csr_mie,
  input  [63:0] csr_status
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] mtime; // @[Clint.scala 31:26]
  reg [63:0] mtimecmp; // @[Clint.scala 32:26]
  wire [63:0] _mtime_T_1 = mtime + 64'h1; // @[Clint.scala 34:18]
  wire [67:0] _mtimecmp_T = io_cmp_wdata * 4'ha; // @[Clint.scala 37:37]
  wire [67:0] _GEN_2 = {{4'd0}, mtimecmp}; // @[Clint.scala 37:26]
  wire [67:0] _mtimecmp_T_2 = _GEN_2 + _mtimecmp_T; // @[Clint.scala 37:26]
  wire [67:0] _GEN_0 = io_cmp_wen ? _mtimecmp_T_2 : {{4'd0}, mtimecmp}; // @[Clint.scala 36:18 Clint.scala 37:14 Clint.scala 32:26]
  assign io_time_intrpt = mtime >= mtimecmp & csr_status[3] & csr_mie[7] & io_time_valid; // @[Clint.scala 45:80]
  always @(posedge clock) begin
    if (reset) begin // @[Clint.scala 31:26]
      mtime <= 64'h0; // @[Clint.scala 31:26]
    end else begin
      mtime <= _mtime_T_1; // @[Clint.scala 34:9]
    end
    if (reset) begin // @[Clint.scala 32:26]
      mtimecmp <= 64'h0; // @[Clint.scala 32:26]
    end else begin
      mtimecmp <= _GEN_0[63:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  mtime = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  mtimecmp = _RAND_1[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CSR(
  input         clock,
  input         reset,
  input  [31:0] io_pc,
  input  [31:0] io_pc_timer,
  input  [31:0] io_inst,
  input  [2:0]  io_csr_type,
  input  [63:0] io_in_data,
  input         io_time_intrpt,
  output [63:0] io_out,
  output        io_jmp,
  output [31:0] io_jmp_pc,
  output        io_intrpt,
  output [31:0] io_intrpt_pc,
  output [63:0] io_intrpt_no,
  output        io_rd_wen,
  output [63:0] io_mie,
  output [63:0] io_mstatus,
  output [63:0] io_mepc,
  output [63:0] io_mtvec,
  output [63:0] io_mcause,
  output [63:0] io_mscratch,
  input  [63:0] csr_minstret,
  output [63:0] mie_0,
  output [63:0] mstatus_0,
  input  [63:0] csr_mcycle
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  csr_rw = io_csr_type == 3'h3 | io_csr_type == 3'h4 | io_csr_type == 3'h5; // @[CSR.scala 39:69]
  reg [63:0] mstatus; // @[CSR.scala 47:26]
  reg [63:0] mie; // @[CSR.scala 48:26]
  reg [63:0] mtvec; // @[CSR.scala 49:26]
  reg [63:0] mscratch; // @[CSR.scala 50:26]
  reg [63:0] mepc; // @[CSR.scala 51:26]
  reg [63:0] mcause; // @[CSR.scala 52:26]
  reg [63:0] mcycle; // @[CSR.scala 55:26]
  reg [63:0] minstret; // @[CSR.scala 56:26]
  wire  csr_ecall = io_csr_type == 3'h1; // @[CSR.scala 64:21]
  wire [50:0] mstatus_hi_hi_hi = mstatus[63:13]; // @[CSR.scala 67:27]
  wire [2:0] mstatus_hi_lo_hi = mstatus[10:8]; // @[CSR.scala 67:57]
  wire  mstatus_hi_lo_lo = mstatus[3]; // @[CSR.scala 67:72]
  wire [2:0] mstatus_lo_hi_hi = mstatus[6:4]; // @[CSR.scala 67:84]
  wire [2:0] mstatus_lo_lo = mstatus[2:0]; // @[CSR.scala 67:104]
  wire [63:0] _mstatus_T = {mstatus_hi_hi_hi,2'h3,mstatus_hi_lo_hi,mstatus_hi_lo_lo,mstatus_lo_hi_hi,1'h0,mstatus_lo_lo}
    ; // @[Cat.scala 30:58]
  wire [29:0] csr_jmp_pc_hi = mtvec[31:2]; // @[CSR.scala 69:28]
  wire [31:0] _csr_jmp_pc_T = {csr_jmp_pc_hi,2'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = csr_ecall ? {{32'd0}, io_pc} : mepc; // @[CSR.scala 64:36 CSR.scala 65:10 CSR.scala 51:26]
  wire [63:0] _GEN_1 = csr_ecall ? 64'hb : mcause; // @[CSR.scala 64:36 CSR.scala 66:12 CSR.scala 52:26]
  wire [63:0] _GEN_2 = csr_ecall ? _mstatus_T : mstatus; // @[CSR.scala 64:36 CSR.scala 67:13 CSR.scala 47:26]
  wire [31:0] _GEN_4 = csr_ecall ? _csr_jmp_pc_T : 32'h0; // @[CSR.scala 64:36 CSR.scala 69:16]
  wire  csr_mret = io_csr_type == 3'h2; // @[CSR.scala 73:21]
  wire  mstatus_lo_hi_lo = mstatus[7]; // @[CSR.scala 74:92]
  wire [63:0] _mstatus_T_1 = {mstatus_hi_hi_hi,2'h0,mstatus_hi_lo_hi,1'h1,mstatus_lo_hi_hi,mstatus_lo_hi_lo,
    mstatus_lo_lo}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_5 = csr_mret ? _mstatus_T_1 : _GEN_2; // @[CSR.scala 73:35 CSR.scala 74:13]
  wire [63:0] _GEN_8 = io_time_intrpt ? {{32'd0}, io_pc_timer} : _GEN_0; // @[CSR.scala 88:23 CSR.scala 90:14]
  wire [63:0] _GEN_9 = io_time_intrpt ? 64'h8000000000000007 : _GEN_1; // @[CSR.scala 88:23 CSR.scala 91:16]
  wire [63:0] _GEN_10 = io_time_intrpt ? _mstatus_T : _GEN_5; // @[CSR.scala 88:23 CSR.scala 92:17]
  wire [2:0] _GEN_12 = io_time_intrpt ? 3'h7 : 3'h0; // @[CSR.scala 88:23 CSR.scala 94:22 CSR.scala 84:14]
  wire [11:0] addr = io_inst[31:20]; // @[CSR.scala 105:22]
  wire [63:0] _rdata_T_1 = 12'h300 == addr ? mstatus : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_3 = 12'h342 == addr ? mcause : _rdata_T_1; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_5 = 12'h304 == addr ? mie : _rdata_T_3; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_7 = 12'h305 == addr ? mtvec : _rdata_T_5; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_9 = 12'h340 == addr ? mscratch : _rdata_T_7; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_11 = 12'h341 == addr ? mepc : _rdata_T_9; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_13 = 12'h344 == addr ? 64'h0 : _rdata_T_11; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_15 = 12'hb00 == addr ? mcycle : _rdata_T_13; // @[Mux.scala 80:57]
  wire [63:0] rdata = 12'hb02 == addr ? minstret : _rdata_T_15; // @[Mux.scala 80:57]
  wire [63:0] _wdata_T = rdata | io_in_data; // @[CSR.scala 113:22]
  wire [63:0] _wdata_T_1 = ~io_in_data; // @[CSR.scala 114:24]
  wire [63:0] _wdata_T_2 = rdata & _wdata_T_1; // @[CSR.scala 114:22]
  wire [63:0] _wdata_T_4 = 3'h3 == io_csr_type ? io_in_data : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _wdata_T_6 = 3'h4 == io_csr_type ? _wdata_T : _wdata_T_4; // @[Mux.scala 80:57]
  wire [63:0] wdata = 3'h5 == io_csr_type ? _wdata_T_2 : _wdata_T_6; // @[Mux.scala 80:57]
  wire  mstatus_hi_hi_hi_3 = wdata[16] & wdata[15] | wdata[14] & wdata[13]; // @[CSR.scala 145:67]
  wire [49:0] mstatus_hi_hi_lo_3 = wdata[62:13]; // @[CSR.scala 145:100]
  wire [10:0] mstatus_lo_lo_3 = wdata[10:0]; // @[CSR.scala 145:122]
  wire [63:0] _mstatus_T_9 = {mstatus_hi_hi_hi_3,mstatus_hi_hi_lo_3,1'h1,1'h1,mstatus_lo_lo_3}; // @[Cat.scala 30:58]
  wire [62:0] mstatus_lo_4 = wdata[62:0]; // @[CSR.scala 147:90]
  wire [63:0] _mstatus_T_16 = {mstatus_hi_hi_hi_3,mstatus_lo_4}; // @[Cat.scala 30:58]
  assign io_out = 12'hb02 == addr ? minstret : _rdata_T_15; // @[Mux.scala 80:57]
  assign io_jmp = csr_ecall | csr_mret; // @[CSR.scala 79:22]
  assign io_jmp_pc = csr_mret ? mepc[31:0] : _GEN_4; // @[CSR.scala 73:35 CSR.scala 76:16]
  assign io_intrpt = io_time_intrpt; // @[CSR.scala 88:23 CSR.scala 93:19 CSR.scala 83:11]
  assign io_intrpt_pc = io_time_intrpt ? _csr_jmp_pc_T : 32'h0; // @[CSR.scala 88:23 CSR.scala 95:22 CSR.scala 85:14]
  assign io_intrpt_no = {{61'd0}, _GEN_12}; // @[CSR.scala 88:23 CSR.scala 94:22 CSR.scala 84:14]
  assign io_rd_wen = io_csr_type == 3'h3 | io_csr_type == 3'h4 | io_csr_type == 3'h5; // @[CSR.scala 39:69]
  assign io_mie = mie; // @[CSR.scala 169:16]
  assign io_mstatus = mstatus; // @[CSR.scala 170:16]
  assign io_mepc = mepc; // @[CSR.scala 171:16]
  assign io_mtvec = mtvec; // @[CSR.scala 172:16]
  assign io_mcause = mcause; // @[CSR.scala 173:16]
  assign io_mscratch = mscratch; // @[CSR.scala 174:16]
  assign mie_0 = mie;
  assign mstatus_0 = mstatus;
  always @(posedge clock) begin
    if (reset) begin // @[CSR.scala 47:26]
      mstatus <= 64'h1800; // @[CSR.scala 47:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h300) begin // @[CSR.scala 144:37]
        if (io_time_intrpt) begin // @[CSR.scala 145:27]
          mstatus <= _mstatus_T_9; // @[CSR.scala 145:36]
        end else begin
          mstatus <= _mstatus_T_16; // @[CSR.scala 147:26]
        end
      end else begin
        mstatus <= _GEN_10;
      end
    end else begin
      mstatus <= _GEN_10;
    end
    if (reset) begin // @[CSR.scala 48:26]
      mie <= 64'h0; // @[CSR.scala 48:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h304) begin // @[CSR.scala 150:33]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mie <= _wdata_T_2;
        end else begin
          mie <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 49:26]
      mtvec <= 64'h0; // @[CSR.scala 49:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h305) begin // @[CSR.scala 135:35]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mtvec <= _wdata_T_2;
        end else begin
          mtvec <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 50:26]
      mscratch <= 64'h0; // @[CSR.scala 50:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h340) begin // @[CSR.scala 153:38]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mscratch <= _wdata_T_2;
        end else begin
          mscratch <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 51:26]
      mepc <= 64'h0; // @[CSR.scala 51:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h341) begin // @[CSR.scala 138:34]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mepc <= _wdata_T_2;
        end else begin
          mepc <= _wdata_T_6;
        end
      end else begin
        mepc <= _GEN_8;
      end
    end else begin
      mepc <= _GEN_8;
    end
    if (reset) begin // @[CSR.scala 52:26]
      mcause <= 64'h0; // @[CSR.scala 52:26]
    end else if (csr_rw) begin // @[CSR.scala 131:13]
      if (addr == 12'h342) begin // @[CSR.scala 141:36]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mcause <= _wdata_T_2;
        end else begin
          mcause <= _wdata_T_6;
        end
      end else begin
        mcause <= _GEN_9;
      end
    end else begin
      mcause <= _GEN_9;
    end
    if (reset) begin // @[CSR.scala 55:26]
      mcycle <= 64'h0; // @[CSR.scala 55:26]
    end else begin
      mcycle <= csr_mcycle;
    end
    if (reset) begin // @[CSR.scala 56:26]
      minstret <= 64'h0; // @[CSR.scala 56:26]
    end else begin
      minstret <= csr_minstret;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  mstatus = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  mie = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  mtvec = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  mscratch = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  mepc = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  mcause = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  mcycle = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  minstret = _RAND_7[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Nxt_PC(
  input  [31:0] io_pc,
  input  [63:0] io_imm,
  input  [63:0] io_rs1_data,
  input  [63:0] io_alu_out,
  input         io_csr_jmp,
  input         io_intrpt_jmp,
  input  [2:0]  io_op2_type,
  input  [2:0]  io_imm_type,
  input  [4:0]  io_alu_type,
  input  [63:0] io_csr_jmp_pc,
  input  [63:0] io_intrpt_jmp_pc,
  output [31:0] io_pc_nxt,
  output        io_pc_jmp
);
  wire  _T = io_imm_type == 3'h3; // @[NXT_PC.scala 27:24]
  wire [63:0] _GEN_14 = {{32'd0}, io_pc}; // @[NXT_PC.scala 29:22]
  wire [63:0] _io_pc_nxt_T_1 = _GEN_14 + io_imm; // @[NXT_PC.scala 29:22]
  wire  _T_10 = io_alu_out != 64'h0; // @[NXT_PC.scala 30:107]
  wire [63:0] x = io_rs1_data + io_imm; // @[NXT_PC.scala 42:23]
  wire [62:0] io_pc_nxt_hi = x[63:1]; // @[NXT_PC.scala 43:21]
  wire [63:0] _io_pc_nxt_T_8 = {io_pc_nxt_hi,1'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = io_csr_jmp ? io_csr_jmp_pc : 64'h0; // @[NXT_PC.scala 44:23 NXT_PC.scala 45:13 NXT_PC.scala 50:11]
  wire [63:0] _GEN_2 = io_op2_type == 3'h4 & io_imm_type == 3'h1 ? _io_pc_nxt_T_8 : _GEN_0; // @[NXT_PC.scala 40:59 NXT_PC.scala 43:13]
  wire  _GEN_3 = io_op2_type == 3'h4 & io_imm_type == 3'h1 | io_csr_jmp; // @[NXT_PC.scala 40:59 NXT_PC.scala 23:11]
  wire [63:0] _GEN_4 = io_imm_type == 3'h5 ? _io_pc_nxt_T_1 : _GEN_2; // @[NXT_PC.scala 37:34 NXT_PC.scala 39:13]
  wire  _GEN_5 = io_imm_type == 3'h5 | _GEN_3; // @[NXT_PC.scala 37:34 NXT_PC.scala 23:11]
  wire [63:0] _GEN_6 = _T & io_alu_type != 5'h2 & _T_10 ? _io_pc_nxt_T_1 : _GEN_4; // @[NXT_PC.scala 34:83 NXT_PC.scala 36:13]
  wire  _GEN_7 = _T & io_alu_type != 5'h2 & _T_10 | _GEN_5; // @[NXT_PC.scala 34:83 NXT_PC.scala 23:11]
  wire [63:0] _GEN_8 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 ? _io_pc_nxt_T_1 : _GEN_6; // @[NXT_PC.scala 30:115 NXT_PC.scala 32:12]
  wire  _GEN_9 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 | _GEN_7; // @[NXT_PC.scala 30:115 NXT_PC.scala 23:11]
  wire [63:0] _GEN_10 = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 ? _io_pc_nxt_T_1 : _GEN_8; // @[NXT_PC.scala 27:83 NXT_PC.scala 29:13]
  wire  _GEN_11 = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 | _GEN_9; // @[NXT_PC.scala 27:83 NXT_PC.scala 23:11]
  wire [63:0] _GEN_12 = io_intrpt_jmp ? io_intrpt_jmp_pc : _GEN_10; // @[NXT_PC.scala 25:20 NXT_PC.scala 26:13]
  assign io_pc_nxt = _GEN_12[31:0];
  assign io_pc_jmp = io_intrpt_jmp | _GEN_11; // @[NXT_PC.scala 25:20 NXT_PC.scala 23:11]
endmodule
module LSU(
  input  [2:0]  io_mem_rtype,
  input  [2:0]  io_wb_type,
  input  [63:0] io_dmem_addr,
  input  [63:0] io_dmem_rdata,
  input  [63:0] io_rs2_data,
  output [63:0] io_mem_rdata,
  output [63:0] io_dmem_wdata,
  output [7:0]  io_dmem_strb
);
  wire  _T_3 = 3'h1 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_1 = io_dmem_addr[2:0] == 3'h0; // @[LSU.scala 51:34]
  wire [55:0] mem_rdata_hi = io_dmem_rdata[7] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo = io_dmem_rdata[7:0]; // @[LSU.scala 51:91]
  wire [63:0] _mem_rdata_T_4 = {mem_rdata_hi,mem_rdata_lo}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_6 = io_dmem_addr[2:0] == 3'h1; // @[LSU.scala 52:34]
  wire [55:0] mem_rdata_hi_1 = io_dmem_rdata[15] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_1 = io_dmem_rdata[15:8]; // @[LSU.scala 52:91]
  wire [63:0] _mem_rdata_T_9 = {mem_rdata_hi_1,mem_rdata_lo_1}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_11 = io_dmem_addr[2:0] == 3'h2; // @[LSU.scala 53:34]
  wire [55:0] mem_rdata_hi_2 = io_dmem_rdata[23] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_2 = io_dmem_rdata[23:16]; // @[LSU.scala 53:91]
  wire [63:0] _mem_rdata_T_14 = {mem_rdata_hi_2,mem_rdata_lo_2}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_16 = io_dmem_addr[2:0] == 3'h3; // @[LSU.scala 54:34]
  wire [55:0] mem_rdata_hi_3 = io_dmem_rdata[31] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_3 = io_dmem_rdata[31:24]; // @[LSU.scala 54:91]
  wire [63:0] _mem_rdata_T_19 = {mem_rdata_hi_3,mem_rdata_lo_3}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_21 = io_dmem_addr[2:0] == 3'h4; // @[LSU.scala 55:34]
  wire [55:0] mem_rdata_hi_4 = io_dmem_rdata[39] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_4 = io_dmem_rdata[39:32]; // @[LSU.scala 55:91]
  wire [63:0] _mem_rdata_T_24 = {mem_rdata_hi_4,mem_rdata_lo_4}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_26 = io_dmem_addr[2:0] == 3'h5; // @[LSU.scala 56:34]
  wire [55:0] mem_rdata_hi_5 = io_dmem_rdata[47] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_5 = io_dmem_rdata[47:40]; // @[LSU.scala 56:91]
  wire [63:0] _mem_rdata_T_29 = {mem_rdata_hi_5,mem_rdata_lo_5}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_31 = io_dmem_addr[2:0] == 3'h6; // @[LSU.scala 57:34]
  wire [55:0] mem_rdata_hi_6 = io_dmem_rdata[55] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_6 = io_dmem_rdata[55:48]; // @[LSU.scala 57:91]
  wire [63:0] _mem_rdata_T_34 = {mem_rdata_hi_6,mem_rdata_lo_6}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_36 = io_dmem_addr[2:0] == 3'h7; // @[LSU.scala 58:34]
  wire [55:0] mem_rdata_hi_7 = io_dmem_rdata[63] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_7 = io_dmem_rdata[63:56]; // @[LSU.scala 58:91]
  wire [63:0] _mem_rdata_T_39 = {mem_rdata_hi_7,mem_rdata_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_40 = _mem_rdata_T_36 ? _mem_rdata_T_39 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_41 = _mem_rdata_T_31 ? _mem_rdata_T_34 : _mem_rdata_T_40; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_42 = _mem_rdata_T_26 ? _mem_rdata_T_29 : _mem_rdata_T_41; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_43 = _mem_rdata_T_21 ? _mem_rdata_T_24 : _mem_rdata_T_42; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_44 = _mem_rdata_T_16 ? _mem_rdata_T_19 : _mem_rdata_T_43; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_45 = _mem_rdata_T_11 ? _mem_rdata_T_14 : _mem_rdata_T_44; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_46 = _mem_rdata_T_6 ? _mem_rdata_T_9 : _mem_rdata_T_45; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_47 = _mem_rdata_T_1 ? _mem_rdata_T_4 : _mem_rdata_T_46; // @[Mux.scala 98:16]
  wire  _T_4 = 3'h2 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_49 = io_dmem_addr[2:1] == 2'h0; // @[LSU.scala 66:34]
  wire [47:0] mem_rdata_hi_8 = io_dmem_rdata[15] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_8 = io_dmem_rdata[15:0]; // @[LSU.scala 66:90]
  wire [63:0] _mem_rdata_T_52 = {mem_rdata_hi_8,mem_rdata_lo_8}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_54 = io_dmem_addr[2:1] == 2'h1; // @[LSU.scala 67:34]
  wire [47:0] mem_rdata_hi_9 = io_dmem_rdata[31] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_9 = io_dmem_rdata[31:16]; // @[LSU.scala 67:90]
  wire [63:0] _mem_rdata_T_57 = {mem_rdata_hi_9,mem_rdata_lo_9}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_59 = io_dmem_addr[2:1] == 2'h2; // @[LSU.scala 68:34]
  wire [47:0] mem_rdata_hi_10 = io_dmem_rdata[47] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_10 = io_dmem_rdata[47:32]; // @[LSU.scala 68:90]
  wire [63:0] _mem_rdata_T_62 = {mem_rdata_hi_10,mem_rdata_lo_10}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_64 = io_dmem_addr[2:1] == 2'h3; // @[LSU.scala 69:34]
  wire [47:0] mem_rdata_hi_11 = io_dmem_rdata[63] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_11 = io_dmem_rdata[63:48]; // @[LSU.scala 69:90]
  wire [63:0] _mem_rdata_T_67 = {mem_rdata_hi_11,mem_rdata_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_68 = _mem_rdata_T_64 ? _mem_rdata_T_67 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_69 = _mem_rdata_T_59 ? _mem_rdata_T_62 : _mem_rdata_T_68; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_70 = _mem_rdata_T_54 ? _mem_rdata_T_57 : _mem_rdata_T_69; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_71 = _mem_rdata_T_49 ? _mem_rdata_T_52 : _mem_rdata_T_70; // @[Mux.scala 98:16]
  wire  _T_5 = 3'h3 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_73 = ~io_dmem_addr[2]; // @[LSU.scala 78:32]
  wire [31:0] mem_rdata_hi_12 = io_dmem_rdata[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] mem_rdata_lo_12 = io_dmem_rdata[31:0]; // @[LSU.scala 78:86]
  wire [63:0] _mem_rdata_T_76 = {mem_rdata_hi_12,mem_rdata_lo_12}; // @[Cat.scala 30:58]
  wire [31:0] mem_rdata_hi_13 = io_dmem_rdata[63] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] mem_rdata_lo_13 = io_dmem_rdata[63:32]; // @[LSU.scala 79:86]
  wire [63:0] _mem_rdata_T_81 = {mem_rdata_hi_13,mem_rdata_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_82 = io_dmem_addr[2] ? _mem_rdata_T_81 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_83 = _mem_rdata_T_73 ? _mem_rdata_T_76 : _mem_rdata_T_82; // @[Mux.scala 98:16]
  wire  _T_6 = 3'h4 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_7 = 3'h5 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_86 = {56'h0,mem_rdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_89 = {56'h0,mem_rdata_lo_1}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_92 = {56'h0,mem_rdata_lo_2}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_95 = {56'h0,mem_rdata_lo_3}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_98 = {56'h0,mem_rdata_lo_4}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_101 = {56'h0,mem_rdata_lo_5}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_104 = {56'h0,mem_rdata_lo_6}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_107 = {56'h0,mem_rdata_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_108 = _mem_rdata_T_36 ? _mem_rdata_T_107 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_109 = _mem_rdata_T_31 ? _mem_rdata_T_104 : _mem_rdata_T_108; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_110 = _mem_rdata_T_26 ? _mem_rdata_T_101 : _mem_rdata_T_109; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_111 = _mem_rdata_T_21 ? _mem_rdata_T_98 : _mem_rdata_T_110; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_112 = _mem_rdata_T_16 ? _mem_rdata_T_95 : _mem_rdata_T_111; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_113 = _mem_rdata_T_11 ? _mem_rdata_T_92 : _mem_rdata_T_112; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_114 = _mem_rdata_T_6 ? _mem_rdata_T_89 : _mem_rdata_T_113; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_115 = _mem_rdata_T_1 ? _mem_rdata_T_86 : _mem_rdata_T_114; // @[Mux.scala 98:16]
  wire  _T_8 = 3'h6 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_118 = {48'h0,mem_rdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_121 = {48'h0,mem_rdata_lo_9}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_124 = {48'h0,mem_rdata_lo_10}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_127 = {48'h0,mem_rdata_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_128 = _mem_rdata_T_64 ? _mem_rdata_T_127 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_129 = _mem_rdata_T_59 ? _mem_rdata_T_124 : _mem_rdata_T_128; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_130 = _mem_rdata_T_54 ? _mem_rdata_T_121 : _mem_rdata_T_129; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_131 = _mem_rdata_T_49 ? _mem_rdata_T_118 : _mem_rdata_T_130; // @[Mux.scala 98:16]
  wire  _T_9 = 3'h7 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_134 = {32'h0,mem_rdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_137 = {32'h0,mem_rdata_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_138 = io_dmem_addr[2] ? _mem_rdata_T_137 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_139 = _mem_rdata_T_73 ? _mem_rdata_T_134 : _mem_rdata_T_138; // @[Mux.scala 98:16]
  wire [63:0] _GEN_0 = _T_9 ? _mem_rdata_T_139 : 64'h0; // @[Conditional.scala 39:67 LSU.scala 109:10]
  wire [63:0] _GEN_1 = _T_8 ? _mem_rdata_T_131 : _GEN_0; // @[Conditional.scala 39:67 LSU.scala 100:10]
  wire [63:0] _GEN_2 = _T_7 ? _mem_rdata_T_115 : _GEN_1; // @[Conditional.scala 39:67 LSU.scala 87:10]
  wire [63:0] _GEN_3 = _T_6 ? io_dmem_rdata : _GEN_2; // @[Conditional.scala 39:67 LSU.scala 83:22]
  wire [63:0] _GEN_4 = _T_5 ? _mem_rdata_T_83 : _GEN_3; // @[Conditional.scala 39:67 LSU.scala 77:10]
  wire [63:0] _GEN_5 = _T_4 ? _mem_rdata_T_71 : _GEN_4; // @[Conditional.scala 39:67 LSU.scala 65:10]
  wire [63:0] _GEN_6 = _T_3 ? _mem_rdata_T_47 : _GEN_5; // @[Conditional.scala 40:58 LSU.scala 50:10]
  wire [7:0] dmem_wdata_lo = io_rs2_data[7:0]; // @[LSU.scala 123:40]
  wire [63:0] _dmem_wdata_T = {56'h0,dmem_wdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_1 = {48'h0,dmem_wdata_lo,8'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_2 = {40'h0,dmem_wdata_lo,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_3 = {32'h0,dmem_wdata_lo,24'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_4 = {24'h0,dmem_wdata_lo,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_5 = {16'h0,dmem_wdata_lo,40'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_6 = {8'h0,dmem_wdata_lo,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_7 = {dmem_wdata_lo,56'h0}; // @[Cat.scala 30:58]
  wire [7:0] _GEN_9 = _mem_rdata_T_36 ? 8'h80 : 8'h0; // @[LSU.scala 148:38 LSU.scala 150:12]
  wire [63:0] _GEN_10 = _mem_rdata_T_36 ? _dmem_wdata_T_7 : 64'h0; // @[LSU.scala 148:38 LSU.scala 151:11]
  wire [7:0] _GEN_12 = _mem_rdata_T_31 ? 8'h40 : _GEN_9; // @[LSU.scala 144:38 LSU.scala 146:12]
  wire [63:0] _GEN_13 = _mem_rdata_T_31 ? _dmem_wdata_T_6 : _GEN_10; // @[LSU.scala 144:38 LSU.scala 147:11]
  wire [7:0] _GEN_15 = _mem_rdata_T_26 ? 8'h20 : _GEN_12; // @[LSU.scala 140:38 LSU.scala 142:12]
  wire [63:0] _GEN_16 = _mem_rdata_T_26 ? _dmem_wdata_T_5 : _GEN_13; // @[LSU.scala 140:38 LSU.scala 143:11]
  wire [7:0] _GEN_18 = _mem_rdata_T_21 ? 8'h10 : _GEN_15; // @[LSU.scala 136:38 LSU.scala 138:12]
  wire [63:0] _GEN_19 = _mem_rdata_T_21 ? _dmem_wdata_T_4 : _GEN_16; // @[LSU.scala 136:38 LSU.scala 139:11]
  wire [7:0] _GEN_21 = _mem_rdata_T_16 ? 8'h8 : _GEN_18; // @[LSU.scala 132:38 LSU.scala 134:12]
  wire [63:0] _GEN_22 = _mem_rdata_T_16 ? _dmem_wdata_T_3 : _GEN_19; // @[LSU.scala 132:38 LSU.scala 135:11]
  wire [7:0] _GEN_24 = _mem_rdata_T_11 ? 8'h4 : _GEN_21; // @[LSU.scala 128:38 LSU.scala 130:12]
  wire [63:0] _GEN_25 = _mem_rdata_T_11 ? _dmem_wdata_T_2 : _GEN_22; // @[LSU.scala 128:38 LSU.scala 131:11]
  wire [7:0] _GEN_27 = _mem_rdata_T_6 ? 8'h2 : _GEN_24; // @[LSU.scala 124:38 LSU.scala 126:12]
  wire [63:0] _GEN_28 = _mem_rdata_T_6 ? _dmem_wdata_T_1 : _GEN_25; // @[LSU.scala 124:38 LSU.scala 127:11]
  wire [7:0] _GEN_30 = _mem_rdata_T_1 ? 8'h1 : _GEN_27; // @[LSU.scala 120:32 LSU.scala 122:12]
  wire [63:0] _GEN_31 = _mem_rdata_T_1 ? _dmem_wdata_T : _GEN_28; // @[LSU.scala 120:32 LSU.scala 123:11]
  wire [15:0] dmem_wdata_lo_8 = io_rs2_data[15:0]; // @[LSU.scala 159:40]
  wire [63:0] _dmem_wdata_T_8 = {48'h0,dmem_wdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_9 = {32'h0,dmem_wdata_lo_8,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_10 = {16'h0,dmem_wdata_lo_8,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_11 = {dmem_wdata_lo_8,48'h0}; // @[Cat.scala 30:58]
  wire [7:0] _GEN_33 = _mem_rdata_T_64 ? 8'hc0 : 8'h0; // @[LSU.scala 168:37 LSU.scala 170:12]
  wire [63:0] _GEN_34 = _mem_rdata_T_64 ? _dmem_wdata_T_11 : 64'h0; // @[LSU.scala 168:37 LSU.scala 171:11]
  wire [7:0] _GEN_36 = _mem_rdata_T_59 ? 8'h30 : _GEN_33; // @[LSU.scala 164:37 LSU.scala 166:12]
  wire [63:0] _GEN_37 = _mem_rdata_T_59 ? _dmem_wdata_T_10 : _GEN_34; // @[LSU.scala 164:37 LSU.scala 167:11]
  wire [7:0] _GEN_39 = _mem_rdata_T_54 ? 8'hc : _GEN_36; // @[LSU.scala 160:37 LSU.scala 162:12]
  wire [63:0] _GEN_40 = _mem_rdata_T_54 ? _dmem_wdata_T_9 : _GEN_37; // @[LSU.scala 160:37 LSU.scala 163:11]
  wire [7:0] _GEN_42 = _mem_rdata_T_49 ? 8'h3 : _GEN_39; // @[LSU.scala 156:31 LSU.scala 158:12]
  wire [63:0] _GEN_43 = _mem_rdata_T_49 ? _dmem_wdata_T_8 : _GEN_40; // @[LSU.scala 156:31 LSU.scala 159:11]
  wire [31:0] dmem_wdata_lo_12 = io_rs2_data[31:0]; // @[LSU.scala 183:40]
  wire [63:0] _dmem_wdata_T_12 = {32'h0,dmem_wdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_13 = {dmem_wdata_lo_12,32'h0}; // @[Cat.scala 30:58]
  wire [7:0] _GEN_45 = io_dmem_addr[2] ? 8'hf0 : 8'h0; // @[LSU.scala 184:34 LSU.scala 186:12]
  wire [63:0] _GEN_46 = io_dmem_addr[2] ? _dmem_wdata_T_13 : 64'h0; // @[LSU.scala 184:34 LSU.scala 187:11]
  wire [7:0] _GEN_48 = _mem_rdata_T_73 ? 8'hf : _GEN_45; // @[LSU.scala 180:28 LSU.scala 182:12]
  wire [63:0] _GEN_49 = _mem_rdata_T_73 ? _dmem_wdata_T_12 : _GEN_46; // @[LSU.scala 180:28 LSU.scala 183:11]
  wire [7:0] _GEN_51 = io_wb_type == 3'h5 ? 8'hff : 8'h0; // @[LSU.scala 191:36 LSU.scala 194:12]
  wire [63:0] _GEN_52 = io_wb_type == 3'h5 ? io_rs2_data : 64'h0; // @[LSU.scala 191:36 LSU.scala 195:11]
  wire [7:0] _GEN_54 = io_wb_type == 3'h4 ? _GEN_48 : _GEN_51; // @[LSU.scala 177:36]
  wire [63:0] _GEN_55 = io_wb_type == 3'h4 ? _GEN_49 : _GEN_52; // @[LSU.scala 177:36]
  wire [7:0] _GEN_57 = io_wb_type == 3'h3 ? _GEN_42 : _GEN_54; // @[LSU.scala 154:36]
  wire [63:0] _GEN_58 = io_wb_type == 3'h3 ? _GEN_43 : _GEN_55; // @[LSU.scala 154:36]
  assign io_mem_rdata = io_wb_type == 3'h1 & io_mem_rtype != 3'h0 ? _GEN_6 : 64'h0; // @[LSU.scala 43:54]
  assign io_dmem_wdata = io_wb_type == 3'h2 ? _GEN_31 : _GEN_58; // @[LSU.scala 118:30]
  assign io_dmem_strb = io_wb_type == 3'h2 ? _GEN_30 : _GEN_57; // @[LSU.scala 118:30]
endmodule
module Core(
  input         clock,
  input         reset,
  input         io_imem_inst_ready,
  output        io_imem_inst_req,
  output [31:0] io_imem_inst_addr,
  input  [31:0] io_imem_inst_read,
  input         io_dmem_data_ready,
  output        io_dmem_data_req_r,
  output        io_dmem_data_req_w,
  output [31:0] io_dmem_data_addr_r,
  output [31:0] io_dmem_data_addr_w,
  output [7:0]  io_dmem_data_strb,
  input  [63:0] io_dmem_data_read,
  output [63:0] io_dmem_data_write
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [31:0] _RAND_84;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decode_io_inst; // @[Core.scala 63:20]
  wire [4:0] decode_io_alu_type; // @[Core.scala 63:20]
  wire [2:0] decode_io_op1_type; // @[Core.scala 63:20]
  wire [2:0] decode_io_op2_type; // @[Core.scala 63:20]
  wire [2:0] decode_io_imm_type; // @[Core.scala 63:20]
  wire [2:0] decode_io_mem_rtype; // @[Core.scala 63:20]
  wire [2:0] decode_io_wb_type; // @[Core.scala 63:20]
  wire [2:0] decode_io_csr_type; // @[Core.scala 63:20]
  wire  regfile_clock; // @[Core.scala 66:21]
  wire  regfile_reset; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rs1_addr; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rs2_addr; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rs1_data; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rs2_data; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rd_addr; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rd_data; // @[Core.scala 66:21]
  wire  regfile_io_rd_wen; // @[Core.scala 66:21]
  wire [63:0] regfile_rf_10; // @[Core.scala 66:21]
  wire [2:0] imm_gen_io_imm_type; // @[Core.scala 74:21]
  wire [31:0] imm_gen_io_inst; // @[Core.scala 74:21]
  wire [63:0] imm_gen_io_imm; // @[Core.scala 74:21]
  wire [4:0] alu_io_alu_type; // @[Core.scala 183:17]
  wire [63:0] alu_io_in1; // @[Core.scala 183:17]
  wire [63:0] alu_io_in2; // @[Core.scala 183:17]
  wire [63:0] alu_io_alu_out; // @[Core.scala 183:17]
  wire  clint_clock; // @[Core.scala 204:19]
  wire  clint_reset; // @[Core.scala 204:19]
  wire  clint_io_time_valid; // @[Core.scala 204:19]
  wire  clint_io_cmp_wen; // @[Core.scala 204:19]
  wire [63:0] clint_io_cmp_wdata; // @[Core.scala 204:19]
  wire  clint_io_time_intrpt; // @[Core.scala 204:19]
  wire [63:0] clint_csr_mie; // @[Core.scala 204:19]
  wire [63:0] clint_csr_status; // @[Core.scala 204:19]
  wire  csr_clock; // @[Core.scala 211:18]
  wire  csr_reset; // @[Core.scala 211:18]
  wire [31:0] csr_io_pc; // @[Core.scala 211:18]
  wire [31:0] csr_io_pc_timer; // @[Core.scala 211:18]
  wire [31:0] csr_io_inst; // @[Core.scala 211:18]
  wire [2:0] csr_io_csr_type; // @[Core.scala 211:18]
  wire [63:0] csr_io_in_data; // @[Core.scala 211:18]
  wire  csr_io_time_intrpt; // @[Core.scala 211:18]
  wire [63:0] csr_io_out; // @[Core.scala 211:18]
  wire  csr_io_jmp; // @[Core.scala 211:18]
  wire [31:0] csr_io_jmp_pc; // @[Core.scala 211:18]
  wire  csr_io_intrpt; // @[Core.scala 211:18]
  wire [31:0] csr_io_intrpt_pc; // @[Core.scala 211:18]
  wire [63:0] csr_io_intrpt_no; // @[Core.scala 211:18]
  wire  csr_io_rd_wen; // @[Core.scala 211:18]
  wire [63:0] csr_io_mie; // @[Core.scala 211:18]
  wire [63:0] csr_io_mstatus; // @[Core.scala 211:18]
  wire [63:0] csr_io_mepc; // @[Core.scala 211:18]
  wire [63:0] csr_io_mtvec; // @[Core.scala 211:18]
  wire [63:0] csr_io_mcause; // @[Core.scala 211:18]
  wire [63:0] csr_io_mscratch; // @[Core.scala 211:18]
  wire [63:0] csr_csr_minstret; // @[Core.scala 211:18]
  wire [63:0] csr_mie_0; // @[Core.scala 211:18]
  wire [63:0] csr_mstatus_0; // @[Core.scala 211:18]
  wire [63:0] csr_csr_mcycle; // @[Core.scala 211:18]
  wire [31:0] nxt_pc_io_pc; // @[Core.scala 220:20]
  wire [63:0] nxt_pc_io_imm; // @[Core.scala 220:20]
  wire [63:0] nxt_pc_io_rs1_data; // @[Core.scala 220:20]
  wire [63:0] nxt_pc_io_alu_out; // @[Core.scala 220:20]
  wire  nxt_pc_io_csr_jmp; // @[Core.scala 220:20]
  wire  nxt_pc_io_intrpt_jmp; // @[Core.scala 220:20]
  wire [2:0] nxt_pc_io_op2_type; // @[Core.scala 220:20]
  wire [2:0] nxt_pc_io_imm_type; // @[Core.scala 220:20]
  wire [4:0] nxt_pc_io_alu_type; // @[Core.scala 220:20]
  wire [63:0] nxt_pc_io_csr_jmp_pc; // @[Core.scala 220:20]
  wire [63:0] nxt_pc_io_intrpt_jmp_pc; // @[Core.scala 220:20]
  wire [31:0] nxt_pc_io_pc_nxt; // @[Core.scala 220:20]
  wire  nxt_pc_io_pc_jmp; // @[Core.scala 220:20]
  wire [2:0] lsu_io_mem_rtype; // @[Core.scala 307:17]
  wire [2:0] lsu_io_wb_type; // @[Core.scala 307:17]
  wire [63:0] lsu_io_dmem_addr; // @[Core.scala 307:17]
  wire [63:0] lsu_io_dmem_rdata; // @[Core.scala 307:17]
  wire [63:0] lsu_io_rs2_data; // @[Core.scala 307:17]
  wire [63:0] lsu_io_mem_rdata; // @[Core.scala 307:17]
  wire [63:0] lsu_io_dmem_wdata; // @[Core.scala 307:17]
  wire [7:0] lsu_io_dmem_strb; // @[Core.scala 307:17]
  wire  dt_ic_clock; // @[Core.scala 476:19]
  wire [7:0] dt_ic_coreid; // @[Core.scala 476:19]
  wire [7:0] dt_ic_index; // @[Core.scala 476:19]
  wire  dt_ic_valid; // @[Core.scala 476:19]
  wire [63:0] dt_ic_pc; // @[Core.scala 476:19]
  wire [31:0] dt_ic_instr; // @[Core.scala 476:19]
  wire [7:0] dt_ic_special; // @[Core.scala 476:19]
  wire  dt_ic_skip; // @[Core.scala 476:19]
  wire  dt_ic_isRVC; // @[Core.scala 476:19]
  wire  dt_ic_scFailed; // @[Core.scala 476:19]
  wire  dt_ic_wen; // @[Core.scala 476:19]
  wire [63:0] dt_ic_wdata; // @[Core.scala 476:19]
  wire [7:0] dt_ic_wdest; // @[Core.scala 476:19]
  wire  dt_te_clock; // @[Core.scala 508:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 508:21]
  wire  dt_te_valid; // @[Core.scala 508:21]
  wire [2:0] dt_te_code; // @[Core.scala 508:21]
  wire [63:0] dt_te_pc; // @[Core.scala 508:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 508:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 508:21]
  wire  dt_ae_clock; // @[Core.scala 520:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 520:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 520:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 520:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 520:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 520:21]
  wire  dt_cs_clock; // @[Core.scala 529:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 529:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 529:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 529:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 529:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 529:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 529:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 529:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 529:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 529:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 529:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 529:21]
  reg [31:0] if_reg_pc; // @[PipelineReg.scala 14:33]
  reg [31:0] id_reg_pc; // @[PipelineReg.scala 20:28]
  reg [63:0] id_reg_inst; // @[PipelineReg.scala 21:28]
  reg [31:0] exe_reg_pc; // @[PipelineReg.scala 25:32]
  reg [63:0] exe_reg_inst; // @[PipelineReg.scala 26:32]
  reg [4:0] exe_reg_alu_type; // @[PipelineReg.scala 28:32]
  reg [2:0] exe_reg_wb_type; // @[PipelineReg.scala 29:32]
  reg [2:0] exe_reg_mem_rtype; // @[PipelineReg.scala 30:32]
  reg [2:0] exe_reg_imm_type; // @[PipelineReg.scala 31:32]
  reg [2:0] exe_reg_csr_type; // @[PipelineReg.scala 32:32]
  reg [2:0] exe_reg_op2_type; // @[PipelineReg.scala 34:32]
  reg [63:0] exe_reg_op1_data; // @[PipelineReg.scala 36:28]
  reg [63:0] exe_reg_op2_data; // @[PipelineReg.scala 37:28]
  reg [63:0] exe_reg_rs2_data; // @[PipelineReg.scala 38:28]
  reg [63:0] exe_reg_rs1_data; // @[PipelineReg.scala 39:28]
  reg [63:0] exe_reg_imm; // @[PipelineReg.scala 40:28]
  reg  exe_reg_rd_wen; // @[PipelineReg.scala 41:29]
  reg  exe_reg_dmem_en; // @[PipelineReg.scala 42:28]
  reg  exe_reg_dmem_wen; // @[PipelineReg.scala 43:28]
  reg [63:0] exe_reg_rs1_addr; // @[PipelineReg.scala 46:33]
  reg [63:0] exe_reg_rs2_addr; // @[PipelineReg.scala 47:33]
  reg [63:0] exe_reg_rd_addr; // @[PipelineReg.scala 48:33]
  reg  mem_reg_dmem_en; // @[PipelineReg.scala 52:28]
  reg  mem_reg_dmem_wen; // @[PipelineReg.scala 53:28]
  reg  mem_reg_rd_wen; // @[PipelineReg.scala 54:29]
  reg [31:0] mem_reg_pc; // @[PipelineReg.scala 55:32]
  reg [63:0] mem_reg_inst; // @[PipelineReg.scala 56:32]
  reg  mem_reg_csr_rd_wen; // @[PipelineReg.scala 58:30]
  reg [63:0] mem_reg_csr_rd_data; // @[PipelineReg.scala 59:34]
  reg  mem_reg_clint_en; // @[PipelineReg.scala 60:34]
  reg [4:0] mem_reg_alu_type; // @[PipelineReg.scala 62:33]
  reg [2:0] mem_reg_wb_type; // @[PipelineReg.scala 63:33]
  reg [2:0] mem_reg_mem_rtype; // @[PipelineReg.scala 64:33]
  reg [2:0] mem_reg_csr_type; // @[PipelineReg.scala 65:33]
  reg [63:0] mem_reg_rs1_data; // @[PipelineReg.scala 66:28]
  reg [63:0] mem_reg_alu_out; // @[PipelineReg.scala 68:33]
  reg [63:0] mem_reg_rs2_data; // @[PipelineReg.scala 70:33]
  reg [63:0] mem_reg_rs2_addr; // @[PipelineReg.scala 74:33]
  reg [63:0] mem_reg_rd_addr; // @[PipelineReg.scala 75:33]
  reg [31:0] wb_reg_pc; // @[PipelineReg.scala 79:32]
  reg [63:0] wb_reg_inst; // @[PipelineReg.scala 80:32]
  reg [2:0] wb_reg_mem_rtype; // @[PipelineReg.scala 82:32]
  reg [4:0] wb_reg_alu_type; // @[PipelineReg.scala 83:32]
  reg [2:0] wb_reg_csr_type; // @[PipelineReg.scala 84:32]
  reg [63:0] wb_reg_alu_out; // @[PipelineReg.scala 85:28]
  reg [63:0] wb_reg_rd_data; // @[PipelineReg.scala 86:28]
  reg  wb_reg_rd_wen; // @[PipelineReg.scala 87:29]
  reg [63:0] wb_reg_rd_addr; // @[PipelineReg.scala 88:32]
  reg [63:0] wb_reg_rs1_data; // @[PipelineReg.scala 92:28]
  reg  wb_reg_csr_rd_wen; // @[PipelineReg.scala 93:29]
  reg [63:0] wb_reg_csr_rd_data; // @[PipelineReg.scala 94:33]
  reg  wb_reg_clint_en; // @[PipelineReg.scala 95:31]
  reg [63:0] mem_reg_mie; // @[PipelineReg.scala 98:32]
  reg [63:0] mem_reg_mstatus; // @[PipelineReg.scala 99:32]
  reg [63:0] mem_reg_mepc; // @[PipelineReg.scala 100:32]
  reg [63:0] mem_reg_mcause; // @[PipelineReg.scala 101:32]
  reg [63:0] mem_reg_mtvec; // @[PipelineReg.scala 102:32]
  reg [63:0] mem_reg_mscratch; // @[PipelineReg.scala 103:32]
  reg  mem_reg_intrpt; // @[PipelineReg.scala 104:28]
  reg [63:0] mem_reg_intrpt_no; // @[PipelineReg.scala 105:33]
  reg [63:0] wb_reg_mie; // @[PipelineReg.scala 107:31]
  reg [63:0] wb_reg_mstatus; // @[PipelineReg.scala 108:31]
  reg [63:0] wb_reg_mepc; // @[PipelineReg.scala 109:31]
  reg [63:0] wb_reg_mcause; // @[PipelineReg.scala 110:31]
  reg [63:0] wb_reg_mtvec; // @[PipelineReg.scala 111:31]
  reg [63:0] wb_reg_mscratch; // @[PipelineReg.scala 112:31]
  reg  wb_reg_intrpt; // @[PipelineReg.scala 113:27]
  reg [63:0] wb_reg_intrpt_no; // @[PipelineReg.scala 114:32]
  reg  reg_kill_flag; // @[PipelineReg.scala 124:29]
  reg [31:0] reg_exe_pc_nxt; // @[PipelineReg.scala 125:29]
  reg  exe_reg_stall; // @[PipelineReg.scala 131:28]
  wire [4:0] id_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 60:30]
  wire [63:0] _GEN_116 = {{59'd0}, id_rs2_addr}; // @[Core.scala 119:20]
  wire  _T_15 = id_rs2_addr != 5'h0; // @[Core.scala 119:51]
  wire  _T_16 = exe_reg_rd_addr == _GEN_116 & id_rs2_addr != 5'h0; // @[Core.scala 119:37]
  wire  _T_17 = decode_io_op2_type == 3'h1; // @[Core.scala 119:81]
  wire [4:0] id_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 59:30]
  wire [63:0] _GEN_117 = {{59'd0}, id_rs1_addr}; // @[Core.scala 119:113]
  wire  _T_20 = id_rs1_addr != 5'h0; // @[Core.scala 119:143]
  wire  _T_21 = exe_reg_rd_addr == _GEN_117 & id_rs1_addr != 5'h0; // @[Core.scala 119:129]
  wire  _T_22 = decode_io_op1_type == 3'h1; // @[Core.scala 119:173]
  wire  _T_24 = exe_reg_rd_addr == _GEN_116 & id_rs2_addr != 5'h0 & decode_io_op2_type == 3'h1 | exe_reg_rd_addr ==
    _GEN_117 & id_rs1_addr != 5'h0 & decode_io_op1_type == 3'h1; // @[Core.scala 119:93]
  wire  id_call_stall = (exe_reg_mem_rtype != 3'h0 | exe_reg_alu_type == 5'h13) & _T_24; // @[Core.scala 118:71]
  wire  exe_call_stall = mem_reg_dmem_en & ~io_dmem_data_ready; // @[Core.scala 356:22]
  wire  stall = exe_reg_stall | id_call_stall | exe_call_stall; // @[Core.scala 21:41]
  wire  _GEN_6 = stall ? 1'h0 : 1'h1; // @[Core.scala 29:26 Core.scala 29:72]
  wire [31:0] _if_reg_pc_T_1 = if_reg_pc + 32'h4; // @[Core.scala 31:50]
  wire  _GEN_4 = reg_kill_flag ? 1'h0 : reg_kill_flag; // @[Core.scala 30:26 Core.scala 30:97 PipelineReg.scala 124:29]
  wire  _T_2 = ~reg_kill_flag; // @[Core.scala 36:28]
  wire [31:0] if_inst = io_imem_inst_ready & ~reg_kill_flag ? io_imem_inst_read : 32'h0; // @[Core.scala 36:48 Core.scala 36:57 Core.scala 37:57]
  wire  _T_4 = ~stall; // @[Core.scala 43:28]
  wire  kill_stage = nxt_pc_io_pc_jmp; // @[PipelineReg.scala 116:23 Core.scala 244:13]
  wire  _T_8 = ~kill_stage; // @[Core.scala 43:56]
  wire  _id_rs1_T_2 = id_rs1_addr == 5'h0 & _T_22; // @[Core.scala 82:40]
  wire  _id_rs1_T_7 = exe_reg_mem_rtype == 3'h0; // @[Core.scala 83:118]
  wire  _id_rs1_T_8 = _T_21 & exe_reg_rd_wen & exe_reg_mem_rtype == 3'h0; // @[Core.scala 83:97]
  wire  _id_rs1_T_9 = mem_reg_rd_addr == _GEN_117; // @[Core.scala 84:37]
  wire  _id_rs1_T_12 = mem_reg_rd_addr == _GEN_117 & _T_20 & mem_reg_rd_wen; // @[Core.scala 84:79]
  wire  _id_rs1_T_13 = mem_reg_mem_rtype != 3'h0; // @[Core.scala 84:123]
  wire [63:0] mem_rd_data = lsu_io_mem_rdata; // @[PipelineReg.scala 119:23 Core.scala 348:15]
  wire [63:0] _id_rs1_T_14 = mem_reg_mem_rtype != 3'h0 ? mem_rd_data : mem_reg_alu_out; // @[Core.scala 84:104]
  wire  _id_rs1_T_15 = wb_reg_rd_addr == _GEN_117; // @[Core.scala 85:37]
  wire  _id_rs1_T_18 = wb_reg_rd_addr == _GEN_117 & _T_20 & wb_reg_rd_wen; // @[Core.scala 85:79]
  wire  _wb_rd_data_T_1 = ~wb_reg_csr_rd_wen; // @[Core.scala 420:50]
  wire  _wb_rd_data_T_2 = wb_reg_mem_rtype == 3'h0 & ~wb_reg_csr_rd_wen; // @[Core.scala 420:47]
  wire  _wb_rd_data_T_5 = wb_reg_mem_rtype != 3'h0 & _wb_rd_data_T_1; // @[Core.scala 421:47]
  wire [63:0] _wb_rd_data_T_6 = _wb_rd_data_T_5 ? wb_reg_rd_data : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _wb_rd_data_T_7 = _wb_rd_data_T_2 ? wb_reg_alu_out : _wb_rd_data_T_6; // @[Mux.scala 98:16]
  wire [63:0] wb_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  wire [63:0] _id_rs1_T_19 = _id_rs1_T_18 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] exe_alu_out = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 188:17]
  wire  _id_op1_T_3 = decode_io_op1_type == 3'h2; // @[Core.scala 92:39]
  wire  _id_op1_T_4 = decode_io_op1_type == 3'h3; // @[Core.scala 93:39]
  wire  _id_op1_T_16 = _id_rs1_T_9 & _T_22 & _T_20 & mem_reg_rd_wen; // @[Core.scala 95:114]
  wire  _id_op1_T_24 = _id_rs1_T_15 & _T_22 & _T_20 & wb_reg_rd_wen; // @[Core.scala 96:114]
  wire [63:0] _id_op1_T_25 = _id_op1_T_24 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_26 = _id_op1_T_16 ? _id_rs1_T_14 : _id_op1_T_25; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_27 = _id_rs1_T_8 ? exe_alu_out : _id_op1_T_26; // @[Mux.scala 98:16]
  wire  _id_rs2_T_8 = _T_16 & exe_reg_rd_wen & _id_rs1_T_7; // @[Core.scala 101:97]
  wire  _id_rs2_T_12 = mem_reg_rd_addr == _GEN_116 & _T_15 & mem_reg_rd_wen; // @[Core.scala 102:79]
  wire  _id_rs2_T_18 = wb_reg_rd_addr == _GEN_116 & _T_15 & wb_reg_rd_wen; // @[Core.scala 103:79]
  wire [63:0] _id_rs2_T_19 = _id_rs2_T_18 ? wb_rd_data : regfile_io_rs2_data; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_20 = _id_rs2_T_12 ? _id_rs1_T_14 : _id_rs2_T_19; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_21 = _id_rs2_T_8 ? exe_alu_out : _id_rs2_T_20; // @[Mux.scala 98:16]
  wire  _id_op2_T_2 = id_rs2_addr == 5'h0 & _T_17; // @[Core.scala 108:40]
  wire  _id_op2_T_3 = decode_io_op2_type == 3'h2; // @[Core.scala 109:39]
  wire  _id_op2_T_4 = decode_io_op2_type == 3'h4; // @[Core.scala 110:39]
  wire  _exe_reg_dmem_wen_T_2 = decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 149:53]
  wire  _T_33 = exe_alu_out == 64'h200bff8 | exe_alu_out == 64'h2004000; // @[Core.scala 193:30]
  wire  clint_en = exe_reg_dmem_en & _T_33; // @[Core.scala 192:22]
  wire  _mem_reg_dmem_wen_T = ~clint_en; // @[Core.scala 257:44]
  wire  _mem_reg_dmem_en_T_1 = exe_reg_dmem_en & _mem_reg_dmem_wen_T; // @[Core.scala 258:41]
  wire  _T_40 = ~exe_call_stall; // @[Core.scala 268:6]
  wire  _T_41 = ~exe_reg_stall; // @[Core.scala 268:25]
  wire  _T_42 = ~exe_call_stall & ~exe_reg_stall; // @[Core.scala 268:22]
  reg [63:0] mem_reg_dmem_addr; // @[Core.scala 309:29]
  wire [63:0] mem_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 312:22 Core.scala 312:37 Core.scala 313:37]
  wire [63:0] _GEN_84 = mem_reg_dmem_wen ? mem_dmem_addr : mem_reg_dmem_addr; // @[Core.scala 326:1 Core.scala 326:23 Core.scala 327:32]
  wire  _T_43 = mem_reg_rs2_addr == wb_reg_rd_addr; // @[Core.scala 343:24]
  reg [63:0] mem_reg_rd_data; // @[Core.scala 350:30]
  reg  mem_reg_stall_wen; // @[Core.scala 353:32]
  wire  _GEN_87 = io_dmem_data_ready ? 1'h0 : exe_reg_stall; // @[Core.scala 361:46 Core.scala 361:62 PipelineReg.scala 131:28]
  wire  _GEN_88 = exe_call_stall | _GEN_87; // @[Core.scala 356:46 Core.scala 356:62]
  wire  _T_50 = _T_41 & _T_40; // @[Core.scala 363:21]
  wire  _T_54 = wb_reg_alu_type == 5'h14; // @[Core.scala 434:22]
  reg  dt_valid; // @[Core.scala 461:23]
  reg  skip; // @[Core.scala 463:19]
  wire  _T_63 = _T_54 | wb_reg_csr_type != 3'h0 & wb_reg_inst[31:20] == 12'hb00 | wb_reg_clint_en; // @[Core.scala 465:113]
  wire [63:0] _GEN_130 = {{32'd0}, wb_reg_pc}; // @[Core.scala 473:50]
  reg [31:0] dt_ic_io_pc_REG; // @[Core.scala 477:31]
  reg [63:0] dt_ic_io_instr_REG; // @[Core.scala 478:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 487:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 488:31]
  reg [63:0] dt_ic_io_wdest_REG; // @[Core.scala 489:31]
  reg [63:0] cycle_cnt; // @[Core.scala 494:26]
  reg [63:0] instr_cnt; // @[Core.scala 495:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 497:49]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 498:26]
  wire [63:0] rf_a0_0 = regfile_rf_10;
  reg [63:0] dt_ae_io_intrNO_REG; // @[Core.scala 523:37]
  reg [31:0] dt_ae_io_exceptionPC_REG; // @[Core.scala 525:37]
  Decode decode ( // @[Core.scala 63:20]
    .io_inst(decode_io_inst),
    .io_alu_type(decode_io_alu_type),
    .io_op1_type(decode_io_op1_type),
    .io_op2_type(decode_io_op2_type),
    .io_imm_type(decode_io_imm_type),
    .io_mem_rtype(decode_io_mem_rtype),
    .io_wb_type(decode_io_wb_type),
    .io_csr_type(decode_io_csr_type)
  );
  RegFile regfile ( // @[Core.scala 66:21]
    .clock(regfile_clock),
    .reset(regfile_reset),
    .io_rs1_addr(regfile_io_rs1_addr),
    .io_rs2_addr(regfile_io_rs2_addr),
    .io_rs1_data(regfile_io_rs1_data),
    .io_rs2_data(regfile_io_rs2_data),
    .io_rd_addr(regfile_io_rd_addr),
    .io_rd_data(regfile_io_rd_data),
    .io_rd_wen(regfile_io_rd_wen),
    .rf_10(regfile_rf_10)
  );
  ImmGen imm_gen ( // @[Core.scala 74:21]
    .io_imm_type(imm_gen_io_imm_type),
    .io_inst(imm_gen_io_inst),
    .io_imm(imm_gen_io_imm)
  );
  ALU alu ( // @[Core.scala 183:17]
    .io_alu_type(alu_io_alu_type),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_alu_out(alu_io_alu_out)
  );
  Clint clint ( // @[Core.scala 204:19]
    .clock(clint_clock),
    .reset(clint_reset),
    .io_time_valid(clint_io_time_valid),
    .io_cmp_wen(clint_io_cmp_wen),
    .io_cmp_wdata(clint_io_cmp_wdata),
    .io_time_intrpt(clint_io_time_intrpt),
    .csr_mie(clint_csr_mie),
    .csr_status(clint_csr_status)
  );
  CSR csr ( // @[Core.scala 211:18]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_pc(csr_io_pc),
    .io_pc_timer(csr_io_pc_timer),
    .io_inst(csr_io_inst),
    .io_csr_type(csr_io_csr_type),
    .io_in_data(csr_io_in_data),
    .io_time_intrpt(csr_io_time_intrpt),
    .io_out(csr_io_out),
    .io_jmp(csr_io_jmp),
    .io_jmp_pc(csr_io_jmp_pc),
    .io_intrpt(csr_io_intrpt),
    .io_intrpt_pc(csr_io_intrpt_pc),
    .io_intrpt_no(csr_io_intrpt_no),
    .io_rd_wen(csr_io_rd_wen),
    .io_mie(csr_io_mie),
    .io_mstatus(csr_io_mstatus),
    .io_mepc(csr_io_mepc),
    .io_mtvec(csr_io_mtvec),
    .io_mcause(csr_io_mcause),
    .io_mscratch(csr_io_mscratch),
    .csr_minstret(csr_csr_minstret),
    .mie_0(csr_mie_0),
    .mstatus_0(csr_mstatus_0),
    .csr_mcycle(csr_csr_mcycle)
  );
  Nxt_PC nxt_pc ( // @[Core.scala 220:20]
    .io_pc(nxt_pc_io_pc),
    .io_imm(nxt_pc_io_imm),
    .io_rs1_data(nxt_pc_io_rs1_data),
    .io_alu_out(nxt_pc_io_alu_out),
    .io_csr_jmp(nxt_pc_io_csr_jmp),
    .io_intrpt_jmp(nxt_pc_io_intrpt_jmp),
    .io_op2_type(nxt_pc_io_op2_type),
    .io_imm_type(nxt_pc_io_imm_type),
    .io_alu_type(nxt_pc_io_alu_type),
    .io_csr_jmp_pc(nxt_pc_io_csr_jmp_pc),
    .io_intrpt_jmp_pc(nxt_pc_io_intrpt_jmp_pc),
    .io_pc_nxt(nxt_pc_io_pc_nxt),
    .io_pc_jmp(nxt_pc_io_pc_jmp)
  );
  LSU lsu ( // @[Core.scala 307:17]
    .io_mem_rtype(lsu_io_mem_rtype),
    .io_wb_type(lsu_io_wb_type),
    .io_dmem_addr(lsu_io_dmem_addr),
    .io_dmem_rdata(lsu_io_dmem_rdata),
    .io_rs2_data(lsu_io_rs2_data),
    .io_mem_rdata(lsu_io_mem_rdata),
    .io_dmem_wdata(lsu_io_dmem_wdata),
    .io_dmem_strb(lsu_io_dmem_strb)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 476:19]
    .clock(dt_ic_clock),
    .coreid(dt_ic_coreid),
    .index(dt_ic_index),
    .valid(dt_ic_valid),
    .pc(dt_ic_pc),
    .instr(dt_ic_instr),
    .special(dt_ic_special),
    .skip(dt_ic_skip),
    .isRVC(dt_ic_isRVC),
    .scFailed(dt_ic_scFailed),
    .wen(dt_ic_wen),
    .wdata(dt_ic_wdata),
    .wdest(dt_ic_wdest)
  );
  DifftestTrapEvent dt_te ( // @[Core.scala 508:21]
    .clock(dt_te_clock),
    .coreid(dt_te_coreid),
    .valid(dt_te_valid),
    .code(dt_te_code),
    .pc(dt_te_pc),
    .cycleCnt(dt_te_cycleCnt),
    .instrCnt(dt_te_instrCnt)
  );
  DifftestArchEvent dt_ae ( // @[Core.scala 520:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
  );
  DifftestCSRState dt_cs ( // @[Core.scala 529:21]
    .clock(dt_cs_clock),
    .coreid(dt_cs_coreid),
    .priviledgeMode(dt_cs_priviledgeMode),
    .mstatus(dt_cs_mstatus),
    .sstatus(dt_cs_sstatus),
    .mepc(dt_cs_mepc),
    .sepc(dt_cs_sepc),
    .mtval(dt_cs_mtval),
    .stval(dt_cs_stval),
    .mtvec(dt_cs_mtvec),
    .stvec(dt_cs_stvec),
    .mcause(dt_cs_mcause),
    .scause(dt_cs_scause),
    .satp(dt_cs_satp),
    .mip(dt_cs_mip),
    .mie(dt_cs_mie),
    .mscratch(dt_cs_mscratch),
    .sscratch(dt_cs_sscratch),
    .mideleg(dt_cs_mideleg),
    .medeleg(dt_cs_medeleg)
  );
  assign io_imem_inst_req = io_imem_inst_ready | if_reg_pc == 32'h7ffffffc ? _GEN_6 : io_dmem_data_ready; // @[Core.scala 28:56]
  assign io_imem_inst_addr = if_reg_pc; // @[Core.scala 34:20]
  assign io_dmem_data_req_r = _mem_reg_dmem_en_T_1 & ~exe_reg_dmem_wen; // @[Core.scala 317:54]
  assign io_dmem_data_req_w = exe_reg_dmem_wen & _mem_reg_dmem_wen_T; // @[Core.scala 318:41]
  assign io_dmem_data_addr_r = mem_dmem_addr[31:0]; // @[Core.scala 323:22]
  assign io_dmem_data_addr_w = _GEN_84[31:0];
  assign io_dmem_data_strb = lsu_io_dmem_strb; // @[Core.scala 319:21]
  assign io_dmem_data_write = lsu_io_dmem_wdata; // @[Core.scala 320:21]
  assign decode_io_inst = id_reg_inst[31:0]; // @[Core.scala 64:21]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1_addr = decode_io_alu_type != 5'h14 ? id_rs1_addr : 5'ha; // @[Core.scala 67:41 Core.scala 68:21 Core.scala 69:33]
  assign regfile_io_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 60:30]
  assign regfile_io_rd_addr = wb_reg_rd_addr[4:0]; // @[Core.scala 415:21]
  assign regfile_io_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  assign regfile_io_rd_wen = wb_reg_rd_wen | wb_reg_csr_rd_wen; // @[Core.scala 414:38]
  assign imm_gen_io_imm_type = decode_io_imm_type; // @[Core.scala 75:21]
  assign imm_gen_io_inst = id_reg_inst[31:0]; // @[Core.scala 76:21]
  assign alu_io_alu_type = exe_reg_alu_type; // @[Core.scala 185:17]
  assign alu_io_in1 = exe_reg_rs1_addr == wb_reg_rd_addr & wb_reg_rd_wen ? wb_rd_data : exe_reg_op1_data; // @[Core.scala 178:61 Core.scala 178:70 Core.scala 179:20]
  assign alu_io_in2 = exe_reg_op2_data; // @[Core.scala 176:23 Core.scala 181:9]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_io_time_valid = exe_reg_pc != 32'h0; // @[Core.scala 199:17]
  assign clint_io_cmp_wen = exe_reg_dmem_wen & clint_en; // @[Core.scala 206:42]
  assign clint_io_cmp_wdata = exe_reg_rs2_data; // @[Core.scala 208:21]
  assign clint_csr_mie = csr_mie_0;
  assign clint_csr_status = csr_mstatus_0;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_pc = exe_reg_pc; // @[Core.scala 212:20]
  assign csr_io_pc_timer = exe_reg_pc; // @[Core.scala 213:20]
  assign csr_io_inst = exe_reg_inst[31:0]; // @[Core.scala 214:20]
  assign csr_io_csr_type = exe_reg_csr_type; // @[Core.scala 216:20]
  assign csr_io_in_data = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 188:17]
  assign csr_io_time_intrpt = clint_io_time_intrpt & exe_reg_inst != 64'h0; // @[Core.scala 217:45]
  assign csr_csr_minstret = instr_cnt;
  assign csr_csr_mcycle = cycle_cnt;
  assign nxt_pc_io_pc = exe_reg_pc; // @[Core.scala 221:23]
  assign nxt_pc_io_imm = exe_reg_imm; // @[Core.scala 224:23]
  assign nxt_pc_io_rs1_data = exe_reg_rs1_addr == mem_reg_rd_addr & _id_rs1_T_13 ? mem_rd_data : exe_reg_rs1_data; // @[Core.scala 237:74 Core.scala 238:20 Core.scala 239:32]
  assign nxt_pc_io_alu_out = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 188:17]
  assign nxt_pc_io_csr_jmp = csr_io_jmp; // @[Core.scala 228:23]
  assign nxt_pc_io_intrpt_jmp = csr_io_intrpt; // @[Core.scala 231:26]
  assign nxt_pc_io_op2_type = exe_reg_op2_type; // @[Core.scala 227:23]
  assign nxt_pc_io_imm_type = exe_reg_imm_type; // @[Core.scala 222:23]
  assign nxt_pc_io_alu_type = exe_reg_alu_type; // @[Core.scala 223:23]
  assign nxt_pc_io_csr_jmp_pc = {{32'd0}, csr_io_jmp_pc}; // @[Core.scala 229:23]
  assign nxt_pc_io_intrpt_jmp_pc = {{32'd0}, csr_io_intrpt_pc}; // @[Core.scala 232:26]
  assign lsu_io_mem_rtype = mem_reg_mem_rtype; // @[Core.scala 334:19]
  assign lsu_io_wb_type = mem_reg_wb_type; // @[Core.scala 335:19]
  assign lsu_io_dmem_addr = mem_reg_dmem_wen ? mem_dmem_addr : mem_reg_dmem_addr; // @[Core.scala 326:1 Core.scala 326:23 Core.scala 327:32]
  assign lsu_io_dmem_rdata = io_dmem_data_ready ? io_dmem_data_read : 64'h0; // @[Core.scala 331:25 Core.scala 331:45 Core.scala 332:45]
  assign lsu_io_rs2_data = _T_43 & (mem_reg_dmem_wen & wb_reg_rd_wen) ? wb_rd_data : mem_reg_rs2_data; // @[Core.scala 344:40 Core.scala 344:59 Core.scala 345:59]
  assign dt_ic_clock = clock; // @[Core.scala 479:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 480:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 481:21]
  assign dt_ic_valid = dt_valid; // @[Core.scala 482:21]
  assign dt_ic_pc = {{32'd0}, dt_ic_io_pc_REG}; // @[Core.scala 477:21]
  assign dt_ic_instr = dt_ic_io_instr_REG[31:0]; // @[Core.scala 478:21]
  assign dt_ic_special = 8'h0; // @[Core.scala 483:21]
  assign dt_ic_skip = skip; // @[Core.scala 484:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 485:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 486:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 487:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 488:21]
  assign dt_ic_wdest = dt_ic_io_wdest_REG[7:0]; // @[Core.scala 489:21]
  assign dt_te_clock = clock; // @[Core.scala 509:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 510:21]
  assign dt_te_valid = wb_reg_inst == 64'h6b; // @[Core.scala 511:37]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 512:29]
  assign dt_te_pc = {{32'd0}, wb_reg_pc}; // @[Core.scala 513:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 514:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 515:21]
  assign dt_ae_clock = clock; // @[Core.scala 521:27]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 522:27]
  assign dt_ae_intrNO = dt_ae_io_intrNO_REG[31:0]; // @[Core.scala 523:27]
  assign dt_ae_cause = 32'h0; // @[Core.scala 524:27]
  assign dt_ae_exceptionPC = {{32'd0}, dt_ae_io_exceptionPC_REG}; // @[Core.scala 525:27]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_cs_clock = clock; // @[Core.scala 530:29]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 531:29]
  assign dt_cs_priviledgeMode = 2'h3; // @[Core.scala 532:29]
  assign dt_cs_mstatus = wb_reg_mstatus; // @[Core.scala 533:29]
  assign dt_cs_sstatus = wb_reg_mstatus & 64'h80000003000de122; // @[Core.scala 534:47]
  assign dt_cs_mepc = wb_reg_mepc; // @[Core.scala 535:29]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 536:29]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 537:29]
  assign dt_cs_stval = 64'h0; // @[Core.scala 538:29]
  assign dt_cs_mtvec = wb_reg_mtvec; // @[Core.scala 539:29]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 540:29]
  assign dt_cs_mcause = wb_reg_mcause; // @[Core.scala 541:29]
  assign dt_cs_scause = 64'h0; // @[Core.scala 542:29]
  assign dt_cs_satp = 64'h0; // @[Core.scala 543:29]
  assign dt_cs_mip = 64'h0; // @[Core.scala 544:29]
  assign dt_cs_mie = wb_reg_mie; // @[Core.scala 545:29]
  assign dt_cs_mscratch = wb_reg_mscratch; // @[Core.scala 546:29]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 547:29]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 548:29]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 549:29]
  always @(posedge clock) begin
    if (reset) begin // @[PipelineReg.scala 14:33]
      if_reg_pc <= 32'h7ffffffc; // @[PipelineReg.scala 14:33]
    end else if (io_imem_inst_ready | if_reg_pc == 32'h7ffffffc) begin // @[Core.scala 28:56]
      if (!(stall)) begin // @[Core.scala 29:26]
        if (reg_kill_flag) begin // @[Core.scala 30:26]
          if_reg_pc <= reg_exe_pc_nxt; // @[Core.scala 30:37]
        end else begin
          if_reg_pc <= _if_reg_pc_T_1; // @[Core.scala 31:37]
        end
      end
    end
    if (reset) begin // @[PipelineReg.scala 20:28]
      id_reg_pc <= 32'h0; // @[PipelineReg.scala 20:28]
    end else if (io_imem_inst_ready & ~stall & _T_2 & ~kill_stage) begin // @[Core.scala 43:68]
      id_reg_pc <= if_reg_pc; // @[Core.scala 44:14]
    end else if (!(stall)) begin // @[Core.scala 46:18]
      id_reg_pc <= 32'h0; // @[Core.scala 51:14]
    end
    if (reset) begin // @[PipelineReg.scala 21:28]
      id_reg_inst <= 64'h0; // @[PipelineReg.scala 21:28]
    end else if (io_imem_inst_ready & ~stall & _T_2 & ~kill_stage) begin // @[Core.scala 43:68]
      id_reg_inst <= {{32'd0}, if_inst}; // @[Core.scala 45:14]
    end else if (!(stall)) begin // @[Core.scala 46:18]
      id_reg_inst <= 64'h0; // @[Core.scala 52:14]
    end
    if (reset) begin // @[PipelineReg.scala 25:32]
      exe_reg_pc <= 32'h0; // @[PipelineReg.scala 25:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_pc <= id_reg_pc; // @[Core.scala 128:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_pc <= 32'h0; // @[Core.scala 153:19]
    end
    if (reset) begin // @[PipelineReg.scala 26:32]
      exe_reg_inst <= 64'h0; // @[PipelineReg.scala 26:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_inst <= id_reg_inst; // @[Core.scala 129:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_inst <= 64'h0; // @[Core.scala 154:19]
    end
    if (reset) begin // @[PipelineReg.scala 28:32]
      exe_reg_alu_type <= 5'h0; // @[PipelineReg.scala 28:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_alu_type <= decode_io_alu_type; // @[Core.scala 133:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_alu_type <= 5'h0; // @[Core.scala 156:19]
    end
    if (reset) begin // @[PipelineReg.scala 29:32]
      exe_reg_wb_type <= 3'h0; // @[PipelineReg.scala 29:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_wb_type <= decode_io_wb_type; // @[Core.scala 136:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_wb_type <= 3'h0; // @[Core.scala 159:19]
    end
    if (reset) begin // @[PipelineReg.scala 30:32]
      exe_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 30:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_mem_rtype <= decode_io_mem_rtype; // @[Core.scala 134:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_mem_rtype <= 3'h0; // @[Core.scala 157:19]
    end
    if (reset) begin // @[PipelineReg.scala 31:32]
      exe_reg_imm_type <= 3'h0; // @[PipelineReg.scala 31:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_imm_type <= decode_io_imm_type; // @[Core.scala 135:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_imm_type <= 3'h0; // @[Core.scala 158:19]
    end
    if (reset) begin // @[PipelineReg.scala 32:32]
      exe_reg_csr_type <= 3'h0; // @[PipelineReg.scala 32:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_csr_type <= decode_io_csr_type; // @[Core.scala 137:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_csr_type <= 3'h0; // @[Core.scala 160:19]
    end
    if (reset) begin // @[PipelineReg.scala 34:32]
      exe_reg_op2_type <= 3'h0; // @[PipelineReg.scala 34:32]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_op2_type <= decode_io_op2_type; // @[Core.scala 132:19]
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= 64'h0;
      end else if (_id_op1_T_3) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= imm_gen_io_imm;
      end else if (_id_op1_T_4) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= {{32'd0}, id_reg_pc};
      end else begin
        exe_reg_op1_data <= _id_op1_T_27;
      end
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      if (_id_op2_T_2) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= 64'h0;
      end else if (_id_op2_T_3) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= imm_gen_io_imm;
      end else if (_id_op2_T_4) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= 64'h4;
      end else begin
        exe_reg_op2_data <= _id_rs2_T_21;
      end
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= 64'h0;
      end else if (_id_rs2_T_8) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= exe_alu_out;
      end else if (_id_rs2_T_12) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= _id_rs1_T_14;
      end else begin
        exe_reg_rs2_data <= _id_rs2_T_19;
      end
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= 64'h0;
      end else if (_id_rs1_T_8) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= exe_alu_out;
      end else if (_id_rs1_T_12) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= _id_rs1_T_14;
      end else begin
        exe_reg_rs1_data <= _id_rs1_T_19;
      end
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_imm <= imm_gen_io_imm; // @[Core.scala 139:19]
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_rd_wen <= decode_io_wb_type == 3'h1; // @[Core.scala 148:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_rd_wen <= 1'h0; // @[Core.scala 162:19]
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_dmem_en <= decode_io_mem_rtype != 3'h0 | _exe_reg_dmem_wen_T_2; // @[Core.scala 150:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_dmem_en <= 1'h0; // @[Core.scala 164:19]
    end
    if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_dmem_wen <= decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 149:19]
    end else if (kill_stage) begin // @[Core.scala 152:23]
      exe_reg_dmem_wen <= 1'h0; // @[Core.scala 163:19]
    end
    if (reset) begin // @[PipelineReg.scala 46:33]
      exe_reg_rs1_addr <= 64'h0; // @[PipelineReg.scala 46:33]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_rs1_addr <= {{59'd0}, id_rs1_addr}; // @[Core.scala 144:19]
    end
    if (reset) begin // @[PipelineReg.scala 47:33]
      exe_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 47:33]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_rs2_addr <= {{59'd0}, id_rs2_addr}; // @[Core.scala 145:19]
    end
    if (reset) begin // @[PipelineReg.scala 48:33]
      exe_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 48:33]
    end else if (_T_4 & _T_8) begin // @[Core.scala 127:28]
      exe_reg_rd_addr <= {{59'd0}, id_reg_inst[11:7]}; // @[Core.scala 146:19]
    end
    mem_reg_dmem_en <= ~csr_io_intrpt & (exe_reg_dmem_en & _mem_reg_dmem_wen_T); // @[Core.scala 254:21 Core.scala 258:21 Core.scala 264:21]
    mem_reg_dmem_wen <= ~csr_io_intrpt & (exe_reg_dmem_wen & ~clint_en); // @[Core.scala 254:21 Core.scala 257:21 Core.scala 263:21]
    mem_reg_rd_wen <= ~csr_io_intrpt & exe_reg_rd_wen; // @[Core.scala 254:21 Core.scala 256:21 Core.scala 262:21]
    if (reset) begin // @[PipelineReg.scala 55:32]
      mem_reg_pc <= 32'h0; // @[PipelineReg.scala 55:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_pc <= exe_reg_pc; // @[Core.scala 270:21]
    end
    if (reset) begin // @[PipelineReg.scala 56:32]
      mem_reg_inst <= 64'h0; // @[PipelineReg.scala 56:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_inst <= exe_reg_inst; // @[Core.scala 271:21]
    end
    if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_csr_rd_wen <= csr_io_rd_wen; // @[Core.scala 300:21]
    end
    if (reset) begin // @[PipelineReg.scala 59:34]
      mem_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 59:34]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_csr_rd_data <= csr_io_out; // @[Core.scala 301:21]
    end
    if (reset) begin // @[PipelineReg.scala 60:34]
      mem_reg_clint_en <= 1'h0; // @[PipelineReg.scala 60:34]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_clint_en <= clint_en; // @[Core.scala 299:21]
    end
    if (reset) begin // @[PipelineReg.scala 62:33]
      mem_reg_alu_type <= 5'h0; // @[PipelineReg.scala 62:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_alu_type <= exe_reg_alu_type; // @[Core.scala 274:21]
    end
    if (reset) begin // @[PipelineReg.scala 63:33]
      mem_reg_wb_type <= 3'h0; // @[PipelineReg.scala 63:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_wb_type <= exe_reg_wb_type; // @[Core.scala 276:21]
    end
    if (reset) begin // @[PipelineReg.scala 64:33]
      mem_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 64:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mem_rtype <= exe_reg_mem_rtype; // @[Core.scala 275:21]
    end
    if (reset) begin // @[PipelineReg.scala 65:33]
      mem_reg_csr_type <= 3'h0; // @[PipelineReg.scala 65:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_csr_type <= exe_reg_csr_type; // @[Core.scala 277:21]
    end
    if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_rs1_data <= exe_reg_rs1_data; // @[Core.scala 285:21]
    end
    if (reset) begin // @[PipelineReg.scala 68:33]
      mem_reg_alu_out <= 64'h0; // @[PipelineReg.scala 68:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_alu_out <= exe_alu_out; // @[Core.scala 278:21]
    end
    if (reset) begin // @[PipelineReg.scala 70:33]
      mem_reg_rs2_data <= 64'h0; // @[PipelineReg.scala 70:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_rs2_data <= exe_reg_rs2_data; // @[Core.scala 286:21]
    end
    if (reset) begin // @[PipelineReg.scala 74:33]
      mem_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 74:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_rs2_addr <= exe_reg_rs2_addr; // @[Core.scala 283:21]
    end
    if (reset) begin // @[PipelineReg.scala 75:33]
      mem_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 75:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_rd_addr <= exe_reg_rd_addr; // @[Core.scala 284:21]
    end
    if (reset) begin // @[PipelineReg.scala 79:32]
      wb_reg_pc <= 32'h0; // @[PipelineReg.scala 79:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_pc <= mem_reg_pc; // @[Core.scala 369:20]
    end else begin
      wb_reg_pc <= 32'h0; // @[Core.scala 406:12]
    end
    if (reset) begin // @[PipelineReg.scala 80:32]
      wb_reg_inst <= 64'h0; // @[PipelineReg.scala 80:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_inst <= mem_reg_inst; // @[Core.scala 370:20]
    end else begin
      wb_reg_inst <= 64'h0; // @[Core.scala 407:15]
    end
    if (reset) begin // @[PipelineReg.scala 82:32]
      wb_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 82:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mem_rtype <= mem_reg_mem_rtype; // @[Core.scala 373:20]
    end
    if (reset) begin // @[PipelineReg.scala 83:32]
      wb_reg_alu_type <= 5'h0; // @[PipelineReg.scala 83:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_alu_type <= mem_reg_alu_type; // @[Core.scala 372:20]
    end
    if (reset) begin // @[PipelineReg.scala 84:32]
      wb_reg_csr_type <= 3'h0; // @[PipelineReg.scala 84:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_csr_type <= mem_reg_csr_type; // @[Core.scala 374:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_alu_out <= mem_reg_alu_out; // @[Core.scala 376:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_rd_data <= mem_reg_rd_data; // @[Core.scala 381:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_rd_wen <= mem_reg_rd_wen | mem_reg_stall_wen; // @[Core.scala 380:20]
    end
    if (reset) begin // @[PipelineReg.scala 88:32]
      wb_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 88:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_rd_addr <= mem_reg_rd_addr; // @[Core.scala 379:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_rs1_data <= mem_reg_rs1_data; // @[Core.scala 377:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_csr_rd_wen <= mem_reg_csr_rd_wen; // @[Core.scala 395:20]
    end
    if (reset) begin // @[PipelineReg.scala 94:33]
      wb_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 94:33]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_csr_rd_data <= mem_reg_csr_rd_data; // @[Core.scala 382:20]
    end
    if (reset) begin // @[PipelineReg.scala 95:31]
      wb_reg_clint_en <= 1'h0; // @[PipelineReg.scala 95:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_clint_en <= mem_reg_clint_en; // @[Core.scala 396:20]
    end
    if (reset) begin // @[PipelineReg.scala 98:32]
      mem_reg_mie <= 64'h0; // @[PipelineReg.scala 98:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mie <= csr_io_mie; // @[Core.scala 291:21]
    end
    if (reset) begin // @[PipelineReg.scala 99:32]
      mem_reg_mstatus <= 64'h0; // @[PipelineReg.scala 99:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mstatus <= csr_io_mstatus; // @[Core.scala 292:21]
    end
    if (reset) begin // @[PipelineReg.scala 100:32]
      mem_reg_mepc <= 64'h0; // @[PipelineReg.scala 100:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mepc <= csr_io_mepc; // @[Core.scala 293:21]
    end
    if (reset) begin // @[PipelineReg.scala 101:32]
      mem_reg_mcause <= 64'h0; // @[PipelineReg.scala 101:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mcause <= csr_io_mcause; // @[Core.scala 294:21]
    end
    if (reset) begin // @[PipelineReg.scala 102:32]
      mem_reg_mtvec <= 64'h0; // @[PipelineReg.scala 102:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mtvec <= csr_io_mtvec; // @[Core.scala 295:21]
    end
    if (reset) begin // @[PipelineReg.scala 103:32]
      mem_reg_mscratch <= 64'h0; // @[PipelineReg.scala 103:32]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_mscratch <= csr_io_mscratch; // @[Core.scala 296:21]
    end
    if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_intrpt <= csr_io_intrpt; // @[Core.scala 297:21]
    end
    if (reset) begin // @[PipelineReg.scala 105:33]
      mem_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 105:33]
    end else if (_T_42) begin // @[Core.scala 269:1]
      mem_reg_intrpt_no <= csr_io_intrpt_no; // @[Core.scala 298:21]
    end
    if (reset) begin // @[PipelineReg.scala 107:31]
      wb_reg_mie <= 64'h0; // @[PipelineReg.scala 107:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mie <= mem_reg_mie; // @[Core.scala 397:20]
    end
    if (reset) begin // @[PipelineReg.scala 108:31]
      wb_reg_mstatus <= 64'h0; // @[PipelineReg.scala 108:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mstatus <= mem_reg_mstatus; // @[Core.scala 401:17]
    end
    if (reset) begin // @[PipelineReg.scala 109:31]
      wb_reg_mepc <= 64'h0; // @[PipelineReg.scala 109:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mepc <= mem_reg_mepc; // @[Core.scala 402:17]
    end
    if (reset) begin // @[PipelineReg.scala 110:31]
      wb_reg_mcause <= 64'h0; // @[PipelineReg.scala 110:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mcause <= mem_reg_mcause; // @[Core.scala 403:17]
    end
    if (reset) begin // @[PipelineReg.scala 111:31]
      wb_reg_mtvec <= 64'h0; // @[PipelineReg.scala 111:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mtvec <= mem_reg_mtvec; // @[Core.scala 398:20]
    end
    if (reset) begin // @[PipelineReg.scala 112:31]
      wb_reg_mscratch <= 64'h0; // @[PipelineReg.scala 112:31]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_mscratch <= mem_reg_mscratch; // @[Core.scala 399:20]
    end
    if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_intrpt <= mem_reg_intrpt; // @[Core.scala 393:20]
    end
    if (reset) begin // @[PipelineReg.scala 114:32]
      wb_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 114:32]
    end else if (_T_50) begin // @[Core.scala 367:40]
      wb_reg_intrpt_no <= mem_reg_intrpt_no; // @[Core.scala 394:20]
    end
    if (reset) begin // @[PipelineReg.scala 124:29]
      reg_kill_flag <= 1'h0; // @[PipelineReg.scala 124:29]
    end else if (kill_stage) begin // @[Core.scala 248:17]
      reg_kill_flag <= nxt_pc_io_pc_jmp; // @[Core.scala 248:68]
    end else if (io_imem_inst_ready | if_reg_pc == 32'h7ffffffc) begin // @[Core.scala 28:56]
      if (!(stall)) begin // @[Core.scala 29:26]
        reg_kill_flag <= _GEN_4;
      end
    end
    if (reset) begin // @[PipelineReg.scala 125:29]
      reg_exe_pc_nxt <= 32'h0; // @[PipelineReg.scala 125:29]
    end else if (kill_stage) begin // @[Core.scala 248:17]
      reg_exe_pc_nxt <= nxt_pc_io_pc_nxt; // @[Core.scala 248:33]
    end
    if (reset) begin // @[PipelineReg.scala 131:28]
      exe_reg_stall <= 1'h0; // @[PipelineReg.scala 131:28]
    end else begin
      exe_reg_stall <= _GEN_88;
    end
    if (mem_reg_dmem_en) begin // @[Core.scala 312:22]
      mem_reg_dmem_addr <= mem_reg_alu_out; // @[Core.scala 312:74]
    end
    if (reset) begin // @[Core.scala 350:30]
      mem_reg_rd_data <= 64'h0; // @[Core.scala 350:30]
    end else begin
      mem_reg_rd_data <= mem_rd_data; // @[Core.scala 351:16]
    end
    if (reset) begin // @[Core.scala 353:32]
      mem_reg_stall_wen <= 1'h0; // @[Core.scala 353:32]
    end else if (_T_41 & _T_40) begin // @[Core.scala 363:46]
      mem_reg_stall_wen <= 1'h0; // @[Core.scala 363:64]
    end else if (exe_call_stall) begin // @[Core.scala 356:46]
      mem_reg_stall_wen <= mem_reg_rd_wen; // @[Core.scala 358:18]
    end
    if (reset) begin // @[Core.scala 461:23]
      dt_valid <= 1'h0; // @[Core.scala 461:23]
    end else begin
      dt_valid <= wb_reg_inst != 64'h0 & _GEN_130 != 64'hffffffffffffffff & ~wb_reg_intrpt; // @[Core.scala 473:10]
    end
    if (reset) begin // @[Core.scala 463:19]
      skip <= 1'h0; // @[Core.scala 463:19]
    end else begin
      skip <= _T_63;
    end
    dt_ic_io_pc_REG <= wb_reg_pc; // @[Core.scala 477:31]
    dt_ic_io_instr_REG <= wb_reg_inst; // @[Core.scala 478:31]
    dt_ic_io_wen_REG <= wb_reg_rd_wen | wb_reg_csr_rd_wen; // @[Core.scala 487:46]
    if (wb_reg_csr_rd_wen) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_csr_rd_data;
    end else if (_wb_rd_data_T_2) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_alu_out;
    end else if (_wb_rd_data_T_5) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_rd_data;
    end else begin
      dt_ic_io_wdata_REG <= 64'h0;
    end
    dt_ic_io_wdest_REG <= wb_reg_rd_addr; // @[Core.scala 489:31]
    if (reset) begin // @[Core.scala 494:26]
      cycle_cnt <= 64'h0; // @[Core.scala 494:26]
    end else begin
      cycle_cnt <= _cycle_cnt_T_1; // @[Core.scala 498:13]
    end
    if (reset) begin // @[Core.scala 495:26]
      instr_cnt <= 64'h0; // @[Core.scala 495:26]
    end else if (dt_ic_valid) begin // @[Core.scala 497:24]
      instr_cnt <= _instr_cnt_T_1; // @[Core.scala 497:36]
    end
    if (wb_reg_intrpt) begin // @[Core.scala 523:41]
      dt_ae_io_intrNO_REG <= wb_reg_intrpt_no;
    end else begin
      dt_ae_io_intrNO_REG <= 64'h0;
    end
    if (wb_reg_intrpt) begin // @[Core.scala 525:41]
      dt_ae_io_exceptionPC_REG <= wb_reg_pc;
    end else begin
      dt_ae_io_exceptionPC_REG <= 32'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_54 & ~reset) begin
          $fwrite(32'h80000002,"%c",wb_reg_rs1_data); // @[Core.scala 437:7]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  if_reg_pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  id_reg_pc = _RAND_1[31:0];
  _RAND_2 = {2{`RANDOM}};
  id_reg_inst = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  exe_reg_pc = _RAND_3[31:0];
  _RAND_4 = {2{`RANDOM}};
  exe_reg_inst = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  exe_reg_alu_type = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  exe_reg_wb_type = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  exe_reg_mem_rtype = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  exe_reg_imm_type = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  exe_reg_csr_type = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  exe_reg_op2_type = _RAND_10[2:0];
  _RAND_11 = {2{`RANDOM}};
  exe_reg_op1_data = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  exe_reg_op2_data = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  exe_reg_rs2_data = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  exe_reg_rs1_data = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  exe_reg_imm = _RAND_15[63:0];
  _RAND_16 = {1{`RANDOM}};
  exe_reg_rd_wen = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  exe_reg_dmem_en = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  exe_reg_dmem_wen = _RAND_18[0:0];
  _RAND_19 = {2{`RANDOM}};
  exe_reg_rs1_addr = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  exe_reg_rs2_addr = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  exe_reg_rd_addr = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  mem_reg_dmem_en = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_reg_dmem_wen = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_reg_rd_wen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_reg_pc = _RAND_25[31:0];
  _RAND_26 = {2{`RANDOM}};
  mem_reg_inst = _RAND_26[63:0];
  _RAND_27 = {1{`RANDOM}};
  mem_reg_csr_rd_wen = _RAND_27[0:0];
  _RAND_28 = {2{`RANDOM}};
  mem_reg_csr_rd_data = _RAND_28[63:0];
  _RAND_29 = {1{`RANDOM}};
  mem_reg_clint_en = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mem_reg_alu_type = _RAND_30[4:0];
  _RAND_31 = {1{`RANDOM}};
  mem_reg_wb_type = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  mem_reg_mem_rtype = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  mem_reg_csr_type = _RAND_33[2:0];
  _RAND_34 = {2{`RANDOM}};
  mem_reg_rs1_data = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  mem_reg_alu_out = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  mem_reg_rs2_data = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  mem_reg_rs2_addr = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  mem_reg_rd_addr = _RAND_38[63:0];
  _RAND_39 = {1{`RANDOM}};
  wb_reg_pc = _RAND_39[31:0];
  _RAND_40 = {2{`RANDOM}};
  wb_reg_inst = _RAND_40[63:0];
  _RAND_41 = {1{`RANDOM}};
  wb_reg_mem_rtype = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  wb_reg_alu_type = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  wb_reg_csr_type = _RAND_43[2:0];
  _RAND_44 = {2{`RANDOM}};
  wb_reg_alu_out = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  wb_reg_rd_data = _RAND_45[63:0];
  _RAND_46 = {1{`RANDOM}};
  wb_reg_rd_wen = _RAND_46[0:0];
  _RAND_47 = {2{`RANDOM}};
  wb_reg_rd_addr = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  wb_reg_rs1_data = _RAND_48[63:0];
  _RAND_49 = {1{`RANDOM}};
  wb_reg_csr_rd_wen = _RAND_49[0:0];
  _RAND_50 = {2{`RANDOM}};
  wb_reg_csr_rd_data = _RAND_50[63:0];
  _RAND_51 = {1{`RANDOM}};
  wb_reg_clint_en = _RAND_51[0:0];
  _RAND_52 = {2{`RANDOM}};
  mem_reg_mie = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  mem_reg_mstatus = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  mem_reg_mepc = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  mem_reg_mcause = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  mem_reg_mtvec = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  mem_reg_mscratch = _RAND_57[63:0];
  _RAND_58 = {1{`RANDOM}};
  mem_reg_intrpt = _RAND_58[0:0];
  _RAND_59 = {2{`RANDOM}};
  mem_reg_intrpt_no = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  wb_reg_mie = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  wb_reg_mstatus = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  wb_reg_mepc = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  wb_reg_mcause = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  wb_reg_mtvec = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  wb_reg_mscratch = _RAND_65[63:0];
  _RAND_66 = {1{`RANDOM}};
  wb_reg_intrpt = _RAND_66[0:0];
  _RAND_67 = {2{`RANDOM}};
  wb_reg_intrpt_no = _RAND_67[63:0];
  _RAND_68 = {1{`RANDOM}};
  reg_kill_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  reg_exe_pc_nxt = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  exe_reg_stall = _RAND_70[0:0];
  _RAND_71 = {2{`RANDOM}};
  mem_reg_dmem_addr = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  mem_reg_rd_data = _RAND_72[63:0];
  _RAND_73 = {1{`RANDOM}};
  mem_reg_stall_wen = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  dt_valid = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  skip = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  dt_ic_io_pc_REG = _RAND_76[31:0];
  _RAND_77 = {2{`RANDOM}};
  dt_ic_io_instr_REG = _RAND_77[63:0];
  _RAND_78 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_78[0:0];
  _RAND_79 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  cycle_cnt = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  instr_cnt = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  dt_ae_io_intrNO_REG = _RAND_83[63:0];
  _RAND_84 = {1{`RANDOM}};
  dt_ae_io_exceptionPC_REG = _RAND_84[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Core2AXI(
  input          clock,
  input          reset,
  input          io_axi2ram_ar_ready,
  output         io_axi2ram_ar_valid,
  output [31:0]  io_axi2ram_ar_bits_addr,
  output [7:0]   io_axi2ram_ar_bits_len,
  output [3:0]   io_axi2ram_ar_bits_cache,
  output         io_axi2ram_r_ready,
  input          io_axi2ram_r_valid,
  input  [63:0]  io_axi2ram_r_bits_data,
  input          io_axi2ram_r_bits_last,
  input          io_axi2ram_aw_ready,
  output         io_axi2ram_aw_valid,
  output [31:0]  io_axi2ram_aw_bits_addr,
  input          io_axi2ram_w_ready,
  output         io_axi2ram_w_valid,
  output [63:0]  io_axi2ram_w_bits_data,
  output [7:0]   io_axi2ram_w_bits_strb,
  output         io_axi2ram_w_bits_last,
  output         io_axi2ram_b_ready,
  input          io_axi2ram_b_valid,
  output         io_imem_inst_ready,
  input          io_imem_inst_req,
  input  [31:0]  io_imem_inst_addr,
  output [127:0] io_imem_inst_read,
  output         io_dmem_data_ready,
  input          io_dmem_data_req_r,
  input          io_dmem_data_req_w,
  input  [31:0]  io_dmem_data_addr_r,
  input  [31:0]  io_dmem_data_addr_w,
  input  [7:0]   io_dmem_data_strb,
  output [127:0] io_dmem_data_read,
  input  [127:0] io_dmem_data_write
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg  reg_data_ren; // @[AXI.scala 110:27]
  reg [31:0] reg_data_addr_r; // @[AXI.scala 111:30]
  wire  _GEN_0 = io_dmem_data_req_r ? io_dmem_data_req_r : reg_data_ren; // @[AXI.scala 113:22 AXI.scala 113:36 AXI.scala 110:27]
  wire  _T = io_dmem_data_addr_r != 32'h0; // @[AXI.scala 115:23]
  wire  data_ren = io_dmem_data_req_r | reg_data_ren; // @[AXI.scala 121:32]
  wire  ar_hs = io_axi2ram_ar_ready & io_axi2ram_ar_valid; // @[AXI.scala 124:31]
  wire  r_hs = io_axi2ram_r_ready & io_axi2ram_r_valid; // @[AXI.scala 125:31]
  wire  aw_hs = io_axi2ram_aw_ready & io_axi2ram_aw_valid; // @[AXI.scala 126:31]
  wire  w_hs = io_axi2ram_w_ready & io_axi2ram_w_valid; // @[AXI.scala 127:31]
  wire  b_hs = io_axi2ram_b_ready & io_axi2ram_b_valid; // @[AXI.scala 128:31]
  wire  w_done = w_hs & io_axi2ram_w_bits_last; // @[AXI.scala 130:23]
  wire  r_done = r_hs & io_axi2ram_r_bits_last; // @[AXI.scala 131:23]
  reg [2:0] read_state; // @[AXI.scala 135:28]
  reg [2:0] write_state; // @[AXI.scala 136:28]
  wire  _T_1 = 3'h0 == read_state; // @[Conditional.scala 37:30]
  wire  _GEN_3 = data_ren ? 1'h0 : _GEN_0; // @[AXI.scala 144:21 AXI.scala 144:63]
  wire  _T_2 = 3'h1 == read_state; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h2 == read_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_7 = r_done ? 3'h3 : read_state; // @[AXI.scala 150:21 AXI.scala 150:34 AXI.scala 135:28]
  wire  _T_4 = 3'h3 == read_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_8 = data_ren ? 3'h4 : 3'h0; // @[AXI.scala 153:21 AXI.scala 153:34 AXI.scala 154:34]
  wire  _T_5 = 3'h4 == read_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_9 = ar_hs ? 3'h5 : read_state; // @[AXI.scala 157:21 AXI.scala 157:34 AXI.scala 135:28]
  wire  _T_6 = 3'h5 == read_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_10 = r_done ? 3'h6 : read_state; // @[AXI.scala 160:21 AXI.scala 160:34 AXI.scala 135:28]
  wire  _T_7 = 3'h6 == read_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_11 = _T_7 ? 3'h0 : read_state; // @[Conditional.scala 39:67 AXI.scala 162:34 AXI.scala 135:28]
  wire [2:0] _GEN_12 = _T_6 ? _GEN_10 : _GEN_11; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_13 = _T_5 ? _GEN_9 : _GEN_12; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_14 = _T_4 ? _GEN_8 : _GEN_13; // @[Conditional.scala 39:67]
  wire  _GEN_15 = _T_4 ? _GEN_3 : _GEN_0; // @[Conditional.scala 39:67]
  wire  _T_8 = 3'h0 == write_state; // @[Conditional.scala 37:30]
  wire  _T_9 = 3'h1 == write_state; // @[Conditional.scala 37:30]
  wire  _T_10 = 3'h2 == write_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_24 = w_done ? 3'h3 : write_state; // @[AXI.scala 176:21 AXI.scala 176:35 AXI.scala 136:28]
  wire  _T_11 = 3'h3 == write_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_25 = b_hs ? 3'h4 : write_state; // @[AXI.scala 179:21 AXI.scala 179:35 AXI.scala 136:28]
  wire  _T_12 = 3'h4 == write_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_26 = _T_12 ? 3'h0 : write_state; // @[Conditional.scala 39:67 AXI.scala 181:35 AXI.scala 136:28]
  wire [2:0] _GEN_27 = _T_11 ? _GEN_25 : _GEN_26; // @[Conditional.scala 39:67]
  wire  _T_13 = read_state == 3'h1; // @[AXI.scala 185:17]
  wire  _T_14 = read_state == 3'h4; // @[AXI.scala 186:22]
  wire [31:0] _GEN_31 = _T_14 & io_dmem_data_addr_r == 32'h0 ? reg_data_addr_r : 32'h0; // @[AXI.scala 187:68 AXI.scala 187:77]
  wire [31:0] _GEN_32 = read_state == 3'h4 & _T ? io_dmem_data_addr_r : _GEN_31; // @[AXI.scala 186:68 AXI.scala 186:77]
  wire  _io_axi2ram_ar_bits_len_T = read_state < 3'h4; // @[AXI.scala 194:40]
  wire [1:0] _io_axi2ram_ar_bits_cache_T_1 = _io_axi2ram_ar_bits_len_T ? 2'h2 : 2'h0; // @[AXI.scala 198:28]
  reg [63:0] inst_read_h; // @[AXI.scala 245:28]
  reg [63:0] inst_read_l; // @[AXI.scala 246:28]
  reg [63:0] data_read_h; // @[AXI.scala 247:28]
  assign io_axi2ram_ar_valid = _T_13 | _T_14; // @[AXI.scala 203:51]
  assign io_axi2ram_ar_bits_addr = read_state == 3'h1 ? io_imem_inst_addr : _GEN_32; // @[AXI.scala 185:39 AXI.scala 185:48]
  assign io_axi2ram_ar_bits_len = {{7'd0}, read_state < 3'h4}; // @[AXI.scala 194:40]
  assign io_axi2ram_ar_bits_cache = {{2'd0}, _io_axi2ram_ar_bits_cache_T_1}; // @[AXI.scala 198:28]
  assign io_axi2ram_r_ready = 1'h1; // @[AXI.scala 205:18]
  assign io_axi2ram_aw_valid = write_state == 3'h1; // @[AXI.scala 219:34]
  assign io_axi2ram_aw_bits_addr = io_dmem_data_addr_w; // @[AXI.scala 209:23]
  assign io_axi2ram_w_valid = write_state == 3'h2; // @[AXI.scala 226:34]
  assign io_axi2ram_w_bits_data = io_dmem_data_write[63:0]; // @[AXI.scala 222:23]
  assign io_axi2ram_w_bits_strb = io_dmem_data_strb; // @[AXI.scala 223:23]
  assign io_axi2ram_w_bits_last = 1'h1; // @[AXI.scala 224:23]
  assign io_axi2ram_b_ready = 1'h1; // @[AXI.scala 229:18]
  assign io_imem_inst_ready = read_state == 3'h3; // @[AXI.scala 265:34]
  assign io_imem_inst_read = {inst_read_h,inst_read_l}; // @[Cat.scala 30:58]
  assign io_dmem_data_ready = read_state == 3'h6 | write_state == 3'h4; // @[AXI.scala 266:51]
  assign io_dmem_data_read = {{64'd0}, data_read_h}; // @[AXI.scala 263:18]
  always @(posedge clock) begin
    if (reset) begin // @[AXI.scala 110:27]
      reg_data_ren <= 1'h0; // @[AXI.scala 110:27]
    end else if (_T_1) begin // @[Conditional.scala 40:58]
      if (io_imem_inst_req) begin // @[AXI.scala 143:21]
        reg_data_ren <= _GEN_0;
      end else if (data_ren) begin // @[AXI.scala 144:21]
        reg_data_ren <= 1'h0; // @[AXI.scala 144:63]
      end else begin
        reg_data_ren <= _GEN_0;
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      reg_data_ren <= _GEN_0;
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      reg_data_ren <= _GEN_0;
    end else begin
      reg_data_ren <= _GEN_15;
    end
    if (reset) begin // @[AXI.scala 111:30]
      reg_data_addr_r <= 32'h0; // @[AXI.scala 111:30]
    end else if (io_dmem_data_addr_r != 32'h0) begin // @[AXI.scala 115:31]
      reg_data_addr_r <= io_dmem_data_addr_r; // @[AXI.scala 115:48]
    end
    if (reset) begin // @[AXI.scala 135:28]
      read_state <= 3'h0; // @[AXI.scala 135:28]
    end else if (_T_1) begin // @[Conditional.scala 40:58]
      if (io_imem_inst_req) begin // @[AXI.scala 143:21]
        read_state <= 3'h1; // @[AXI.scala 143:34]
      end else if (data_ren) begin // @[AXI.scala 144:21]
        read_state <= 3'h4; // @[AXI.scala 144:34]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      if (ar_hs) begin // @[AXI.scala 147:21]
        read_state <= 3'h2; // @[AXI.scala 147:34]
      end
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      read_state <= _GEN_7;
    end else begin
      read_state <= _GEN_14;
    end
    if (reset) begin // @[AXI.scala 136:28]
      write_state <= 3'h0; // @[AXI.scala 136:28]
    end else if (_T_8) begin // @[Conditional.scala 40:58]
      if (io_dmem_data_req_w) begin // @[AXI.scala 170:21]
        write_state <= 3'h1; // @[AXI.scala 170:35]
      end
    end else if (_T_9) begin // @[Conditional.scala 39:67]
      if (aw_hs) begin // @[AXI.scala 173:21]
        write_state <= 3'h2; // @[AXI.scala 173:35]
      end
    end else if (_T_10) begin // @[Conditional.scala 39:67]
      write_state <= _GEN_24;
    end else begin
      write_state <= _GEN_27;
    end
    if (reset) begin // @[AXI.scala 245:28]
      inst_read_h <= 64'h0; // @[AXI.scala 245:28]
    end else if (r_hs) begin // @[AXI.scala 250:15]
      if (io_axi2ram_r_bits_last) begin // @[AXI.scala 251:28]
        inst_read_h <= io_axi2ram_r_bits_data; // @[AXI.scala 252:19]
      end
    end
    if (reset) begin // @[AXI.scala 246:28]
      inst_read_l <= 64'h0; // @[AXI.scala 246:28]
    end else if (r_hs) begin // @[AXI.scala 250:15]
      if (!(io_axi2ram_r_bits_last)) begin // @[AXI.scala 251:28]
        inst_read_l <= io_axi2ram_r_bits_data; // @[AXI.scala 256:19]
      end
    end
    if (reset) begin // @[AXI.scala 247:28]
      data_read_h <= 64'h0; // @[AXI.scala 247:28]
    end else if (r_hs) begin // @[AXI.scala 250:15]
      if (io_axi2ram_r_bits_last) begin // @[AXI.scala 251:28]
        data_read_h <= io_axi2ram_r_bits_data; // @[AXI.scala 253:19]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_data_ren = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reg_data_addr_r = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  read_state = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  write_state = _RAND_3[2:0];
  _RAND_4 = {2{`RANDOM}};
  inst_read_h = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  inst_read_l = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  data_read_h = _RAND_6[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Icache(
  input          clock,
  input          reset,
  output         io_core_inst_inst_ready,
  input          io_core_inst_inst_req,
  input  [31:0]  io_core_inst_inst_addr,
  output [31:0]  io_core_inst_inst_read,
  input          io_axi_inst_inst_ready,
  output         io_axi_inst_inst_req,
  output [31:0]  io_axi_inst_inst_addr,
  input  [127:0] io_axi_inst_inst_read
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [127:0] _RAND_132;
  reg [31:0] _RAND_133;
`endif // RANDOMIZE_REG_INIT
  wire [127:0] icache_Q; // @[Icache.scala 151:22]
  wire  icache_CLK; // @[Icache.scala 151:22]
  wire  icache_CEN; // @[Icache.scala 151:22]
  wire  icache_WEN; // @[Icache.scala 151:22]
  wire [5:0] icache_A; // @[Icache.scala 151:22]
  wire [127:0] icache_D; // @[Icache.scala 151:22]
  reg [21:0] tag_0; // @[Icache.scala 29:24]
  reg [21:0] tag_1; // @[Icache.scala 29:24]
  reg [21:0] tag_2; // @[Icache.scala 29:24]
  reg [21:0] tag_3; // @[Icache.scala 29:24]
  reg [21:0] tag_4; // @[Icache.scala 29:24]
  reg [21:0] tag_5; // @[Icache.scala 29:24]
  reg [21:0] tag_6; // @[Icache.scala 29:24]
  reg [21:0] tag_7; // @[Icache.scala 29:24]
  reg [21:0] tag_8; // @[Icache.scala 29:24]
  reg [21:0] tag_9; // @[Icache.scala 29:24]
  reg [21:0] tag_10; // @[Icache.scala 29:24]
  reg [21:0] tag_11; // @[Icache.scala 29:24]
  reg [21:0] tag_12; // @[Icache.scala 29:24]
  reg [21:0] tag_13; // @[Icache.scala 29:24]
  reg [21:0] tag_14; // @[Icache.scala 29:24]
  reg [21:0] tag_15; // @[Icache.scala 29:24]
  reg [21:0] tag_16; // @[Icache.scala 29:24]
  reg [21:0] tag_17; // @[Icache.scala 29:24]
  reg [21:0] tag_18; // @[Icache.scala 29:24]
  reg [21:0] tag_19; // @[Icache.scala 29:24]
  reg [21:0] tag_20; // @[Icache.scala 29:24]
  reg [21:0] tag_21; // @[Icache.scala 29:24]
  reg [21:0] tag_22; // @[Icache.scala 29:24]
  reg [21:0] tag_23; // @[Icache.scala 29:24]
  reg [21:0] tag_24; // @[Icache.scala 29:24]
  reg [21:0] tag_25; // @[Icache.scala 29:24]
  reg [21:0] tag_26; // @[Icache.scala 29:24]
  reg [21:0] tag_27; // @[Icache.scala 29:24]
  reg [21:0] tag_28; // @[Icache.scala 29:24]
  reg [21:0] tag_29; // @[Icache.scala 29:24]
  reg [21:0] tag_30; // @[Icache.scala 29:24]
  reg [21:0] tag_31; // @[Icache.scala 29:24]
  reg [21:0] tag_32; // @[Icache.scala 29:24]
  reg [21:0] tag_33; // @[Icache.scala 29:24]
  reg [21:0] tag_34; // @[Icache.scala 29:24]
  reg [21:0] tag_35; // @[Icache.scala 29:24]
  reg [21:0] tag_36; // @[Icache.scala 29:24]
  reg [21:0] tag_37; // @[Icache.scala 29:24]
  reg [21:0] tag_38; // @[Icache.scala 29:24]
  reg [21:0] tag_39; // @[Icache.scala 29:24]
  reg [21:0] tag_40; // @[Icache.scala 29:24]
  reg [21:0] tag_41; // @[Icache.scala 29:24]
  reg [21:0] tag_42; // @[Icache.scala 29:24]
  reg [21:0] tag_43; // @[Icache.scala 29:24]
  reg [21:0] tag_44; // @[Icache.scala 29:24]
  reg [21:0] tag_45; // @[Icache.scala 29:24]
  reg [21:0] tag_46; // @[Icache.scala 29:24]
  reg [21:0] tag_47; // @[Icache.scala 29:24]
  reg [21:0] tag_48; // @[Icache.scala 29:24]
  reg [21:0] tag_49; // @[Icache.scala 29:24]
  reg [21:0] tag_50; // @[Icache.scala 29:24]
  reg [21:0] tag_51; // @[Icache.scala 29:24]
  reg [21:0] tag_52; // @[Icache.scala 29:24]
  reg [21:0] tag_53; // @[Icache.scala 29:24]
  reg [21:0] tag_54; // @[Icache.scala 29:24]
  reg [21:0] tag_55; // @[Icache.scala 29:24]
  reg [21:0] tag_56; // @[Icache.scala 29:24]
  reg [21:0] tag_57; // @[Icache.scala 29:24]
  reg [21:0] tag_58; // @[Icache.scala 29:24]
  reg [21:0] tag_59; // @[Icache.scala 29:24]
  reg [21:0] tag_60; // @[Icache.scala 29:24]
  reg [21:0] tag_61; // @[Icache.scala 29:24]
  reg [21:0] tag_62; // @[Icache.scala 29:24]
  reg [21:0] tag_63; // @[Icache.scala 29:24]
  reg  valid_0; // @[Icache.scala 31:24]
  reg  valid_1; // @[Icache.scala 31:24]
  reg  valid_2; // @[Icache.scala 31:24]
  reg  valid_3; // @[Icache.scala 31:24]
  reg  valid_4; // @[Icache.scala 31:24]
  reg  valid_5; // @[Icache.scala 31:24]
  reg  valid_6; // @[Icache.scala 31:24]
  reg  valid_7; // @[Icache.scala 31:24]
  reg  valid_8; // @[Icache.scala 31:24]
  reg  valid_9; // @[Icache.scala 31:24]
  reg  valid_10; // @[Icache.scala 31:24]
  reg  valid_11; // @[Icache.scala 31:24]
  reg  valid_12; // @[Icache.scala 31:24]
  reg  valid_13; // @[Icache.scala 31:24]
  reg  valid_14; // @[Icache.scala 31:24]
  reg  valid_15; // @[Icache.scala 31:24]
  reg  valid_16; // @[Icache.scala 31:24]
  reg  valid_17; // @[Icache.scala 31:24]
  reg  valid_18; // @[Icache.scala 31:24]
  reg  valid_19; // @[Icache.scala 31:24]
  reg  valid_20; // @[Icache.scala 31:24]
  reg  valid_21; // @[Icache.scala 31:24]
  reg  valid_22; // @[Icache.scala 31:24]
  reg  valid_23; // @[Icache.scala 31:24]
  reg  valid_24; // @[Icache.scala 31:24]
  reg  valid_25; // @[Icache.scala 31:24]
  reg  valid_26; // @[Icache.scala 31:24]
  reg  valid_27; // @[Icache.scala 31:24]
  reg  valid_28; // @[Icache.scala 31:24]
  reg  valid_29; // @[Icache.scala 31:24]
  reg  valid_30; // @[Icache.scala 31:24]
  reg  valid_31; // @[Icache.scala 31:24]
  reg  valid_32; // @[Icache.scala 31:24]
  reg  valid_33; // @[Icache.scala 31:24]
  reg  valid_34; // @[Icache.scala 31:24]
  reg  valid_35; // @[Icache.scala 31:24]
  reg  valid_36; // @[Icache.scala 31:24]
  reg  valid_37; // @[Icache.scala 31:24]
  reg  valid_38; // @[Icache.scala 31:24]
  reg  valid_39; // @[Icache.scala 31:24]
  reg  valid_40; // @[Icache.scala 31:24]
  reg  valid_41; // @[Icache.scala 31:24]
  reg  valid_42; // @[Icache.scala 31:24]
  reg  valid_43; // @[Icache.scala 31:24]
  reg  valid_44; // @[Icache.scala 31:24]
  reg  valid_45; // @[Icache.scala 31:24]
  reg  valid_46; // @[Icache.scala 31:24]
  reg  valid_47; // @[Icache.scala 31:24]
  reg  valid_48; // @[Icache.scala 31:24]
  reg  valid_49; // @[Icache.scala 31:24]
  reg  valid_50; // @[Icache.scala 31:24]
  reg  valid_51; // @[Icache.scala 31:24]
  reg  valid_52; // @[Icache.scala 31:24]
  reg  valid_53; // @[Icache.scala 31:24]
  reg  valid_54; // @[Icache.scala 31:24]
  reg  valid_55; // @[Icache.scala 31:24]
  reg  valid_56; // @[Icache.scala 31:24]
  reg  valid_57; // @[Icache.scala 31:24]
  reg  valid_58; // @[Icache.scala 31:24]
  reg  valid_59; // @[Icache.scala 31:24]
  reg  valid_60; // @[Icache.scala 31:24]
  reg  valid_61; // @[Icache.scala 31:24]
  reg  valid_62; // @[Icache.scala 31:24]
  reg  valid_63; // @[Icache.scala 31:24]
  reg [1:0] state; // @[Icache.scala 36:23]
  reg [31:0] req_reg_addr; // @[Icache.scala 44:29]
  wire  _valid_addr_T = state == 2'h1; // @[Icache.scala 45:30]
  wire [31:0] valid_addr = state == 2'h1 ? io_core_inst_inst_addr : req_reg_addr; // @[Icache.scala 45:23]
  wire [21:0] req_tag = valid_addr[31:10]; // @[Icache.scala 47:28]
  wire [5:0] req_index = valid_addr[9:4]; // @[Icache.scala 48:28]
  wire [3:0] req_offset = valid_addr[3:0]; // @[Icache.scala 49:28]
  reg  cache_reg_fill; // @[Icache.scala 55:32]
  wire [21:0] _GEN_1 = 6'h1 == req_index ? tag_1 : tag_0; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_2 = 6'h2 == req_index ? tag_2 : _GEN_1; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_3 = 6'h3 == req_index ? tag_3 : _GEN_2; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_4 = 6'h4 == req_index ? tag_4 : _GEN_3; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_5 = 6'h5 == req_index ? tag_5 : _GEN_4; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_6 = 6'h6 == req_index ? tag_6 : _GEN_5; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_7 = 6'h7 == req_index ? tag_7 : _GEN_6; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_8 = 6'h8 == req_index ? tag_8 : _GEN_7; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_9 = 6'h9 == req_index ? tag_9 : _GEN_8; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_10 = 6'ha == req_index ? tag_10 : _GEN_9; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_11 = 6'hb == req_index ? tag_11 : _GEN_10; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_12 = 6'hc == req_index ? tag_12 : _GEN_11; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_13 = 6'hd == req_index ? tag_13 : _GEN_12; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_14 = 6'he == req_index ? tag_14 : _GEN_13; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_15 = 6'hf == req_index ? tag_15 : _GEN_14; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_16 = 6'h10 == req_index ? tag_16 : _GEN_15; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_17 = 6'h11 == req_index ? tag_17 : _GEN_16; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_18 = 6'h12 == req_index ? tag_18 : _GEN_17; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_19 = 6'h13 == req_index ? tag_19 : _GEN_18; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_20 = 6'h14 == req_index ? tag_20 : _GEN_19; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_21 = 6'h15 == req_index ? tag_21 : _GEN_20; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_22 = 6'h16 == req_index ? tag_22 : _GEN_21; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_23 = 6'h17 == req_index ? tag_23 : _GEN_22; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_24 = 6'h18 == req_index ? tag_24 : _GEN_23; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_25 = 6'h19 == req_index ? tag_25 : _GEN_24; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_26 = 6'h1a == req_index ? tag_26 : _GEN_25; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_27 = 6'h1b == req_index ? tag_27 : _GEN_26; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_28 = 6'h1c == req_index ? tag_28 : _GEN_27; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_29 = 6'h1d == req_index ? tag_29 : _GEN_28; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_30 = 6'h1e == req_index ? tag_30 : _GEN_29; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_31 = 6'h1f == req_index ? tag_31 : _GEN_30; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_32 = 6'h20 == req_index ? tag_32 : _GEN_31; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_33 = 6'h21 == req_index ? tag_33 : _GEN_32; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_34 = 6'h22 == req_index ? tag_34 : _GEN_33; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_35 = 6'h23 == req_index ? tag_35 : _GEN_34; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_36 = 6'h24 == req_index ? tag_36 : _GEN_35; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_37 = 6'h25 == req_index ? tag_37 : _GEN_36; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_38 = 6'h26 == req_index ? tag_38 : _GEN_37; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_39 = 6'h27 == req_index ? tag_39 : _GEN_38; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_40 = 6'h28 == req_index ? tag_40 : _GEN_39; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_41 = 6'h29 == req_index ? tag_41 : _GEN_40; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_42 = 6'h2a == req_index ? tag_42 : _GEN_41; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_43 = 6'h2b == req_index ? tag_43 : _GEN_42; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_44 = 6'h2c == req_index ? tag_44 : _GEN_43; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_45 = 6'h2d == req_index ? tag_45 : _GEN_44; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_46 = 6'h2e == req_index ? tag_46 : _GEN_45; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_47 = 6'h2f == req_index ? tag_47 : _GEN_46; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_48 = 6'h30 == req_index ? tag_48 : _GEN_47; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_49 = 6'h31 == req_index ? tag_49 : _GEN_48; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_50 = 6'h32 == req_index ? tag_50 : _GEN_49; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_51 = 6'h33 == req_index ? tag_51 : _GEN_50; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_52 = 6'h34 == req_index ? tag_52 : _GEN_51; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_53 = 6'h35 == req_index ? tag_53 : _GEN_52; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_54 = 6'h36 == req_index ? tag_54 : _GEN_53; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_55 = 6'h37 == req_index ? tag_55 : _GEN_54; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_56 = 6'h38 == req_index ? tag_56 : _GEN_55; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_57 = 6'h39 == req_index ? tag_57 : _GEN_56; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_58 = 6'h3a == req_index ? tag_58 : _GEN_57; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_59 = 6'h3b == req_index ? tag_59 : _GEN_58; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_60 = 6'h3c == req_index ? tag_60 : _GEN_59; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_61 = 6'h3d == req_index ? tag_61 : _GEN_60; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_62 = 6'h3e == req_index ? tag_62 : _GEN_61; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire [21:0] _GEN_63 = 6'h3f == req_index ? tag_63 : _GEN_62; // @[Icache.scala 58:32 Icache.scala 58:32]
  wire  _GEN_65 = 6'h1 == req_index ? valid_1 : valid_0; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_66 = 6'h2 == req_index ? valid_2 : _GEN_65; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_67 = 6'h3 == req_index ? valid_3 : _GEN_66; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_68 = 6'h4 == req_index ? valid_4 : _GEN_67; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_69 = 6'h5 == req_index ? valid_5 : _GEN_68; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_70 = 6'h6 == req_index ? valid_6 : _GEN_69; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_71 = 6'h7 == req_index ? valid_7 : _GEN_70; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_72 = 6'h8 == req_index ? valid_8 : _GEN_71; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_73 = 6'h9 == req_index ? valid_9 : _GEN_72; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_74 = 6'ha == req_index ? valid_10 : _GEN_73; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_75 = 6'hb == req_index ? valid_11 : _GEN_74; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_76 = 6'hc == req_index ? valid_12 : _GEN_75; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_77 = 6'hd == req_index ? valid_13 : _GEN_76; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_78 = 6'he == req_index ? valid_14 : _GEN_77; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_79 = 6'hf == req_index ? valid_15 : _GEN_78; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_80 = 6'h10 == req_index ? valid_16 : _GEN_79; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_81 = 6'h11 == req_index ? valid_17 : _GEN_80; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_82 = 6'h12 == req_index ? valid_18 : _GEN_81; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_83 = 6'h13 == req_index ? valid_19 : _GEN_82; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_84 = 6'h14 == req_index ? valid_20 : _GEN_83; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_85 = 6'h15 == req_index ? valid_21 : _GEN_84; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_86 = 6'h16 == req_index ? valid_22 : _GEN_85; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_87 = 6'h17 == req_index ? valid_23 : _GEN_86; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_88 = 6'h18 == req_index ? valid_24 : _GEN_87; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_89 = 6'h19 == req_index ? valid_25 : _GEN_88; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_90 = 6'h1a == req_index ? valid_26 : _GEN_89; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_91 = 6'h1b == req_index ? valid_27 : _GEN_90; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_92 = 6'h1c == req_index ? valid_28 : _GEN_91; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_93 = 6'h1d == req_index ? valid_29 : _GEN_92; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_94 = 6'h1e == req_index ? valid_30 : _GEN_93; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_95 = 6'h1f == req_index ? valid_31 : _GEN_94; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_96 = 6'h20 == req_index ? valid_32 : _GEN_95; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_97 = 6'h21 == req_index ? valid_33 : _GEN_96; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_98 = 6'h22 == req_index ? valid_34 : _GEN_97; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_99 = 6'h23 == req_index ? valid_35 : _GEN_98; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_100 = 6'h24 == req_index ? valid_36 : _GEN_99; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_101 = 6'h25 == req_index ? valid_37 : _GEN_100; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_102 = 6'h26 == req_index ? valid_38 : _GEN_101; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_103 = 6'h27 == req_index ? valid_39 : _GEN_102; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_104 = 6'h28 == req_index ? valid_40 : _GEN_103; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_105 = 6'h29 == req_index ? valid_41 : _GEN_104; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_106 = 6'h2a == req_index ? valid_42 : _GEN_105; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_107 = 6'h2b == req_index ? valid_43 : _GEN_106; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_108 = 6'h2c == req_index ? valid_44 : _GEN_107; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_109 = 6'h2d == req_index ? valid_45 : _GEN_108; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_110 = 6'h2e == req_index ? valid_46 : _GEN_109; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_111 = 6'h2f == req_index ? valid_47 : _GEN_110; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_112 = 6'h30 == req_index ? valid_48 : _GEN_111; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_113 = 6'h31 == req_index ? valid_49 : _GEN_112; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_114 = 6'h32 == req_index ? valid_50 : _GEN_113; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_115 = 6'h33 == req_index ? valid_51 : _GEN_114; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_116 = 6'h34 == req_index ? valid_52 : _GEN_115; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_117 = 6'h35 == req_index ? valid_53 : _GEN_116; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_118 = 6'h36 == req_index ? valid_54 : _GEN_117; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_119 = 6'h37 == req_index ? valid_55 : _GEN_118; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_120 = 6'h38 == req_index ? valid_56 : _GEN_119; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_121 = 6'h39 == req_index ? valid_57 : _GEN_120; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_122 = 6'h3a == req_index ? valid_58 : _GEN_121; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_123 = 6'h3b == req_index ? valid_59 : _GEN_122; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_124 = 6'h3c == req_index ? valid_60 : _GEN_123; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_125 = 6'h3d == req_index ? valid_61 : _GEN_124; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_126 = 6'h3e == req_index ? valid_62 : _GEN_125; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  _GEN_127 = 6'h3f == req_index ? valid_63 : _GEN_126; // @[Icache.scala 58:45 Icache.scala 58:45]
  wire  cache_hit = _GEN_63 == req_tag & _GEN_127; // @[Icache.scala 58:45]
  reg  inst_ready2core; // @[Icache.scala 65:33]
  wire [127:0] cache_data_out = icache_Q; // @[Icache.scala 56:29 Icache.scala 157:18]
  wire [31:0] _inst_read2core_T_6 = 2'h1 == req_offset[3:2] ? cache_data_out[63:32] : cache_data_out[31:0]; // @[Mux.scala 80:57]
  wire [31:0] _inst_read2core_T_8 = 2'h2 == req_offset[3:2] ? cache_data_out[95:64] : _inst_read2core_T_6; // @[Mux.scala 80:57]
  reg [127:0] icache_wdata; // @[Icache.scala 75:29]
  reg  icache_wen; // @[Icache.scala 77:29]
  wire  _T = 2'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == state; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_129 = ~cache_hit ? io_core_inst_inst_addr : req_reg_addr; // @[Icache.scala 92:26 Icache.scala 93:20 Icache.scala 44:29]
  wire [1:0] _GEN_130 = ~cache_hit ? 2'h2 : state; // @[Icache.scala 92:26 Icache.scala 94:13 Icache.scala 36:23]
  wire  _T_3 = 2'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_4 = ~cache_reg_fill; // @[Icache.scala 101:25]
  wire [1:0] _GEN_133 = ~cache_reg_fill ? 2'h2 : 2'h3; // @[Icache.scala 101:37 Icache.scala 103:14 Icache.scala 108:13]
  wire [31:0] _GEN_135 = ~cache_reg_fill ? req_reg_addr : 32'h0; // @[Icache.scala 101:37 Icache.scala 105:21]
  wire  _GEN_136 = io_axi_inst_inst_ready | cache_reg_fill; // @[Icache.scala 111:27 Icache.scala 113:22 Icache.scala 55:32]
  wire  _GEN_137 = io_axi_inst_inst_ready ? 1'h0 : _T_4; // @[Icache.scala 111:27 Icache.scala 114:22]
  wire  _GEN_138 = io_axi_inst_inst_ready | icache_wen; // @[Icache.scala 111:27 Icache.scala 116:22 Icache.scala 77:29]
  wire [127:0] _GEN_139 = io_axi_inst_inst_ready ? io_axi_inst_inst_read : icache_wdata; // @[Icache.scala 111:27 Icache.scala 117:22 Icache.scala 75:29]
  wire  _T_5 = 2'h3 == state; // @[Conditional.scala 37:30]
  wire  _GEN_140 = 6'h0 == req_index | valid_0; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_141 = 6'h1 == req_index | valid_1; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_142 = 6'h2 == req_index | valid_2; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_143 = 6'h3 == req_index | valid_3; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_144 = 6'h4 == req_index | valid_4; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_145 = 6'h5 == req_index | valid_5; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_146 = 6'h6 == req_index | valid_6; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_147 = 6'h7 == req_index | valid_7; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_148 = 6'h8 == req_index | valid_8; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_149 = 6'h9 == req_index | valid_9; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_150 = 6'ha == req_index | valid_10; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_151 = 6'hb == req_index | valid_11; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_152 = 6'hc == req_index | valid_12; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_153 = 6'hd == req_index | valid_13; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_154 = 6'he == req_index | valid_14; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_155 = 6'hf == req_index | valid_15; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_156 = 6'h10 == req_index | valid_16; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_157 = 6'h11 == req_index | valid_17; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_158 = 6'h12 == req_index | valid_18; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_159 = 6'h13 == req_index | valid_19; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_160 = 6'h14 == req_index | valid_20; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_161 = 6'h15 == req_index | valid_21; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_162 = 6'h16 == req_index | valid_22; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_163 = 6'h17 == req_index | valid_23; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_164 = 6'h18 == req_index | valid_24; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_165 = 6'h19 == req_index | valid_25; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_166 = 6'h1a == req_index | valid_26; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_167 = 6'h1b == req_index | valid_27; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_168 = 6'h1c == req_index | valid_28; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_169 = 6'h1d == req_index | valid_29; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_170 = 6'h1e == req_index | valid_30; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_171 = 6'h1f == req_index | valid_31; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_172 = 6'h20 == req_index | valid_32; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_173 = 6'h21 == req_index | valid_33; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_174 = 6'h22 == req_index | valid_34; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_175 = 6'h23 == req_index | valid_35; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_176 = 6'h24 == req_index | valid_36; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_177 = 6'h25 == req_index | valid_37; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_178 = 6'h26 == req_index | valid_38; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_179 = 6'h27 == req_index | valid_39; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_180 = 6'h28 == req_index | valid_40; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_181 = 6'h29 == req_index | valid_41; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_182 = 6'h2a == req_index | valid_42; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_183 = 6'h2b == req_index | valid_43; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_184 = 6'h2c == req_index | valid_44; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_185 = 6'h2d == req_index | valid_45; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_186 = 6'h2e == req_index | valid_46; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_187 = 6'h2f == req_index | valid_47; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_188 = 6'h30 == req_index | valid_48; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_189 = 6'h31 == req_index | valid_49; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_190 = 6'h32 == req_index | valid_50; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_191 = 6'h33 == req_index | valid_51; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_192 = 6'h34 == req_index | valid_52; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_193 = 6'h35 == req_index | valid_53; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_194 = 6'h36 == req_index | valid_54; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_195 = 6'h37 == req_index | valid_55; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_196 = 6'h38 == req_index | valid_56; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_197 = 6'h39 == req_index | valid_57; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_198 = 6'h3a == req_index | valid_58; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_199 = 6'h3b == req_index | valid_59; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_200 = 6'h3c == req_index | valid_60; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_201 = 6'h3d == req_index | valid_61; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_202 = 6'h3e == req_index | valid_62; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire  _GEN_203 = 6'h3f == req_index | valid_63; // @[Icache.scala 125:25 Icache.scala 125:25 Icache.scala 31:24]
  wire [21:0] _GEN_204 = 6'h0 == req_index ? req_tag : tag_0; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_205 = 6'h1 == req_index ? req_tag : tag_1; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_206 = 6'h2 == req_index ? req_tag : tag_2; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_207 = 6'h3 == req_index ? req_tag : tag_3; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_208 = 6'h4 == req_index ? req_tag : tag_4; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_209 = 6'h5 == req_index ? req_tag : tag_5; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_210 = 6'h6 == req_index ? req_tag : tag_6; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_211 = 6'h7 == req_index ? req_tag : tag_7; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_212 = 6'h8 == req_index ? req_tag : tag_8; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_213 = 6'h9 == req_index ? req_tag : tag_9; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_214 = 6'ha == req_index ? req_tag : tag_10; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_215 = 6'hb == req_index ? req_tag : tag_11; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_216 = 6'hc == req_index ? req_tag : tag_12; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_217 = 6'hd == req_index ? req_tag : tag_13; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_218 = 6'he == req_index ? req_tag : tag_14; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_219 = 6'hf == req_index ? req_tag : tag_15; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_220 = 6'h10 == req_index ? req_tag : tag_16; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_221 = 6'h11 == req_index ? req_tag : tag_17; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_222 = 6'h12 == req_index ? req_tag : tag_18; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_223 = 6'h13 == req_index ? req_tag : tag_19; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_224 = 6'h14 == req_index ? req_tag : tag_20; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_225 = 6'h15 == req_index ? req_tag : tag_21; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_226 = 6'h16 == req_index ? req_tag : tag_22; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_227 = 6'h17 == req_index ? req_tag : tag_23; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_228 = 6'h18 == req_index ? req_tag : tag_24; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_229 = 6'h19 == req_index ? req_tag : tag_25; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_230 = 6'h1a == req_index ? req_tag : tag_26; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_231 = 6'h1b == req_index ? req_tag : tag_27; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_232 = 6'h1c == req_index ? req_tag : tag_28; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_233 = 6'h1d == req_index ? req_tag : tag_29; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_234 = 6'h1e == req_index ? req_tag : tag_30; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_235 = 6'h1f == req_index ? req_tag : tag_31; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_236 = 6'h20 == req_index ? req_tag : tag_32; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_237 = 6'h21 == req_index ? req_tag : tag_33; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_238 = 6'h22 == req_index ? req_tag : tag_34; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_239 = 6'h23 == req_index ? req_tag : tag_35; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_240 = 6'h24 == req_index ? req_tag : tag_36; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_241 = 6'h25 == req_index ? req_tag : tag_37; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_242 = 6'h26 == req_index ? req_tag : tag_38; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_243 = 6'h27 == req_index ? req_tag : tag_39; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_244 = 6'h28 == req_index ? req_tag : tag_40; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_245 = 6'h29 == req_index ? req_tag : tag_41; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_246 = 6'h2a == req_index ? req_tag : tag_42; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_247 = 6'h2b == req_index ? req_tag : tag_43; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_248 = 6'h2c == req_index ? req_tag : tag_44; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_249 = 6'h2d == req_index ? req_tag : tag_45; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_250 = 6'h2e == req_index ? req_tag : tag_46; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_251 = 6'h2f == req_index ? req_tag : tag_47; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_252 = 6'h30 == req_index ? req_tag : tag_48; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_253 = 6'h31 == req_index ? req_tag : tag_49; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_254 = 6'h32 == req_index ? req_tag : tag_50; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_255 = 6'h33 == req_index ? req_tag : tag_51; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_256 = 6'h34 == req_index ? req_tag : tag_52; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_257 = 6'h35 == req_index ? req_tag : tag_53; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_258 = 6'h36 == req_index ? req_tag : tag_54; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_259 = 6'h37 == req_index ? req_tag : tag_55; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_260 = 6'h38 == req_index ? req_tag : tag_56; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_261 = 6'h39 == req_index ? req_tag : tag_57; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_262 = 6'h3a == req_index ? req_tag : tag_58; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_263 = 6'h3b == req_index ? req_tag : tag_59; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_264 = 6'h3c == req_index ? req_tag : tag_60; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_265 = 6'h3d == req_index ? req_tag : tag_61; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_266 = 6'h3e == req_index ? req_tag : tag_62; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire [21:0] _GEN_267 = 6'h3f == req_index ? req_tag : tag_63; // @[Icache.scala 126:25 Icache.scala 126:25 Icache.scala 29:24]
  wire  _GEN_332 = _T_5 ? 1'h0 : cache_reg_fill; // @[Conditional.scala 39:67 Icache.scala 123:25 Icache.scala 55:32]
  wire  _GEN_333 = _T_5 ? _GEN_140 : valid_0; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_334 = _T_5 ? _GEN_141 : valid_1; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_335 = _T_5 ? _GEN_142 : valid_2; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_336 = _T_5 ? _GEN_143 : valid_3; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_337 = _T_5 ? _GEN_144 : valid_4; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_338 = _T_5 ? _GEN_145 : valid_5; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_339 = _T_5 ? _GEN_146 : valid_6; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_340 = _T_5 ? _GEN_147 : valid_7; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_341 = _T_5 ? _GEN_148 : valid_8; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_342 = _T_5 ? _GEN_149 : valid_9; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_343 = _T_5 ? _GEN_150 : valid_10; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_344 = _T_5 ? _GEN_151 : valid_11; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_345 = _T_5 ? _GEN_152 : valid_12; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_346 = _T_5 ? _GEN_153 : valid_13; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_347 = _T_5 ? _GEN_154 : valid_14; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_348 = _T_5 ? _GEN_155 : valid_15; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_349 = _T_5 ? _GEN_156 : valid_16; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_350 = _T_5 ? _GEN_157 : valid_17; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_351 = _T_5 ? _GEN_158 : valid_18; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_352 = _T_5 ? _GEN_159 : valid_19; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_353 = _T_5 ? _GEN_160 : valid_20; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_354 = _T_5 ? _GEN_161 : valid_21; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_355 = _T_5 ? _GEN_162 : valid_22; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_356 = _T_5 ? _GEN_163 : valid_23; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_357 = _T_5 ? _GEN_164 : valid_24; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_358 = _T_5 ? _GEN_165 : valid_25; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_359 = _T_5 ? _GEN_166 : valid_26; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_360 = _T_5 ? _GEN_167 : valid_27; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_361 = _T_5 ? _GEN_168 : valid_28; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_362 = _T_5 ? _GEN_169 : valid_29; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_363 = _T_5 ? _GEN_170 : valid_30; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_364 = _T_5 ? _GEN_171 : valid_31; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_365 = _T_5 ? _GEN_172 : valid_32; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_366 = _T_5 ? _GEN_173 : valid_33; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_367 = _T_5 ? _GEN_174 : valid_34; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_368 = _T_5 ? _GEN_175 : valid_35; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_369 = _T_5 ? _GEN_176 : valid_36; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_370 = _T_5 ? _GEN_177 : valid_37; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_371 = _T_5 ? _GEN_178 : valid_38; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_372 = _T_5 ? _GEN_179 : valid_39; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_373 = _T_5 ? _GEN_180 : valid_40; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_374 = _T_5 ? _GEN_181 : valid_41; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_375 = _T_5 ? _GEN_182 : valid_42; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_376 = _T_5 ? _GEN_183 : valid_43; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_377 = _T_5 ? _GEN_184 : valid_44; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_378 = _T_5 ? _GEN_185 : valid_45; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_379 = _T_5 ? _GEN_186 : valid_46; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_380 = _T_5 ? _GEN_187 : valid_47; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_381 = _T_5 ? _GEN_188 : valid_48; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_382 = _T_5 ? _GEN_189 : valid_49; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_383 = _T_5 ? _GEN_190 : valid_50; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_384 = _T_5 ? _GEN_191 : valid_51; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_385 = _T_5 ? _GEN_192 : valid_52; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_386 = _T_5 ? _GEN_193 : valid_53; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_387 = _T_5 ? _GEN_194 : valid_54; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_388 = _T_5 ? _GEN_195 : valid_55; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_389 = _T_5 ? _GEN_196 : valid_56; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_390 = _T_5 ? _GEN_197 : valid_57; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_391 = _T_5 ? _GEN_198 : valid_58; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_392 = _T_5 ? _GEN_199 : valid_59; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_393 = _T_5 ? _GEN_200 : valid_60; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_394 = _T_5 ? _GEN_201 : valid_61; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_395 = _T_5 ? _GEN_202 : valid_62; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire  _GEN_396 = _T_5 ? _GEN_203 : valid_63; // @[Conditional.scala 39:67 Icache.scala 31:24]
  wire [21:0] _GEN_397 = _T_5 ? _GEN_204 : tag_0; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_398 = _T_5 ? _GEN_205 : tag_1; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_399 = _T_5 ? _GEN_206 : tag_2; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_400 = _T_5 ? _GEN_207 : tag_3; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_401 = _T_5 ? _GEN_208 : tag_4; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_402 = _T_5 ? _GEN_209 : tag_5; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_403 = _T_5 ? _GEN_210 : tag_6; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_404 = _T_5 ? _GEN_211 : tag_7; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_405 = _T_5 ? _GEN_212 : tag_8; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_406 = _T_5 ? _GEN_213 : tag_9; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_407 = _T_5 ? _GEN_214 : tag_10; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_408 = _T_5 ? _GEN_215 : tag_11; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_409 = _T_5 ? _GEN_216 : tag_12; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_410 = _T_5 ? _GEN_217 : tag_13; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_411 = _T_5 ? _GEN_218 : tag_14; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_412 = _T_5 ? _GEN_219 : tag_15; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_413 = _T_5 ? _GEN_220 : tag_16; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_414 = _T_5 ? _GEN_221 : tag_17; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_415 = _T_5 ? _GEN_222 : tag_18; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_416 = _T_5 ? _GEN_223 : tag_19; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_417 = _T_5 ? _GEN_224 : tag_20; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_418 = _T_5 ? _GEN_225 : tag_21; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_419 = _T_5 ? _GEN_226 : tag_22; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_420 = _T_5 ? _GEN_227 : tag_23; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_421 = _T_5 ? _GEN_228 : tag_24; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_422 = _T_5 ? _GEN_229 : tag_25; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_423 = _T_5 ? _GEN_230 : tag_26; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_424 = _T_5 ? _GEN_231 : tag_27; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_425 = _T_5 ? _GEN_232 : tag_28; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_426 = _T_5 ? _GEN_233 : tag_29; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_427 = _T_5 ? _GEN_234 : tag_30; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_428 = _T_5 ? _GEN_235 : tag_31; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_429 = _T_5 ? _GEN_236 : tag_32; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_430 = _T_5 ? _GEN_237 : tag_33; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_431 = _T_5 ? _GEN_238 : tag_34; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_432 = _T_5 ? _GEN_239 : tag_35; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_433 = _T_5 ? _GEN_240 : tag_36; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_434 = _T_5 ? _GEN_241 : tag_37; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_435 = _T_5 ? _GEN_242 : tag_38; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_436 = _T_5 ? _GEN_243 : tag_39; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_437 = _T_5 ? _GEN_244 : tag_40; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_438 = _T_5 ? _GEN_245 : tag_41; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_439 = _T_5 ? _GEN_246 : tag_42; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_440 = _T_5 ? _GEN_247 : tag_43; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_441 = _T_5 ? _GEN_248 : tag_44; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_442 = _T_5 ? _GEN_249 : tag_45; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_443 = _T_5 ? _GEN_250 : tag_46; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_444 = _T_5 ? _GEN_251 : tag_47; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_445 = _T_5 ? _GEN_252 : tag_48; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_446 = _T_5 ? _GEN_253 : tag_49; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_447 = _T_5 ? _GEN_254 : tag_50; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_448 = _T_5 ? _GEN_255 : tag_51; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_449 = _T_5 ? _GEN_256 : tag_52; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_450 = _T_5 ? _GEN_257 : tag_53; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_451 = _T_5 ? _GEN_258 : tag_54; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_452 = _T_5 ? _GEN_259 : tag_55; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_453 = _T_5 ? _GEN_260 : tag_56; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_454 = _T_5 ? _GEN_261 : tag_57; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_455 = _T_5 ? _GEN_262 : tag_58; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_456 = _T_5 ? _GEN_263 : tag_59; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_457 = _T_5 ? _GEN_264 : tag_60; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_458 = _T_5 ? _GEN_265 : tag_61; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_459 = _T_5 ? _GEN_266 : tag_62; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire [21:0] _GEN_460 = _T_5 ? _GEN_267 : tag_63; // @[Conditional.scala 39:67 Icache.scala 29:24]
  wire  _GEN_525 = _T_5 ? 1'h0 : icache_wen; // @[Conditional.scala 39:67 Icache.scala 129:25 Icache.scala 77:29]
  wire [1:0] _GEN_526 = _T_5 ? 2'h1 : state; // @[Conditional.scala 39:67 Icache.scala 130:25 Icache.scala 36:23]
  wire [31:0] _GEN_529 = _T_3 ? _GEN_135 : 32'h0; // @[Conditional.scala 39:67]
  wire  _GEN_727 = _T_1 ? 1'h0 : _T_3 & _GEN_137; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_728 = _T_1 ? 32'h0 : _GEN_529; // @[Conditional.scala 39:67]
  S011HD1P_X32Y2D128 icache ( // @[Icache.scala 151:22]
    .Q(icache_Q),
    .CLK(icache_CLK),
    .CEN(icache_CEN),
    .WEN(icache_WEN),
    .A(icache_A),
    .D(icache_D)
  );
  assign io_core_inst_inst_ready = inst_ready2core; // @[Icache.scala 140:19]
  assign io_core_inst_inst_read = 2'h3 == req_offset[3:2] ? cache_data_out[127:96] : _inst_read2core_T_8; // @[Mux.scala 80:57]
  assign io_axi_inst_inst_req = _T ? 1'h0 : _GEN_727; // @[Conditional.scala 40:58]
  assign io_axi_inst_inst_addr = _T ? 32'h0 : _GEN_728; // @[Conditional.scala 40:58]
  assign icache_CLK = clock; // @[Icache.scala 152:18]
  assign icache_CEN = 1'h0; // @[Icache.scala 153:18]
  assign icache_WEN = ~icache_wen; // @[Icache.scala 154:21]
  assign icache_A = valid_addr[9:4]; // @[Icache.scala 48:28]
  assign icache_D = icache_wdata; // @[Icache.scala 156:18]
  always @(posedge clock) begin
    if (reset) begin // @[Icache.scala 29:24]
      tag_0 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_0 <= _GEN_397;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_1 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_1 <= _GEN_398;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_2 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_2 <= _GEN_399;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_3 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_3 <= _GEN_400;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_4 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_4 <= _GEN_401;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_5 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_5 <= _GEN_402;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_6 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_6 <= _GEN_403;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_7 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_7 <= _GEN_404;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_8 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_8 <= _GEN_405;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_9 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_9 <= _GEN_406;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_10 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_10 <= _GEN_407;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_11 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_11 <= _GEN_408;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_12 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_12 <= _GEN_409;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_13 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_13 <= _GEN_410;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_14 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_14 <= _GEN_411;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_15 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_15 <= _GEN_412;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_16 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_16 <= _GEN_413;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_17 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_17 <= _GEN_414;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_18 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_18 <= _GEN_415;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_19 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_19 <= _GEN_416;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_20 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_20 <= _GEN_417;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_21 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_21 <= _GEN_418;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_22 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_22 <= _GEN_419;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_23 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_23 <= _GEN_420;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_24 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_24 <= _GEN_421;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_25 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_25 <= _GEN_422;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_26 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_26 <= _GEN_423;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_27 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_27 <= _GEN_424;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_28 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_28 <= _GEN_425;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_29 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_29 <= _GEN_426;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_30 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_30 <= _GEN_427;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_31 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_31 <= _GEN_428;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_32 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_32 <= _GEN_429;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_33 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_33 <= _GEN_430;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_34 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_34 <= _GEN_431;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_35 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_35 <= _GEN_432;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_36 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_36 <= _GEN_433;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_37 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_37 <= _GEN_434;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_38 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_38 <= _GEN_435;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_39 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_39 <= _GEN_436;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_40 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_40 <= _GEN_437;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_41 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_41 <= _GEN_438;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_42 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_42 <= _GEN_439;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_43 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_43 <= _GEN_440;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_44 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_44 <= _GEN_441;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_45 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_45 <= _GEN_442;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_46 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_46 <= _GEN_443;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_47 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_47 <= _GEN_444;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_48 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_48 <= _GEN_445;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_49 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_49 <= _GEN_446;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_50 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_50 <= _GEN_447;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_51 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_51 <= _GEN_448;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_52 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_52 <= _GEN_449;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_53 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_53 <= _GEN_450;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_54 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_54 <= _GEN_451;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_55 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_55 <= _GEN_452;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_56 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_56 <= _GEN_453;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_57 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_57 <= _GEN_454;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_58 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_58 <= _GEN_455;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_59 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_59 <= _GEN_456;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_60 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_60 <= _GEN_457;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_61 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_61 <= _GEN_458;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_62 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_62 <= _GEN_459;
        end
      end
    end
    if (reset) begin // @[Icache.scala 29:24]
      tag_63 <= 22'h0; // @[Icache.scala 29:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          tag_63 <= _GEN_460;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_0 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_0 <= _GEN_333;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_1 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_1 <= _GEN_334;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_2 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_2 <= _GEN_335;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_3 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_3 <= _GEN_336;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_4 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_4 <= _GEN_337;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_5 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_5 <= _GEN_338;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_6 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_6 <= _GEN_339;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_7 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_7 <= _GEN_340;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_8 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_8 <= _GEN_341;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_9 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_9 <= _GEN_342;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_10 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_10 <= _GEN_343;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_11 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_11 <= _GEN_344;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_12 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_12 <= _GEN_345;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_13 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_13 <= _GEN_346;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_14 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_14 <= _GEN_347;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_15 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_15 <= _GEN_348;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_16 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_16 <= _GEN_349;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_17 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_17 <= _GEN_350;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_18 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_18 <= _GEN_351;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_19 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_19 <= _GEN_352;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_20 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_20 <= _GEN_353;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_21 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_21 <= _GEN_354;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_22 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_22 <= _GEN_355;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_23 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_23 <= _GEN_356;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_24 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_24 <= _GEN_357;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_25 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_25 <= _GEN_358;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_26 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_26 <= _GEN_359;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_27 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_27 <= _GEN_360;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_28 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_28 <= _GEN_361;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_29 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_29 <= _GEN_362;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_30 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_30 <= _GEN_363;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_31 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_31 <= _GEN_364;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_32 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_32 <= _GEN_365;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_33 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_33 <= _GEN_366;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_34 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_34 <= _GEN_367;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_35 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_35 <= _GEN_368;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_36 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_36 <= _GEN_369;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_37 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_37 <= _GEN_370;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_38 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_38 <= _GEN_371;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_39 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_39 <= _GEN_372;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_40 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_40 <= _GEN_373;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_41 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_41 <= _GEN_374;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_42 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_42 <= _GEN_375;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_43 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_43 <= _GEN_376;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_44 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_44 <= _GEN_377;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_45 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_45 <= _GEN_378;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_46 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_46 <= _GEN_379;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_47 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_47 <= _GEN_380;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_48 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_48 <= _GEN_381;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_49 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_49 <= _GEN_382;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_50 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_50 <= _GEN_383;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_51 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_51 <= _GEN_384;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_52 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_52 <= _GEN_385;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_53 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_53 <= _GEN_386;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_54 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_54 <= _GEN_387;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_55 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_55 <= _GEN_388;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_56 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_56 <= _GEN_389;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_57 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_57 <= _GEN_390;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_58 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_58 <= _GEN_391;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_59 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_59 <= _GEN_392;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_60 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_60 <= _GEN_393;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_61 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_61 <= _GEN_394;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_62 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_62 <= _GEN_395;
        end
      end
    end
    if (reset) begin // @[Icache.scala 31:24]
      valid_63 <= 1'h0; // @[Icache.scala 31:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          valid_63 <= _GEN_396;
        end
      end
    end
    if (reset) begin // @[Icache.scala 36:23]
      state <= 2'h0; // @[Icache.scala 36:23]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_core_inst_inst_req) begin // @[Icache.scala 82:26]
        state <= 2'h1; // @[Icache.scala 83:15]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (cache_hit) begin // @[Icache.scala 88:22]
        state <= 2'h0; // @[Icache.scala 90:13]
      end else begin
        state <= _GEN_130;
      end
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      state <= _GEN_133;
    end else begin
      state <= _GEN_526;
    end
    if (reset) begin // @[Icache.scala 44:29]
      req_reg_addr <= 32'h0; // @[Icache.scala 44:29]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Icache.scala 88:22]
          req_reg_addr <= io_core_inst_inst_addr; // @[Icache.scala 89:20]
        end else begin
          req_reg_addr <= _GEN_129;
        end
      end
    end
    if (reset) begin // @[Icache.scala 55:32]
      cache_reg_fill <= 1'h0; // @[Icache.scala 55:32]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (_T_3) begin // @[Conditional.scala 39:67]
          cache_reg_fill <= _GEN_136;
        end else begin
          cache_reg_fill <= _GEN_332;
        end
      end
    end
    inst_ready2core <= _valid_addr_T & cache_hit; // @[Icache.scala 65:51]
    if (reset) begin // @[Icache.scala 75:29]
      icache_wdata <= 128'h0; // @[Icache.scala 75:29]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (_T_3) begin // @[Conditional.scala 39:67]
          icache_wdata <= _GEN_139;
        end
      end
    end
    if (reset) begin // @[Icache.scala 77:29]
      icache_wen <= 1'h0; // @[Icache.scala 77:29]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (_T_3) begin // @[Conditional.scala 39:67]
          icache_wen <= _GEN_138;
        end else begin
          icache_wen <= _GEN_525;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  tag_0 = _RAND_0[21:0];
  _RAND_1 = {1{`RANDOM}};
  tag_1 = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  tag_2 = _RAND_2[21:0];
  _RAND_3 = {1{`RANDOM}};
  tag_3 = _RAND_3[21:0];
  _RAND_4 = {1{`RANDOM}};
  tag_4 = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  tag_5 = _RAND_5[21:0];
  _RAND_6 = {1{`RANDOM}};
  tag_6 = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  tag_7 = _RAND_7[21:0];
  _RAND_8 = {1{`RANDOM}};
  tag_8 = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  tag_9 = _RAND_9[21:0];
  _RAND_10 = {1{`RANDOM}};
  tag_10 = _RAND_10[21:0];
  _RAND_11 = {1{`RANDOM}};
  tag_11 = _RAND_11[21:0];
  _RAND_12 = {1{`RANDOM}};
  tag_12 = _RAND_12[21:0];
  _RAND_13 = {1{`RANDOM}};
  tag_13 = _RAND_13[21:0];
  _RAND_14 = {1{`RANDOM}};
  tag_14 = _RAND_14[21:0];
  _RAND_15 = {1{`RANDOM}};
  tag_15 = _RAND_15[21:0];
  _RAND_16 = {1{`RANDOM}};
  tag_16 = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  tag_17 = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  tag_18 = _RAND_18[21:0];
  _RAND_19 = {1{`RANDOM}};
  tag_19 = _RAND_19[21:0];
  _RAND_20 = {1{`RANDOM}};
  tag_20 = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  tag_21 = _RAND_21[21:0];
  _RAND_22 = {1{`RANDOM}};
  tag_22 = _RAND_22[21:0];
  _RAND_23 = {1{`RANDOM}};
  tag_23 = _RAND_23[21:0];
  _RAND_24 = {1{`RANDOM}};
  tag_24 = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  tag_25 = _RAND_25[21:0];
  _RAND_26 = {1{`RANDOM}};
  tag_26 = _RAND_26[21:0];
  _RAND_27 = {1{`RANDOM}};
  tag_27 = _RAND_27[21:0];
  _RAND_28 = {1{`RANDOM}};
  tag_28 = _RAND_28[21:0];
  _RAND_29 = {1{`RANDOM}};
  tag_29 = _RAND_29[21:0];
  _RAND_30 = {1{`RANDOM}};
  tag_30 = _RAND_30[21:0];
  _RAND_31 = {1{`RANDOM}};
  tag_31 = _RAND_31[21:0];
  _RAND_32 = {1{`RANDOM}};
  tag_32 = _RAND_32[21:0];
  _RAND_33 = {1{`RANDOM}};
  tag_33 = _RAND_33[21:0];
  _RAND_34 = {1{`RANDOM}};
  tag_34 = _RAND_34[21:0];
  _RAND_35 = {1{`RANDOM}};
  tag_35 = _RAND_35[21:0];
  _RAND_36 = {1{`RANDOM}};
  tag_36 = _RAND_36[21:0];
  _RAND_37 = {1{`RANDOM}};
  tag_37 = _RAND_37[21:0];
  _RAND_38 = {1{`RANDOM}};
  tag_38 = _RAND_38[21:0];
  _RAND_39 = {1{`RANDOM}};
  tag_39 = _RAND_39[21:0];
  _RAND_40 = {1{`RANDOM}};
  tag_40 = _RAND_40[21:0];
  _RAND_41 = {1{`RANDOM}};
  tag_41 = _RAND_41[21:0];
  _RAND_42 = {1{`RANDOM}};
  tag_42 = _RAND_42[21:0];
  _RAND_43 = {1{`RANDOM}};
  tag_43 = _RAND_43[21:0];
  _RAND_44 = {1{`RANDOM}};
  tag_44 = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  tag_45 = _RAND_45[21:0];
  _RAND_46 = {1{`RANDOM}};
  tag_46 = _RAND_46[21:0];
  _RAND_47 = {1{`RANDOM}};
  tag_47 = _RAND_47[21:0];
  _RAND_48 = {1{`RANDOM}};
  tag_48 = _RAND_48[21:0];
  _RAND_49 = {1{`RANDOM}};
  tag_49 = _RAND_49[21:0];
  _RAND_50 = {1{`RANDOM}};
  tag_50 = _RAND_50[21:0];
  _RAND_51 = {1{`RANDOM}};
  tag_51 = _RAND_51[21:0];
  _RAND_52 = {1{`RANDOM}};
  tag_52 = _RAND_52[21:0];
  _RAND_53 = {1{`RANDOM}};
  tag_53 = _RAND_53[21:0];
  _RAND_54 = {1{`RANDOM}};
  tag_54 = _RAND_54[21:0];
  _RAND_55 = {1{`RANDOM}};
  tag_55 = _RAND_55[21:0];
  _RAND_56 = {1{`RANDOM}};
  tag_56 = _RAND_56[21:0];
  _RAND_57 = {1{`RANDOM}};
  tag_57 = _RAND_57[21:0];
  _RAND_58 = {1{`RANDOM}};
  tag_58 = _RAND_58[21:0];
  _RAND_59 = {1{`RANDOM}};
  tag_59 = _RAND_59[21:0];
  _RAND_60 = {1{`RANDOM}};
  tag_60 = _RAND_60[21:0];
  _RAND_61 = {1{`RANDOM}};
  tag_61 = _RAND_61[21:0];
  _RAND_62 = {1{`RANDOM}};
  tag_62 = _RAND_62[21:0];
  _RAND_63 = {1{`RANDOM}};
  tag_63 = _RAND_63[21:0];
  _RAND_64 = {1{`RANDOM}};
  valid_0 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  valid_1 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  valid_2 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  valid_3 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  valid_4 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  valid_5 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  valid_6 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  valid_7 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  valid_8 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  valid_9 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  valid_10 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  valid_11 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  valid_12 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  valid_13 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  valid_14 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  valid_15 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  valid_16 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  valid_17 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  valid_18 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  valid_19 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  valid_20 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  valid_21 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  valid_22 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  valid_23 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  valid_24 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  valid_25 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  valid_26 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  valid_27 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  valid_28 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  valid_29 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  valid_30 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  valid_31 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  valid_32 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  valid_33 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  valid_34 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  valid_35 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  valid_36 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  valid_37 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  valid_38 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  valid_39 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  valid_40 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  valid_41 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  valid_42 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  valid_43 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  valid_44 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  valid_45 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  valid_46 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  valid_47 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  valid_48 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  valid_49 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  valid_50 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  valid_51 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  valid_52 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  valid_53 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  valid_54 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  valid_55 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  valid_56 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  valid_57 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  valid_58 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  valid_59 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  valid_60 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  valid_61 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  valid_62 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  valid_63 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  state = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  req_reg_addr = _RAND_129[31:0];
  _RAND_130 = {1{`RANDOM}};
  cache_reg_fill = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  inst_ready2core = _RAND_131[0:0];
  _RAND_132 = {4{`RANDOM}};
  icache_wdata = _RAND_132[127:0];
  _RAND_133 = {1{`RANDOM}};
  icache_wen = _RAND_133[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimTop(
  input         clock,
  input         reset,
  input  [63:0] io_logCtrl_log_begin,
  input  [63:0] io_logCtrl_log_end,
  input  [63:0] io_logCtrl_log_level,
  input         io_perfInfo_clean,
  input         io_perfInfo_dump,
  output        io_uart_out_valid,
  output [7:0]  io_uart_out_ch,
  output        io_uart_in_valid,
  input  [7:0]  io_uart_in_ch,
  input         io_memAXI_0_ar_ready,
  output        io_memAXI_0_ar_valid,
  output [3:0]  io_memAXI_0_ar_bits_id,
  output        io_memAXI_0_ar_bits_user,
  output [31:0] io_memAXI_0_ar_bits_addr,
  output [7:0]  io_memAXI_0_ar_bits_len,
  output [2:0]  io_memAXI_0_ar_bits_size,
  output [1:0]  io_memAXI_0_ar_bits_burst,
  output [1:0]  io_memAXI_0_ar_bits_lock,
  output [3:0]  io_memAXI_0_ar_bits_cache,
  output [2:0]  io_memAXI_0_ar_bits_prot,
  output [3:0]  io_memAXI_0_ar_bits_qos,
  output        io_memAXI_0_r_ready,
  input         io_memAXI_0_r_valid,
  input  [3:0]  io_memAXI_0_r_bits_id,
  input  [63:0] io_memAXI_0_r_bits_data,
  input  [1:0]  io_memAXI_0_r_bits_resp,
  input         io_memAXI_0_r_bits_last,
  input         io_memAXI_0_aw_ready,
  output        io_memAXI_0_aw_valid,
  output [3:0]  io_memAXI_0_aw_bits_id,
  output        io_memAXI_0_aw_bits_user,
  output [31:0] io_memAXI_0_aw_bits_addr,
  output [7:0]  io_memAXI_0_aw_bits_len,
  output [2:0]  io_memAXI_0_aw_bits_size,
  output [1:0]  io_memAXI_0_aw_bits_burst,
  output [1:0]  io_memAXI_0_aw_bits_lock,
  output [3:0]  io_memAXI_0_aw_bits_cache,
  output [2:0]  io_memAXI_0_aw_bits_prot,
  output [3:0]  io_memAXI_0_aw_bits_qos,
  input         io_memAXI_0_w_ready,
  output        io_memAXI_0_w_valid,
  output [3:0]  io_memAXI_0_w_bits_id,
  output [63:0] io_memAXI_0_w_bits_data,
  output [7:0]  io_memAXI_0_w_bits_strb,
  output        io_memAXI_0_w_bits_last,
  output        io_memAXI_0_b_ready,
  input         io_memAXI_0_b_valid,
  input  [3:0]  io_memAXI_0_b_bits_id,
  input  [1:0]  io_memAXI_0_b_bits_resp
);
  wire  core_clock; // @[SimTop.scala 16:24]
  wire  core_reset; // @[SimTop.scala 16:24]
  wire  core_io_imem_inst_ready; // @[SimTop.scala 16:24]
  wire  core_io_imem_inst_req; // @[SimTop.scala 16:24]
  wire [31:0] core_io_imem_inst_addr; // @[SimTop.scala 16:24]
  wire [31:0] core_io_imem_inst_read; // @[SimTop.scala 16:24]
  wire  core_io_dmem_data_ready; // @[SimTop.scala 16:24]
  wire  core_io_dmem_data_req_r; // @[SimTop.scala 16:24]
  wire  core_io_dmem_data_req_w; // @[SimTop.scala 16:24]
  wire [31:0] core_io_dmem_data_addr_r; // @[SimTop.scala 16:24]
  wire [31:0] core_io_dmem_data_addr_w; // @[SimTop.scala 16:24]
  wire [7:0] core_io_dmem_data_strb; // @[SimTop.scala 16:24]
  wire [63:0] core_io_dmem_data_read; // @[SimTop.scala 16:24]
  wire [63:0] core_io_dmem_data_write; // @[SimTop.scala 16:24]
  wire  core2axi_clock; // @[SimTop.scala 17:24]
  wire  core2axi_reset; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_ar_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_ar_valid; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_axi2ram_ar_bits_addr; // @[SimTop.scala 17:24]
  wire [7:0] core2axi_io_axi2ram_ar_bits_len; // @[SimTop.scala 17:24]
  wire [3:0] core2axi_io_axi2ram_ar_bits_cache; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_r_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_r_valid; // @[SimTop.scala 17:24]
  wire [63:0] core2axi_io_axi2ram_r_bits_data; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_r_bits_last; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_aw_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_aw_valid; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_axi2ram_aw_bits_addr; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_w_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_w_valid; // @[SimTop.scala 17:24]
  wire [63:0] core2axi_io_axi2ram_w_bits_data; // @[SimTop.scala 17:24]
  wire [7:0] core2axi_io_axi2ram_w_bits_strb; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_w_bits_last; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_b_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_b_valid; // @[SimTop.scala 17:24]
  wire  core2axi_io_imem_inst_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_imem_inst_req; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_imem_inst_addr; // @[SimTop.scala 17:24]
  wire [127:0] core2axi_io_imem_inst_read; // @[SimTop.scala 17:24]
  wire  core2axi_io_dmem_data_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_dmem_data_req_r; // @[SimTop.scala 17:24]
  wire  core2axi_io_dmem_data_req_w; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_dmem_data_addr_r; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_dmem_data_addr_w; // @[SimTop.scala 17:24]
  wire [7:0] core2axi_io_dmem_data_strb; // @[SimTop.scala 17:24]
  wire [127:0] core2axi_io_dmem_data_read; // @[SimTop.scala 17:24]
  wire [127:0] core2axi_io_dmem_data_write; // @[SimTop.scala 17:24]
  wire  icache_clock; // @[SimTop.scala 18:24]
  wire  icache_reset; // @[SimTop.scala 18:24]
  wire  icache_io_core_inst_inst_ready; // @[SimTop.scala 18:24]
  wire  icache_io_core_inst_inst_req; // @[SimTop.scala 18:24]
  wire [31:0] icache_io_core_inst_inst_addr; // @[SimTop.scala 18:24]
  wire [31:0] icache_io_core_inst_inst_read; // @[SimTop.scala 18:24]
  wire  icache_io_axi_inst_inst_ready; // @[SimTop.scala 18:24]
  wire  icache_io_axi_inst_inst_req; // @[SimTop.scala 18:24]
  wire [31:0] icache_io_axi_inst_inst_addr; // @[SimTop.scala 18:24]
  wire [127:0] icache_io_axi_inst_inst_read; // @[SimTop.scala 18:24]
  Core core ( // @[SimTop.scala 16:24]
    .clock(core_clock),
    .reset(core_reset),
    .io_imem_inst_ready(core_io_imem_inst_ready),
    .io_imem_inst_req(core_io_imem_inst_req),
    .io_imem_inst_addr(core_io_imem_inst_addr),
    .io_imem_inst_read(core_io_imem_inst_read),
    .io_dmem_data_ready(core_io_dmem_data_ready),
    .io_dmem_data_req_r(core_io_dmem_data_req_r),
    .io_dmem_data_req_w(core_io_dmem_data_req_w),
    .io_dmem_data_addr_r(core_io_dmem_data_addr_r),
    .io_dmem_data_addr_w(core_io_dmem_data_addr_w),
    .io_dmem_data_strb(core_io_dmem_data_strb),
    .io_dmem_data_read(core_io_dmem_data_read),
    .io_dmem_data_write(core_io_dmem_data_write)
  );
  Core2AXI core2axi ( // @[SimTop.scala 17:24]
    .clock(core2axi_clock),
    .reset(core2axi_reset),
    .io_axi2ram_ar_ready(core2axi_io_axi2ram_ar_ready),
    .io_axi2ram_ar_valid(core2axi_io_axi2ram_ar_valid),
    .io_axi2ram_ar_bits_addr(core2axi_io_axi2ram_ar_bits_addr),
    .io_axi2ram_ar_bits_len(core2axi_io_axi2ram_ar_bits_len),
    .io_axi2ram_ar_bits_cache(core2axi_io_axi2ram_ar_bits_cache),
    .io_axi2ram_r_ready(core2axi_io_axi2ram_r_ready),
    .io_axi2ram_r_valid(core2axi_io_axi2ram_r_valid),
    .io_axi2ram_r_bits_data(core2axi_io_axi2ram_r_bits_data),
    .io_axi2ram_r_bits_last(core2axi_io_axi2ram_r_bits_last),
    .io_axi2ram_aw_ready(core2axi_io_axi2ram_aw_ready),
    .io_axi2ram_aw_valid(core2axi_io_axi2ram_aw_valid),
    .io_axi2ram_aw_bits_addr(core2axi_io_axi2ram_aw_bits_addr),
    .io_axi2ram_w_ready(core2axi_io_axi2ram_w_ready),
    .io_axi2ram_w_valid(core2axi_io_axi2ram_w_valid),
    .io_axi2ram_w_bits_data(core2axi_io_axi2ram_w_bits_data),
    .io_axi2ram_w_bits_strb(core2axi_io_axi2ram_w_bits_strb),
    .io_axi2ram_w_bits_last(core2axi_io_axi2ram_w_bits_last),
    .io_axi2ram_b_ready(core2axi_io_axi2ram_b_ready),
    .io_axi2ram_b_valid(core2axi_io_axi2ram_b_valid),
    .io_imem_inst_ready(core2axi_io_imem_inst_ready),
    .io_imem_inst_req(core2axi_io_imem_inst_req),
    .io_imem_inst_addr(core2axi_io_imem_inst_addr),
    .io_imem_inst_read(core2axi_io_imem_inst_read),
    .io_dmem_data_ready(core2axi_io_dmem_data_ready),
    .io_dmem_data_req_r(core2axi_io_dmem_data_req_r),
    .io_dmem_data_req_w(core2axi_io_dmem_data_req_w),
    .io_dmem_data_addr_r(core2axi_io_dmem_data_addr_r),
    .io_dmem_data_addr_w(core2axi_io_dmem_data_addr_w),
    .io_dmem_data_strb(core2axi_io_dmem_data_strb),
    .io_dmem_data_read(core2axi_io_dmem_data_read),
    .io_dmem_data_write(core2axi_io_dmem_data_write)
  );
  Icache icache ( // @[SimTop.scala 18:24]
    .clock(icache_clock),
    .reset(icache_reset),
    .io_core_inst_inst_ready(icache_io_core_inst_inst_ready),
    .io_core_inst_inst_req(icache_io_core_inst_inst_req),
    .io_core_inst_inst_addr(icache_io_core_inst_inst_addr),
    .io_core_inst_inst_read(icache_io_core_inst_inst_read),
    .io_axi_inst_inst_ready(icache_io_axi_inst_inst_ready),
    .io_axi_inst_inst_req(icache_io_axi_inst_inst_req),
    .io_axi_inst_inst_addr(icache_io_axi_inst_inst_addr),
    .io_axi_inst_inst_read(icache_io_axi_inst_inst_read)
  );
  assign io_uart_out_valid = 1'h0; // @[SimTop.scala 37:21]
  assign io_uart_out_ch = 8'h0; // @[SimTop.scala 38:18]
  assign io_uart_in_valid = 1'h0; // @[SimTop.scala 39:20]
  assign io_memAXI_0_ar_valid = core2axi_io_axi2ram_ar_valid; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_id = 4'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_user = 1'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_addr = core2axi_io_axi2ram_ar_bits_addr; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_len = core2axi_io_axi2ram_ar_bits_len; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_size = 3'h3; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_burst = 2'h1; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_lock = 2'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_cache = core2axi_io_axi2ram_ar_bits_cache; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_prot = 3'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_ar_bits_qos = 4'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_r_ready = 1'h1; // @[SimTop.scala 30:18]
  assign io_memAXI_0_aw_valid = core2axi_io_axi2ram_aw_valid; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_id = 4'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_user = 1'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_addr = core2axi_io_axi2ram_aw_bits_addr; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_len = 8'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_size = 3'h3; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_burst = 2'h1; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_lock = 2'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_cache = 4'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_prot = 3'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_aw_bits_qos = 4'h0; // @[SimTop.scala 26:18]
  assign io_memAXI_0_w_valid = core2axi_io_axi2ram_w_valid; // @[SimTop.scala 27:18]
  assign io_memAXI_0_w_bits_id = 4'h0; // @[SimTop.scala 27:18]
  assign io_memAXI_0_w_bits_data = core2axi_io_axi2ram_w_bits_data; // @[SimTop.scala 27:18]
  assign io_memAXI_0_w_bits_strb = core2axi_io_axi2ram_w_bits_strb; // @[SimTop.scala 27:18]
  assign io_memAXI_0_w_bits_last = 1'h1; // @[SimTop.scala 27:18]
  assign io_memAXI_0_b_ready = 1'h1; // @[SimTop.scala 28:18]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_imem_inst_ready = icache_io_core_inst_inst_ready; // @[SimTop.scala 20:16]
  assign core_io_imem_inst_read = icache_io_core_inst_inst_read; // @[SimTop.scala 20:16]
  assign core_io_dmem_data_ready = core2axi_io_dmem_data_ready; // @[SimTop.scala 24:16]
  assign core_io_dmem_data_read = core2axi_io_dmem_data_read[63:0]; // @[SimTop.scala 24:16]
  assign core2axi_clock = clock;
  assign core2axi_reset = reset;
  assign core2axi_io_axi2ram_ar_ready = io_memAXI_0_ar_ready; // @[SimTop.scala 29:18]
  assign core2axi_io_axi2ram_r_valid = io_memAXI_0_r_valid; // @[SimTop.scala 30:18]
  assign core2axi_io_axi2ram_r_bits_data = io_memAXI_0_r_bits_data; // @[SimTop.scala 30:18]
  assign core2axi_io_axi2ram_r_bits_last = io_memAXI_0_r_bits_last; // @[SimTop.scala 30:18]
  assign core2axi_io_axi2ram_aw_ready = io_memAXI_0_aw_ready; // @[SimTop.scala 26:18]
  assign core2axi_io_axi2ram_w_ready = io_memAXI_0_w_ready; // @[SimTop.scala 27:18]
  assign core2axi_io_axi2ram_b_valid = io_memAXI_0_b_valid; // @[SimTop.scala 28:18]
  assign core2axi_io_imem_inst_req = icache_io_axi_inst_inst_req; // @[SimTop.scala 22:22]
  assign core2axi_io_imem_inst_addr = icache_io_axi_inst_inst_addr; // @[SimTop.scala 22:22]
  assign core2axi_io_dmem_data_req_r = core_io_dmem_data_req_r; // @[SimTop.scala 24:16]
  assign core2axi_io_dmem_data_req_w = core_io_dmem_data_req_w; // @[SimTop.scala 24:16]
  assign core2axi_io_dmem_data_addr_r = core_io_dmem_data_addr_r; // @[SimTop.scala 24:16]
  assign core2axi_io_dmem_data_addr_w = core_io_dmem_data_addr_w; // @[SimTop.scala 24:16]
  assign core2axi_io_dmem_data_strb = core_io_dmem_data_strb; // @[SimTop.scala 24:16]
  assign core2axi_io_dmem_data_write = {{64'd0}, core_io_dmem_data_write}; // @[SimTop.scala 24:16]
  assign icache_clock = clock;
  assign icache_reset = reset;
  assign icache_io_core_inst_inst_req = core_io_imem_inst_req; // @[SimTop.scala 20:16]
  assign icache_io_core_inst_inst_addr = core_io_imem_inst_addr; // @[SimTop.scala 20:16]
  assign icache_io_axi_inst_inst_ready = core2axi_io_imem_inst_ready; // @[SimTop.scala 22:22]
  assign icache_io_axi_inst_inst_read = core2axi_io_imem_inst_read; // @[SimTop.scala 22:22]
endmodule
