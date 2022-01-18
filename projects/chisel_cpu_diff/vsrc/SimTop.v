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
  output [63:0] io_dmem_wmask,
  output [63:0] io_dmem_wdata
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
  wire [63:0] _GEN_8 = _mem_rdata_T_36 ? 64'hff00000000000000 : 64'h0; // @[LSU.scala 148:38 LSU.scala 149:12]
  wire [63:0] _GEN_10 = _mem_rdata_T_36 ? _dmem_wdata_T_7 : 64'h0; // @[LSU.scala 148:38 LSU.scala 151:11]
  wire [63:0] _GEN_11 = _mem_rdata_T_31 ? 64'hff000000000000 : _GEN_8; // @[LSU.scala 144:38 LSU.scala 145:12]
  wire [63:0] _GEN_13 = _mem_rdata_T_31 ? _dmem_wdata_T_6 : _GEN_10; // @[LSU.scala 144:38 LSU.scala 147:11]
  wire [63:0] _GEN_14 = _mem_rdata_T_26 ? 64'hff0000000000 : _GEN_11; // @[LSU.scala 140:38 LSU.scala 141:12]
  wire [63:0] _GEN_16 = _mem_rdata_T_26 ? _dmem_wdata_T_5 : _GEN_13; // @[LSU.scala 140:38 LSU.scala 143:11]
  wire [63:0] _GEN_17 = _mem_rdata_T_21 ? 64'hff00000000 : _GEN_14; // @[LSU.scala 136:38 LSU.scala 137:12]
  wire [63:0] _GEN_19 = _mem_rdata_T_21 ? _dmem_wdata_T_4 : _GEN_16; // @[LSU.scala 136:38 LSU.scala 139:11]
  wire [63:0] _GEN_20 = _mem_rdata_T_16 ? 64'hff000000 : _GEN_17; // @[LSU.scala 132:38 LSU.scala 133:12]
  wire [63:0] _GEN_22 = _mem_rdata_T_16 ? _dmem_wdata_T_3 : _GEN_19; // @[LSU.scala 132:38 LSU.scala 135:11]
  wire [63:0] _GEN_23 = _mem_rdata_T_11 ? 64'hff0000 : _GEN_20; // @[LSU.scala 128:38 LSU.scala 129:12]
  wire [63:0] _GEN_25 = _mem_rdata_T_11 ? _dmem_wdata_T_2 : _GEN_22; // @[LSU.scala 128:38 LSU.scala 131:11]
  wire [63:0] _GEN_26 = _mem_rdata_T_6 ? 64'hff00 : _GEN_23; // @[LSU.scala 124:38 LSU.scala 125:12]
  wire [63:0] _GEN_28 = _mem_rdata_T_6 ? _dmem_wdata_T_1 : _GEN_25; // @[LSU.scala 124:38 LSU.scala 127:11]
  wire [63:0] _GEN_29 = _mem_rdata_T_1 ? 64'hff : _GEN_26; // @[LSU.scala 120:32 LSU.scala 121:12]
  wire [63:0] _GEN_31 = _mem_rdata_T_1 ? _dmem_wdata_T : _GEN_28; // @[LSU.scala 120:32 LSU.scala 123:11]
  wire [15:0] dmem_wdata_lo_8 = io_rs2_data[15:0]; // @[LSU.scala 159:40]
  wire [63:0] _dmem_wdata_T_8 = {48'h0,dmem_wdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_9 = {32'h0,dmem_wdata_lo_8,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_10 = {16'h0,dmem_wdata_lo_8,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_11 = {dmem_wdata_lo_8,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_32 = _mem_rdata_T_64 ? 64'hffff000000000000 : 64'h0; // @[LSU.scala 168:37 LSU.scala 169:12]
  wire [63:0] _GEN_34 = _mem_rdata_T_64 ? _dmem_wdata_T_11 : 64'h0; // @[LSU.scala 168:37 LSU.scala 171:11]
  wire [63:0] _GEN_35 = _mem_rdata_T_59 ? 64'hffff00000000 : _GEN_32; // @[LSU.scala 164:37 LSU.scala 165:12]
  wire [63:0] _GEN_37 = _mem_rdata_T_59 ? _dmem_wdata_T_10 : _GEN_34; // @[LSU.scala 164:37 LSU.scala 167:11]
  wire [63:0] _GEN_38 = _mem_rdata_T_54 ? 64'hffff0000 : _GEN_35; // @[LSU.scala 160:37 LSU.scala 161:12]
  wire [63:0] _GEN_40 = _mem_rdata_T_54 ? _dmem_wdata_T_9 : _GEN_37; // @[LSU.scala 160:37 LSU.scala 163:11]
  wire [63:0] _GEN_41 = _mem_rdata_T_49 ? 64'hffff : _GEN_38; // @[LSU.scala 156:31 LSU.scala 157:12]
  wire [63:0] _GEN_43 = _mem_rdata_T_49 ? _dmem_wdata_T_8 : _GEN_40; // @[LSU.scala 156:31 LSU.scala 159:11]
  wire [31:0] dmem_wdata_lo_12 = io_rs2_data[31:0]; // @[LSU.scala 183:40]
  wire [63:0] _dmem_wdata_T_12 = {32'h0,dmem_wdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_13 = {dmem_wdata_lo_12,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_44 = io_dmem_addr[2] ? 64'hffffffff00000000 : 64'h0; // @[LSU.scala 184:34 LSU.scala 185:12]
  wire [63:0] _GEN_46 = io_dmem_addr[2] ? _dmem_wdata_T_13 : 64'h0; // @[LSU.scala 184:34 LSU.scala 187:11]
  wire [63:0] _GEN_47 = _mem_rdata_T_73 ? 64'hffffffff : _GEN_44; // @[LSU.scala 180:28 LSU.scala 181:12]
  wire [63:0] _GEN_49 = _mem_rdata_T_73 ? _dmem_wdata_T_12 : _GEN_46; // @[LSU.scala 180:28 LSU.scala 183:11]
  wire [63:0] _GEN_50 = io_wb_type == 3'h5 ? 64'hffffffffffffffff : 64'h0; // @[LSU.scala 191:36 LSU.scala 193:12]
  wire [63:0] _GEN_52 = io_wb_type == 3'h5 ? io_rs2_data : 64'h0; // @[LSU.scala 191:36 LSU.scala 195:11]
  wire [63:0] _GEN_53 = io_wb_type == 3'h4 ? _GEN_47 : _GEN_50; // @[LSU.scala 177:36]
  wire [63:0] _GEN_55 = io_wb_type == 3'h4 ? _GEN_49 : _GEN_52; // @[LSU.scala 177:36]
  wire [63:0] _GEN_56 = io_wb_type == 3'h3 ? _GEN_41 : _GEN_53; // @[LSU.scala 154:36]
  wire [63:0] _GEN_58 = io_wb_type == 3'h3 ? _GEN_43 : _GEN_55; // @[LSU.scala 154:36]
  assign io_mem_rdata = io_wb_type == 3'h1 & io_mem_rtype != 3'h0 ? _GEN_6 : 64'h0; // @[LSU.scala 43:54]
  assign io_dmem_wmask = io_wb_type == 3'h2 ? _GEN_29 : _GEN_56; // @[LSU.scala 118:30]
  assign io_dmem_wdata = io_wb_type == 3'h2 ? _GEN_31 : _GEN_58; // @[LSU.scala 118:30]
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
  output [63:0] io_dmem_data_strb,
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
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
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
  reg [31:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [31:0] _RAND_86;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decode_io_inst; // @[Core.scala 66:20]
  wire [4:0] decode_io_alu_type; // @[Core.scala 66:20]
  wire [2:0] decode_io_op1_type; // @[Core.scala 66:20]
  wire [2:0] decode_io_op2_type; // @[Core.scala 66:20]
  wire [2:0] decode_io_imm_type; // @[Core.scala 66:20]
  wire [2:0] decode_io_mem_rtype; // @[Core.scala 66:20]
  wire [2:0] decode_io_wb_type; // @[Core.scala 66:20]
  wire [2:0] decode_io_csr_type; // @[Core.scala 66:20]
  wire  regfile_clock; // @[Core.scala 69:21]
  wire  regfile_reset; // @[Core.scala 69:21]
  wire [4:0] regfile_io_rs1_addr; // @[Core.scala 69:21]
  wire [4:0] regfile_io_rs2_addr; // @[Core.scala 69:21]
  wire [63:0] regfile_io_rs1_data; // @[Core.scala 69:21]
  wire [63:0] regfile_io_rs2_data; // @[Core.scala 69:21]
  wire [4:0] regfile_io_rd_addr; // @[Core.scala 69:21]
  wire [63:0] regfile_io_rd_data; // @[Core.scala 69:21]
  wire  regfile_io_rd_wen; // @[Core.scala 69:21]
  wire [63:0] regfile_rf_10; // @[Core.scala 69:21]
  wire [2:0] imm_gen_io_imm_type; // @[Core.scala 77:21]
  wire [31:0] imm_gen_io_inst; // @[Core.scala 77:21]
  wire [63:0] imm_gen_io_imm; // @[Core.scala 77:21]
  wire [4:0] alu_io_alu_type; // @[Core.scala 218:17]
  wire [63:0] alu_io_in1; // @[Core.scala 218:17]
  wire [63:0] alu_io_in2; // @[Core.scala 218:17]
  wire [63:0] alu_io_alu_out; // @[Core.scala 218:17]
  wire  clint_clock; // @[Core.scala 239:19]
  wire  clint_reset; // @[Core.scala 239:19]
  wire  clint_io_time_valid; // @[Core.scala 239:19]
  wire  clint_io_cmp_wen; // @[Core.scala 239:19]
  wire [63:0] clint_io_cmp_wdata; // @[Core.scala 239:19]
  wire  clint_io_time_intrpt; // @[Core.scala 239:19]
  wire [63:0] clint_csr_mie; // @[Core.scala 239:19]
  wire [63:0] clint_csr_status; // @[Core.scala 239:19]
  wire  csr_clock; // @[Core.scala 246:18]
  wire  csr_reset; // @[Core.scala 246:18]
  wire [31:0] csr_io_pc; // @[Core.scala 246:18]
  wire [31:0] csr_io_pc_timer; // @[Core.scala 246:18]
  wire [31:0] csr_io_inst; // @[Core.scala 246:18]
  wire [2:0] csr_io_csr_type; // @[Core.scala 246:18]
  wire [63:0] csr_io_in_data; // @[Core.scala 246:18]
  wire  csr_io_time_intrpt; // @[Core.scala 246:18]
  wire [63:0] csr_io_out; // @[Core.scala 246:18]
  wire  csr_io_jmp; // @[Core.scala 246:18]
  wire [31:0] csr_io_jmp_pc; // @[Core.scala 246:18]
  wire  csr_io_intrpt; // @[Core.scala 246:18]
  wire [31:0] csr_io_intrpt_pc; // @[Core.scala 246:18]
  wire [63:0] csr_io_intrpt_no; // @[Core.scala 246:18]
  wire  csr_io_rd_wen; // @[Core.scala 246:18]
  wire [63:0] csr_io_mie; // @[Core.scala 246:18]
  wire [63:0] csr_io_mstatus; // @[Core.scala 246:18]
  wire [63:0] csr_io_mepc; // @[Core.scala 246:18]
  wire [63:0] csr_io_mtvec; // @[Core.scala 246:18]
  wire [63:0] csr_io_mcause; // @[Core.scala 246:18]
  wire [63:0] csr_io_mscratch; // @[Core.scala 246:18]
  wire [63:0] csr_csr_minstret; // @[Core.scala 246:18]
  wire [63:0] csr_mie_0; // @[Core.scala 246:18]
  wire [63:0] csr_mstatus_0; // @[Core.scala 246:18]
  wire [63:0] csr_csr_mcycle; // @[Core.scala 246:18]
  wire [31:0] nxt_pc_io_pc; // @[Core.scala 255:20]
  wire [63:0] nxt_pc_io_imm; // @[Core.scala 255:20]
  wire [63:0] nxt_pc_io_rs1_data; // @[Core.scala 255:20]
  wire [63:0] nxt_pc_io_alu_out; // @[Core.scala 255:20]
  wire  nxt_pc_io_csr_jmp; // @[Core.scala 255:20]
  wire  nxt_pc_io_intrpt_jmp; // @[Core.scala 255:20]
  wire [2:0] nxt_pc_io_op2_type; // @[Core.scala 255:20]
  wire [2:0] nxt_pc_io_imm_type; // @[Core.scala 255:20]
  wire [4:0] nxt_pc_io_alu_type; // @[Core.scala 255:20]
  wire [63:0] nxt_pc_io_csr_jmp_pc; // @[Core.scala 255:20]
  wire [63:0] nxt_pc_io_intrpt_jmp_pc; // @[Core.scala 255:20]
  wire [31:0] nxt_pc_io_pc_nxt; // @[Core.scala 255:20]
  wire  nxt_pc_io_pc_jmp; // @[Core.scala 255:20]
  wire [2:0] lsu_io_mem_rtype; // @[Core.scala 352:17]
  wire [2:0] lsu_io_wb_type; // @[Core.scala 352:17]
  wire [63:0] lsu_io_dmem_addr; // @[Core.scala 352:17]
  wire [63:0] lsu_io_dmem_rdata; // @[Core.scala 352:17]
  wire [63:0] lsu_io_rs2_data; // @[Core.scala 352:17]
  wire [63:0] lsu_io_mem_rdata; // @[Core.scala 352:17]
  wire [63:0] lsu_io_dmem_wmask; // @[Core.scala 352:17]
  wire [63:0] lsu_io_dmem_wdata; // @[Core.scala 352:17]
  wire  dt_ic_clock; // @[Core.scala 525:19]
  wire [7:0] dt_ic_coreid; // @[Core.scala 525:19]
  wire [7:0] dt_ic_index; // @[Core.scala 525:19]
  wire  dt_ic_valid; // @[Core.scala 525:19]
  wire [63:0] dt_ic_pc; // @[Core.scala 525:19]
  wire [31:0] dt_ic_instr; // @[Core.scala 525:19]
  wire [7:0] dt_ic_special; // @[Core.scala 525:19]
  wire  dt_ic_skip; // @[Core.scala 525:19]
  wire  dt_ic_isRVC; // @[Core.scala 525:19]
  wire  dt_ic_scFailed; // @[Core.scala 525:19]
  wire  dt_ic_wen; // @[Core.scala 525:19]
  wire [63:0] dt_ic_wdata; // @[Core.scala 525:19]
  wire [7:0] dt_ic_wdest; // @[Core.scala 525:19]
  wire  dt_te_clock; // @[Core.scala 557:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 557:21]
  wire  dt_te_valid; // @[Core.scala 557:21]
  wire [2:0] dt_te_code; // @[Core.scala 557:21]
  wire [63:0] dt_te_pc; // @[Core.scala 557:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 557:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 557:21]
  wire  dt_ae_clock; // @[Core.scala 569:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 569:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 569:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 569:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 569:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 569:21]
  wire  dt_cs_clock; // @[Core.scala 578:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 578:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 578:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 578:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 578:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 578:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 578:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 578:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 578:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 578:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 578:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 578:21]
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
  reg [2:0] exe_reg_op1_type; // @[PipelineReg.scala 33:32]
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
  reg  mem_reg_stall; // @[PipelineReg.scala 131:28]
  reg [63:0] exe_reg_print; // @[PipelineReg.scala 137:28]
  reg [63:0] mem_reg_print; // @[PipelineReg.scala 138:28]
  reg [63:0] wb_reg_print; // @[PipelineReg.scala 139:27]
  reg [63:0] mem_reg_rd_data; // @[PipelineReg.scala 141:30]
  reg  mem_reg_stall_wen; // @[PipelineReg.scala 142:32]
  wire  _T_82 = ~io_dmem_data_ready; // @[Core.scala 402:25]
  wire  mem_call_stall = mem_reg_dmem_en & ~io_dmem_data_ready; // @[Core.scala 402:22]
  wire  stall = (mem_reg_stall | mem_call_stall) & _T_82; // @[Core.scala 21:44]
  wire  _GEN_6 = stall ? 1'h0 : 1'h1; // @[Core.scala 29:26 Core.scala 29:72]
  wire [31:0] _if_reg_pc_T_1 = if_reg_pc + 32'h4; // @[Core.scala 31:50]
  wire  _GEN_4 = reg_kill_flag ? 1'h0 : reg_kill_flag; // @[Core.scala 30:26 Core.scala 30:97 PipelineReg.scala 124:29]
  wire  _T_2 = ~reg_kill_flag; // @[Core.scala 38:28]
  wire  _T_7 = ~stall; // @[Core.scala 39:51]
  wire  kill_stage = nxt_pc_io_pc_jmp; // @[PipelineReg.scala 116:23 Core.scala 285:13]
  wire  _T_13 = ~kill_stage; // @[Core.scala 46:56]
  wire [4:0] id_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 62:30]
  wire [4:0] id_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 63:30]
  wire  _id_rs1_T_1 = decode_io_op1_type == 3'h1; // @[Core.scala 90:62]
  wire  _id_rs1_T_2 = id_rs1_addr == 5'h0 & decode_io_op1_type == 3'h1; // @[Core.scala 90:40]
  wire [63:0] _GEN_128 = {{59'd0}, id_rs1_addr}; // @[Core.scala 91:37]
  wire  _id_rs1_T_4 = id_rs1_addr != 5'h0; // @[Core.scala 91:70]
  wire  _id_rs1_T_7 = exe_reg_mem_rtype == 3'h0; // @[Core.scala 91:118]
  wire  _id_rs1_T_8 = exe_reg_rd_addr == _GEN_128 & id_rs1_addr != 5'h0 & exe_reg_rd_wen & exe_reg_mem_rtype == 3'h0; // @[Core.scala 91:97]
  wire  _id_rs1_T_9 = mem_reg_rd_addr == _GEN_128; // @[Core.scala 92:37]
  wire  _id_rs1_T_12 = mem_reg_rd_addr == _GEN_128 & _id_rs1_T_4 & mem_reg_rd_wen; // @[Core.scala 92:79]
  wire  _id_rs1_T_13 = mem_reg_mem_rtype != 3'h0; // @[Core.scala 92:123]
  wire [63:0] mem_rd_data = lsu_io_mem_rdata; // @[PipelineReg.scala 119:23 Core.scala 394:15]
  wire [63:0] _id_rs1_T_14 = mem_reg_mem_rtype != 3'h0 ? mem_rd_data : mem_reg_alu_out; // @[Core.scala 92:104]
  wire  _id_rs1_T_15 = wb_reg_rd_addr == _GEN_128; // @[Core.scala 93:37]
  wire  _id_rs1_T_18 = wb_reg_rd_addr == _GEN_128 & _id_rs1_T_4 & wb_reg_rd_wen; // @[Core.scala 93:79]
  wire  _wb_rd_data_T_1 = ~wb_reg_csr_rd_wen; // @[Core.scala 469:50]
  wire  _wb_rd_data_T_2 = wb_reg_mem_rtype == 3'h0 & ~wb_reg_csr_rd_wen; // @[Core.scala 469:47]
  wire  _wb_rd_data_T_5 = wb_reg_mem_rtype != 3'h0 & _wb_rd_data_T_1; // @[Core.scala 470:47]
  wire [63:0] _wb_rd_data_T_6 = _wb_rd_data_T_5 ? wb_reg_rd_data : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _wb_rd_data_T_7 = _wb_rd_data_T_2 ? wb_reg_alu_out : _wb_rd_data_T_6; // @[Mux.scala 98:16]
  wire [63:0] wb_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  wire [63:0] _id_rs1_T_19 = _id_rs1_T_18 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] exe_alu_out = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 223:17]
  wire  _id_op1_T_3 = decode_io_op1_type == 3'h2; // @[Core.scala 100:39]
  wire  _id_op1_T_4 = decode_io_op1_type == 3'h3; // @[Core.scala 101:39]
  wire  _id_op1_T_16 = _id_rs1_T_9 & _id_rs1_T_1 & _id_rs1_T_4 & mem_reg_rd_wen; // @[Core.scala 103:114]
  wire  _id_op1_T_24 = _id_rs1_T_15 & _id_rs1_T_1 & _id_rs1_T_4 & wb_reg_rd_wen; // @[Core.scala 104:114]
  wire [63:0] _id_op1_T_25 = _id_op1_T_24 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_26 = _id_op1_T_16 ? _id_rs1_T_14 : _id_op1_T_25; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_27 = _id_rs1_T_8 ? exe_alu_out : _id_op1_T_26; // @[Mux.scala 98:16]
  wire [63:0] _GEN_134 = {{59'd0}, id_rs2_addr}; // @[Core.scala 109:37]
  wire  _id_rs2_T_4 = id_rs2_addr != 5'h0; // @[Core.scala 109:70]
  wire  _id_rs2_T_8 = exe_reg_rd_addr == _GEN_134 & id_rs2_addr != 5'h0 & exe_reg_rd_wen & _id_rs1_T_7; // @[Core.scala 109:97]
  wire  _id_rs2_T_12 = mem_reg_rd_addr == _GEN_134 & _id_rs2_T_4 & mem_reg_rd_wen; // @[Core.scala 110:79]
  wire  _id_rs2_T_18 = wb_reg_rd_addr == _GEN_134 & _id_rs2_T_4 & wb_reg_rd_wen; // @[Core.scala 111:79]
  wire [63:0] _id_rs2_T_19 = _id_rs2_T_18 ? wb_rd_data : regfile_io_rs2_data; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_20 = _id_rs2_T_12 ? _id_rs1_T_14 : _id_rs2_T_19; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_21 = _id_rs2_T_8 ? exe_alu_out : _id_rs2_T_20; // @[Mux.scala 98:16]
  wire  _id_op2_T_2 = id_rs2_addr == 5'h0 & decode_io_op2_type == 3'h1; // @[Core.scala 116:40]
  wire  _id_op2_T_3 = decode_io_op2_type == 3'h2; // @[Core.scala 117:39]
  wire  _id_op2_T_4 = decode_io_op2_type == 3'h4; // @[Core.scala 118:39]
  wire  _exe_reg_dmem_wen_T_2 = decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 160:53]
  wire  _T_21 = exe_reg_rs1_addr == wb_reg_rd_addr & exe_reg_rs1_addr != mem_reg_rd_addr; // @[Core.scala 190:43]
  wire  _T_22 = _T_21 & wb_reg_rd_wen; // @[Core.scala 191:1]
  wire  _T_23 = exe_reg_op1_type == 3'h1; // @[Core.scala 191:38]
  wire  _T_25 = exe_reg_rs1_addr == mem_reg_rd_addr; // @[Core.scala 192:29]
  wire  _T_26 = mem_reg_rd_wen | mem_reg_stall_wen; // @[Core.scala 193:20]
  wire  _T_30 = mem_reg_alu_type != 5'h13; // @[Core.scala 193:93]
  wire [63:0] _GEN_50 = _id_rs1_T_13 ? mem_reg_rd_data : mem_reg_alu_out; // @[Core.scala 194:34 Core.scala 194:43 Core.scala 195:20]
  wire [63:0] _GEN_51 = _T_25 & (mem_reg_rd_wen | mem_reg_stall_wen) & _T_23 & mem_reg_alu_type != 5'h13 ? _GEN_50 :
    exe_reg_op1_data; // @[Core.scala 193:110 Core.scala 197:60]
  wire  _T_35 = exe_reg_rs2_addr == wb_reg_rd_addr & exe_reg_rs2_addr != mem_reg_rd_addr; // @[Core.scala 200:43]
  wire  _T_36 = _T_35 & wb_reg_rd_wen; // @[Core.scala 201:1]
  wire  _T_37 = exe_reg_op2_type == 3'h1; // @[Core.scala 201:38]
  wire  _T_39 = exe_reg_rs2_addr == mem_reg_rd_addr; // @[Core.scala 202:29]
  wire [63:0] _GEN_54 = _T_39 & _T_26 & _T_37 & _T_30 ? _GEN_50 : exe_reg_op2_data; // @[Core.scala 203:110 Core.scala 207:60]
  wire  _T_47 = exe_reg_alu_type == 5'h14; // @[Core.scala 210:23]
  wire  _T_54 = exe_alu_out == 64'h200bff8 | exe_alu_out == 64'h2004000; // @[Core.scala 228:30]
  wire  clint_en = exe_reg_dmem_en & _T_54; // @[Core.scala 227:22]
  wire  _T_59 = _T_25 & _id_rs1_T_13; // @[Core.scala 272:43]
  wire  _T_66 = exe_reg_op2_type == 3'h4 & exe_reg_imm_type == 3'h1; // @[Core.scala 276:48]
  wire  _T_67 = _T_22 & (exe_reg_op2_type == 3'h4 & exe_reg_imm_type == 3'h1); // @[Core.scala 276:18]
  wire [63:0] _GEN_60 = _T_66 ? exe_reg_rs1_data : 64'h0; // @[Core.scala 279:68 Core.scala 279:88 Core.scala 280:31]
  wire [63:0] _GEN_61 = _T_67 ? wb_rd_data : _GEN_60; // @[Core.scala 277:1 Core.scala 277:21]
  wire  _mem_reg_dmem_wen_T = ~clint_en; // @[Core.scala 298:44]
  wire  _mem_reg_dmem_en_T_1 = exe_reg_dmem_en & _mem_reg_dmem_wen_T; // @[Core.scala 299:41]
  reg [63:0] mem_reg_dmem_addr; // @[Core.scala 354:29]
  wire [63:0] mem_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 357:22 Core.scala 357:38 Core.scala 358:38]
  wire  _T_79 = mem_reg_rs2_addr == wb_reg_rd_addr; // @[Core.scala 389:24]
  wire  _GEN_98 = io_dmem_data_ready ? 1'h0 : mem_reg_stall; // @[Core.scala 407:46 Core.scala 407:62 PipelineReg.scala 131:28]
  wire  _GEN_99 = mem_call_stall | _GEN_98; // @[Core.scala 402:46 Core.scala 402:62]
  wire  _T_88 = wb_reg_alu_type == 5'h14; // @[Core.scala 483:22]
  reg  dt_valid; // @[Core.scala 510:23]
  reg  skip; // @[Core.scala 512:19]
  wire  _T_97 = _T_88 | wb_reg_csr_type != 3'h0 & wb_reg_inst[31:20] == 12'hb00 | wb_reg_clint_en; // @[Core.scala 514:113]
  wire [63:0] _GEN_140 = {{32'd0}, wb_reg_pc}; // @[Core.scala 522:50]
  reg [31:0] dt_ic_io_pc_REG; // @[Core.scala 526:31]
  reg [63:0] dt_ic_io_instr_REG; // @[Core.scala 527:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 536:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 537:31]
  reg [63:0] dt_ic_io_wdest_REG; // @[Core.scala 538:31]
  reg [63:0] cycle_cnt; // @[Core.scala 543:26]
  reg [63:0] instr_cnt; // @[Core.scala 544:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 546:49]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 547:26]
  wire [63:0] rf_a0_0 = regfile_rf_10;
  reg [63:0] dt_ae_io_intrNO_REG; // @[Core.scala 572:37]
  reg [31:0] dt_ae_io_exceptionPC_REG; // @[Core.scala 574:37]
  Decode decode ( // @[Core.scala 66:20]
    .io_inst(decode_io_inst),
    .io_alu_type(decode_io_alu_type),
    .io_op1_type(decode_io_op1_type),
    .io_op2_type(decode_io_op2_type),
    .io_imm_type(decode_io_imm_type),
    .io_mem_rtype(decode_io_mem_rtype),
    .io_wb_type(decode_io_wb_type),
    .io_csr_type(decode_io_csr_type)
  );
  RegFile regfile ( // @[Core.scala 69:21]
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
  ImmGen imm_gen ( // @[Core.scala 77:21]
    .io_imm_type(imm_gen_io_imm_type),
    .io_inst(imm_gen_io_inst),
    .io_imm(imm_gen_io_imm)
  );
  ALU alu ( // @[Core.scala 218:17]
    .io_alu_type(alu_io_alu_type),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_alu_out(alu_io_alu_out)
  );
  Clint clint ( // @[Core.scala 239:19]
    .clock(clint_clock),
    .reset(clint_reset),
    .io_time_valid(clint_io_time_valid),
    .io_cmp_wen(clint_io_cmp_wen),
    .io_cmp_wdata(clint_io_cmp_wdata),
    .io_time_intrpt(clint_io_time_intrpt),
    .csr_mie(clint_csr_mie),
    .csr_status(clint_csr_status)
  );
  CSR csr ( // @[Core.scala 246:18]
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
  Nxt_PC nxt_pc ( // @[Core.scala 255:20]
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
  LSU lsu ( // @[Core.scala 352:17]
    .io_mem_rtype(lsu_io_mem_rtype),
    .io_wb_type(lsu_io_wb_type),
    .io_dmem_addr(lsu_io_dmem_addr),
    .io_dmem_rdata(lsu_io_dmem_rdata),
    .io_rs2_data(lsu_io_rs2_data),
    .io_mem_rdata(lsu_io_mem_rdata),
    .io_dmem_wmask(lsu_io_dmem_wmask),
    .io_dmem_wdata(lsu_io_dmem_wdata)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 525:19]
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
  DifftestTrapEvent dt_te ( // @[Core.scala 557:21]
    .clock(dt_te_clock),
    .coreid(dt_te_coreid),
    .valid(dt_te_valid),
    .code(dt_te_code),
    .pc(dt_te_pc),
    .cycleCnt(dt_te_cycleCnt),
    .instrCnt(dt_te_instrCnt)
  );
  DifftestArchEvent dt_ae ( // @[Core.scala 569:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
  );
  DifftestCSRState dt_cs ( // @[Core.scala 578:21]
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
  assign io_dmem_data_req_r = _mem_reg_dmem_en_T_1 & ~exe_reg_dmem_wen; // @[Core.scala 362:54]
  assign io_dmem_data_req_w = exe_reg_dmem_wen & _mem_reg_dmem_wen_T; // @[Core.scala 363:41]
  assign io_dmem_data_addr_r = mem_dmem_addr[31:0]; // @[Core.scala 368:22]
  assign io_dmem_data_strb = lsu_io_dmem_wmask; // @[Core.scala 364:21]
  assign io_dmem_data_write = lsu_io_dmem_wdata; // @[Core.scala 365:21]
  assign decode_io_inst = id_reg_inst[31:0]; // @[Core.scala 67:21]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1_addr = decode_io_alu_type != 5'h14 ? id_rs1_addr : 5'ha; // @[Core.scala 70:41 Core.scala 71:21 Core.scala 72:33]
  assign regfile_io_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 63:30]
  assign regfile_io_rd_addr = wb_reg_rd_addr[4:0]; // @[Core.scala 464:21]
  assign regfile_io_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  assign regfile_io_rd_wen = wb_reg_rd_wen | wb_reg_csr_rd_wen; // @[Core.scala 463:38]
  assign imm_gen_io_imm_type = decode_io_imm_type; // @[Core.scala 78:21]
  assign imm_gen_io_inst = id_reg_inst[31:0]; // @[Core.scala 79:21]
  assign alu_io_alu_type = exe_reg_alu_type; // @[Core.scala 220:17]
  assign alu_io_in1 = _T_21 & wb_reg_rd_wen & exe_reg_op1_type == 3'h1 ? wb_rd_data : _GEN_51; // @[Core.scala 191:51 Core.scala 191:60]
  assign alu_io_in2 = _T_35 & wb_reg_rd_wen & exe_reg_op2_type == 3'h1 ? wb_rd_data : _GEN_54; // @[Core.scala 201:51 Core.scala 201:60]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_io_time_valid = exe_reg_pc != 32'h0; // @[Core.scala 234:17]
  assign clint_io_cmp_wen = exe_reg_dmem_wen & clint_en; // @[Core.scala 241:42]
  assign clint_io_cmp_wdata = exe_reg_rs2_data; // @[Core.scala 243:21]
  assign clint_csr_mie = csr_mie_0;
  assign clint_csr_status = csr_mstatus_0;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_pc = exe_reg_pc; // @[Core.scala 247:20]
  assign csr_io_pc_timer = exe_reg_pc; // @[Core.scala 248:20]
  assign csr_io_inst = exe_reg_inst[31:0]; // @[Core.scala 249:20]
  assign csr_io_csr_type = exe_reg_csr_type; // @[Core.scala 251:20]
  assign csr_io_in_data = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 223:17]
  assign csr_io_time_intrpt = clint_io_time_intrpt & exe_reg_inst != 64'h0; // @[Core.scala 252:45]
  assign csr_csr_minstret = instr_cnt;
  assign csr_csr_mcycle = cycle_cnt;
  assign nxt_pc_io_pc = exe_reg_pc; // @[Core.scala 256:23]
  assign nxt_pc_io_imm = exe_reg_imm; // @[Core.scala 259:23]
  assign nxt_pc_io_rs1_data = _T_59 ? mem_rd_data : _GEN_61; // @[Core.scala 273:1 Core.scala 273:21]
  assign nxt_pc_io_alu_out = alu_io_alu_out; // @[PipelineReg.scala 118:23 Core.scala 223:17]
  assign nxt_pc_io_csr_jmp = csr_io_jmp; // @[Core.scala 263:23]
  assign nxt_pc_io_intrpt_jmp = csr_io_intrpt; // @[Core.scala 266:26]
  assign nxt_pc_io_op2_type = exe_reg_op2_type; // @[Core.scala 262:23]
  assign nxt_pc_io_imm_type = exe_reg_imm_type; // @[Core.scala 257:23]
  assign nxt_pc_io_alu_type = exe_reg_alu_type; // @[Core.scala 258:23]
  assign nxt_pc_io_csr_jmp_pc = {{32'd0}, csr_io_jmp_pc}; // @[Core.scala 264:23]
  assign nxt_pc_io_intrpt_jmp_pc = {{32'd0}, csr_io_intrpt_pc}; // @[Core.scala 267:26]
  assign lsu_io_mem_rtype = mem_reg_mem_rtype; // @[Core.scala 380:19]
  assign lsu_io_wb_type = mem_reg_wb_type; // @[Core.scala 381:19]
  assign lsu_io_dmem_addr = mem_reg_dmem_wen ? mem_dmem_addr : mem_reg_dmem_addr; // @[Core.scala 372:1 Core.scala 372:23 Core.scala 373:32]
  assign lsu_io_dmem_rdata = io_dmem_data_ready ? io_dmem_data_read : 64'h0; // @[Core.scala 377:25 Core.scala 377:45 Core.scala 378:45]
  assign lsu_io_rs2_data = _T_79 & (mem_reg_dmem_wen & wb_reg_rd_wen) ? wb_rd_data : mem_reg_rs2_data; // @[Core.scala 390:40 Core.scala 390:59 Core.scala 391:59]
  assign dt_ic_clock = clock; // @[Core.scala 528:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 529:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 530:21]
  assign dt_ic_valid = dt_valid; // @[Core.scala 531:21]
  assign dt_ic_pc = {{32'd0}, dt_ic_io_pc_REG}; // @[Core.scala 526:21]
  assign dt_ic_instr = dt_ic_io_instr_REG[31:0]; // @[Core.scala 527:21]
  assign dt_ic_special = 8'h0; // @[Core.scala 532:21]
  assign dt_ic_skip = skip; // @[Core.scala 533:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 534:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 535:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 536:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 537:21]
  assign dt_ic_wdest = dt_ic_io_wdest_REG[7:0]; // @[Core.scala 538:21]
  assign dt_te_clock = clock; // @[Core.scala 558:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 559:21]
  assign dt_te_valid = wb_reg_inst == 64'h6b; // @[Core.scala 560:37]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 561:29]
  assign dt_te_pc = {{32'd0}, wb_reg_pc}; // @[Core.scala 562:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 563:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 564:21]
  assign dt_ae_clock = clock; // @[Core.scala 570:27]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 571:27]
  assign dt_ae_intrNO = dt_ae_io_intrNO_REG[31:0]; // @[Core.scala 572:27]
  assign dt_ae_cause = 32'h0; // @[Core.scala 573:27]
  assign dt_ae_exceptionPC = {{32'd0}, dt_ae_io_exceptionPC_REG}; // @[Core.scala 574:27]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_cs_clock = clock; // @[Core.scala 579:29]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 580:29]
  assign dt_cs_priviledgeMode = 2'h3; // @[Core.scala 581:29]
  assign dt_cs_mstatus = wb_reg_mstatus; // @[Core.scala 582:29]
  assign dt_cs_sstatus = wb_reg_mstatus & 64'h80000003000de122; // @[Core.scala 583:47]
  assign dt_cs_mepc = wb_reg_mepc; // @[Core.scala 584:29]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 585:29]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 586:29]
  assign dt_cs_stval = 64'h0; // @[Core.scala 587:29]
  assign dt_cs_mtvec = wb_reg_mtvec; // @[Core.scala 588:29]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 589:29]
  assign dt_cs_mcause = wb_reg_mcause; // @[Core.scala 590:29]
  assign dt_cs_scause = 64'h0; // @[Core.scala 591:29]
  assign dt_cs_satp = 64'h0; // @[Core.scala 592:29]
  assign dt_cs_mip = 64'h0; // @[Core.scala 593:29]
  assign dt_cs_mie = wb_reg_mie; // @[Core.scala 594:29]
  assign dt_cs_mscratch = wb_reg_mscratch; // @[Core.scala 595:29]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 596:29]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 597:29]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 598:29]
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
    end else if (io_imem_inst_ready & _T_7 & _T_2 & ~kill_stage) begin // @[Core.scala 46:68]
      id_reg_pc <= if_reg_pc; // @[Core.scala 47:14]
    end else if (!(stall)) begin // @[Core.scala 49:18]
      id_reg_pc <= 32'h0; // @[Core.scala 54:14]
    end
    if (reset) begin // @[PipelineReg.scala 21:28]
      id_reg_inst <= 64'h0; // @[PipelineReg.scala 21:28]
    end else if (io_imem_inst_ready & _T_7 & _T_2 & ~kill_stage) begin // @[Core.scala 46:68]
      id_reg_inst <= {{32'd0}, io_imem_inst_read}; // @[Core.scala 48:14]
    end else if (!(stall)) begin // @[Core.scala 49:18]
      id_reg_inst <= 64'h0; // @[Core.scala 55:14]
    end
    if (reset) begin // @[PipelineReg.scala 25:32]
      exe_reg_pc <= 32'h0; // @[PipelineReg.scala 25:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_pc <= id_reg_pc; // @[Core.scala 137:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_pc <= 32'h0; // @[Core.scala 164:19]
    end
    if (reset) begin // @[PipelineReg.scala 26:32]
      exe_reg_inst <= 64'h0; // @[PipelineReg.scala 26:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_inst <= id_reg_inst; // @[Core.scala 138:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_inst <= 64'h0; // @[Core.scala 165:19]
    end
    if (reset) begin // @[PipelineReg.scala 28:32]
      exe_reg_alu_type <= 5'h0; // @[PipelineReg.scala 28:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_alu_type <= decode_io_alu_type; // @[Core.scala 142:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_alu_type <= 5'h0; // @[Core.scala 167:19]
    end
    if (reset) begin // @[PipelineReg.scala 29:32]
      exe_reg_wb_type <= 3'h0; // @[PipelineReg.scala 29:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_wb_type <= decode_io_wb_type; // @[Core.scala 145:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_wb_type <= 3'h0; // @[Core.scala 170:19]
    end
    if (reset) begin // @[PipelineReg.scala 30:32]
      exe_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 30:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_mem_rtype <= decode_io_mem_rtype; // @[Core.scala 143:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_mem_rtype <= 3'h0; // @[Core.scala 168:19]
    end
    if (reset) begin // @[PipelineReg.scala 31:32]
      exe_reg_imm_type <= 3'h0; // @[PipelineReg.scala 31:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_imm_type <= decode_io_imm_type; // @[Core.scala 144:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_imm_type <= 3'h0; // @[Core.scala 169:19]
    end
    if (reset) begin // @[PipelineReg.scala 32:32]
      exe_reg_csr_type <= 3'h0; // @[PipelineReg.scala 32:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_csr_type <= decode_io_csr_type; // @[Core.scala 146:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_csr_type <= 3'h0; // @[Core.scala 171:19]
    end
    if (reset) begin // @[PipelineReg.scala 33:32]
      exe_reg_op1_type <= 3'h0; // @[PipelineReg.scala 33:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_op1_type <= decode_io_op1_type; // @[Core.scala 140:19]
    end
    if (reset) begin // @[PipelineReg.scala 34:32]
      exe_reg_op2_type <= 3'h0; // @[PipelineReg.scala 34:32]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_op2_type <= decode_io_op2_type; // @[Core.scala 141:19]
    end
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
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
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
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
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
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
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
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
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_imm <= imm_gen_io_imm; // @[Core.scala 148:19]
    end
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_rd_wen <= decode_io_wb_type == 3'h1; // @[Core.scala 159:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_rd_wen <= 1'h0; // @[Core.scala 173:19]
    end
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_dmem_en <= decode_io_mem_rtype != 3'h0 | _exe_reg_dmem_wen_T_2; // @[Core.scala 161:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_dmem_en <= 1'h0; // @[Core.scala 175:19]
    end
    if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_dmem_wen <= decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 160:19]
    end else if (kill_stage) begin // @[Core.scala 163:23]
      exe_reg_dmem_wen <= 1'h0; // @[Core.scala 174:19]
    end
    if (reset) begin // @[PipelineReg.scala 46:33]
      exe_reg_rs1_addr <= 64'h0; // @[PipelineReg.scala 46:33]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_rs1_addr <= {{59'd0}, id_rs1_addr}; // @[Core.scala 153:19]
    end
    if (reset) begin // @[PipelineReg.scala 47:33]
      exe_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 47:33]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_rs2_addr <= {{59'd0}, id_rs2_addr}; // @[Core.scala 154:19]
    end
    if (reset) begin // @[PipelineReg.scala 48:33]
      exe_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 48:33]
    end else if (_T_7 & _T_13) begin // @[Core.scala 136:28]
      exe_reg_rd_addr <= {{59'd0}, id_reg_inst[11:7]}; // @[Core.scala 155:19]
    end
    mem_reg_dmem_en <= ~csr_io_intrpt & (exe_reg_dmem_en & _mem_reg_dmem_wen_T); // @[Core.scala 295:21 Core.scala 299:21 Core.scala 305:21]
    mem_reg_dmem_wen <= ~csr_io_intrpt & (exe_reg_dmem_wen & ~clint_en); // @[Core.scala 295:21 Core.scala 298:21 Core.scala 304:21]
    mem_reg_rd_wen <= ~csr_io_intrpt & exe_reg_rd_wen; // @[Core.scala 295:21 Core.scala 297:21 Core.scala 303:21]
    if (reset) begin // @[PipelineReg.scala 55:32]
      mem_reg_pc <= 32'h0; // @[PipelineReg.scala 55:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_pc <= exe_reg_pc; // @[Core.scala 311:21]
    end
    if (reset) begin // @[PipelineReg.scala 56:32]
      mem_reg_inst <= 64'h0; // @[PipelineReg.scala 56:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_inst <= exe_reg_inst; // @[Core.scala 312:21]
    end
    if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_csr_rd_wen <= csr_io_rd_wen; // @[Core.scala 345:21]
    end
    if (reset) begin // @[PipelineReg.scala 59:34]
      mem_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 59:34]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_csr_rd_data <= csr_io_out; // @[Core.scala 346:21]
    end
    if (reset) begin // @[PipelineReg.scala 60:34]
      mem_reg_clint_en <= 1'h0; // @[PipelineReg.scala 60:34]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_clint_en <= clint_en; // @[Core.scala 344:21]
    end
    if (reset) begin // @[PipelineReg.scala 62:33]
      mem_reg_alu_type <= 5'h0; // @[PipelineReg.scala 62:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_alu_type <= exe_reg_alu_type; // @[Core.scala 315:21]
    end
    if (reset) begin // @[PipelineReg.scala 63:33]
      mem_reg_wb_type <= 3'h0; // @[PipelineReg.scala 63:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_wb_type <= exe_reg_wb_type; // @[Core.scala 317:21]
    end
    if (reset) begin // @[PipelineReg.scala 64:33]
      mem_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 64:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mem_rtype <= exe_reg_mem_rtype; // @[Core.scala 316:21]
    end
    if (reset) begin // @[PipelineReg.scala 65:33]
      mem_reg_csr_type <= 3'h0; // @[PipelineReg.scala 65:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_csr_type <= exe_reg_csr_type; // @[Core.scala 318:21]
    end
    if (reset) begin // @[PipelineReg.scala 68:33]
      mem_reg_alu_out <= 64'h0; // @[PipelineReg.scala 68:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_alu_out <= exe_alu_out; // @[Core.scala 319:21]
    end
    if (reset) begin // @[PipelineReg.scala 70:33]
      mem_reg_rs2_data <= 64'h0; // @[PipelineReg.scala 70:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      if (_T_36 & exe_reg_wb_type > 3'h1) begin // @[Core.scala 330:42]
        if (wb_reg_csr_rd_wen) begin // @[Mux.scala 98:16]
          mem_reg_rs2_data <= wb_reg_csr_rd_data;
        end else begin
          mem_reg_rs2_data <= _wb_rd_data_T_7;
        end
      end else begin
        mem_reg_rs2_data <= exe_reg_rs2_data; // @[Core.scala 331:32]
      end
    end
    if (reset) begin // @[PipelineReg.scala 74:33]
      mem_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 74:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_rs2_addr <= exe_reg_rs2_addr; // @[Core.scala 324:21]
    end
    if (reset) begin // @[PipelineReg.scala 75:33]
      mem_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 75:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_rd_addr <= exe_reg_rd_addr; // @[Core.scala 325:21]
    end
    if (reset) begin // @[PipelineReg.scala 79:32]
      wb_reg_pc <= 32'h0; // @[PipelineReg.scala 79:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_pc <= mem_reg_pc; // @[Core.scala 417:20]
    end else begin
      wb_reg_pc <= 32'h0; // @[Core.scala 455:12]
    end
    if (reset) begin // @[PipelineReg.scala 80:32]
      wb_reg_inst <= 64'h0; // @[PipelineReg.scala 80:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_inst <= mem_reg_inst; // @[Core.scala 418:20]
    end else begin
      wb_reg_inst <= 64'h0; // @[Core.scala 456:15]
    end
    if (reset) begin // @[PipelineReg.scala 82:32]
      wb_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 82:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mem_rtype <= mem_reg_mem_rtype; // @[Core.scala 421:20]
    end
    if (reset) begin // @[PipelineReg.scala 83:32]
      wb_reg_alu_type <= 5'h0; // @[PipelineReg.scala 83:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_alu_type <= mem_reg_alu_type; // @[Core.scala 420:20]
    end
    if (reset) begin // @[PipelineReg.scala 84:32]
      wb_reg_csr_type <= 3'h0; // @[PipelineReg.scala 84:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_csr_type <= mem_reg_csr_type; // @[Core.scala 422:20]
    end
    if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_alu_out <= mem_reg_alu_out; // @[Core.scala 424:20]
    end
    if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_rd_data <= io_dmem_data_read; // @[Core.scala 430:20]
    end
    if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_rd_wen <= _T_26; // @[Core.scala 429:20]
    end
    if (reset) begin // @[PipelineReg.scala 88:32]
      wb_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 88:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_rd_addr <= mem_reg_rd_addr; // @[Core.scala 428:20]
    end
    if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_csr_rd_wen <= mem_reg_csr_rd_wen; // @[Core.scala 444:20]
    end
    if (reset) begin // @[PipelineReg.scala 94:33]
      wb_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 94:33]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_csr_rd_data <= mem_reg_csr_rd_data; // @[Core.scala 431:20]
    end
    if (reset) begin // @[PipelineReg.scala 95:31]
      wb_reg_clint_en <= 1'h0; // @[PipelineReg.scala 95:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_clint_en <= mem_reg_clint_en; // @[Core.scala 445:20]
    end
    if (reset) begin // @[PipelineReg.scala 98:32]
      mem_reg_mie <= 64'h0; // @[PipelineReg.scala 98:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mie <= csr_io_mie; // @[Core.scala 336:21]
    end
    if (reset) begin // @[PipelineReg.scala 99:32]
      mem_reg_mstatus <= 64'h0; // @[PipelineReg.scala 99:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mstatus <= csr_io_mstatus; // @[Core.scala 337:21]
    end
    if (reset) begin // @[PipelineReg.scala 100:32]
      mem_reg_mepc <= 64'h0; // @[PipelineReg.scala 100:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mepc <= csr_io_mepc; // @[Core.scala 338:21]
    end
    if (reset) begin // @[PipelineReg.scala 101:32]
      mem_reg_mcause <= 64'h0; // @[PipelineReg.scala 101:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mcause <= csr_io_mcause; // @[Core.scala 339:21]
    end
    if (reset) begin // @[PipelineReg.scala 102:32]
      mem_reg_mtvec <= 64'h0; // @[PipelineReg.scala 102:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mtvec <= csr_io_mtvec; // @[Core.scala 340:21]
    end
    if (reset) begin // @[PipelineReg.scala 103:32]
      mem_reg_mscratch <= 64'h0; // @[PipelineReg.scala 103:32]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_mscratch <= csr_io_mscratch; // @[Core.scala 341:21]
    end
    if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_intrpt <= csr_io_intrpt; // @[Core.scala 342:21]
    end
    if (reset) begin // @[PipelineReg.scala 105:33]
      mem_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 105:33]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_intrpt_no <= csr_io_intrpt_no; // @[Core.scala 343:21]
    end
    if (reset) begin // @[PipelineReg.scala 107:31]
      wb_reg_mie <= 64'h0; // @[PipelineReg.scala 107:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mie <= mem_reg_mie; // @[Core.scala 446:20]
    end
    if (reset) begin // @[PipelineReg.scala 108:31]
      wb_reg_mstatus <= 64'h0; // @[PipelineReg.scala 108:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mstatus <= mem_reg_mstatus; // @[Core.scala 450:17]
    end
    if (reset) begin // @[PipelineReg.scala 109:31]
      wb_reg_mepc <= 64'h0; // @[PipelineReg.scala 109:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mepc <= mem_reg_mepc; // @[Core.scala 451:17]
    end
    if (reset) begin // @[PipelineReg.scala 110:31]
      wb_reg_mcause <= 64'h0; // @[PipelineReg.scala 110:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mcause <= mem_reg_mcause; // @[Core.scala 452:17]
    end
    if (reset) begin // @[PipelineReg.scala 111:31]
      wb_reg_mtvec <= 64'h0; // @[PipelineReg.scala 111:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mtvec <= mem_reg_mtvec; // @[Core.scala 447:20]
    end
    if (reset) begin // @[PipelineReg.scala 112:31]
      wb_reg_mscratch <= 64'h0; // @[PipelineReg.scala 112:31]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_mscratch <= mem_reg_mscratch; // @[Core.scala 448:20]
    end
    if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_intrpt <= mem_reg_intrpt; // @[Core.scala 442:20]
    end
    if (reset) begin // @[PipelineReg.scala 114:32]
      wb_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 114:32]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_intrpt_no <= mem_reg_intrpt_no; // @[Core.scala 443:20]
    end
    if (reset) begin // @[PipelineReg.scala 124:29]
      reg_kill_flag <= 1'h0; // @[PipelineReg.scala 124:29]
    end else if (kill_stage) begin // @[Core.scala 289:17]
      reg_kill_flag <= nxt_pc_io_pc_jmp; // @[Core.scala 289:68]
    end else if (io_imem_inst_ready | if_reg_pc == 32'h7ffffffc) begin // @[Core.scala 28:56]
      if (!(stall)) begin // @[Core.scala 29:26]
        reg_kill_flag <= _GEN_4;
      end
    end
    if (reset) begin // @[PipelineReg.scala 125:29]
      reg_exe_pc_nxt <= 32'h0; // @[PipelineReg.scala 125:29]
    end else if (kill_stage) begin // @[Core.scala 289:17]
      reg_exe_pc_nxt <= nxt_pc_io_pc_nxt; // @[Core.scala 289:33]
    end
    if (reset) begin // @[PipelineReg.scala 131:28]
      mem_reg_stall <= 1'h0; // @[PipelineReg.scala 131:28]
    end else begin
      mem_reg_stall <= _GEN_99;
    end
    if (reset) begin // @[PipelineReg.scala 137:28]
      exe_reg_print <= 64'h0; // @[PipelineReg.scala 137:28]
    end else if (exe_reg_alu_type == 5'h14 & wb_reg_rd_addr == 64'ha & wb_reg_rd_wen) begin // @[Core.scala 210:84]
      if (wb_reg_csr_rd_wen) begin // @[Mux.scala 98:16]
        exe_reg_print <= wb_reg_csr_rd_data;
      end else if (_wb_rd_data_T_2) begin // @[Mux.scala 98:16]
        exe_reg_print <= wb_reg_alu_out;
      end else begin
        exe_reg_print <= _wb_rd_data_T_6;
      end
    end else if (_T_47) begin // @[Core.scala 211:45]
      exe_reg_print <= exe_reg_rs1_data; // @[Core.scala 211:60]
    end
    if (reset) begin // @[PipelineReg.scala 138:28]
      mem_reg_print <= 64'h0; // @[PipelineReg.scala 138:28]
    end else if (_T_7) begin // @[Core.scala 310:1]
      mem_reg_print <= exe_reg_print; // @[Core.scala 327:21]
    end
    if (reset) begin // @[PipelineReg.scala 139:27]
      wb_reg_print <= 64'h0; // @[PipelineReg.scala 139:27]
    end else if (_T_7) begin // @[Core.scala 415:1]
      wb_reg_print <= mem_reg_print; // @[Core.scala 426:20]
    end
    if (reset) begin // @[PipelineReg.scala 141:30]
      mem_reg_rd_data <= 64'h0; // @[PipelineReg.scala 141:30]
    end else begin
      mem_reg_rd_data <= mem_rd_data; // @[Core.scala 397:16]
    end
    if (reset) begin // @[PipelineReg.scala 142:32]
      mem_reg_stall_wen <= 1'h0; // @[PipelineReg.scala 142:32]
    end else if (~mem_reg_stall & ~mem_call_stall) begin // @[Core.scala 409:46]
      mem_reg_stall_wen <= 1'h0; // @[Core.scala 409:64]
    end else if (mem_call_stall) begin // @[Core.scala 402:46]
      mem_reg_stall_wen <= mem_reg_rd_wen; // @[Core.scala 404:18]
    end
    if (mem_reg_dmem_en) begin // @[Core.scala 357:22]
      mem_reg_dmem_addr <= mem_reg_alu_out; // @[Core.scala 357:75]
    end
    if (reset) begin // @[Core.scala 510:23]
      dt_valid <= 1'h0; // @[Core.scala 510:23]
    end else begin
      dt_valid <= wb_reg_inst != 64'h0 & _GEN_140 != 64'hffffffffffffffff & ~wb_reg_intrpt; // @[Core.scala 522:10]
    end
    if (reset) begin // @[Core.scala 512:19]
      skip <= 1'h0; // @[Core.scala 512:19]
    end else begin
      skip <= _T_97;
    end
    dt_ic_io_pc_REG <= wb_reg_pc; // @[Core.scala 526:31]
    dt_ic_io_instr_REG <= wb_reg_inst; // @[Core.scala 527:31]
    dt_ic_io_wen_REG <= wb_reg_rd_wen | wb_reg_csr_rd_wen; // @[Core.scala 536:46]
    if (wb_reg_csr_rd_wen) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_csr_rd_data;
    end else if (_wb_rd_data_T_2) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_alu_out;
    end else if (_wb_rd_data_T_5) begin // @[Mux.scala 98:16]
      dt_ic_io_wdata_REG <= wb_reg_rd_data;
    end else begin
      dt_ic_io_wdata_REG <= 64'h0;
    end
    dt_ic_io_wdest_REG <= wb_reg_rd_addr; // @[Core.scala 538:31]
    if (reset) begin // @[Core.scala 543:26]
      cycle_cnt <= 64'h0; // @[Core.scala 543:26]
    end else begin
      cycle_cnt <= _cycle_cnt_T_1; // @[Core.scala 547:13]
    end
    if (reset) begin // @[Core.scala 544:26]
      instr_cnt <= 64'h0; // @[Core.scala 544:26]
    end else if (dt_ic_valid) begin // @[Core.scala 546:24]
      instr_cnt <= _instr_cnt_T_1; // @[Core.scala 546:36]
    end
    if (wb_reg_intrpt) begin // @[Core.scala 572:41]
      dt_ae_io_intrNO_REG <= wb_reg_intrpt_no;
    end else begin
      dt_ae_io_intrNO_REG <= 64'h0;
    end
    if (wb_reg_intrpt) begin // @[Core.scala 574:41]
      dt_ae_io_exceptionPC_REG <= wb_reg_pc;
    end else begin
      dt_ae_io_exceptionPC_REG <= 32'h0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_88 & ~reset) begin
          $fwrite(32'h80000002,"%c",wb_reg_print); // @[Core.scala 486:7]
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
  exe_reg_op1_type = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  exe_reg_op2_type = _RAND_11[2:0];
  _RAND_12 = {2{`RANDOM}};
  exe_reg_op1_data = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  exe_reg_op2_data = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  exe_reg_rs2_data = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  exe_reg_rs1_data = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  exe_reg_imm = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  exe_reg_rd_wen = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  exe_reg_dmem_en = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  exe_reg_dmem_wen = _RAND_19[0:0];
  _RAND_20 = {2{`RANDOM}};
  exe_reg_rs1_addr = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  exe_reg_rs2_addr = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  exe_reg_rd_addr = _RAND_22[63:0];
  _RAND_23 = {1{`RANDOM}};
  mem_reg_dmem_en = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_reg_dmem_wen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_reg_rd_wen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mem_reg_pc = _RAND_26[31:0];
  _RAND_27 = {2{`RANDOM}};
  mem_reg_inst = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  mem_reg_csr_rd_wen = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  mem_reg_csr_rd_data = _RAND_29[63:0];
  _RAND_30 = {1{`RANDOM}};
  mem_reg_clint_en = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mem_reg_alu_type = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  mem_reg_wb_type = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  mem_reg_mem_rtype = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  mem_reg_csr_type = _RAND_34[2:0];
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
  _RAND_48 = {1{`RANDOM}};
  wb_reg_csr_rd_wen = _RAND_48[0:0];
  _RAND_49 = {2{`RANDOM}};
  wb_reg_csr_rd_data = _RAND_49[63:0];
  _RAND_50 = {1{`RANDOM}};
  wb_reg_clint_en = _RAND_50[0:0];
  _RAND_51 = {2{`RANDOM}};
  mem_reg_mie = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  mem_reg_mstatus = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  mem_reg_mepc = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  mem_reg_mcause = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  mem_reg_mtvec = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  mem_reg_mscratch = _RAND_56[63:0];
  _RAND_57 = {1{`RANDOM}};
  mem_reg_intrpt = _RAND_57[0:0];
  _RAND_58 = {2{`RANDOM}};
  mem_reg_intrpt_no = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  wb_reg_mie = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  wb_reg_mstatus = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  wb_reg_mepc = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  wb_reg_mcause = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  wb_reg_mtvec = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  wb_reg_mscratch = _RAND_64[63:0];
  _RAND_65 = {1{`RANDOM}};
  wb_reg_intrpt = _RAND_65[0:0];
  _RAND_66 = {2{`RANDOM}};
  wb_reg_intrpt_no = _RAND_66[63:0];
  _RAND_67 = {1{`RANDOM}};
  reg_kill_flag = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  reg_exe_pc_nxt = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  mem_reg_stall = _RAND_69[0:0];
  _RAND_70 = {2{`RANDOM}};
  exe_reg_print = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  mem_reg_print = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  wb_reg_print = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  mem_reg_rd_data = _RAND_73[63:0];
  _RAND_74 = {1{`RANDOM}};
  mem_reg_stall_wen = _RAND_74[0:0];
  _RAND_75 = {2{`RANDOM}};
  mem_reg_dmem_addr = _RAND_75[63:0];
  _RAND_76 = {1{`RANDOM}};
  dt_valid = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  skip = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  dt_ic_io_pc_REG = _RAND_78[31:0];
  _RAND_79 = {2{`RANDOM}};
  dt_ic_io_instr_REG = _RAND_79[63:0];
  _RAND_80 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_80[0:0];
  _RAND_81 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  cycle_cnt = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  instr_cnt = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  dt_ae_io_intrNO_REG = _RAND_85[63:0];
  _RAND_86 = {1{`RANDOM}};
  dt_ae_io_exceptionPC_REG = _RAND_86[31:0];
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
  input  [63:0]  io_dmem_data_strb,
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
  reg [63:0] _RAND_7;
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
  reg [63:0] inst_read_h; // @[AXI.scala 238:28]
  reg [63:0] inst_read_l; // @[AXI.scala 239:28]
  reg [63:0] data_read_h; // @[AXI.scala 240:28]
  reg [63:0] data_read_l; // @[AXI.scala 241:28]
  assign io_axi2ram_ar_valid = _T_13 | _T_14; // @[AXI.scala 203:51]
  assign io_axi2ram_ar_bits_addr = read_state == 3'h1 ? io_imem_inst_addr : _GEN_32; // @[AXI.scala 185:39 AXI.scala 185:48]
  assign io_axi2ram_r_ready = 1'h1; // @[AXI.scala 205:18]
  assign io_axi2ram_aw_valid = write_state == 3'h1; // @[AXI.scala 219:34]
  assign io_axi2ram_aw_bits_addr = io_dmem_data_addr_w; // @[AXI.scala 209:23]
  assign io_axi2ram_w_valid = write_state == 3'h2; // @[AXI.scala 226:34]
  assign io_axi2ram_w_bits_data = io_dmem_data_write[63:0]; // @[AXI.scala 222:23]
  assign io_axi2ram_w_bits_strb = io_dmem_data_strb[7:0]; // @[AXI.scala 223:23]
  assign io_axi2ram_w_bits_last = 1'h1; // @[AXI.scala 224:23]
  assign io_axi2ram_b_ready = 1'h1; // @[AXI.scala 229:18]
  assign io_imem_inst_ready = read_state == 3'h3; // @[AXI.scala 258:34]
  assign io_imem_inst_read = {inst_read_h,inst_read_l}; // @[Cat.scala 30:58]
  assign io_dmem_data_ready = read_state == 3'h6 | write_state == 3'h4; // @[AXI.scala 259:51]
  assign io_dmem_data_read = {data_read_h,data_read_l}; // @[Cat.scala 30:58]
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
    if (reset) begin // @[AXI.scala 238:28]
      inst_read_h <= 64'h0; // @[AXI.scala 238:28]
    end else if (r_hs) begin // @[AXI.scala 243:15]
      if (io_axi2ram_r_bits_last) begin // @[AXI.scala 244:28]
        inst_read_h <= io_axi2ram_r_bits_data; // @[AXI.scala 245:19]
      end
    end
    if (reset) begin // @[AXI.scala 239:28]
      inst_read_l <= 64'h0; // @[AXI.scala 239:28]
    end else if (r_hs) begin // @[AXI.scala 243:15]
      if (!(io_axi2ram_r_bits_last)) begin // @[AXI.scala 244:28]
        inst_read_l <= io_axi2ram_r_bits_data; // @[AXI.scala 249:19]
      end
    end
    if (reset) begin // @[AXI.scala 240:28]
      data_read_h <= 64'h0; // @[AXI.scala 240:28]
    end else if (r_hs) begin // @[AXI.scala 243:15]
      if (io_axi2ram_r_bits_last) begin // @[AXI.scala 244:28]
        data_read_h <= io_axi2ram_r_bits_data; // @[AXI.scala 246:19]
      end
    end
    if (reset) begin // @[AXI.scala 241:28]
      data_read_l <= 64'h0; // @[AXI.scala 241:28]
    end else if (r_hs) begin // @[AXI.scala 243:15]
      if (!(io_axi2ram_r_bits_last)) begin // @[AXI.scala 244:28]
        data_read_l <= io_axi2ram_r_bits_data; // @[AXI.scala 250:19]
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
  _RAND_7 = {2{`RANDOM}};
  data_read_l = _RAND_7[63:0];
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
  wire [27:0] inst_addr2axi_hi_hi_hi = req_reg_addr[31:4]; // @[Icache.scala 105:40]
  wire [31:0] _inst_addr2axi_T = {inst_addr2axi_hi_hi_hi,1'h0,1'h0,2'h0}; // @[Cat.scala 30:58]
  wire [1:0] _GEN_133 = ~cache_reg_fill ? 2'h2 : 2'h3; // @[Icache.scala 101:37 Icache.scala 103:14 Icache.scala 108:13]
  wire [31:0] _GEN_135 = ~cache_reg_fill ? _inst_addr2axi_T : 32'h0; // @[Icache.scala 101:37 Icache.scala 105:21]
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
module Dcache(
  input          clock,
  input          reset,
  output         io_core_data_data_ready,
  input          io_core_data_data_req_r,
  input          io_core_data_data_req_w,
  input  [31:0]  io_core_data_data_addr_r,
  input  [63:0]  io_core_data_data_strb,
  output [63:0]  io_core_data_data_read,
  input  [63:0]  io_core_data_data_write,
  input          io_axi_data_data_ready,
  output         io_axi_data_data_req_r,
  output         io_axi_data_data_req_w,
  output [31:0]  io_axi_data_data_addr_r,
  output [31:0]  io_axi_data_data_addr_w,
  output [63:0]  io_axi_data_data_strb,
  input  [127:0] io_axi_data_data_read,
  output [127:0] io_axi_data_data_write
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
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [63:0] _RAND_260;
  reg [127:0] _RAND_261;
  reg [31:0] _RAND_262;
`endif // RANDOMIZE_REG_INIT
  wire [127:0] dcache_Q; // @[Dcache.scala 251:22]
  wire  dcache_CLK; // @[Dcache.scala 251:22]
  wire  dcache_CEN; // @[Dcache.scala 251:22]
  wire  dcache_WEN; // @[Dcache.scala 251:22]
  wire [127:0] dcache_BWEN; // @[Dcache.scala 251:22]
  wire [5:0] dcache_A; // @[Dcache.scala 251:22]
  wire [127:0] dcache_D; // @[Dcache.scala 251:22]
  reg [2:0] state; // @[Dcache.scala 31:22]
  reg [21:0] tag_0; // @[Dcache.scala 34:24]
  reg [21:0] tag_1; // @[Dcache.scala 34:24]
  reg [21:0] tag_2; // @[Dcache.scala 34:24]
  reg [21:0] tag_3; // @[Dcache.scala 34:24]
  reg [21:0] tag_4; // @[Dcache.scala 34:24]
  reg [21:0] tag_5; // @[Dcache.scala 34:24]
  reg [21:0] tag_6; // @[Dcache.scala 34:24]
  reg [21:0] tag_7; // @[Dcache.scala 34:24]
  reg [21:0] tag_8; // @[Dcache.scala 34:24]
  reg [21:0] tag_9; // @[Dcache.scala 34:24]
  reg [21:0] tag_10; // @[Dcache.scala 34:24]
  reg [21:0] tag_11; // @[Dcache.scala 34:24]
  reg [21:0] tag_12; // @[Dcache.scala 34:24]
  reg [21:0] tag_13; // @[Dcache.scala 34:24]
  reg [21:0] tag_14; // @[Dcache.scala 34:24]
  reg [21:0] tag_15; // @[Dcache.scala 34:24]
  reg [21:0] tag_16; // @[Dcache.scala 34:24]
  reg [21:0] tag_17; // @[Dcache.scala 34:24]
  reg [21:0] tag_18; // @[Dcache.scala 34:24]
  reg [21:0] tag_19; // @[Dcache.scala 34:24]
  reg [21:0] tag_20; // @[Dcache.scala 34:24]
  reg [21:0] tag_21; // @[Dcache.scala 34:24]
  reg [21:0] tag_22; // @[Dcache.scala 34:24]
  reg [21:0] tag_23; // @[Dcache.scala 34:24]
  reg [21:0] tag_24; // @[Dcache.scala 34:24]
  reg [21:0] tag_25; // @[Dcache.scala 34:24]
  reg [21:0] tag_26; // @[Dcache.scala 34:24]
  reg [21:0] tag_27; // @[Dcache.scala 34:24]
  reg [21:0] tag_28; // @[Dcache.scala 34:24]
  reg [21:0] tag_29; // @[Dcache.scala 34:24]
  reg [21:0] tag_30; // @[Dcache.scala 34:24]
  reg [21:0] tag_31; // @[Dcache.scala 34:24]
  reg [21:0] tag_32; // @[Dcache.scala 34:24]
  reg [21:0] tag_33; // @[Dcache.scala 34:24]
  reg [21:0] tag_34; // @[Dcache.scala 34:24]
  reg [21:0] tag_35; // @[Dcache.scala 34:24]
  reg [21:0] tag_36; // @[Dcache.scala 34:24]
  reg [21:0] tag_37; // @[Dcache.scala 34:24]
  reg [21:0] tag_38; // @[Dcache.scala 34:24]
  reg [21:0] tag_39; // @[Dcache.scala 34:24]
  reg [21:0] tag_40; // @[Dcache.scala 34:24]
  reg [21:0] tag_41; // @[Dcache.scala 34:24]
  reg [21:0] tag_42; // @[Dcache.scala 34:24]
  reg [21:0] tag_43; // @[Dcache.scala 34:24]
  reg [21:0] tag_44; // @[Dcache.scala 34:24]
  reg [21:0] tag_45; // @[Dcache.scala 34:24]
  reg [21:0] tag_46; // @[Dcache.scala 34:24]
  reg [21:0] tag_47; // @[Dcache.scala 34:24]
  reg [21:0] tag_48; // @[Dcache.scala 34:24]
  reg [21:0] tag_49; // @[Dcache.scala 34:24]
  reg [21:0] tag_50; // @[Dcache.scala 34:24]
  reg [21:0] tag_51; // @[Dcache.scala 34:24]
  reg [21:0] tag_52; // @[Dcache.scala 34:24]
  reg [21:0] tag_53; // @[Dcache.scala 34:24]
  reg [21:0] tag_54; // @[Dcache.scala 34:24]
  reg [21:0] tag_55; // @[Dcache.scala 34:24]
  reg [21:0] tag_56; // @[Dcache.scala 34:24]
  reg [21:0] tag_57; // @[Dcache.scala 34:24]
  reg [21:0] tag_58; // @[Dcache.scala 34:24]
  reg [21:0] tag_59; // @[Dcache.scala 34:24]
  reg [21:0] tag_60; // @[Dcache.scala 34:24]
  reg [21:0] tag_61; // @[Dcache.scala 34:24]
  reg [21:0] tag_62; // @[Dcache.scala 34:24]
  reg [21:0] tag_63; // @[Dcache.scala 34:24]
  reg [3:0] offset_0; // @[Dcache.scala 35:24]
  reg [3:0] offset_1; // @[Dcache.scala 35:24]
  reg [3:0] offset_2; // @[Dcache.scala 35:24]
  reg [3:0] offset_3; // @[Dcache.scala 35:24]
  reg [3:0] offset_4; // @[Dcache.scala 35:24]
  reg [3:0] offset_5; // @[Dcache.scala 35:24]
  reg [3:0] offset_6; // @[Dcache.scala 35:24]
  reg [3:0] offset_7; // @[Dcache.scala 35:24]
  reg [3:0] offset_8; // @[Dcache.scala 35:24]
  reg [3:0] offset_9; // @[Dcache.scala 35:24]
  reg [3:0] offset_10; // @[Dcache.scala 35:24]
  reg [3:0] offset_11; // @[Dcache.scala 35:24]
  reg [3:0] offset_12; // @[Dcache.scala 35:24]
  reg [3:0] offset_13; // @[Dcache.scala 35:24]
  reg [3:0] offset_14; // @[Dcache.scala 35:24]
  reg [3:0] offset_15; // @[Dcache.scala 35:24]
  reg [3:0] offset_16; // @[Dcache.scala 35:24]
  reg [3:0] offset_17; // @[Dcache.scala 35:24]
  reg [3:0] offset_18; // @[Dcache.scala 35:24]
  reg [3:0] offset_19; // @[Dcache.scala 35:24]
  reg [3:0] offset_20; // @[Dcache.scala 35:24]
  reg [3:0] offset_21; // @[Dcache.scala 35:24]
  reg [3:0] offset_22; // @[Dcache.scala 35:24]
  reg [3:0] offset_23; // @[Dcache.scala 35:24]
  reg [3:0] offset_24; // @[Dcache.scala 35:24]
  reg [3:0] offset_25; // @[Dcache.scala 35:24]
  reg [3:0] offset_26; // @[Dcache.scala 35:24]
  reg [3:0] offset_27; // @[Dcache.scala 35:24]
  reg [3:0] offset_28; // @[Dcache.scala 35:24]
  reg [3:0] offset_29; // @[Dcache.scala 35:24]
  reg [3:0] offset_30; // @[Dcache.scala 35:24]
  reg [3:0] offset_31; // @[Dcache.scala 35:24]
  reg [3:0] offset_32; // @[Dcache.scala 35:24]
  reg [3:0] offset_33; // @[Dcache.scala 35:24]
  reg [3:0] offset_34; // @[Dcache.scala 35:24]
  reg [3:0] offset_35; // @[Dcache.scala 35:24]
  reg [3:0] offset_36; // @[Dcache.scala 35:24]
  reg [3:0] offset_37; // @[Dcache.scala 35:24]
  reg [3:0] offset_38; // @[Dcache.scala 35:24]
  reg [3:0] offset_39; // @[Dcache.scala 35:24]
  reg [3:0] offset_40; // @[Dcache.scala 35:24]
  reg [3:0] offset_41; // @[Dcache.scala 35:24]
  reg [3:0] offset_42; // @[Dcache.scala 35:24]
  reg [3:0] offset_43; // @[Dcache.scala 35:24]
  reg [3:0] offset_44; // @[Dcache.scala 35:24]
  reg [3:0] offset_45; // @[Dcache.scala 35:24]
  reg [3:0] offset_46; // @[Dcache.scala 35:24]
  reg [3:0] offset_47; // @[Dcache.scala 35:24]
  reg [3:0] offset_48; // @[Dcache.scala 35:24]
  reg [3:0] offset_49; // @[Dcache.scala 35:24]
  reg [3:0] offset_50; // @[Dcache.scala 35:24]
  reg [3:0] offset_51; // @[Dcache.scala 35:24]
  reg [3:0] offset_52; // @[Dcache.scala 35:24]
  reg [3:0] offset_53; // @[Dcache.scala 35:24]
  reg [3:0] offset_54; // @[Dcache.scala 35:24]
  reg [3:0] offset_55; // @[Dcache.scala 35:24]
  reg [3:0] offset_56; // @[Dcache.scala 35:24]
  reg [3:0] offset_57; // @[Dcache.scala 35:24]
  reg [3:0] offset_58; // @[Dcache.scala 35:24]
  reg [3:0] offset_59; // @[Dcache.scala 35:24]
  reg [3:0] offset_60; // @[Dcache.scala 35:24]
  reg [3:0] offset_61; // @[Dcache.scala 35:24]
  reg [3:0] offset_62; // @[Dcache.scala 35:24]
  reg [3:0] offset_63; // @[Dcache.scala 35:24]
  reg  valid_0; // @[Dcache.scala 36:24]
  reg  valid_1; // @[Dcache.scala 36:24]
  reg  valid_2; // @[Dcache.scala 36:24]
  reg  valid_3; // @[Dcache.scala 36:24]
  reg  valid_4; // @[Dcache.scala 36:24]
  reg  valid_5; // @[Dcache.scala 36:24]
  reg  valid_6; // @[Dcache.scala 36:24]
  reg  valid_7; // @[Dcache.scala 36:24]
  reg  valid_8; // @[Dcache.scala 36:24]
  reg  valid_9; // @[Dcache.scala 36:24]
  reg  valid_10; // @[Dcache.scala 36:24]
  reg  valid_11; // @[Dcache.scala 36:24]
  reg  valid_12; // @[Dcache.scala 36:24]
  reg  valid_13; // @[Dcache.scala 36:24]
  reg  valid_14; // @[Dcache.scala 36:24]
  reg  valid_15; // @[Dcache.scala 36:24]
  reg  valid_16; // @[Dcache.scala 36:24]
  reg  valid_17; // @[Dcache.scala 36:24]
  reg  valid_18; // @[Dcache.scala 36:24]
  reg  valid_19; // @[Dcache.scala 36:24]
  reg  valid_20; // @[Dcache.scala 36:24]
  reg  valid_21; // @[Dcache.scala 36:24]
  reg  valid_22; // @[Dcache.scala 36:24]
  reg  valid_23; // @[Dcache.scala 36:24]
  reg  valid_24; // @[Dcache.scala 36:24]
  reg  valid_25; // @[Dcache.scala 36:24]
  reg  valid_26; // @[Dcache.scala 36:24]
  reg  valid_27; // @[Dcache.scala 36:24]
  reg  valid_28; // @[Dcache.scala 36:24]
  reg  valid_29; // @[Dcache.scala 36:24]
  reg  valid_30; // @[Dcache.scala 36:24]
  reg  valid_31; // @[Dcache.scala 36:24]
  reg  valid_32; // @[Dcache.scala 36:24]
  reg  valid_33; // @[Dcache.scala 36:24]
  reg  valid_34; // @[Dcache.scala 36:24]
  reg  valid_35; // @[Dcache.scala 36:24]
  reg  valid_36; // @[Dcache.scala 36:24]
  reg  valid_37; // @[Dcache.scala 36:24]
  reg  valid_38; // @[Dcache.scala 36:24]
  reg  valid_39; // @[Dcache.scala 36:24]
  reg  valid_40; // @[Dcache.scala 36:24]
  reg  valid_41; // @[Dcache.scala 36:24]
  reg  valid_42; // @[Dcache.scala 36:24]
  reg  valid_43; // @[Dcache.scala 36:24]
  reg  valid_44; // @[Dcache.scala 36:24]
  reg  valid_45; // @[Dcache.scala 36:24]
  reg  valid_46; // @[Dcache.scala 36:24]
  reg  valid_47; // @[Dcache.scala 36:24]
  reg  valid_48; // @[Dcache.scala 36:24]
  reg  valid_49; // @[Dcache.scala 36:24]
  reg  valid_50; // @[Dcache.scala 36:24]
  reg  valid_51; // @[Dcache.scala 36:24]
  reg  valid_52; // @[Dcache.scala 36:24]
  reg  valid_53; // @[Dcache.scala 36:24]
  reg  valid_54; // @[Dcache.scala 36:24]
  reg  valid_55; // @[Dcache.scala 36:24]
  reg  valid_56; // @[Dcache.scala 36:24]
  reg  valid_57; // @[Dcache.scala 36:24]
  reg  valid_58; // @[Dcache.scala 36:24]
  reg  valid_59; // @[Dcache.scala 36:24]
  reg  valid_60; // @[Dcache.scala 36:24]
  reg  valid_61; // @[Dcache.scala 36:24]
  reg  valid_62; // @[Dcache.scala 36:24]
  reg  valid_63; // @[Dcache.scala 36:24]
  reg  dirty_0; // @[Dcache.scala 37:24]
  reg  dirty_1; // @[Dcache.scala 37:24]
  reg  dirty_2; // @[Dcache.scala 37:24]
  reg  dirty_3; // @[Dcache.scala 37:24]
  reg  dirty_4; // @[Dcache.scala 37:24]
  reg  dirty_5; // @[Dcache.scala 37:24]
  reg  dirty_6; // @[Dcache.scala 37:24]
  reg  dirty_7; // @[Dcache.scala 37:24]
  reg  dirty_8; // @[Dcache.scala 37:24]
  reg  dirty_9; // @[Dcache.scala 37:24]
  reg  dirty_10; // @[Dcache.scala 37:24]
  reg  dirty_11; // @[Dcache.scala 37:24]
  reg  dirty_12; // @[Dcache.scala 37:24]
  reg  dirty_13; // @[Dcache.scala 37:24]
  reg  dirty_14; // @[Dcache.scala 37:24]
  reg  dirty_15; // @[Dcache.scala 37:24]
  reg  dirty_16; // @[Dcache.scala 37:24]
  reg  dirty_17; // @[Dcache.scala 37:24]
  reg  dirty_18; // @[Dcache.scala 37:24]
  reg  dirty_19; // @[Dcache.scala 37:24]
  reg  dirty_20; // @[Dcache.scala 37:24]
  reg  dirty_21; // @[Dcache.scala 37:24]
  reg  dirty_22; // @[Dcache.scala 37:24]
  reg  dirty_23; // @[Dcache.scala 37:24]
  reg  dirty_24; // @[Dcache.scala 37:24]
  reg  dirty_25; // @[Dcache.scala 37:24]
  reg  dirty_26; // @[Dcache.scala 37:24]
  reg  dirty_27; // @[Dcache.scala 37:24]
  reg  dirty_28; // @[Dcache.scala 37:24]
  reg  dirty_29; // @[Dcache.scala 37:24]
  reg  dirty_30; // @[Dcache.scala 37:24]
  reg  dirty_31; // @[Dcache.scala 37:24]
  reg  dirty_32; // @[Dcache.scala 37:24]
  reg  dirty_33; // @[Dcache.scala 37:24]
  reg  dirty_34; // @[Dcache.scala 37:24]
  reg  dirty_35; // @[Dcache.scala 37:24]
  reg  dirty_36; // @[Dcache.scala 37:24]
  reg  dirty_37; // @[Dcache.scala 37:24]
  reg  dirty_38; // @[Dcache.scala 37:24]
  reg  dirty_39; // @[Dcache.scala 37:24]
  reg  dirty_40; // @[Dcache.scala 37:24]
  reg  dirty_41; // @[Dcache.scala 37:24]
  reg  dirty_42; // @[Dcache.scala 37:24]
  reg  dirty_43; // @[Dcache.scala 37:24]
  reg  dirty_44; // @[Dcache.scala 37:24]
  reg  dirty_45; // @[Dcache.scala 37:24]
  reg  dirty_46; // @[Dcache.scala 37:24]
  reg  dirty_47; // @[Dcache.scala 37:24]
  reg  dirty_48; // @[Dcache.scala 37:24]
  reg  dirty_49; // @[Dcache.scala 37:24]
  reg  dirty_50; // @[Dcache.scala 37:24]
  reg  dirty_51; // @[Dcache.scala 37:24]
  reg  dirty_52; // @[Dcache.scala 37:24]
  reg  dirty_53; // @[Dcache.scala 37:24]
  reg  dirty_54; // @[Dcache.scala 37:24]
  reg  dirty_55; // @[Dcache.scala 37:24]
  reg  dirty_56; // @[Dcache.scala 37:24]
  reg  dirty_57; // @[Dcache.scala 37:24]
  reg  dirty_58; // @[Dcache.scala 37:24]
  reg  dirty_59; // @[Dcache.scala 37:24]
  reg  dirty_60; // @[Dcache.scala 37:24]
  reg  dirty_61; // @[Dcache.scala 37:24]
  reg  dirty_62; // @[Dcache.scala 37:24]
  reg  dirty_63; // @[Dcache.scala 37:24]
  wire  _T = 3'h0 == state; // @[Conditional.scala 37:30]
  wire  _T_2 = 3'h1 == state; // @[Conditional.scala 37:30]
  wire  _T_4 = 3'h2 == state; // @[Conditional.scala 37:30]
  reg [31:0] reg_data_addr; // @[Dcache.scala 66:32]
  wire  _T_5 = 3'h4 == state; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_1115 = io_axi_data_data_ready ? reg_data_addr : 32'h0; // @[Dcache.scala 191:23 Dcache.scala 203:12]
  wire  _T_7 = 3'h5 == state; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_1374 = _T_7 ? reg_data_addr : 32'h0; // @[Conditional.scala 39:67 Dcache.scala 219:12]
  wire [31:0] _GEN_1393 = _T_5 ? _GEN_1115 : _GEN_1374; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_1650 = _T_4 ? reg_data_addr : _GEN_1393; // @[Conditional.scala 39:67 Dcache.scala 162:12]
  wire [31:0] _GEN_1920 = _T_2 ? io_core_data_data_addr_r : _GEN_1650; // @[Conditional.scala 39:67 Dcache.scala 120:19]
  wire [31:0] req_addr = _T ? 32'h0 : _GEN_1920; // @[Conditional.scala 40:58]
  wire [21:0] req_tag = req_addr[31:10]; // @[Dcache.scala 46:26]
  wire [5:0] req_index = req_addr[9:4]; // @[Dcache.scala 47:26]
  wire [3:0] req_offset = req_addr[3:0]; // @[Dcache.scala 48:26]
  wire [21:0] _GEN_1 = 6'h1 == req_index ? tag_1 : tag_0; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_2 = 6'h2 == req_index ? tag_2 : _GEN_1; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_3 = 6'h3 == req_index ? tag_3 : _GEN_2; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_4 = 6'h4 == req_index ? tag_4 : _GEN_3; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_5 = 6'h5 == req_index ? tag_5 : _GEN_4; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_6 = 6'h6 == req_index ? tag_6 : _GEN_5; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_7 = 6'h7 == req_index ? tag_7 : _GEN_6; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_8 = 6'h8 == req_index ? tag_8 : _GEN_7; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_9 = 6'h9 == req_index ? tag_9 : _GEN_8; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_10 = 6'ha == req_index ? tag_10 : _GEN_9; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_11 = 6'hb == req_index ? tag_11 : _GEN_10; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_12 = 6'hc == req_index ? tag_12 : _GEN_11; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_13 = 6'hd == req_index ? tag_13 : _GEN_12; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_14 = 6'he == req_index ? tag_14 : _GEN_13; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_15 = 6'hf == req_index ? tag_15 : _GEN_14; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_16 = 6'h10 == req_index ? tag_16 : _GEN_15; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_17 = 6'h11 == req_index ? tag_17 : _GEN_16; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_18 = 6'h12 == req_index ? tag_18 : _GEN_17; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_19 = 6'h13 == req_index ? tag_19 : _GEN_18; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_20 = 6'h14 == req_index ? tag_20 : _GEN_19; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_21 = 6'h15 == req_index ? tag_21 : _GEN_20; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_22 = 6'h16 == req_index ? tag_22 : _GEN_21; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_23 = 6'h17 == req_index ? tag_23 : _GEN_22; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_24 = 6'h18 == req_index ? tag_24 : _GEN_23; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_25 = 6'h19 == req_index ? tag_25 : _GEN_24; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_26 = 6'h1a == req_index ? tag_26 : _GEN_25; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_27 = 6'h1b == req_index ? tag_27 : _GEN_26; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_28 = 6'h1c == req_index ? tag_28 : _GEN_27; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_29 = 6'h1d == req_index ? tag_29 : _GEN_28; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_30 = 6'h1e == req_index ? tag_30 : _GEN_29; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_31 = 6'h1f == req_index ? tag_31 : _GEN_30; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_32 = 6'h20 == req_index ? tag_32 : _GEN_31; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_33 = 6'h21 == req_index ? tag_33 : _GEN_32; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_34 = 6'h22 == req_index ? tag_34 : _GEN_33; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_35 = 6'h23 == req_index ? tag_35 : _GEN_34; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_36 = 6'h24 == req_index ? tag_36 : _GEN_35; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_37 = 6'h25 == req_index ? tag_37 : _GEN_36; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_38 = 6'h26 == req_index ? tag_38 : _GEN_37; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_39 = 6'h27 == req_index ? tag_39 : _GEN_38; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_40 = 6'h28 == req_index ? tag_40 : _GEN_39; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_41 = 6'h29 == req_index ? tag_41 : _GEN_40; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_42 = 6'h2a == req_index ? tag_42 : _GEN_41; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_43 = 6'h2b == req_index ? tag_43 : _GEN_42; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_44 = 6'h2c == req_index ? tag_44 : _GEN_43; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_45 = 6'h2d == req_index ? tag_45 : _GEN_44; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_46 = 6'h2e == req_index ? tag_46 : _GEN_45; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_47 = 6'h2f == req_index ? tag_47 : _GEN_46; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_48 = 6'h30 == req_index ? tag_48 : _GEN_47; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_49 = 6'h31 == req_index ? tag_49 : _GEN_48; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_50 = 6'h32 == req_index ? tag_50 : _GEN_49; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_51 = 6'h33 == req_index ? tag_51 : _GEN_50; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_52 = 6'h34 == req_index ? tag_52 : _GEN_51; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_53 = 6'h35 == req_index ? tag_53 : _GEN_52; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_54 = 6'h36 == req_index ? tag_54 : _GEN_53; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_55 = 6'h37 == req_index ? tag_55 : _GEN_54; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_56 = 6'h38 == req_index ? tag_56 : _GEN_55; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_57 = 6'h39 == req_index ? tag_57 : _GEN_56; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_58 = 6'h3a == req_index ? tag_58 : _GEN_57; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_59 = 6'h3b == req_index ? tag_59 : _GEN_58; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_60 = 6'h3c == req_index ? tag_60 : _GEN_59; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_61 = 6'h3d == req_index ? tag_61 : _GEN_60; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_62 = 6'h3e == req_index ? tag_62 : _GEN_61; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire [21:0] _GEN_63 = 6'h3f == req_index ? tag_63 : _GEN_62; // @[Dcache.scala 54:36 Dcache.scala 54:36]
  wire  _GEN_65 = 6'h1 == req_index ? valid_1 : valid_0; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_66 = 6'h2 == req_index ? valid_2 : _GEN_65; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_67 = 6'h3 == req_index ? valid_3 : _GEN_66; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_68 = 6'h4 == req_index ? valid_4 : _GEN_67; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_69 = 6'h5 == req_index ? valid_5 : _GEN_68; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_70 = 6'h6 == req_index ? valid_6 : _GEN_69; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_71 = 6'h7 == req_index ? valid_7 : _GEN_70; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_72 = 6'h8 == req_index ? valid_8 : _GEN_71; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_73 = 6'h9 == req_index ? valid_9 : _GEN_72; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_74 = 6'ha == req_index ? valid_10 : _GEN_73; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_75 = 6'hb == req_index ? valid_11 : _GEN_74; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_76 = 6'hc == req_index ? valid_12 : _GEN_75; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_77 = 6'hd == req_index ? valid_13 : _GEN_76; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_78 = 6'he == req_index ? valid_14 : _GEN_77; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_79 = 6'hf == req_index ? valid_15 : _GEN_78; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_80 = 6'h10 == req_index ? valid_16 : _GEN_79; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_81 = 6'h11 == req_index ? valid_17 : _GEN_80; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_82 = 6'h12 == req_index ? valid_18 : _GEN_81; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_83 = 6'h13 == req_index ? valid_19 : _GEN_82; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_84 = 6'h14 == req_index ? valid_20 : _GEN_83; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_85 = 6'h15 == req_index ? valid_21 : _GEN_84; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_86 = 6'h16 == req_index ? valid_22 : _GEN_85; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_87 = 6'h17 == req_index ? valid_23 : _GEN_86; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_88 = 6'h18 == req_index ? valid_24 : _GEN_87; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_89 = 6'h19 == req_index ? valid_25 : _GEN_88; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_90 = 6'h1a == req_index ? valid_26 : _GEN_89; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_91 = 6'h1b == req_index ? valid_27 : _GEN_90; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_92 = 6'h1c == req_index ? valid_28 : _GEN_91; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_93 = 6'h1d == req_index ? valid_29 : _GEN_92; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_94 = 6'h1e == req_index ? valid_30 : _GEN_93; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_95 = 6'h1f == req_index ? valid_31 : _GEN_94; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_96 = 6'h20 == req_index ? valid_32 : _GEN_95; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_97 = 6'h21 == req_index ? valid_33 : _GEN_96; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_98 = 6'h22 == req_index ? valid_34 : _GEN_97; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_99 = 6'h23 == req_index ? valid_35 : _GEN_98; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_100 = 6'h24 == req_index ? valid_36 : _GEN_99; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_101 = 6'h25 == req_index ? valid_37 : _GEN_100; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_102 = 6'h26 == req_index ? valid_38 : _GEN_101; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_103 = 6'h27 == req_index ? valid_39 : _GEN_102; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_104 = 6'h28 == req_index ? valid_40 : _GEN_103; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_105 = 6'h29 == req_index ? valid_41 : _GEN_104; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_106 = 6'h2a == req_index ? valid_42 : _GEN_105; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_107 = 6'h2b == req_index ? valid_43 : _GEN_106; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_108 = 6'h2c == req_index ? valid_44 : _GEN_107; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_109 = 6'h2d == req_index ? valid_45 : _GEN_108; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_110 = 6'h2e == req_index ? valid_46 : _GEN_109; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_111 = 6'h2f == req_index ? valid_47 : _GEN_110; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_112 = 6'h30 == req_index ? valid_48 : _GEN_111; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_113 = 6'h31 == req_index ? valid_49 : _GEN_112; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_114 = 6'h32 == req_index ? valid_50 : _GEN_113; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_115 = 6'h33 == req_index ? valid_51 : _GEN_114; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_116 = 6'h34 == req_index ? valid_52 : _GEN_115; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_117 = 6'h35 == req_index ? valid_53 : _GEN_116; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_118 = 6'h36 == req_index ? valid_54 : _GEN_117; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_119 = 6'h37 == req_index ? valid_55 : _GEN_118; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_120 = 6'h38 == req_index ? valid_56 : _GEN_119; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_121 = 6'h39 == req_index ? valid_57 : _GEN_120; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_122 = 6'h3a == req_index ? valid_58 : _GEN_121; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_123 = 6'h3b == req_index ? valid_59 : _GEN_122; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_124 = 6'h3c == req_index ? valid_60 : _GEN_123; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_125 = 6'h3d == req_index ? valid_61 : _GEN_124; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_126 = 6'h3e == req_index ? valid_62 : _GEN_125; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _GEN_127 = 6'h3f == req_index ? valid_63 : _GEN_126; // @[Dcache.scala 54:49 Dcache.scala 54:49]
  wire  _cache_hit_T_2 = state == 3'h1; // @[Dcache.scala 54:78]
  wire  cache_hit = _GEN_63 == req_tag & _GEN_127 & state == 3'h1; // @[Dcache.scala 54:69]
  wire  _GEN_129 = 6'h1 == req_index ? dirty_1 : dirty_0; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_130 = 6'h2 == req_index ? dirty_2 : _GEN_129; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_131 = 6'h3 == req_index ? dirty_3 : _GEN_130; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_132 = 6'h4 == req_index ? dirty_4 : _GEN_131; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_133 = 6'h5 == req_index ? dirty_5 : _GEN_132; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_134 = 6'h6 == req_index ? dirty_6 : _GEN_133; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_135 = 6'h7 == req_index ? dirty_7 : _GEN_134; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_136 = 6'h8 == req_index ? dirty_8 : _GEN_135; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_137 = 6'h9 == req_index ? dirty_9 : _GEN_136; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_138 = 6'ha == req_index ? dirty_10 : _GEN_137; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_139 = 6'hb == req_index ? dirty_11 : _GEN_138; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_140 = 6'hc == req_index ? dirty_12 : _GEN_139; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_141 = 6'hd == req_index ? dirty_13 : _GEN_140; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_142 = 6'he == req_index ? dirty_14 : _GEN_141; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_143 = 6'hf == req_index ? dirty_15 : _GEN_142; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_144 = 6'h10 == req_index ? dirty_16 : _GEN_143; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_145 = 6'h11 == req_index ? dirty_17 : _GEN_144; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_146 = 6'h12 == req_index ? dirty_18 : _GEN_145; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_147 = 6'h13 == req_index ? dirty_19 : _GEN_146; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_148 = 6'h14 == req_index ? dirty_20 : _GEN_147; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_149 = 6'h15 == req_index ? dirty_21 : _GEN_148; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_150 = 6'h16 == req_index ? dirty_22 : _GEN_149; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_151 = 6'h17 == req_index ? dirty_23 : _GEN_150; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_152 = 6'h18 == req_index ? dirty_24 : _GEN_151; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_153 = 6'h19 == req_index ? dirty_25 : _GEN_152; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_154 = 6'h1a == req_index ? dirty_26 : _GEN_153; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_155 = 6'h1b == req_index ? dirty_27 : _GEN_154; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_156 = 6'h1c == req_index ? dirty_28 : _GEN_155; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_157 = 6'h1d == req_index ? dirty_29 : _GEN_156; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_158 = 6'h1e == req_index ? dirty_30 : _GEN_157; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_159 = 6'h1f == req_index ? dirty_31 : _GEN_158; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_160 = 6'h20 == req_index ? dirty_32 : _GEN_159; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_161 = 6'h21 == req_index ? dirty_33 : _GEN_160; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_162 = 6'h22 == req_index ? dirty_34 : _GEN_161; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_163 = 6'h23 == req_index ? dirty_35 : _GEN_162; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_164 = 6'h24 == req_index ? dirty_36 : _GEN_163; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_165 = 6'h25 == req_index ? dirty_37 : _GEN_164; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_166 = 6'h26 == req_index ? dirty_38 : _GEN_165; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_167 = 6'h27 == req_index ? dirty_39 : _GEN_166; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_168 = 6'h28 == req_index ? dirty_40 : _GEN_167; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_169 = 6'h29 == req_index ? dirty_41 : _GEN_168; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_170 = 6'h2a == req_index ? dirty_42 : _GEN_169; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_171 = 6'h2b == req_index ? dirty_43 : _GEN_170; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_172 = 6'h2c == req_index ? dirty_44 : _GEN_171; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_173 = 6'h2d == req_index ? dirty_45 : _GEN_172; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_174 = 6'h2e == req_index ? dirty_46 : _GEN_173; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_175 = 6'h2f == req_index ? dirty_47 : _GEN_174; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_176 = 6'h30 == req_index ? dirty_48 : _GEN_175; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_177 = 6'h31 == req_index ? dirty_49 : _GEN_176; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_178 = 6'h32 == req_index ? dirty_50 : _GEN_177; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_179 = 6'h33 == req_index ? dirty_51 : _GEN_178; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_180 = 6'h34 == req_index ? dirty_52 : _GEN_179; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_181 = 6'h35 == req_index ? dirty_53 : _GEN_180; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_182 = 6'h36 == req_index ? dirty_54 : _GEN_181; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_183 = 6'h37 == req_index ? dirty_55 : _GEN_182; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_184 = 6'h38 == req_index ? dirty_56 : _GEN_183; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_185 = 6'h39 == req_index ? dirty_57 : _GEN_184; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_186 = 6'h3a == req_index ? dirty_58 : _GEN_185; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_187 = 6'h3b == req_index ? dirty_59 : _GEN_186; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_188 = 6'h3c == req_index ? dirty_60 : _GEN_187; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_189 = 6'h3d == req_index ? dirty_61 : _GEN_188; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_190 = 6'h3e == req_index ? dirty_62 : _GEN_189; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  _GEN_191 = 6'h3f == req_index ? dirty_63 : _GEN_190; // @[Dcache.scala 55:38 Dcache.scala 55:38]
  wire  cache_dirty = _GEN_191 & _cache_hit_T_2; // @[Dcache.scala 55:38]
  reg  reg_cache_fill; // @[Dcache.scala 58:31]
  reg  reg_data_req_w; // @[Dcache.scala 65:32]
  reg [63:0] reg_data_strb; // @[Dcache.scala 68:32]
  reg [127:0] reg_data_write; // @[Dcache.scala 69:32]
  reg  data_ready2core; // @[Dcache.scala 78:33]
  wire [127:0] cache_data_out = dcache_Q; // @[Dcache.scala 57:28 Dcache.scala 258:19]
  wire  _GEN_195 = 6'h0 == req_index | valid_0; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_196 = 6'h1 == req_index | valid_1; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_197 = 6'h2 == req_index | valid_2; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_198 = 6'h3 == req_index | valid_3; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_199 = 6'h4 == req_index | valid_4; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_200 = 6'h5 == req_index | valid_5; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_201 = 6'h6 == req_index | valid_6; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_202 = 6'h7 == req_index | valid_7; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_203 = 6'h8 == req_index | valid_8; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_204 = 6'h9 == req_index | valid_9; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_205 = 6'ha == req_index | valid_10; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_206 = 6'hb == req_index | valid_11; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_207 = 6'hc == req_index | valid_12; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_208 = 6'hd == req_index | valid_13; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_209 = 6'he == req_index | valid_14; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_210 = 6'hf == req_index | valid_15; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_211 = 6'h10 == req_index | valid_16; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_212 = 6'h11 == req_index | valid_17; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_213 = 6'h12 == req_index | valid_18; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_214 = 6'h13 == req_index | valid_19; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_215 = 6'h14 == req_index | valid_20; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_216 = 6'h15 == req_index | valid_21; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_217 = 6'h16 == req_index | valid_22; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_218 = 6'h17 == req_index | valid_23; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_219 = 6'h18 == req_index | valid_24; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_220 = 6'h19 == req_index | valid_25; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_221 = 6'h1a == req_index | valid_26; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_222 = 6'h1b == req_index | valid_27; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_223 = 6'h1c == req_index | valid_28; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_224 = 6'h1d == req_index | valid_29; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_225 = 6'h1e == req_index | valid_30; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_226 = 6'h1f == req_index | valid_31; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_227 = 6'h20 == req_index | valid_32; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_228 = 6'h21 == req_index | valid_33; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_229 = 6'h22 == req_index | valid_34; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_230 = 6'h23 == req_index | valid_35; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_231 = 6'h24 == req_index | valid_36; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_232 = 6'h25 == req_index | valid_37; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_233 = 6'h26 == req_index | valid_38; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_234 = 6'h27 == req_index | valid_39; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_235 = 6'h28 == req_index | valid_40; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_236 = 6'h29 == req_index | valid_41; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_237 = 6'h2a == req_index | valid_42; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_238 = 6'h2b == req_index | valid_43; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_239 = 6'h2c == req_index | valid_44; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_240 = 6'h2d == req_index | valid_45; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_241 = 6'h2e == req_index | valid_46; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_242 = 6'h2f == req_index | valid_47; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_243 = 6'h30 == req_index | valid_48; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_244 = 6'h31 == req_index | valid_49; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_245 = 6'h32 == req_index | valid_50; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_246 = 6'h33 == req_index | valid_51; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_247 = 6'h34 == req_index | valid_52; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_248 = 6'h35 == req_index | valid_53; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_249 = 6'h36 == req_index | valid_54; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_250 = 6'h37 == req_index | valid_55; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_251 = 6'h38 == req_index | valid_56; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_252 = 6'h39 == req_index | valid_57; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_253 = 6'h3a == req_index | valid_58; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_254 = 6'h3b == req_index | valid_59; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_255 = 6'h3c == req_index | valid_60; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_256 = 6'h3d == req_index | valid_61; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_257 = 6'h3e == req_index | valid_62; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire  _GEN_258 = 6'h3f == req_index | valid_63; // @[Dcache.scala 128:23 Dcache.scala 128:23 Dcache.scala 36:24]
  wire [21:0] _GEN_259 = 6'h0 == req_index ? req_tag : tag_0; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_260 = 6'h1 == req_index ? req_tag : tag_1; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_261 = 6'h2 == req_index ? req_tag : tag_2; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_262 = 6'h3 == req_index ? req_tag : tag_3; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_263 = 6'h4 == req_index ? req_tag : tag_4; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_264 = 6'h5 == req_index ? req_tag : tag_5; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_265 = 6'h6 == req_index ? req_tag : tag_6; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_266 = 6'h7 == req_index ? req_tag : tag_7; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_267 = 6'h8 == req_index ? req_tag : tag_8; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_268 = 6'h9 == req_index ? req_tag : tag_9; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_269 = 6'ha == req_index ? req_tag : tag_10; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_270 = 6'hb == req_index ? req_tag : tag_11; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_271 = 6'hc == req_index ? req_tag : tag_12; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_272 = 6'hd == req_index ? req_tag : tag_13; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_273 = 6'he == req_index ? req_tag : tag_14; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_274 = 6'hf == req_index ? req_tag : tag_15; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_275 = 6'h10 == req_index ? req_tag : tag_16; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_276 = 6'h11 == req_index ? req_tag : tag_17; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_277 = 6'h12 == req_index ? req_tag : tag_18; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_278 = 6'h13 == req_index ? req_tag : tag_19; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_279 = 6'h14 == req_index ? req_tag : tag_20; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_280 = 6'h15 == req_index ? req_tag : tag_21; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_281 = 6'h16 == req_index ? req_tag : tag_22; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_282 = 6'h17 == req_index ? req_tag : tag_23; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_283 = 6'h18 == req_index ? req_tag : tag_24; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_284 = 6'h19 == req_index ? req_tag : tag_25; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_285 = 6'h1a == req_index ? req_tag : tag_26; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_286 = 6'h1b == req_index ? req_tag : tag_27; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_287 = 6'h1c == req_index ? req_tag : tag_28; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_288 = 6'h1d == req_index ? req_tag : tag_29; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_289 = 6'h1e == req_index ? req_tag : tag_30; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_290 = 6'h1f == req_index ? req_tag : tag_31; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_291 = 6'h20 == req_index ? req_tag : tag_32; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_292 = 6'h21 == req_index ? req_tag : tag_33; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_293 = 6'h22 == req_index ? req_tag : tag_34; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_294 = 6'h23 == req_index ? req_tag : tag_35; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_295 = 6'h24 == req_index ? req_tag : tag_36; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_296 = 6'h25 == req_index ? req_tag : tag_37; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_297 = 6'h26 == req_index ? req_tag : tag_38; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_298 = 6'h27 == req_index ? req_tag : tag_39; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_299 = 6'h28 == req_index ? req_tag : tag_40; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_300 = 6'h29 == req_index ? req_tag : tag_41; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_301 = 6'h2a == req_index ? req_tag : tag_42; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_302 = 6'h2b == req_index ? req_tag : tag_43; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_303 = 6'h2c == req_index ? req_tag : tag_44; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_304 = 6'h2d == req_index ? req_tag : tag_45; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_305 = 6'h2e == req_index ? req_tag : tag_46; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_306 = 6'h2f == req_index ? req_tag : tag_47; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_307 = 6'h30 == req_index ? req_tag : tag_48; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_308 = 6'h31 == req_index ? req_tag : tag_49; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_309 = 6'h32 == req_index ? req_tag : tag_50; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_310 = 6'h33 == req_index ? req_tag : tag_51; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_311 = 6'h34 == req_index ? req_tag : tag_52; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_312 = 6'h35 == req_index ? req_tag : tag_53; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_313 = 6'h36 == req_index ? req_tag : tag_54; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_314 = 6'h37 == req_index ? req_tag : tag_55; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_315 = 6'h38 == req_index ? req_tag : tag_56; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_316 = 6'h39 == req_index ? req_tag : tag_57; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_317 = 6'h3a == req_index ? req_tag : tag_58; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_318 = 6'h3b == req_index ? req_tag : tag_59; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_319 = 6'h3c == req_index ? req_tag : tag_60; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_320 = 6'h3d == req_index ? req_tag : tag_61; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_321 = 6'h3e == req_index ? req_tag : tag_62; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [21:0] _GEN_322 = 6'h3f == req_index ? req_tag : tag_63; // @[Dcache.scala 129:23 Dcache.scala 129:23 Dcache.scala 34:24]
  wire [3:0] _GEN_323 = 6'h0 == req_index ? req_offset : offset_0; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_324 = 6'h1 == req_index ? req_offset : offset_1; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_325 = 6'h2 == req_index ? req_offset : offset_2; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_326 = 6'h3 == req_index ? req_offset : offset_3; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_327 = 6'h4 == req_index ? req_offset : offset_4; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_328 = 6'h5 == req_index ? req_offset : offset_5; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_329 = 6'h6 == req_index ? req_offset : offset_6; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_330 = 6'h7 == req_index ? req_offset : offset_7; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_331 = 6'h8 == req_index ? req_offset : offset_8; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_332 = 6'h9 == req_index ? req_offset : offset_9; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_333 = 6'ha == req_index ? req_offset : offset_10; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_334 = 6'hb == req_index ? req_offset : offset_11; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_335 = 6'hc == req_index ? req_offset : offset_12; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_336 = 6'hd == req_index ? req_offset : offset_13; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_337 = 6'he == req_index ? req_offset : offset_14; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_338 = 6'hf == req_index ? req_offset : offset_15; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_339 = 6'h10 == req_index ? req_offset : offset_16; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_340 = 6'h11 == req_index ? req_offset : offset_17; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_341 = 6'h12 == req_index ? req_offset : offset_18; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_342 = 6'h13 == req_index ? req_offset : offset_19; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_343 = 6'h14 == req_index ? req_offset : offset_20; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_344 = 6'h15 == req_index ? req_offset : offset_21; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_345 = 6'h16 == req_index ? req_offset : offset_22; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_346 = 6'h17 == req_index ? req_offset : offset_23; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_347 = 6'h18 == req_index ? req_offset : offset_24; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_348 = 6'h19 == req_index ? req_offset : offset_25; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_349 = 6'h1a == req_index ? req_offset : offset_26; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_350 = 6'h1b == req_index ? req_offset : offset_27; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_351 = 6'h1c == req_index ? req_offset : offset_28; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_352 = 6'h1d == req_index ? req_offset : offset_29; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_353 = 6'h1e == req_index ? req_offset : offset_30; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_354 = 6'h1f == req_index ? req_offset : offset_31; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_355 = 6'h20 == req_index ? req_offset : offset_32; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_356 = 6'h21 == req_index ? req_offset : offset_33; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_357 = 6'h22 == req_index ? req_offset : offset_34; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_358 = 6'h23 == req_index ? req_offset : offset_35; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_359 = 6'h24 == req_index ? req_offset : offset_36; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_360 = 6'h25 == req_index ? req_offset : offset_37; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_361 = 6'h26 == req_index ? req_offset : offset_38; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_362 = 6'h27 == req_index ? req_offset : offset_39; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_363 = 6'h28 == req_index ? req_offset : offset_40; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_364 = 6'h29 == req_index ? req_offset : offset_41; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_365 = 6'h2a == req_index ? req_offset : offset_42; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_366 = 6'h2b == req_index ? req_offset : offset_43; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_367 = 6'h2c == req_index ? req_offset : offset_44; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_368 = 6'h2d == req_index ? req_offset : offset_45; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_369 = 6'h2e == req_index ? req_offset : offset_46; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_370 = 6'h2f == req_index ? req_offset : offset_47; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_371 = 6'h30 == req_index ? req_offset : offset_48; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_372 = 6'h31 == req_index ? req_offset : offset_49; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_373 = 6'h32 == req_index ? req_offset : offset_50; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_374 = 6'h33 == req_index ? req_offset : offset_51; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_375 = 6'h34 == req_index ? req_offset : offset_52; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_376 = 6'h35 == req_index ? req_offset : offset_53; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_377 = 6'h36 == req_index ? req_offset : offset_54; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_378 = 6'h37 == req_index ? req_offset : offset_55; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_379 = 6'h38 == req_index ? req_offset : offset_56; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_380 = 6'h39 == req_index ? req_offset : offset_57; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_381 = 6'h3a == req_index ? req_offset : offset_58; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_382 = 6'h3b == req_index ? req_offset : offset_59; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_383 = 6'h3c == req_index ? req_offset : offset_60; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_384 = 6'h3d == req_index ? req_offset : offset_61; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_385 = 6'h3e == req_index ? req_offset : offset_62; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire [3:0] _GEN_386 = 6'h3f == req_index ? req_offset : offset_63; // @[Dcache.scala 130:23 Dcache.scala 130:23 Dcache.scala 35:24]
  wire  _GEN_387 = 6'h0 == req_index ? reg_data_req_w : dirty_0; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_388 = 6'h1 == req_index ? reg_data_req_w : dirty_1; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_389 = 6'h2 == req_index ? reg_data_req_w : dirty_2; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_390 = 6'h3 == req_index ? reg_data_req_w : dirty_3; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_391 = 6'h4 == req_index ? reg_data_req_w : dirty_4; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_392 = 6'h5 == req_index ? reg_data_req_w : dirty_5; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_393 = 6'h6 == req_index ? reg_data_req_w : dirty_6; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_394 = 6'h7 == req_index ? reg_data_req_w : dirty_7; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_395 = 6'h8 == req_index ? reg_data_req_w : dirty_8; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_396 = 6'h9 == req_index ? reg_data_req_w : dirty_9; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_397 = 6'ha == req_index ? reg_data_req_w : dirty_10; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_398 = 6'hb == req_index ? reg_data_req_w : dirty_11; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_399 = 6'hc == req_index ? reg_data_req_w : dirty_12; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_400 = 6'hd == req_index ? reg_data_req_w : dirty_13; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_401 = 6'he == req_index ? reg_data_req_w : dirty_14; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_402 = 6'hf == req_index ? reg_data_req_w : dirty_15; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_403 = 6'h10 == req_index ? reg_data_req_w : dirty_16; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_404 = 6'h11 == req_index ? reg_data_req_w : dirty_17; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_405 = 6'h12 == req_index ? reg_data_req_w : dirty_18; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_406 = 6'h13 == req_index ? reg_data_req_w : dirty_19; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_407 = 6'h14 == req_index ? reg_data_req_w : dirty_20; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_408 = 6'h15 == req_index ? reg_data_req_w : dirty_21; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_409 = 6'h16 == req_index ? reg_data_req_w : dirty_22; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_410 = 6'h17 == req_index ? reg_data_req_w : dirty_23; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_411 = 6'h18 == req_index ? reg_data_req_w : dirty_24; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_412 = 6'h19 == req_index ? reg_data_req_w : dirty_25; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_413 = 6'h1a == req_index ? reg_data_req_w : dirty_26; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_414 = 6'h1b == req_index ? reg_data_req_w : dirty_27; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_415 = 6'h1c == req_index ? reg_data_req_w : dirty_28; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_416 = 6'h1d == req_index ? reg_data_req_w : dirty_29; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_417 = 6'h1e == req_index ? reg_data_req_w : dirty_30; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_418 = 6'h1f == req_index ? reg_data_req_w : dirty_31; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_419 = 6'h20 == req_index ? reg_data_req_w : dirty_32; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_420 = 6'h21 == req_index ? reg_data_req_w : dirty_33; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_421 = 6'h22 == req_index ? reg_data_req_w : dirty_34; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_422 = 6'h23 == req_index ? reg_data_req_w : dirty_35; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_423 = 6'h24 == req_index ? reg_data_req_w : dirty_36; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_424 = 6'h25 == req_index ? reg_data_req_w : dirty_37; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_425 = 6'h26 == req_index ? reg_data_req_w : dirty_38; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_426 = 6'h27 == req_index ? reg_data_req_w : dirty_39; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_427 = 6'h28 == req_index ? reg_data_req_w : dirty_40; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_428 = 6'h29 == req_index ? reg_data_req_w : dirty_41; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_429 = 6'h2a == req_index ? reg_data_req_w : dirty_42; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_430 = 6'h2b == req_index ? reg_data_req_w : dirty_43; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_431 = 6'h2c == req_index ? reg_data_req_w : dirty_44; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_432 = 6'h2d == req_index ? reg_data_req_w : dirty_45; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_433 = 6'h2e == req_index ? reg_data_req_w : dirty_46; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_434 = 6'h2f == req_index ? reg_data_req_w : dirty_47; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_435 = 6'h30 == req_index ? reg_data_req_w : dirty_48; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_436 = 6'h31 == req_index ? reg_data_req_w : dirty_49; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_437 = 6'h32 == req_index ? reg_data_req_w : dirty_50; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_438 = 6'h33 == req_index ? reg_data_req_w : dirty_51; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_439 = 6'h34 == req_index ? reg_data_req_w : dirty_52; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_440 = 6'h35 == req_index ? reg_data_req_w : dirty_53; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_441 = 6'h36 == req_index ? reg_data_req_w : dirty_54; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_442 = 6'h37 == req_index ? reg_data_req_w : dirty_55; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_443 = 6'h38 == req_index ? reg_data_req_w : dirty_56; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_444 = 6'h39 == req_index ? reg_data_req_w : dirty_57; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_445 = 6'h3a == req_index ? reg_data_req_w : dirty_58; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_446 = 6'h3b == req_index ? reg_data_req_w : dirty_59; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_447 = 6'h3c == req_index ? reg_data_req_w : dirty_60; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_448 = 6'h3d == req_index ? reg_data_req_w : dirty_61; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_449 = 6'h3e == req_index ? reg_data_req_w : dirty_62; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_450 = 6'h3f == req_index ? reg_data_req_w : dirty_63; // @[Dcache.scala 142:28 Dcache.scala 142:28 Dcache.scala 37:24]
  wire  _GEN_451 = ~_GEN_191 ? _GEN_387 : dirty_0; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_452 = ~_GEN_191 ? _GEN_388 : dirty_1; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_453 = ~_GEN_191 ? _GEN_389 : dirty_2; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_454 = ~_GEN_191 ? _GEN_390 : dirty_3; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_455 = ~_GEN_191 ? _GEN_391 : dirty_4; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_456 = ~_GEN_191 ? _GEN_392 : dirty_5; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_457 = ~_GEN_191 ? _GEN_393 : dirty_6; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_458 = ~_GEN_191 ? _GEN_394 : dirty_7; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_459 = ~_GEN_191 ? _GEN_395 : dirty_8; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_460 = ~_GEN_191 ? _GEN_396 : dirty_9; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_461 = ~_GEN_191 ? _GEN_397 : dirty_10; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_462 = ~_GEN_191 ? _GEN_398 : dirty_11; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_463 = ~_GEN_191 ? _GEN_399 : dirty_12; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_464 = ~_GEN_191 ? _GEN_400 : dirty_13; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_465 = ~_GEN_191 ? _GEN_401 : dirty_14; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_466 = ~_GEN_191 ? _GEN_402 : dirty_15; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_467 = ~_GEN_191 ? _GEN_403 : dirty_16; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_468 = ~_GEN_191 ? _GEN_404 : dirty_17; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_469 = ~_GEN_191 ? _GEN_405 : dirty_18; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_470 = ~_GEN_191 ? _GEN_406 : dirty_19; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_471 = ~_GEN_191 ? _GEN_407 : dirty_20; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_472 = ~_GEN_191 ? _GEN_408 : dirty_21; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_473 = ~_GEN_191 ? _GEN_409 : dirty_22; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_474 = ~_GEN_191 ? _GEN_410 : dirty_23; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_475 = ~_GEN_191 ? _GEN_411 : dirty_24; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_476 = ~_GEN_191 ? _GEN_412 : dirty_25; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_477 = ~_GEN_191 ? _GEN_413 : dirty_26; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_478 = ~_GEN_191 ? _GEN_414 : dirty_27; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_479 = ~_GEN_191 ? _GEN_415 : dirty_28; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_480 = ~_GEN_191 ? _GEN_416 : dirty_29; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_481 = ~_GEN_191 ? _GEN_417 : dirty_30; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_482 = ~_GEN_191 ? _GEN_418 : dirty_31; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_483 = ~_GEN_191 ? _GEN_419 : dirty_32; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_484 = ~_GEN_191 ? _GEN_420 : dirty_33; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_485 = ~_GEN_191 ? _GEN_421 : dirty_34; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_486 = ~_GEN_191 ? _GEN_422 : dirty_35; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_487 = ~_GEN_191 ? _GEN_423 : dirty_36; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_488 = ~_GEN_191 ? _GEN_424 : dirty_37; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_489 = ~_GEN_191 ? _GEN_425 : dirty_38; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_490 = ~_GEN_191 ? _GEN_426 : dirty_39; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_491 = ~_GEN_191 ? _GEN_427 : dirty_40; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_492 = ~_GEN_191 ? _GEN_428 : dirty_41; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_493 = ~_GEN_191 ? _GEN_429 : dirty_42; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_494 = ~_GEN_191 ? _GEN_430 : dirty_43; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_495 = ~_GEN_191 ? _GEN_431 : dirty_44; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_496 = ~_GEN_191 ? _GEN_432 : dirty_45; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_497 = ~_GEN_191 ? _GEN_433 : dirty_46; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_498 = ~_GEN_191 ? _GEN_434 : dirty_47; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_499 = ~_GEN_191 ? _GEN_435 : dirty_48; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_500 = ~_GEN_191 ? _GEN_436 : dirty_49; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_501 = ~_GEN_191 ? _GEN_437 : dirty_50; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_502 = ~_GEN_191 ? _GEN_438 : dirty_51; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_503 = ~_GEN_191 ? _GEN_439 : dirty_52; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_504 = ~_GEN_191 ? _GEN_440 : dirty_53; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_505 = ~_GEN_191 ? _GEN_441 : dirty_54; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_506 = ~_GEN_191 ? _GEN_442 : dirty_55; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_507 = ~_GEN_191 ? _GEN_443 : dirty_56; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_508 = ~_GEN_191 ? _GEN_444 : dirty_57; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_509 = ~_GEN_191 ? _GEN_445 : dirty_58; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_510 = ~_GEN_191 ? _GEN_446 : dirty_59; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_511 = ~_GEN_191 ? _GEN_447 : dirty_60; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_512 = ~_GEN_191 ? _GEN_448 : dirty_61; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_513 = ~_GEN_191 ? _GEN_449 : dirty_62; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire  _GEN_514 = ~_GEN_191 ? _GEN_450 : dirty_63; // @[Dcache.scala 141:34 Dcache.scala 37:24]
  wire [2:0] _GEN_515 = cache_dirty ? 3'h2 : 3'h4; // @[Dcache.scala 147:26 Dcache.scala 148:11 Dcache.scala 155:11]
  wire [5:0] _GEN_517 = cache_dirty ? req_index : 6'h0; // @[Dcache.scala 147:26 Dcache.scala 150:18]
  wire  _GEN_712 = cache_hit | cache_dirty; // @[Dcache.scala 125:18 Dcache.scala 133:23]
  wire [5:0] _GEN_713 = cache_hit ? req_index : _GEN_517; // @[Dcache.scala 125:18 Dcache.scala 134:23]
  wire  _GEN_714 = cache_hit & reg_data_req_w; // @[Dcache.scala 125:18 Dcache.scala 135:23]
  wire [127:0] _GEN_715 = cache_hit ? {{64'd0}, io_core_data_data_write} : 128'h0; // @[Dcache.scala 125:18 Dcache.scala 136:23]
  wire [127:0] _GEN_716 = cache_hit ? {{64'd0}, io_core_data_data_strb} : 128'h0; // @[Dcache.scala 125:18 Dcache.scala 137:23]
  wire [3:0] _GEN_783 = 6'h1 == req_index ? offset_1 : offset_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_784 = 6'h2 == req_index ? offset_2 : _GEN_783; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_785 = 6'h3 == req_index ? offset_3 : _GEN_784; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_786 = 6'h4 == req_index ? offset_4 : _GEN_785; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_787 = 6'h5 == req_index ? offset_5 : _GEN_786; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_788 = 6'h6 == req_index ? offset_6 : _GEN_787; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_789 = 6'h7 == req_index ? offset_7 : _GEN_788; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_790 = 6'h8 == req_index ? offset_8 : _GEN_789; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_791 = 6'h9 == req_index ? offset_9 : _GEN_790; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_792 = 6'ha == req_index ? offset_10 : _GEN_791; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_793 = 6'hb == req_index ? offset_11 : _GEN_792; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_794 = 6'hc == req_index ? offset_12 : _GEN_793; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_795 = 6'hd == req_index ? offset_13 : _GEN_794; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_796 = 6'he == req_index ? offset_14 : _GEN_795; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_797 = 6'hf == req_index ? offset_15 : _GEN_796; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_798 = 6'h10 == req_index ? offset_16 : _GEN_797; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_799 = 6'h11 == req_index ? offset_17 : _GEN_798; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_800 = 6'h12 == req_index ? offset_18 : _GEN_799; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_801 = 6'h13 == req_index ? offset_19 : _GEN_800; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_802 = 6'h14 == req_index ? offset_20 : _GEN_801; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_803 = 6'h15 == req_index ? offset_21 : _GEN_802; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_804 = 6'h16 == req_index ? offset_22 : _GEN_803; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_805 = 6'h17 == req_index ? offset_23 : _GEN_804; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_806 = 6'h18 == req_index ? offset_24 : _GEN_805; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_807 = 6'h19 == req_index ? offset_25 : _GEN_806; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_808 = 6'h1a == req_index ? offset_26 : _GEN_807; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_809 = 6'h1b == req_index ? offset_27 : _GEN_808; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_810 = 6'h1c == req_index ? offset_28 : _GEN_809; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_811 = 6'h1d == req_index ? offset_29 : _GEN_810; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_812 = 6'h1e == req_index ? offset_30 : _GEN_811; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_813 = 6'h1f == req_index ? offset_31 : _GEN_812; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_814 = 6'h20 == req_index ? offset_32 : _GEN_813; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_815 = 6'h21 == req_index ? offset_33 : _GEN_814; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_816 = 6'h22 == req_index ? offset_34 : _GEN_815; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_817 = 6'h23 == req_index ? offset_35 : _GEN_816; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_818 = 6'h24 == req_index ? offset_36 : _GEN_817; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_819 = 6'h25 == req_index ? offset_37 : _GEN_818; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_820 = 6'h26 == req_index ? offset_38 : _GEN_819; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_821 = 6'h27 == req_index ? offset_39 : _GEN_820; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_822 = 6'h28 == req_index ? offset_40 : _GEN_821; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_823 = 6'h29 == req_index ? offset_41 : _GEN_822; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_824 = 6'h2a == req_index ? offset_42 : _GEN_823; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_825 = 6'h2b == req_index ? offset_43 : _GEN_824; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_826 = 6'h2c == req_index ? offset_44 : _GEN_825; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_827 = 6'h2d == req_index ? offset_45 : _GEN_826; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_828 = 6'h2e == req_index ? offset_46 : _GEN_827; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_829 = 6'h2f == req_index ? offset_47 : _GEN_828; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_830 = 6'h30 == req_index ? offset_48 : _GEN_829; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_831 = 6'h31 == req_index ? offset_49 : _GEN_830; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_832 = 6'h32 == req_index ? offset_50 : _GEN_831; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_833 = 6'h33 == req_index ? offset_51 : _GEN_832; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_834 = 6'h34 == req_index ? offset_52 : _GEN_833; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_835 = 6'h35 == req_index ? offset_53 : _GEN_834; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_836 = 6'h36 == req_index ? offset_54 : _GEN_835; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_837 = 6'h37 == req_index ? offset_55 : _GEN_836; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_838 = 6'h38 == req_index ? offset_56 : _GEN_837; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_839 = 6'h39 == req_index ? offset_57 : _GEN_838; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_840 = 6'h3a == req_index ? offset_58 : _GEN_839; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_841 = 6'h3b == req_index ? offset_59 : _GEN_840; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_842 = 6'h3c == req_index ? offset_60 : _GEN_841; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_843 = 6'h3d == req_index ? offset_61 : _GEN_842; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_844 = 6'h3e == req_index ? offset_62 : _GEN_843; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [3:0] _GEN_845 = 6'h3f == req_index ? offset_63 : _GEN_844; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [31:0] _data_addr_w2axi_T = {_GEN_63,req_index,_GEN_845}; // @[Cat.scala 30:58]
  wire [63:0] _data_write2axi_T_3 = req_offset[3] ? cache_data_out[127:64] : cache_data_out[63:0]; // @[Dcache.scala 164:25]
  wire [2:0] _GEN_846 = io_axi_data_data_ready ? 3'h4 : 3'h2; // @[Dcache.scala 169:27 Dcache.scala 169:35 Dcache.scala 170:34]
  wire  _T_6 = ~reg_cache_fill; // @[Dcache.scala 177:8]
  wire [2:0] _GEN_847 = ~reg_cache_fill ? 3'h4 : 3'h5; // @[Dcache.scala 177:24 Dcache.scala 179:11 Dcache.scala 189:21]
  wire [31:0] _GEN_850 = ~reg_cache_fill ? reg_data_addr : 32'h0; // @[Dcache.scala 177:24 Dcache.scala 182:21]
  wire  _GEN_1110 = io_axi_data_data_ready | reg_cache_fill; // @[Dcache.scala 191:23 Dcache.scala 194:19 Dcache.scala 58:31]
  wire [127:0] _GEN_1112 = io_axi_data_data_ready ? io_axi_data_data_read : 128'h0; // @[Dcache.scala 191:23 Dcache.scala 198:17]
  wire [127:0] _GEN_1113 = io_axi_data_data_ready ? 128'hffffffffffffffffffffffffffffffff : 128'h0; // @[Dcache.scala 191:23 Dcache.scala 199:17]
  wire [5:0] _GEN_1114 = io_axi_data_data_ready ? reg_data_addr[9:4] : 6'h0; // @[Dcache.scala 191:23 Dcache.scala 200:17]
  wire  _GEN_1116 = io_axi_data_data_ready ? _GEN_195 : valid_0; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1117 = io_axi_data_data_ready ? _GEN_196 : valid_1; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1118 = io_axi_data_data_ready ? _GEN_197 : valid_2; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1119 = io_axi_data_data_ready ? _GEN_198 : valid_3; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1120 = io_axi_data_data_ready ? _GEN_199 : valid_4; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1121 = io_axi_data_data_ready ? _GEN_200 : valid_5; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1122 = io_axi_data_data_ready ? _GEN_201 : valid_6; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1123 = io_axi_data_data_ready ? _GEN_202 : valid_7; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1124 = io_axi_data_data_ready ? _GEN_203 : valid_8; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1125 = io_axi_data_data_ready ? _GEN_204 : valid_9; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1126 = io_axi_data_data_ready ? _GEN_205 : valid_10; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1127 = io_axi_data_data_ready ? _GEN_206 : valid_11; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1128 = io_axi_data_data_ready ? _GEN_207 : valid_12; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1129 = io_axi_data_data_ready ? _GEN_208 : valid_13; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1130 = io_axi_data_data_ready ? _GEN_209 : valid_14; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1131 = io_axi_data_data_ready ? _GEN_210 : valid_15; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1132 = io_axi_data_data_ready ? _GEN_211 : valid_16; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1133 = io_axi_data_data_ready ? _GEN_212 : valid_17; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1134 = io_axi_data_data_ready ? _GEN_213 : valid_18; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1135 = io_axi_data_data_ready ? _GEN_214 : valid_19; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1136 = io_axi_data_data_ready ? _GEN_215 : valid_20; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1137 = io_axi_data_data_ready ? _GEN_216 : valid_21; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1138 = io_axi_data_data_ready ? _GEN_217 : valid_22; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1139 = io_axi_data_data_ready ? _GEN_218 : valid_23; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1140 = io_axi_data_data_ready ? _GEN_219 : valid_24; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1141 = io_axi_data_data_ready ? _GEN_220 : valid_25; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1142 = io_axi_data_data_ready ? _GEN_221 : valid_26; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1143 = io_axi_data_data_ready ? _GEN_222 : valid_27; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1144 = io_axi_data_data_ready ? _GEN_223 : valid_28; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1145 = io_axi_data_data_ready ? _GEN_224 : valid_29; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1146 = io_axi_data_data_ready ? _GEN_225 : valid_30; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1147 = io_axi_data_data_ready ? _GEN_226 : valid_31; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1148 = io_axi_data_data_ready ? _GEN_227 : valid_32; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1149 = io_axi_data_data_ready ? _GEN_228 : valid_33; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1150 = io_axi_data_data_ready ? _GEN_229 : valid_34; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1151 = io_axi_data_data_ready ? _GEN_230 : valid_35; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1152 = io_axi_data_data_ready ? _GEN_231 : valid_36; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1153 = io_axi_data_data_ready ? _GEN_232 : valid_37; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1154 = io_axi_data_data_ready ? _GEN_233 : valid_38; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1155 = io_axi_data_data_ready ? _GEN_234 : valid_39; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1156 = io_axi_data_data_ready ? _GEN_235 : valid_40; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1157 = io_axi_data_data_ready ? _GEN_236 : valid_41; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1158 = io_axi_data_data_ready ? _GEN_237 : valid_42; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1159 = io_axi_data_data_ready ? _GEN_238 : valid_43; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1160 = io_axi_data_data_ready ? _GEN_239 : valid_44; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1161 = io_axi_data_data_ready ? _GEN_240 : valid_45; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1162 = io_axi_data_data_ready ? _GEN_241 : valid_46; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1163 = io_axi_data_data_ready ? _GEN_242 : valid_47; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1164 = io_axi_data_data_ready ? _GEN_243 : valid_48; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1165 = io_axi_data_data_ready ? _GEN_244 : valid_49; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1166 = io_axi_data_data_ready ? _GEN_245 : valid_50; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1167 = io_axi_data_data_ready ? _GEN_246 : valid_51; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1168 = io_axi_data_data_ready ? _GEN_247 : valid_52; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1169 = io_axi_data_data_ready ? _GEN_248 : valid_53; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1170 = io_axi_data_data_ready ? _GEN_249 : valid_54; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1171 = io_axi_data_data_ready ? _GEN_250 : valid_55; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1172 = io_axi_data_data_ready ? _GEN_251 : valid_56; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1173 = io_axi_data_data_ready ? _GEN_252 : valid_57; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1174 = io_axi_data_data_ready ? _GEN_253 : valid_58; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1175 = io_axi_data_data_ready ? _GEN_254 : valid_59; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1176 = io_axi_data_data_ready ? _GEN_255 : valid_60; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1177 = io_axi_data_data_ready ? _GEN_256 : valid_61; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1178 = io_axi_data_data_ready ? _GEN_257 : valid_62; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire  _GEN_1179 = io_axi_data_data_ready ? _GEN_258 : valid_63; // @[Dcache.scala 191:23 Dcache.scala 36:24]
  wire [21:0] _GEN_1180 = io_axi_data_data_ready ? _GEN_259 : tag_0; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1181 = io_axi_data_data_ready ? _GEN_260 : tag_1; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1182 = io_axi_data_data_ready ? _GEN_261 : tag_2; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1183 = io_axi_data_data_ready ? _GEN_262 : tag_3; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1184 = io_axi_data_data_ready ? _GEN_263 : tag_4; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1185 = io_axi_data_data_ready ? _GEN_264 : tag_5; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1186 = io_axi_data_data_ready ? _GEN_265 : tag_6; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1187 = io_axi_data_data_ready ? _GEN_266 : tag_7; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1188 = io_axi_data_data_ready ? _GEN_267 : tag_8; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1189 = io_axi_data_data_ready ? _GEN_268 : tag_9; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1190 = io_axi_data_data_ready ? _GEN_269 : tag_10; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1191 = io_axi_data_data_ready ? _GEN_270 : tag_11; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1192 = io_axi_data_data_ready ? _GEN_271 : tag_12; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1193 = io_axi_data_data_ready ? _GEN_272 : tag_13; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1194 = io_axi_data_data_ready ? _GEN_273 : tag_14; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1195 = io_axi_data_data_ready ? _GEN_274 : tag_15; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1196 = io_axi_data_data_ready ? _GEN_275 : tag_16; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1197 = io_axi_data_data_ready ? _GEN_276 : tag_17; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1198 = io_axi_data_data_ready ? _GEN_277 : tag_18; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1199 = io_axi_data_data_ready ? _GEN_278 : tag_19; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1200 = io_axi_data_data_ready ? _GEN_279 : tag_20; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1201 = io_axi_data_data_ready ? _GEN_280 : tag_21; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1202 = io_axi_data_data_ready ? _GEN_281 : tag_22; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1203 = io_axi_data_data_ready ? _GEN_282 : tag_23; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1204 = io_axi_data_data_ready ? _GEN_283 : tag_24; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1205 = io_axi_data_data_ready ? _GEN_284 : tag_25; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1206 = io_axi_data_data_ready ? _GEN_285 : tag_26; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1207 = io_axi_data_data_ready ? _GEN_286 : tag_27; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1208 = io_axi_data_data_ready ? _GEN_287 : tag_28; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1209 = io_axi_data_data_ready ? _GEN_288 : tag_29; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1210 = io_axi_data_data_ready ? _GEN_289 : tag_30; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1211 = io_axi_data_data_ready ? _GEN_290 : tag_31; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1212 = io_axi_data_data_ready ? _GEN_291 : tag_32; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1213 = io_axi_data_data_ready ? _GEN_292 : tag_33; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1214 = io_axi_data_data_ready ? _GEN_293 : tag_34; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1215 = io_axi_data_data_ready ? _GEN_294 : tag_35; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1216 = io_axi_data_data_ready ? _GEN_295 : tag_36; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1217 = io_axi_data_data_ready ? _GEN_296 : tag_37; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1218 = io_axi_data_data_ready ? _GEN_297 : tag_38; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1219 = io_axi_data_data_ready ? _GEN_298 : tag_39; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1220 = io_axi_data_data_ready ? _GEN_299 : tag_40; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1221 = io_axi_data_data_ready ? _GEN_300 : tag_41; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1222 = io_axi_data_data_ready ? _GEN_301 : tag_42; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1223 = io_axi_data_data_ready ? _GEN_302 : tag_43; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1224 = io_axi_data_data_ready ? _GEN_303 : tag_44; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1225 = io_axi_data_data_ready ? _GEN_304 : tag_45; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1226 = io_axi_data_data_ready ? _GEN_305 : tag_46; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1227 = io_axi_data_data_ready ? _GEN_306 : tag_47; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1228 = io_axi_data_data_ready ? _GEN_307 : tag_48; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1229 = io_axi_data_data_ready ? _GEN_308 : tag_49; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1230 = io_axi_data_data_ready ? _GEN_309 : tag_50; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1231 = io_axi_data_data_ready ? _GEN_310 : tag_51; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1232 = io_axi_data_data_ready ? _GEN_311 : tag_52; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1233 = io_axi_data_data_ready ? _GEN_312 : tag_53; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1234 = io_axi_data_data_ready ? _GEN_313 : tag_54; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1235 = io_axi_data_data_ready ? _GEN_314 : tag_55; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1236 = io_axi_data_data_ready ? _GEN_315 : tag_56; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1237 = io_axi_data_data_ready ? _GEN_316 : tag_57; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1238 = io_axi_data_data_ready ? _GEN_317 : tag_58; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1239 = io_axi_data_data_ready ? _GEN_318 : tag_59; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1240 = io_axi_data_data_ready ? _GEN_319 : tag_60; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1241 = io_axi_data_data_ready ? _GEN_320 : tag_61; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1242 = io_axi_data_data_ready ? _GEN_321 : tag_62; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [21:0] _GEN_1243 = io_axi_data_data_ready ? _GEN_322 : tag_63; // @[Dcache.scala 191:23 Dcache.scala 34:24]
  wire [3:0] _GEN_1244 = io_axi_data_data_ready ? _GEN_323 : offset_0; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1245 = io_axi_data_data_ready ? _GEN_324 : offset_1; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1246 = io_axi_data_data_ready ? _GEN_325 : offset_2; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1247 = io_axi_data_data_ready ? _GEN_326 : offset_3; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1248 = io_axi_data_data_ready ? _GEN_327 : offset_4; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1249 = io_axi_data_data_ready ? _GEN_328 : offset_5; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1250 = io_axi_data_data_ready ? _GEN_329 : offset_6; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1251 = io_axi_data_data_ready ? _GEN_330 : offset_7; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1252 = io_axi_data_data_ready ? _GEN_331 : offset_8; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1253 = io_axi_data_data_ready ? _GEN_332 : offset_9; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1254 = io_axi_data_data_ready ? _GEN_333 : offset_10; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1255 = io_axi_data_data_ready ? _GEN_334 : offset_11; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1256 = io_axi_data_data_ready ? _GEN_335 : offset_12; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1257 = io_axi_data_data_ready ? _GEN_336 : offset_13; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1258 = io_axi_data_data_ready ? _GEN_337 : offset_14; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1259 = io_axi_data_data_ready ? _GEN_338 : offset_15; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1260 = io_axi_data_data_ready ? _GEN_339 : offset_16; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1261 = io_axi_data_data_ready ? _GEN_340 : offset_17; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1262 = io_axi_data_data_ready ? _GEN_341 : offset_18; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1263 = io_axi_data_data_ready ? _GEN_342 : offset_19; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1264 = io_axi_data_data_ready ? _GEN_343 : offset_20; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1265 = io_axi_data_data_ready ? _GEN_344 : offset_21; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1266 = io_axi_data_data_ready ? _GEN_345 : offset_22; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1267 = io_axi_data_data_ready ? _GEN_346 : offset_23; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1268 = io_axi_data_data_ready ? _GEN_347 : offset_24; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1269 = io_axi_data_data_ready ? _GEN_348 : offset_25; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1270 = io_axi_data_data_ready ? _GEN_349 : offset_26; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1271 = io_axi_data_data_ready ? _GEN_350 : offset_27; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1272 = io_axi_data_data_ready ? _GEN_351 : offset_28; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1273 = io_axi_data_data_ready ? _GEN_352 : offset_29; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1274 = io_axi_data_data_ready ? _GEN_353 : offset_30; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1275 = io_axi_data_data_ready ? _GEN_354 : offset_31; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1276 = io_axi_data_data_ready ? _GEN_355 : offset_32; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1277 = io_axi_data_data_ready ? _GEN_356 : offset_33; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1278 = io_axi_data_data_ready ? _GEN_357 : offset_34; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1279 = io_axi_data_data_ready ? _GEN_358 : offset_35; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1280 = io_axi_data_data_ready ? _GEN_359 : offset_36; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1281 = io_axi_data_data_ready ? _GEN_360 : offset_37; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1282 = io_axi_data_data_ready ? _GEN_361 : offset_38; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1283 = io_axi_data_data_ready ? _GEN_362 : offset_39; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1284 = io_axi_data_data_ready ? _GEN_363 : offset_40; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1285 = io_axi_data_data_ready ? _GEN_364 : offset_41; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1286 = io_axi_data_data_ready ? _GEN_365 : offset_42; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1287 = io_axi_data_data_ready ? _GEN_366 : offset_43; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1288 = io_axi_data_data_ready ? _GEN_367 : offset_44; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1289 = io_axi_data_data_ready ? _GEN_368 : offset_45; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1290 = io_axi_data_data_ready ? _GEN_369 : offset_46; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1291 = io_axi_data_data_ready ? _GEN_370 : offset_47; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1292 = io_axi_data_data_ready ? _GEN_371 : offset_48; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1293 = io_axi_data_data_ready ? _GEN_372 : offset_49; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1294 = io_axi_data_data_ready ? _GEN_373 : offset_50; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1295 = io_axi_data_data_ready ? _GEN_374 : offset_51; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1296 = io_axi_data_data_ready ? _GEN_375 : offset_52; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1297 = io_axi_data_data_ready ? _GEN_376 : offset_53; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1298 = io_axi_data_data_ready ? _GEN_377 : offset_54; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1299 = io_axi_data_data_ready ? _GEN_378 : offset_55; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1300 = io_axi_data_data_ready ? _GEN_379 : offset_56; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1301 = io_axi_data_data_ready ? _GEN_380 : offset_57; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1302 = io_axi_data_data_ready ? _GEN_381 : offset_58; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1303 = io_axi_data_data_ready ? _GEN_382 : offset_59; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1304 = io_axi_data_data_ready ? _GEN_383 : offset_60; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1305 = io_axi_data_data_ready ? _GEN_384 : offset_61; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1306 = io_axi_data_data_ready ? _GEN_385 : offset_62; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire [3:0] _GEN_1307 = io_axi_data_data_ready ? _GEN_386 : offset_63; // @[Dcache.scala 191:23 Dcache.scala 35:24]
  wire  _GEN_1308 = io_axi_data_data_ready ? _GEN_387 : dirty_0; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1309 = io_axi_data_data_ready ? _GEN_388 : dirty_1; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1310 = io_axi_data_data_ready ? _GEN_389 : dirty_2; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1311 = io_axi_data_data_ready ? _GEN_390 : dirty_3; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1312 = io_axi_data_data_ready ? _GEN_391 : dirty_4; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1313 = io_axi_data_data_ready ? _GEN_392 : dirty_5; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1314 = io_axi_data_data_ready ? _GEN_393 : dirty_6; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1315 = io_axi_data_data_ready ? _GEN_394 : dirty_7; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1316 = io_axi_data_data_ready ? _GEN_395 : dirty_8; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1317 = io_axi_data_data_ready ? _GEN_396 : dirty_9; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1318 = io_axi_data_data_ready ? _GEN_397 : dirty_10; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1319 = io_axi_data_data_ready ? _GEN_398 : dirty_11; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1320 = io_axi_data_data_ready ? _GEN_399 : dirty_12; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1321 = io_axi_data_data_ready ? _GEN_400 : dirty_13; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1322 = io_axi_data_data_ready ? _GEN_401 : dirty_14; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1323 = io_axi_data_data_ready ? _GEN_402 : dirty_15; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1324 = io_axi_data_data_ready ? _GEN_403 : dirty_16; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1325 = io_axi_data_data_ready ? _GEN_404 : dirty_17; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1326 = io_axi_data_data_ready ? _GEN_405 : dirty_18; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1327 = io_axi_data_data_ready ? _GEN_406 : dirty_19; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1328 = io_axi_data_data_ready ? _GEN_407 : dirty_20; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1329 = io_axi_data_data_ready ? _GEN_408 : dirty_21; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1330 = io_axi_data_data_ready ? _GEN_409 : dirty_22; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1331 = io_axi_data_data_ready ? _GEN_410 : dirty_23; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1332 = io_axi_data_data_ready ? _GEN_411 : dirty_24; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1333 = io_axi_data_data_ready ? _GEN_412 : dirty_25; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1334 = io_axi_data_data_ready ? _GEN_413 : dirty_26; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1335 = io_axi_data_data_ready ? _GEN_414 : dirty_27; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1336 = io_axi_data_data_ready ? _GEN_415 : dirty_28; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1337 = io_axi_data_data_ready ? _GEN_416 : dirty_29; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1338 = io_axi_data_data_ready ? _GEN_417 : dirty_30; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1339 = io_axi_data_data_ready ? _GEN_418 : dirty_31; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1340 = io_axi_data_data_ready ? _GEN_419 : dirty_32; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1341 = io_axi_data_data_ready ? _GEN_420 : dirty_33; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1342 = io_axi_data_data_ready ? _GEN_421 : dirty_34; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1343 = io_axi_data_data_ready ? _GEN_422 : dirty_35; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1344 = io_axi_data_data_ready ? _GEN_423 : dirty_36; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1345 = io_axi_data_data_ready ? _GEN_424 : dirty_37; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1346 = io_axi_data_data_ready ? _GEN_425 : dirty_38; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1347 = io_axi_data_data_ready ? _GEN_426 : dirty_39; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1348 = io_axi_data_data_ready ? _GEN_427 : dirty_40; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1349 = io_axi_data_data_ready ? _GEN_428 : dirty_41; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1350 = io_axi_data_data_ready ? _GEN_429 : dirty_42; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1351 = io_axi_data_data_ready ? _GEN_430 : dirty_43; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1352 = io_axi_data_data_ready ? _GEN_431 : dirty_44; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1353 = io_axi_data_data_ready ? _GEN_432 : dirty_45; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1354 = io_axi_data_data_ready ? _GEN_433 : dirty_46; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1355 = io_axi_data_data_ready ? _GEN_434 : dirty_47; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1356 = io_axi_data_data_ready ? _GEN_435 : dirty_48; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1357 = io_axi_data_data_ready ? _GEN_436 : dirty_49; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1358 = io_axi_data_data_ready ? _GEN_437 : dirty_50; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1359 = io_axi_data_data_ready ? _GEN_438 : dirty_51; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1360 = io_axi_data_data_ready ? _GEN_439 : dirty_52; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1361 = io_axi_data_data_ready ? _GEN_440 : dirty_53; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1362 = io_axi_data_data_ready ? _GEN_441 : dirty_54; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1363 = io_axi_data_data_ready ? _GEN_442 : dirty_55; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1364 = io_axi_data_data_ready ? _GEN_443 : dirty_56; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1365 = io_axi_data_data_ready ? _GEN_444 : dirty_57; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1366 = io_axi_data_data_ready ? _GEN_445 : dirty_58; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1367 = io_axi_data_data_ready ? _GEN_446 : dirty_59; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1368 = io_axi_data_data_ready ? _GEN_447 : dirty_60; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1369 = io_axi_data_data_ready ? _GEN_448 : dirty_61; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1370 = io_axi_data_data_ready ? _GEN_449 : dirty_62; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire  _GEN_1371 = io_axi_data_data_ready ? _GEN_450 : dirty_63; // @[Dcache.scala 191:23 Dcache.scala 37:24]
  wire [2:0] _GEN_1372 = _T_7 ? 3'h0 : state; // @[Conditional.scala 39:67 Dcache.scala 216:8 Dcache.scala 31:22]
  wire  _GEN_1373 = _T_7 ? 1'h0 : reg_cache_fill; // @[Conditional.scala 39:67 Dcache.scala 217:18 Dcache.scala 58:31]
  wire [5:0] _GEN_1376 = _T_7 ? reg_data_addr[9:4] : 6'h0; // @[Conditional.scala 39:67 Dcache.scala 221:21]
  wire  _GEN_1377 = _T_7 & reg_data_req_w; // @[Conditional.scala 39:67 Dcache.scala 222:21]
  wire [127:0] _GEN_1378 = _T_7 ? reg_data_write : 128'h0; // @[Conditional.scala 39:67 Dcache.scala 223:21]
  wire [127:0] _GEN_1379 = _T_7 ? {{64'd0}, reg_data_strb} : 128'h0; // @[Conditional.scala 39:67 Dcache.scala 224:21]
  wire [2:0] _GEN_1380 = _T_5 ? _GEN_847 : _GEN_1372; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_1383 = _T_5 ? _GEN_850 : 32'h0; // @[Conditional.scala 39:67]
  wire  _GEN_1387 = _T_5 ? _GEN_1110 : _GEN_1373; // @[Conditional.scala 39:67]
  wire  _GEN_1388 = _T_5 ? io_axi_data_data_ready : _T_7; // @[Conditional.scala 39:67]
  wire  _GEN_1389 = _T_5 ? io_axi_data_data_ready : _GEN_1377; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_1390 = _T_5 ? _GEN_1112 : _GEN_1378; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_1391 = _T_5 ? _GEN_1113 : _GEN_1379; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_1392 = _T_5 ? _GEN_1114 : _GEN_1376; // @[Conditional.scala 39:67]
  wire  _GEN_1394 = _T_5 ? _GEN_1116 : valid_0; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1395 = _T_5 ? _GEN_1117 : valid_1; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1396 = _T_5 ? _GEN_1118 : valid_2; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1397 = _T_5 ? _GEN_1119 : valid_3; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1398 = _T_5 ? _GEN_1120 : valid_4; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1399 = _T_5 ? _GEN_1121 : valid_5; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1400 = _T_5 ? _GEN_1122 : valid_6; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1401 = _T_5 ? _GEN_1123 : valid_7; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1402 = _T_5 ? _GEN_1124 : valid_8; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1403 = _T_5 ? _GEN_1125 : valid_9; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1404 = _T_5 ? _GEN_1126 : valid_10; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1405 = _T_5 ? _GEN_1127 : valid_11; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1406 = _T_5 ? _GEN_1128 : valid_12; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1407 = _T_5 ? _GEN_1129 : valid_13; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1408 = _T_5 ? _GEN_1130 : valid_14; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1409 = _T_5 ? _GEN_1131 : valid_15; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1410 = _T_5 ? _GEN_1132 : valid_16; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1411 = _T_5 ? _GEN_1133 : valid_17; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1412 = _T_5 ? _GEN_1134 : valid_18; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1413 = _T_5 ? _GEN_1135 : valid_19; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1414 = _T_5 ? _GEN_1136 : valid_20; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1415 = _T_5 ? _GEN_1137 : valid_21; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1416 = _T_5 ? _GEN_1138 : valid_22; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1417 = _T_5 ? _GEN_1139 : valid_23; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1418 = _T_5 ? _GEN_1140 : valid_24; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1419 = _T_5 ? _GEN_1141 : valid_25; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1420 = _T_5 ? _GEN_1142 : valid_26; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1421 = _T_5 ? _GEN_1143 : valid_27; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1422 = _T_5 ? _GEN_1144 : valid_28; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1423 = _T_5 ? _GEN_1145 : valid_29; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1424 = _T_5 ? _GEN_1146 : valid_30; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1425 = _T_5 ? _GEN_1147 : valid_31; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1426 = _T_5 ? _GEN_1148 : valid_32; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1427 = _T_5 ? _GEN_1149 : valid_33; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1428 = _T_5 ? _GEN_1150 : valid_34; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1429 = _T_5 ? _GEN_1151 : valid_35; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1430 = _T_5 ? _GEN_1152 : valid_36; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1431 = _T_5 ? _GEN_1153 : valid_37; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1432 = _T_5 ? _GEN_1154 : valid_38; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1433 = _T_5 ? _GEN_1155 : valid_39; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1434 = _T_5 ? _GEN_1156 : valid_40; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1435 = _T_5 ? _GEN_1157 : valid_41; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1436 = _T_5 ? _GEN_1158 : valid_42; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1437 = _T_5 ? _GEN_1159 : valid_43; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1438 = _T_5 ? _GEN_1160 : valid_44; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1439 = _T_5 ? _GEN_1161 : valid_45; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1440 = _T_5 ? _GEN_1162 : valid_46; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1441 = _T_5 ? _GEN_1163 : valid_47; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1442 = _T_5 ? _GEN_1164 : valid_48; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1443 = _T_5 ? _GEN_1165 : valid_49; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1444 = _T_5 ? _GEN_1166 : valid_50; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1445 = _T_5 ? _GEN_1167 : valid_51; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1446 = _T_5 ? _GEN_1168 : valid_52; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1447 = _T_5 ? _GEN_1169 : valid_53; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1448 = _T_5 ? _GEN_1170 : valid_54; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1449 = _T_5 ? _GEN_1171 : valid_55; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1450 = _T_5 ? _GEN_1172 : valid_56; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1451 = _T_5 ? _GEN_1173 : valid_57; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1452 = _T_5 ? _GEN_1174 : valid_58; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1453 = _T_5 ? _GEN_1175 : valid_59; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1454 = _T_5 ? _GEN_1176 : valid_60; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1455 = _T_5 ? _GEN_1177 : valid_61; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1456 = _T_5 ? _GEN_1178 : valid_62; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire  _GEN_1457 = _T_5 ? _GEN_1179 : valid_63; // @[Conditional.scala 39:67 Dcache.scala 36:24]
  wire [21:0] _GEN_1458 = _T_5 ? _GEN_1180 : tag_0; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1459 = _T_5 ? _GEN_1181 : tag_1; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1460 = _T_5 ? _GEN_1182 : tag_2; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1461 = _T_5 ? _GEN_1183 : tag_3; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1462 = _T_5 ? _GEN_1184 : tag_4; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1463 = _T_5 ? _GEN_1185 : tag_5; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1464 = _T_5 ? _GEN_1186 : tag_6; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1465 = _T_5 ? _GEN_1187 : tag_7; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1466 = _T_5 ? _GEN_1188 : tag_8; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1467 = _T_5 ? _GEN_1189 : tag_9; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1468 = _T_5 ? _GEN_1190 : tag_10; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1469 = _T_5 ? _GEN_1191 : tag_11; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1470 = _T_5 ? _GEN_1192 : tag_12; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1471 = _T_5 ? _GEN_1193 : tag_13; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1472 = _T_5 ? _GEN_1194 : tag_14; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1473 = _T_5 ? _GEN_1195 : tag_15; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1474 = _T_5 ? _GEN_1196 : tag_16; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1475 = _T_5 ? _GEN_1197 : tag_17; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1476 = _T_5 ? _GEN_1198 : tag_18; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1477 = _T_5 ? _GEN_1199 : tag_19; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1478 = _T_5 ? _GEN_1200 : tag_20; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1479 = _T_5 ? _GEN_1201 : tag_21; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1480 = _T_5 ? _GEN_1202 : tag_22; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1481 = _T_5 ? _GEN_1203 : tag_23; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1482 = _T_5 ? _GEN_1204 : tag_24; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1483 = _T_5 ? _GEN_1205 : tag_25; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1484 = _T_5 ? _GEN_1206 : tag_26; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1485 = _T_5 ? _GEN_1207 : tag_27; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1486 = _T_5 ? _GEN_1208 : tag_28; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1487 = _T_5 ? _GEN_1209 : tag_29; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1488 = _T_5 ? _GEN_1210 : tag_30; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1489 = _T_5 ? _GEN_1211 : tag_31; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1490 = _T_5 ? _GEN_1212 : tag_32; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1491 = _T_5 ? _GEN_1213 : tag_33; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1492 = _T_5 ? _GEN_1214 : tag_34; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1493 = _T_5 ? _GEN_1215 : tag_35; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1494 = _T_5 ? _GEN_1216 : tag_36; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1495 = _T_5 ? _GEN_1217 : tag_37; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1496 = _T_5 ? _GEN_1218 : tag_38; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1497 = _T_5 ? _GEN_1219 : tag_39; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1498 = _T_5 ? _GEN_1220 : tag_40; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1499 = _T_5 ? _GEN_1221 : tag_41; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1500 = _T_5 ? _GEN_1222 : tag_42; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1501 = _T_5 ? _GEN_1223 : tag_43; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1502 = _T_5 ? _GEN_1224 : tag_44; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1503 = _T_5 ? _GEN_1225 : tag_45; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1504 = _T_5 ? _GEN_1226 : tag_46; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1505 = _T_5 ? _GEN_1227 : tag_47; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1506 = _T_5 ? _GEN_1228 : tag_48; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1507 = _T_5 ? _GEN_1229 : tag_49; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1508 = _T_5 ? _GEN_1230 : tag_50; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1509 = _T_5 ? _GEN_1231 : tag_51; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1510 = _T_5 ? _GEN_1232 : tag_52; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1511 = _T_5 ? _GEN_1233 : tag_53; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1512 = _T_5 ? _GEN_1234 : tag_54; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1513 = _T_5 ? _GEN_1235 : tag_55; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1514 = _T_5 ? _GEN_1236 : tag_56; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1515 = _T_5 ? _GEN_1237 : tag_57; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1516 = _T_5 ? _GEN_1238 : tag_58; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1517 = _T_5 ? _GEN_1239 : tag_59; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1518 = _T_5 ? _GEN_1240 : tag_60; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1519 = _T_5 ? _GEN_1241 : tag_61; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1520 = _T_5 ? _GEN_1242 : tag_62; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [21:0] _GEN_1521 = _T_5 ? _GEN_1243 : tag_63; // @[Conditional.scala 39:67 Dcache.scala 34:24]
  wire [3:0] _GEN_1522 = _T_5 ? _GEN_1244 : offset_0; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1523 = _T_5 ? _GEN_1245 : offset_1; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1524 = _T_5 ? _GEN_1246 : offset_2; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1525 = _T_5 ? _GEN_1247 : offset_3; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1526 = _T_5 ? _GEN_1248 : offset_4; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1527 = _T_5 ? _GEN_1249 : offset_5; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1528 = _T_5 ? _GEN_1250 : offset_6; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1529 = _T_5 ? _GEN_1251 : offset_7; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1530 = _T_5 ? _GEN_1252 : offset_8; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1531 = _T_5 ? _GEN_1253 : offset_9; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1532 = _T_5 ? _GEN_1254 : offset_10; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1533 = _T_5 ? _GEN_1255 : offset_11; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1534 = _T_5 ? _GEN_1256 : offset_12; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1535 = _T_5 ? _GEN_1257 : offset_13; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1536 = _T_5 ? _GEN_1258 : offset_14; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1537 = _T_5 ? _GEN_1259 : offset_15; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1538 = _T_5 ? _GEN_1260 : offset_16; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1539 = _T_5 ? _GEN_1261 : offset_17; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1540 = _T_5 ? _GEN_1262 : offset_18; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1541 = _T_5 ? _GEN_1263 : offset_19; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1542 = _T_5 ? _GEN_1264 : offset_20; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1543 = _T_5 ? _GEN_1265 : offset_21; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1544 = _T_5 ? _GEN_1266 : offset_22; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1545 = _T_5 ? _GEN_1267 : offset_23; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1546 = _T_5 ? _GEN_1268 : offset_24; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1547 = _T_5 ? _GEN_1269 : offset_25; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1548 = _T_5 ? _GEN_1270 : offset_26; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1549 = _T_5 ? _GEN_1271 : offset_27; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1550 = _T_5 ? _GEN_1272 : offset_28; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1551 = _T_5 ? _GEN_1273 : offset_29; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1552 = _T_5 ? _GEN_1274 : offset_30; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1553 = _T_5 ? _GEN_1275 : offset_31; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1554 = _T_5 ? _GEN_1276 : offset_32; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1555 = _T_5 ? _GEN_1277 : offset_33; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1556 = _T_5 ? _GEN_1278 : offset_34; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1557 = _T_5 ? _GEN_1279 : offset_35; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1558 = _T_5 ? _GEN_1280 : offset_36; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1559 = _T_5 ? _GEN_1281 : offset_37; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1560 = _T_5 ? _GEN_1282 : offset_38; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1561 = _T_5 ? _GEN_1283 : offset_39; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1562 = _T_5 ? _GEN_1284 : offset_40; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1563 = _T_5 ? _GEN_1285 : offset_41; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1564 = _T_5 ? _GEN_1286 : offset_42; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1565 = _T_5 ? _GEN_1287 : offset_43; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1566 = _T_5 ? _GEN_1288 : offset_44; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1567 = _T_5 ? _GEN_1289 : offset_45; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1568 = _T_5 ? _GEN_1290 : offset_46; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1569 = _T_5 ? _GEN_1291 : offset_47; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1570 = _T_5 ? _GEN_1292 : offset_48; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1571 = _T_5 ? _GEN_1293 : offset_49; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1572 = _T_5 ? _GEN_1294 : offset_50; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1573 = _T_5 ? _GEN_1295 : offset_51; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1574 = _T_5 ? _GEN_1296 : offset_52; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1575 = _T_5 ? _GEN_1297 : offset_53; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1576 = _T_5 ? _GEN_1298 : offset_54; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1577 = _T_5 ? _GEN_1299 : offset_55; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1578 = _T_5 ? _GEN_1300 : offset_56; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1579 = _T_5 ? _GEN_1301 : offset_57; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1580 = _T_5 ? _GEN_1302 : offset_58; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1581 = _T_5 ? _GEN_1303 : offset_59; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1582 = _T_5 ? _GEN_1304 : offset_60; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1583 = _T_5 ? _GEN_1305 : offset_61; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1584 = _T_5 ? _GEN_1306 : offset_62; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire [3:0] _GEN_1585 = _T_5 ? _GEN_1307 : offset_63; // @[Conditional.scala 39:67 Dcache.scala 35:24]
  wire  _GEN_1586 = _T_5 ? _GEN_1308 : dirty_0; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1587 = _T_5 ? _GEN_1309 : dirty_1; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1588 = _T_5 ? _GEN_1310 : dirty_2; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1589 = _T_5 ? _GEN_1311 : dirty_3; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1590 = _T_5 ? _GEN_1312 : dirty_4; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1591 = _T_5 ? _GEN_1313 : dirty_5; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1592 = _T_5 ? _GEN_1314 : dirty_6; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1593 = _T_5 ? _GEN_1315 : dirty_7; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1594 = _T_5 ? _GEN_1316 : dirty_8; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1595 = _T_5 ? _GEN_1317 : dirty_9; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1596 = _T_5 ? _GEN_1318 : dirty_10; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1597 = _T_5 ? _GEN_1319 : dirty_11; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1598 = _T_5 ? _GEN_1320 : dirty_12; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1599 = _T_5 ? _GEN_1321 : dirty_13; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1600 = _T_5 ? _GEN_1322 : dirty_14; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1601 = _T_5 ? _GEN_1323 : dirty_15; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1602 = _T_5 ? _GEN_1324 : dirty_16; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1603 = _T_5 ? _GEN_1325 : dirty_17; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1604 = _T_5 ? _GEN_1326 : dirty_18; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1605 = _T_5 ? _GEN_1327 : dirty_19; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1606 = _T_5 ? _GEN_1328 : dirty_20; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1607 = _T_5 ? _GEN_1329 : dirty_21; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1608 = _T_5 ? _GEN_1330 : dirty_22; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1609 = _T_5 ? _GEN_1331 : dirty_23; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1610 = _T_5 ? _GEN_1332 : dirty_24; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1611 = _T_5 ? _GEN_1333 : dirty_25; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1612 = _T_5 ? _GEN_1334 : dirty_26; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1613 = _T_5 ? _GEN_1335 : dirty_27; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1614 = _T_5 ? _GEN_1336 : dirty_28; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1615 = _T_5 ? _GEN_1337 : dirty_29; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1616 = _T_5 ? _GEN_1338 : dirty_30; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1617 = _T_5 ? _GEN_1339 : dirty_31; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1618 = _T_5 ? _GEN_1340 : dirty_32; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1619 = _T_5 ? _GEN_1341 : dirty_33; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1620 = _T_5 ? _GEN_1342 : dirty_34; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1621 = _T_5 ? _GEN_1343 : dirty_35; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1622 = _T_5 ? _GEN_1344 : dirty_36; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1623 = _T_5 ? _GEN_1345 : dirty_37; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1624 = _T_5 ? _GEN_1346 : dirty_38; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1625 = _T_5 ? _GEN_1347 : dirty_39; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1626 = _T_5 ? _GEN_1348 : dirty_40; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1627 = _T_5 ? _GEN_1349 : dirty_41; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1628 = _T_5 ? _GEN_1350 : dirty_42; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1629 = _T_5 ? _GEN_1351 : dirty_43; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1630 = _T_5 ? _GEN_1352 : dirty_44; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1631 = _T_5 ? _GEN_1353 : dirty_45; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1632 = _T_5 ? _GEN_1354 : dirty_46; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1633 = _T_5 ? _GEN_1355 : dirty_47; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1634 = _T_5 ? _GEN_1356 : dirty_48; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1635 = _T_5 ? _GEN_1357 : dirty_49; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1636 = _T_5 ? _GEN_1358 : dirty_50; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1637 = _T_5 ? _GEN_1359 : dirty_51; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1638 = _T_5 ? _GEN_1360 : dirty_52; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1639 = _T_5 ? _GEN_1361 : dirty_53; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1640 = _T_5 ? _GEN_1362 : dirty_54; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1641 = _T_5 ? _GEN_1363 : dirty_55; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1642 = _T_5 ? _GEN_1364 : dirty_56; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1643 = _T_5 ? _GEN_1365 : dirty_57; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1644 = _T_5 ? _GEN_1366 : dirty_58; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1645 = _T_5 ? _GEN_1367 : dirty_59; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1646 = _T_5 ? _GEN_1368 : dirty_60; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1647 = _T_5 ? _GEN_1369 : dirty_61; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1648 = _T_5 ? _GEN_1370 : dirty_62; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire  _GEN_1649 = _T_5 ? _GEN_1371 : dirty_63; // @[Conditional.scala 39:67 Dcache.scala 37:24]
  wire [31:0] _GEN_1651 = _T_4 ? _data_addr_w2axi_T : 32'h0; // @[Conditional.scala 39:67 Dcache.scala 163:19]
  wire [63:0] _GEN_1652 = _T_4 ? _data_write2axi_T_3 : 64'h0; // @[Conditional.scala 39:67 Dcache.scala 164:19]
  wire [7:0] _GEN_1653 = _T_4 ? 8'hff : 8'h0; // @[Conditional.scala 39:67 Dcache.scala 165:19]
  wire  _GEN_1656 = _T_4 ? 1'h0 : _T_5 & _T_6; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_1657 = _T_4 ? 32'h0 : _GEN_1383; // @[Conditional.scala 39:67]
  wire  _GEN_1659 = _T_4 ? 1'h0 : _GEN_1388; // @[Conditional.scala 39:67]
  wire  _GEN_1660 = _T_4 ? 1'h0 : _GEN_1389; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_1661 = _T_4 ? 128'h0 : _GEN_1390; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_1662 = _T_4 ? 128'h0 : _GEN_1391; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_1663 = _T_4 ? 6'h0 : _GEN_1392; // @[Conditional.scala 39:67]
  wire  _GEN_2116 = _T_2 ? _GEN_712 : _GEN_1659; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_2117 = _T_2 ? _GEN_713 : _GEN_1663; // @[Conditional.scala 39:67]
  wire  _GEN_2118 = _T_2 ? _GEN_714 : _GEN_1660; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_2119 = _T_2 ? _GEN_715 : _GEN_1661; // @[Conditional.scala 39:67]
  wire [127:0] _GEN_2120 = _T_2 ? _GEN_716 : _GEN_1662; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_2186 = _T_2 ? 32'h0 : _GEN_1651; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_2187 = _T_2 ? 64'h0 : _GEN_1652; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_2188 = _T_2 ? 8'h0 : _GEN_1653; // @[Conditional.scala 39:67]
  wire  _GEN_2189 = _T_2 ? 1'h0 : _T_4; // @[Conditional.scala 39:67]
  wire  _GEN_2190 = _T_2 ? 1'h0 : _GEN_1656; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_2191 = _T_2 ? 32'h0 : _GEN_1657; // @[Conditional.scala 39:67]
  wire  dcache_cen = _T ? 1'h0 : _GEN_2116; // @[Conditional.scala 40:58]
  wire  dcache_wen = _T ? 1'h0 : _GEN_2118; // @[Conditional.scala 40:58]
  wire [127:0] dcache_strb = _T ? 128'h0 : _GEN_2120; // @[Conditional.scala 40:58]
  wire [31:0] data_addr_w2axi = _T ? 32'h0 : _GEN_2186; // @[Conditional.scala 40:58]
  wire [63:0] data_write2axi = _T ? 64'h0 : _GEN_2187; // @[Conditional.scala 40:58]
  wire [7:0] data_strb2axi = _T ? 8'h0 : _GEN_2188; // @[Conditional.scala 40:58]
  wire [31:0] data_addr_r2axi = _T ? 32'h0 : _GEN_2191; // @[Conditional.scala 40:58]
  wire [27:0] io_axi_data_data_addr_r_hi_hi_hi = data_addr_r2axi[31:4]; // @[Dcache.scala 242:41]
  wire [29:0] io_axi_data_data_addr_r_hi = {io_axi_data_data_addr_r_hi_hi_hi,1'h0,1'h0}; // @[Cat.scala 30:58]
  wire [27:0] io_axi_data_data_addr_w_hi_hi_hi = data_addr_w2axi[31:4]; // @[Dcache.scala 243:41]
  wire [29:0] io_axi_data_data_addr_w_hi = {io_axi_data_data_addr_w_hi_hi_hi,1'h0,1'h0}; // @[Cat.scala 30:58]
  S011HD1P_X32Y2D128_BW dcache ( // @[Dcache.scala 251:22]
    .Q(dcache_Q),
    .CLK(dcache_CLK),
    .CEN(dcache_CEN),
    .WEN(dcache_WEN),
    .BWEN(dcache_BWEN),
    .A(dcache_A),
    .D(dcache_D)
  );
  assign io_core_data_data_ready = data_ready2core; // @[Dcache.scala 238:18]
  assign io_core_data_data_read = reg_data_addr[3] ? cache_data_out[127:64] : cache_data_out[63:0]; // @[Mux.scala 80:57]
  assign io_axi_data_data_req_r = _T ? 1'h0 : _GEN_2190; // @[Conditional.scala 40:58]
  assign io_axi_data_data_req_w = _T ? 1'h0 : _GEN_2189; // @[Conditional.scala 40:58]
  assign io_axi_data_data_addr_r = {io_axi_data_data_addr_r_hi,2'h0}; // @[Cat.scala 30:58]
  assign io_axi_data_data_addr_w = {io_axi_data_data_addr_w_hi,2'h0}; // @[Cat.scala 30:58]
  assign io_axi_data_data_strb = {{56'd0}, data_strb2axi}; // @[Conditional.scala 40:58]
  assign io_axi_data_data_write = {{64'd0}, data_write2axi}; // @[Conditional.scala 40:58]
  assign dcache_CLK = clock; // @[Dcache.scala 252:19]
  assign dcache_CEN = ~(dcache_wen | dcache_cen); // @[Dcache.scala 253:22]
  assign dcache_WEN = ~dcache_wen; // @[Dcache.scala 254:22]
  assign dcache_BWEN = ~dcache_strb; // @[Dcache.scala 255:22]
  assign dcache_A = _T ? 6'h0 : _GEN_2117; // @[Conditional.scala 40:58]
  assign dcache_D = _T ? 128'h0 : _GEN_2119; // @[Conditional.scala 40:58]
  always @(posedge clock) begin
    if (reset) begin // @[Dcache.scala 31:22]
      state <= 3'h0; // @[Dcache.scala 31:22]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_core_data_data_req_r | io_core_data_data_req_w) begin // @[Dcache.scala 106:43]
        state <= 3'h1; // @[Dcache.scala 113:11]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      if (cache_hit) begin // @[Dcache.scala 125:18]
        state <= 3'h0; // @[Dcache.scala 144:11]
      end else begin
        state <= _GEN_515;
      end
    end else if (_T_4) begin // @[Conditional.scala 39:67]
      state <= _GEN_846;
    end else begin
      state <= _GEN_1380;
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_0 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_0 <= _GEN_259;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_0 <= _GEN_1458;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_1 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_1 <= _GEN_260;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_1 <= _GEN_1459;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_2 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_2 <= _GEN_261;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_2 <= _GEN_1460;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_3 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_3 <= _GEN_262;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_3 <= _GEN_1461;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_4 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_4 <= _GEN_263;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_4 <= _GEN_1462;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_5 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_5 <= _GEN_264;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_5 <= _GEN_1463;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_6 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_6 <= _GEN_265;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_6 <= _GEN_1464;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_7 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_7 <= _GEN_266;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_7 <= _GEN_1465;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_8 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_8 <= _GEN_267;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_8 <= _GEN_1466;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_9 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_9 <= _GEN_268;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_9 <= _GEN_1467;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_10 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_10 <= _GEN_269;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_10 <= _GEN_1468;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_11 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_11 <= _GEN_270;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_11 <= _GEN_1469;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_12 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_12 <= _GEN_271;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_12 <= _GEN_1470;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_13 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_13 <= _GEN_272;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_13 <= _GEN_1471;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_14 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_14 <= _GEN_273;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_14 <= _GEN_1472;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_15 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_15 <= _GEN_274;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_15 <= _GEN_1473;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_16 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_16 <= _GEN_275;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_16 <= _GEN_1474;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_17 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_17 <= _GEN_276;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_17 <= _GEN_1475;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_18 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_18 <= _GEN_277;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_18 <= _GEN_1476;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_19 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_19 <= _GEN_278;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_19 <= _GEN_1477;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_20 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_20 <= _GEN_279;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_20 <= _GEN_1478;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_21 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_21 <= _GEN_280;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_21 <= _GEN_1479;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_22 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_22 <= _GEN_281;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_22 <= _GEN_1480;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_23 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_23 <= _GEN_282;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_23 <= _GEN_1481;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_24 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_24 <= _GEN_283;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_24 <= _GEN_1482;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_25 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_25 <= _GEN_284;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_25 <= _GEN_1483;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_26 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_26 <= _GEN_285;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_26 <= _GEN_1484;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_27 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_27 <= _GEN_286;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_27 <= _GEN_1485;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_28 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_28 <= _GEN_287;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_28 <= _GEN_1486;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_29 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_29 <= _GEN_288;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_29 <= _GEN_1487;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_30 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_30 <= _GEN_289;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_30 <= _GEN_1488;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_31 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_31 <= _GEN_290;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_31 <= _GEN_1489;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_32 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_32 <= _GEN_291;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_32 <= _GEN_1490;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_33 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_33 <= _GEN_292;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_33 <= _GEN_1491;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_34 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_34 <= _GEN_293;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_34 <= _GEN_1492;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_35 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_35 <= _GEN_294;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_35 <= _GEN_1493;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_36 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_36 <= _GEN_295;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_36 <= _GEN_1494;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_37 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_37 <= _GEN_296;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_37 <= _GEN_1495;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_38 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_38 <= _GEN_297;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_38 <= _GEN_1496;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_39 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_39 <= _GEN_298;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_39 <= _GEN_1497;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_40 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_40 <= _GEN_299;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_40 <= _GEN_1498;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_41 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_41 <= _GEN_300;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_41 <= _GEN_1499;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_42 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_42 <= _GEN_301;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_42 <= _GEN_1500;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_43 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_43 <= _GEN_302;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_43 <= _GEN_1501;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_44 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_44 <= _GEN_303;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_44 <= _GEN_1502;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_45 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_45 <= _GEN_304;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_45 <= _GEN_1503;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_46 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_46 <= _GEN_305;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_46 <= _GEN_1504;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_47 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_47 <= _GEN_306;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_47 <= _GEN_1505;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_48 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_48 <= _GEN_307;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_48 <= _GEN_1506;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_49 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_49 <= _GEN_308;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_49 <= _GEN_1507;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_50 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_50 <= _GEN_309;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_50 <= _GEN_1508;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_51 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_51 <= _GEN_310;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_51 <= _GEN_1509;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_52 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_52 <= _GEN_311;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_52 <= _GEN_1510;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_53 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_53 <= _GEN_312;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_53 <= _GEN_1511;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_54 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_54 <= _GEN_313;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_54 <= _GEN_1512;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_55 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_55 <= _GEN_314;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_55 <= _GEN_1513;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_56 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_56 <= _GEN_315;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_56 <= _GEN_1514;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_57 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_57 <= _GEN_316;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_57 <= _GEN_1515;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_58 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_58 <= _GEN_317;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_58 <= _GEN_1516;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_59 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_59 <= _GEN_318;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_59 <= _GEN_1517;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_60 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_60 <= _GEN_319;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_60 <= _GEN_1518;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_61 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_61 <= _GEN_320;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_61 <= _GEN_1519;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_62 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_62 <= _GEN_321;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_62 <= _GEN_1520;
      end
    end
    if (reset) begin // @[Dcache.scala 34:24]
      tag_63 <= 22'h0; // @[Dcache.scala 34:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          tag_63 <= _GEN_322;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        tag_63 <= _GEN_1521;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_0 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_0 <= _GEN_323;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_0 <= _GEN_1522;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_1 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_1 <= _GEN_324;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_1 <= _GEN_1523;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_2 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_2 <= _GEN_325;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_2 <= _GEN_1524;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_3 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_3 <= _GEN_326;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_3 <= _GEN_1525;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_4 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_4 <= _GEN_327;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_4 <= _GEN_1526;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_5 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_5 <= _GEN_328;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_5 <= _GEN_1527;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_6 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_6 <= _GEN_329;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_6 <= _GEN_1528;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_7 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_7 <= _GEN_330;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_7 <= _GEN_1529;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_8 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_8 <= _GEN_331;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_8 <= _GEN_1530;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_9 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_9 <= _GEN_332;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_9 <= _GEN_1531;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_10 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_10 <= _GEN_333;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_10 <= _GEN_1532;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_11 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_11 <= _GEN_334;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_11 <= _GEN_1533;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_12 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_12 <= _GEN_335;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_12 <= _GEN_1534;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_13 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_13 <= _GEN_336;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_13 <= _GEN_1535;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_14 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_14 <= _GEN_337;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_14 <= _GEN_1536;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_15 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_15 <= _GEN_338;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_15 <= _GEN_1537;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_16 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_16 <= _GEN_339;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_16 <= _GEN_1538;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_17 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_17 <= _GEN_340;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_17 <= _GEN_1539;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_18 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_18 <= _GEN_341;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_18 <= _GEN_1540;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_19 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_19 <= _GEN_342;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_19 <= _GEN_1541;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_20 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_20 <= _GEN_343;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_20 <= _GEN_1542;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_21 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_21 <= _GEN_344;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_21 <= _GEN_1543;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_22 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_22 <= _GEN_345;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_22 <= _GEN_1544;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_23 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_23 <= _GEN_346;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_23 <= _GEN_1545;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_24 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_24 <= _GEN_347;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_24 <= _GEN_1546;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_25 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_25 <= _GEN_348;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_25 <= _GEN_1547;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_26 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_26 <= _GEN_349;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_26 <= _GEN_1548;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_27 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_27 <= _GEN_350;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_27 <= _GEN_1549;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_28 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_28 <= _GEN_351;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_28 <= _GEN_1550;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_29 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_29 <= _GEN_352;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_29 <= _GEN_1551;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_30 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_30 <= _GEN_353;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_30 <= _GEN_1552;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_31 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_31 <= _GEN_354;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_31 <= _GEN_1553;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_32 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_32 <= _GEN_355;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_32 <= _GEN_1554;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_33 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_33 <= _GEN_356;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_33 <= _GEN_1555;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_34 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_34 <= _GEN_357;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_34 <= _GEN_1556;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_35 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_35 <= _GEN_358;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_35 <= _GEN_1557;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_36 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_36 <= _GEN_359;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_36 <= _GEN_1558;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_37 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_37 <= _GEN_360;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_37 <= _GEN_1559;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_38 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_38 <= _GEN_361;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_38 <= _GEN_1560;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_39 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_39 <= _GEN_362;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_39 <= _GEN_1561;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_40 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_40 <= _GEN_363;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_40 <= _GEN_1562;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_41 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_41 <= _GEN_364;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_41 <= _GEN_1563;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_42 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_42 <= _GEN_365;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_42 <= _GEN_1564;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_43 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_43 <= _GEN_366;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_43 <= _GEN_1565;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_44 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_44 <= _GEN_367;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_44 <= _GEN_1566;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_45 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_45 <= _GEN_368;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_45 <= _GEN_1567;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_46 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_46 <= _GEN_369;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_46 <= _GEN_1568;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_47 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_47 <= _GEN_370;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_47 <= _GEN_1569;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_48 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_48 <= _GEN_371;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_48 <= _GEN_1570;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_49 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_49 <= _GEN_372;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_49 <= _GEN_1571;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_50 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_50 <= _GEN_373;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_50 <= _GEN_1572;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_51 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_51 <= _GEN_374;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_51 <= _GEN_1573;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_52 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_52 <= _GEN_375;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_52 <= _GEN_1574;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_53 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_53 <= _GEN_376;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_53 <= _GEN_1575;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_54 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_54 <= _GEN_377;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_54 <= _GEN_1576;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_55 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_55 <= _GEN_378;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_55 <= _GEN_1577;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_56 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_56 <= _GEN_379;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_56 <= _GEN_1578;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_57 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_57 <= _GEN_380;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_57 <= _GEN_1579;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_58 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_58 <= _GEN_381;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_58 <= _GEN_1580;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_59 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_59 <= _GEN_382;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_59 <= _GEN_1581;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_60 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_60 <= _GEN_383;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_60 <= _GEN_1582;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_61 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_61 <= _GEN_384;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_61 <= _GEN_1583;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_62 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_62 <= _GEN_385;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_62 <= _GEN_1584;
      end
    end
    if (reset) begin // @[Dcache.scala 35:24]
      offset_63 <= 4'h0; // @[Dcache.scala 35:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          offset_63 <= _GEN_386;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        offset_63 <= _GEN_1585;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_0 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_0 <= _GEN_195;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_0 <= _GEN_1394;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_1 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_1 <= _GEN_196;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_1 <= _GEN_1395;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_2 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_2 <= _GEN_197;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_2 <= _GEN_1396;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_3 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_3 <= _GEN_198;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_3 <= _GEN_1397;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_4 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_4 <= _GEN_199;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_4 <= _GEN_1398;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_5 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_5 <= _GEN_200;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_5 <= _GEN_1399;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_6 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_6 <= _GEN_201;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_6 <= _GEN_1400;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_7 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_7 <= _GEN_202;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_7 <= _GEN_1401;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_8 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_8 <= _GEN_203;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_8 <= _GEN_1402;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_9 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_9 <= _GEN_204;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_9 <= _GEN_1403;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_10 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_10 <= _GEN_205;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_10 <= _GEN_1404;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_11 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_11 <= _GEN_206;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_11 <= _GEN_1405;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_12 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_12 <= _GEN_207;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_12 <= _GEN_1406;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_13 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_13 <= _GEN_208;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_13 <= _GEN_1407;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_14 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_14 <= _GEN_209;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_14 <= _GEN_1408;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_15 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_15 <= _GEN_210;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_15 <= _GEN_1409;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_16 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_16 <= _GEN_211;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_16 <= _GEN_1410;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_17 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_17 <= _GEN_212;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_17 <= _GEN_1411;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_18 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_18 <= _GEN_213;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_18 <= _GEN_1412;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_19 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_19 <= _GEN_214;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_19 <= _GEN_1413;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_20 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_20 <= _GEN_215;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_20 <= _GEN_1414;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_21 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_21 <= _GEN_216;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_21 <= _GEN_1415;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_22 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_22 <= _GEN_217;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_22 <= _GEN_1416;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_23 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_23 <= _GEN_218;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_23 <= _GEN_1417;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_24 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_24 <= _GEN_219;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_24 <= _GEN_1418;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_25 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_25 <= _GEN_220;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_25 <= _GEN_1419;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_26 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_26 <= _GEN_221;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_26 <= _GEN_1420;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_27 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_27 <= _GEN_222;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_27 <= _GEN_1421;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_28 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_28 <= _GEN_223;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_28 <= _GEN_1422;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_29 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_29 <= _GEN_224;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_29 <= _GEN_1423;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_30 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_30 <= _GEN_225;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_30 <= _GEN_1424;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_31 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_31 <= _GEN_226;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_31 <= _GEN_1425;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_32 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_32 <= _GEN_227;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_32 <= _GEN_1426;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_33 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_33 <= _GEN_228;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_33 <= _GEN_1427;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_34 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_34 <= _GEN_229;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_34 <= _GEN_1428;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_35 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_35 <= _GEN_230;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_35 <= _GEN_1429;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_36 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_36 <= _GEN_231;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_36 <= _GEN_1430;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_37 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_37 <= _GEN_232;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_37 <= _GEN_1431;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_38 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_38 <= _GEN_233;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_38 <= _GEN_1432;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_39 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_39 <= _GEN_234;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_39 <= _GEN_1433;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_40 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_40 <= _GEN_235;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_40 <= _GEN_1434;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_41 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_41 <= _GEN_236;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_41 <= _GEN_1435;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_42 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_42 <= _GEN_237;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_42 <= _GEN_1436;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_43 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_43 <= _GEN_238;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_43 <= _GEN_1437;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_44 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_44 <= _GEN_239;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_44 <= _GEN_1438;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_45 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_45 <= _GEN_240;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_45 <= _GEN_1439;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_46 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_46 <= _GEN_241;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_46 <= _GEN_1440;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_47 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_47 <= _GEN_242;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_47 <= _GEN_1441;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_48 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_48 <= _GEN_243;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_48 <= _GEN_1442;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_49 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_49 <= _GEN_244;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_49 <= _GEN_1443;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_50 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_50 <= _GEN_245;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_50 <= _GEN_1444;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_51 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_51 <= _GEN_246;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_51 <= _GEN_1445;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_52 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_52 <= _GEN_247;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_52 <= _GEN_1446;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_53 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_53 <= _GEN_248;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_53 <= _GEN_1447;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_54 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_54 <= _GEN_249;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_54 <= _GEN_1448;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_55 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_55 <= _GEN_250;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_55 <= _GEN_1449;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_56 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_56 <= _GEN_251;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_56 <= _GEN_1450;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_57 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_57 <= _GEN_252;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_57 <= _GEN_1451;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_58 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_58 <= _GEN_253;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_58 <= _GEN_1452;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_59 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_59 <= _GEN_254;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_59 <= _GEN_1453;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_60 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_60 <= _GEN_255;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_60 <= _GEN_1454;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_61 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_61 <= _GEN_256;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_61 <= _GEN_1455;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_62 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_62 <= _GEN_257;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_62 <= _GEN_1456;
      end
    end
    if (reset) begin // @[Dcache.scala 36:24]
      valid_63 <= 1'h0; // @[Dcache.scala 36:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          valid_63 <= _GEN_258;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        valid_63 <= _GEN_1457;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_0 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_0 <= _GEN_451;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_0 <= _GEN_1586;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_1 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_1 <= _GEN_452;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_1 <= _GEN_1587;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_2 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_2 <= _GEN_453;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_2 <= _GEN_1588;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_3 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_3 <= _GEN_454;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_3 <= _GEN_1589;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_4 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_4 <= _GEN_455;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_4 <= _GEN_1590;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_5 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_5 <= _GEN_456;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_5 <= _GEN_1591;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_6 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_6 <= _GEN_457;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_6 <= _GEN_1592;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_7 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_7 <= _GEN_458;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_7 <= _GEN_1593;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_8 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_8 <= _GEN_459;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_8 <= _GEN_1594;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_9 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_9 <= _GEN_460;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_9 <= _GEN_1595;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_10 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_10 <= _GEN_461;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_10 <= _GEN_1596;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_11 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_11 <= _GEN_462;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_11 <= _GEN_1597;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_12 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_12 <= _GEN_463;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_12 <= _GEN_1598;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_13 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_13 <= _GEN_464;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_13 <= _GEN_1599;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_14 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_14 <= _GEN_465;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_14 <= _GEN_1600;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_15 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_15 <= _GEN_466;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_15 <= _GEN_1601;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_16 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_16 <= _GEN_467;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_16 <= _GEN_1602;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_17 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_17 <= _GEN_468;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_17 <= _GEN_1603;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_18 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_18 <= _GEN_469;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_18 <= _GEN_1604;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_19 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_19 <= _GEN_470;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_19 <= _GEN_1605;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_20 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_20 <= _GEN_471;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_20 <= _GEN_1606;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_21 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_21 <= _GEN_472;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_21 <= _GEN_1607;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_22 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_22 <= _GEN_473;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_22 <= _GEN_1608;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_23 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_23 <= _GEN_474;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_23 <= _GEN_1609;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_24 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_24 <= _GEN_475;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_24 <= _GEN_1610;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_25 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_25 <= _GEN_476;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_25 <= _GEN_1611;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_26 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_26 <= _GEN_477;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_26 <= _GEN_1612;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_27 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_27 <= _GEN_478;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_27 <= _GEN_1613;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_28 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_28 <= _GEN_479;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_28 <= _GEN_1614;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_29 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_29 <= _GEN_480;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_29 <= _GEN_1615;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_30 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_30 <= _GEN_481;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_30 <= _GEN_1616;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_31 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_31 <= _GEN_482;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_31 <= _GEN_1617;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_32 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_32 <= _GEN_483;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_32 <= _GEN_1618;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_33 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_33 <= _GEN_484;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_33 <= _GEN_1619;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_34 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_34 <= _GEN_485;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_34 <= _GEN_1620;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_35 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_35 <= _GEN_486;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_35 <= _GEN_1621;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_36 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_36 <= _GEN_487;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_36 <= _GEN_1622;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_37 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_37 <= _GEN_488;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_37 <= _GEN_1623;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_38 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_38 <= _GEN_489;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_38 <= _GEN_1624;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_39 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_39 <= _GEN_490;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_39 <= _GEN_1625;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_40 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_40 <= _GEN_491;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_40 <= _GEN_1626;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_41 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_41 <= _GEN_492;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_41 <= _GEN_1627;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_42 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_42 <= _GEN_493;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_42 <= _GEN_1628;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_43 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_43 <= _GEN_494;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_43 <= _GEN_1629;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_44 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_44 <= _GEN_495;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_44 <= _GEN_1630;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_45 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_45 <= _GEN_496;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_45 <= _GEN_1631;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_46 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_46 <= _GEN_497;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_46 <= _GEN_1632;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_47 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_47 <= _GEN_498;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_47 <= _GEN_1633;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_48 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_48 <= _GEN_499;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_48 <= _GEN_1634;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_49 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_49 <= _GEN_500;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_49 <= _GEN_1635;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_50 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_50 <= _GEN_501;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_50 <= _GEN_1636;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_51 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_51 <= _GEN_502;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_51 <= _GEN_1637;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_52 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_52 <= _GEN_503;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_52 <= _GEN_1638;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_53 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_53 <= _GEN_504;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_53 <= _GEN_1639;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_54 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_54 <= _GEN_505;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_54 <= _GEN_1640;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_55 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_55 <= _GEN_506;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_55 <= _GEN_1641;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_56 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_56 <= _GEN_507;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_56 <= _GEN_1642;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_57 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_57 <= _GEN_508;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_57 <= _GEN_1643;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_58 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_58 <= _GEN_509;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_58 <= _GEN_1644;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_59 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_59 <= _GEN_510;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_59 <= _GEN_1645;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_60 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_60 <= _GEN_511;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_60 <= _GEN_1646;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_61 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_61 <= _GEN_512;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_61 <= _GEN_1647;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_62 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_62 <= _GEN_513;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_62 <= _GEN_1648;
      end
    end
    if (reset) begin // @[Dcache.scala 37:24]
      dirty_63 <= 1'h0; // @[Dcache.scala 37:24]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        if (cache_hit) begin // @[Dcache.scala 125:18]
          dirty_63 <= _GEN_514;
        end
      end else if (!(_T_4)) begin // @[Conditional.scala 39:67]
        dirty_63 <= _GEN_1649;
      end
    end
    if (reset) begin // @[Dcache.scala 66:32]
      reg_data_addr <= 32'h0; // @[Dcache.scala 66:32]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        reg_data_addr <= io_core_data_data_addr_r; // @[Dcache.scala 122:19]
      end
    end
    if (reset) begin // @[Dcache.scala 58:31]
      reg_cache_fill <= 1'h0; // @[Dcache.scala 58:31]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_2)) begin // @[Conditional.scala 39:67]
        if (!(_T_4)) begin // @[Conditional.scala 39:67]
          reg_cache_fill <= _GEN_1387;
        end
      end
    end
    if (reset) begin // @[Dcache.scala 65:32]
      reg_data_req_w <= 1'h0; // @[Dcache.scala 65:32]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_core_data_data_req_r | io_core_data_data_req_w) begin // @[Dcache.scala 106:43]
        reg_data_req_w <= io_core_data_data_req_w; // @[Dcache.scala 109:21]
      end
    end
    if (reset) begin // @[Dcache.scala 68:32]
      reg_data_strb <= 64'h0; // @[Dcache.scala 68:32]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        reg_data_strb <= io_core_data_data_strb; // @[Dcache.scala 123:19]
      end
    end
    if (reset) begin // @[Dcache.scala 69:32]
      reg_data_write <= 128'h0; // @[Dcache.scala 69:32]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_2) begin // @[Conditional.scala 39:67]
        reg_data_write <= {{64'd0}, io_core_data_data_write}; // @[Dcache.scala 124:19]
      end
    end
    data_ready2core <= _cache_hit_T_2 & cache_hit | state == 3'h5; // @[Dcache.scala 78:65]
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  tag_0 = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  tag_1 = _RAND_2[21:0];
  _RAND_3 = {1{`RANDOM}};
  tag_2 = _RAND_3[21:0];
  _RAND_4 = {1{`RANDOM}};
  tag_3 = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  tag_4 = _RAND_5[21:0];
  _RAND_6 = {1{`RANDOM}};
  tag_5 = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  tag_6 = _RAND_7[21:0];
  _RAND_8 = {1{`RANDOM}};
  tag_7 = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  tag_8 = _RAND_9[21:0];
  _RAND_10 = {1{`RANDOM}};
  tag_9 = _RAND_10[21:0];
  _RAND_11 = {1{`RANDOM}};
  tag_10 = _RAND_11[21:0];
  _RAND_12 = {1{`RANDOM}};
  tag_11 = _RAND_12[21:0];
  _RAND_13 = {1{`RANDOM}};
  tag_12 = _RAND_13[21:0];
  _RAND_14 = {1{`RANDOM}};
  tag_13 = _RAND_14[21:0];
  _RAND_15 = {1{`RANDOM}};
  tag_14 = _RAND_15[21:0];
  _RAND_16 = {1{`RANDOM}};
  tag_15 = _RAND_16[21:0];
  _RAND_17 = {1{`RANDOM}};
  tag_16 = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  tag_17 = _RAND_18[21:0];
  _RAND_19 = {1{`RANDOM}};
  tag_18 = _RAND_19[21:0];
  _RAND_20 = {1{`RANDOM}};
  tag_19 = _RAND_20[21:0];
  _RAND_21 = {1{`RANDOM}};
  tag_20 = _RAND_21[21:0];
  _RAND_22 = {1{`RANDOM}};
  tag_21 = _RAND_22[21:0];
  _RAND_23 = {1{`RANDOM}};
  tag_22 = _RAND_23[21:0];
  _RAND_24 = {1{`RANDOM}};
  tag_23 = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  tag_24 = _RAND_25[21:0];
  _RAND_26 = {1{`RANDOM}};
  tag_25 = _RAND_26[21:0];
  _RAND_27 = {1{`RANDOM}};
  tag_26 = _RAND_27[21:0];
  _RAND_28 = {1{`RANDOM}};
  tag_27 = _RAND_28[21:0];
  _RAND_29 = {1{`RANDOM}};
  tag_28 = _RAND_29[21:0];
  _RAND_30 = {1{`RANDOM}};
  tag_29 = _RAND_30[21:0];
  _RAND_31 = {1{`RANDOM}};
  tag_30 = _RAND_31[21:0];
  _RAND_32 = {1{`RANDOM}};
  tag_31 = _RAND_32[21:0];
  _RAND_33 = {1{`RANDOM}};
  tag_32 = _RAND_33[21:0];
  _RAND_34 = {1{`RANDOM}};
  tag_33 = _RAND_34[21:0];
  _RAND_35 = {1{`RANDOM}};
  tag_34 = _RAND_35[21:0];
  _RAND_36 = {1{`RANDOM}};
  tag_35 = _RAND_36[21:0];
  _RAND_37 = {1{`RANDOM}};
  tag_36 = _RAND_37[21:0];
  _RAND_38 = {1{`RANDOM}};
  tag_37 = _RAND_38[21:0];
  _RAND_39 = {1{`RANDOM}};
  tag_38 = _RAND_39[21:0];
  _RAND_40 = {1{`RANDOM}};
  tag_39 = _RAND_40[21:0];
  _RAND_41 = {1{`RANDOM}};
  tag_40 = _RAND_41[21:0];
  _RAND_42 = {1{`RANDOM}};
  tag_41 = _RAND_42[21:0];
  _RAND_43 = {1{`RANDOM}};
  tag_42 = _RAND_43[21:0];
  _RAND_44 = {1{`RANDOM}};
  tag_43 = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  tag_44 = _RAND_45[21:0];
  _RAND_46 = {1{`RANDOM}};
  tag_45 = _RAND_46[21:0];
  _RAND_47 = {1{`RANDOM}};
  tag_46 = _RAND_47[21:0];
  _RAND_48 = {1{`RANDOM}};
  tag_47 = _RAND_48[21:0];
  _RAND_49 = {1{`RANDOM}};
  tag_48 = _RAND_49[21:0];
  _RAND_50 = {1{`RANDOM}};
  tag_49 = _RAND_50[21:0];
  _RAND_51 = {1{`RANDOM}};
  tag_50 = _RAND_51[21:0];
  _RAND_52 = {1{`RANDOM}};
  tag_51 = _RAND_52[21:0];
  _RAND_53 = {1{`RANDOM}};
  tag_52 = _RAND_53[21:0];
  _RAND_54 = {1{`RANDOM}};
  tag_53 = _RAND_54[21:0];
  _RAND_55 = {1{`RANDOM}};
  tag_54 = _RAND_55[21:0];
  _RAND_56 = {1{`RANDOM}};
  tag_55 = _RAND_56[21:0];
  _RAND_57 = {1{`RANDOM}};
  tag_56 = _RAND_57[21:0];
  _RAND_58 = {1{`RANDOM}};
  tag_57 = _RAND_58[21:0];
  _RAND_59 = {1{`RANDOM}};
  tag_58 = _RAND_59[21:0];
  _RAND_60 = {1{`RANDOM}};
  tag_59 = _RAND_60[21:0];
  _RAND_61 = {1{`RANDOM}};
  tag_60 = _RAND_61[21:0];
  _RAND_62 = {1{`RANDOM}};
  tag_61 = _RAND_62[21:0];
  _RAND_63 = {1{`RANDOM}};
  tag_62 = _RAND_63[21:0];
  _RAND_64 = {1{`RANDOM}};
  tag_63 = _RAND_64[21:0];
  _RAND_65 = {1{`RANDOM}};
  offset_0 = _RAND_65[3:0];
  _RAND_66 = {1{`RANDOM}};
  offset_1 = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  offset_2 = _RAND_67[3:0];
  _RAND_68 = {1{`RANDOM}};
  offset_3 = _RAND_68[3:0];
  _RAND_69 = {1{`RANDOM}};
  offset_4 = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  offset_5 = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  offset_6 = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  offset_7 = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  offset_8 = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  offset_9 = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  offset_10 = _RAND_75[3:0];
  _RAND_76 = {1{`RANDOM}};
  offset_11 = _RAND_76[3:0];
  _RAND_77 = {1{`RANDOM}};
  offset_12 = _RAND_77[3:0];
  _RAND_78 = {1{`RANDOM}};
  offset_13 = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  offset_14 = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  offset_15 = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  offset_16 = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  offset_17 = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  offset_18 = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  offset_19 = _RAND_84[3:0];
  _RAND_85 = {1{`RANDOM}};
  offset_20 = _RAND_85[3:0];
  _RAND_86 = {1{`RANDOM}};
  offset_21 = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  offset_22 = _RAND_87[3:0];
  _RAND_88 = {1{`RANDOM}};
  offset_23 = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  offset_24 = _RAND_89[3:0];
  _RAND_90 = {1{`RANDOM}};
  offset_25 = _RAND_90[3:0];
  _RAND_91 = {1{`RANDOM}};
  offset_26 = _RAND_91[3:0];
  _RAND_92 = {1{`RANDOM}};
  offset_27 = _RAND_92[3:0];
  _RAND_93 = {1{`RANDOM}};
  offset_28 = _RAND_93[3:0];
  _RAND_94 = {1{`RANDOM}};
  offset_29 = _RAND_94[3:0];
  _RAND_95 = {1{`RANDOM}};
  offset_30 = _RAND_95[3:0];
  _RAND_96 = {1{`RANDOM}};
  offset_31 = _RAND_96[3:0];
  _RAND_97 = {1{`RANDOM}};
  offset_32 = _RAND_97[3:0];
  _RAND_98 = {1{`RANDOM}};
  offset_33 = _RAND_98[3:0];
  _RAND_99 = {1{`RANDOM}};
  offset_34 = _RAND_99[3:0];
  _RAND_100 = {1{`RANDOM}};
  offset_35 = _RAND_100[3:0];
  _RAND_101 = {1{`RANDOM}};
  offset_36 = _RAND_101[3:0];
  _RAND_102 = {1{`RANDOM}};
  offset_37 = _RAND_102[3:0];
  _RAND_103 = {1{`RANDOM}};
  offset_38 = _RAND_103[3:0];
  _RAND_104 = {1{`RANDOM}};
  offset_39 = _RAND_104[3:0];
  _RAND_105 = {1{`RANDOM}};
  offset_40 = _RAND_105[3:0];
  _RAND_106 = {1{`RANDOM}};
  offset_41 = _RAND_106[3:0];
  _RAND_107 = {1{`RANDOM}};
  offset_42 = _RAND_107[3:0];
  _RAND_108 = {1{`RANDOM}};
  offset_43 = _RAND_108[3:0];
  _RAND_109 = {1{`RANDOM}};
  offset_44 = _RAND_109[3:0];
  _RAND_110 = {1{`RANDOM}};
  offset_45 = _RAND_110[3:0];
  _RAND_111 = {1{`RANDOM}};
  offset_46 = _RAND_111[3:0];
  _RAND_112 = {1{`RANDOM}};
  offset_47 = _RAND_112[3:0];
  _RAND_113 = {1{`RANDOM}};
  offset_48 = _RAND_113[3:0];
  _RAND_114 = {1{`RANDOM}};
  offset_49 = _RAND_114[3:0];
  _RAND_115 = {1{`RANDOM}};
  offset_50 = _RAND_115[3:0];
  _RAND_116 = {1{`RANDOM}};
  offset_51 = _RAND_116[3:0];
  _RAND_117 = {1{`RANDOM}};
  offset_52 = _RAND_117[3:0];
  _RAND_118 = {1{`RANDOM}};
  offset_53 = _RAND_118[3:0];
  _RAND_119 = {1{`RANDOM}};
  offset_54 = _RAND_119[3:0];
  _RAND_120 = {1{`RANDOM}};
  offset_55 = _RAND_120[3:0];
  _RAND_121 = {1{`RANDOM}};
  offset_56 = _RAND_121[3:0];
  _RAND_122 = {1{`RANDOM}};
  offset_57 = _RAND_122[3:0];
  _RAND_123 = {1{`RANDOM}};
  offset_58 = _RAND_123[3:0];
  _RAND_124 = {1{`RANDOM}};
  offset_59 = _RAND_124[3:0];
  _RAND_125 = {1{`RANDOM}};
  offset_60 = _RAND_125[3:0];
  _RAND_126 = {1{`RANDOM}};
  offset_61 = _RAND_126[3:0];
  _RAND_127 = {1{`RANDOM}};
  offset_62 = _RAND_127[3:0];
  _RAND_128 = {1{`RANDOM}};
  offset_63 = _RAND_128[3:0];
  _RAND_129 = {1{`RANDOM}};
  valid_0 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  valid_1 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  valid_2 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  valid_3 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  valid_4 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  valid_5 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  valid_6 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  valid_7 = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  valid_8 = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  valid_9 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  valid_10 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  valid_11 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  valid_12 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  valid_13 = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  valid_14 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  valid_15 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  valid_16 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  valid_17 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  valid_18 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  valid_19 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  valid_20 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  valid_21 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  valid_22 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  valid_23 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  valid_24 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  valid_25 = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  valid_26 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  valid_27 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  valid_28 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  valid_29 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  valid_30 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  valid_31 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  valid_32 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  valid_33 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  valid_34 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  valid_35 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  valid_36 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  valid_37 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  valid_38 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  valid_39 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  valid_40 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  valid_41 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  valid_42 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  valid_43 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  valid_44 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  valid_45 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  valid_46 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  valid_47 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  valid_48 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  valid_49 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  valid_50 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  valid_51 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  valid_52 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  valid_53 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  valid_54 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  valid_55 = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  valid_56 = _RAND_185[0:0];
  _RAND_186 = {1{`RANDOM}};
  valid_57 = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  valid_58 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  valid_59 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  valid_60 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  valid_61 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  valid_62 = _RAND_191[0:0];
  _RAND_192 = {1{`RANDOM}};
  valid_63 = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  dirty_0 = _RAND_193[0:0];
  _RAND_194 = {1{`RANDOM}};
  dirty_1 = _RAND_194[0:0];
  _RAND_195 = {1{`RANDOM}};
  dirty_2 = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  dirty_3 = _RAND_196[0:0];
  _RAND_197 = {1{`RANDOM}};
  dirty_4 = _RAND_197[0:0];
  _RAND_198 = {1{`RANDOM}};
  dirty_5 = _RAND_198[0:0];
  _RAND_199 = {1{`RANDOM}};
  dirty_6 = _RAND_199[0:0];
  _RAND_200 = {1{`RANDOM}};
  dirty_7 = _RAND_200[0:0];
  _RAND_201 = {1{`RANDOM}};
  dirty_8 = _RAND_201[0:0];
  _RAND_202 = {1{`RANDOM}};
  dirty_9 = _RAND_202[0:0];
  _RAND_203 = {1{`RANDOM}};
  dirty_10 = _RAND_203[0:0];
  _RAND_204 = {1{`RANDOM}};
  dirty_11 = _RAND_204[0:0];
  _RAND_205 = {1{`RANDOM}};
  dirty_12 = _RAND_205[0:0];
  _RAND_206 = {1{`RANDOM}};
  dirty_13 = _RAND_206[0:0];
  _RAND_207 = {1{`RANDOM}};
  dirty_14 = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  dirty_15 = _RAND_208[0:0];
  _RAND_209 = {1{`RANDOM}};
  dirty_16 = _RAND_209[0:0];
  _RAND_210 = {1{`RANDOM}};
  dirty_17 = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  dirty_18 = _RAND_211[0:0];
  _RAND_212 = {1{`RANDOM}};
  dirty_19 = _RAND_212[0:0];
  _RAND_213 = {1{`RANDOM}};
  dirty_20 = _RAND_213[0:0];
  _RAND_214 = {1{`RANDOM}};
  dirty_21 = _RAND_214[0:0];
  _RAND_215 = {1{`RANDOM}};
  dirty_22 = _RAND_215[0:0];
  _RAND_216 = {1{`RANDOM}};
  dirty_23 = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  dirty_24 = _RAND_217[0:0];
  _RAND_218 = {1{`RANDOM}};
  dirty_25 = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  dirty_26 = _RAND_219[0:0];
  _RAND_220 = {1{`RANDOM}};
  dirty_27 = _RAND_220[0:0];
  _RAND_221 = {1{`RANDOM}};
  dirty_28 = _RAND_221[0:0];
  _RAND_222 = {1{`RANDOM}};
  dirty_29 = _RAND_222[0:0];
  _RAND_223 = {1{`RANDOM}};
  dirty_30 = _RAND_223[0:0];
  _RAND_224 = {1{`RANDOM}};
  dirty_31 = _RAND_224[0:0];
  _RAND_225 = {1{`RANDOM}};
  dirty_32 = _RAND_225[0:0];
  _RAND_226 = {1{`RANDOM}};
  dirty_33 = _RAND_226[0:0];
  _RAND_227 = {1{`RANDOM}};
  dirty_34 = _RAND_227[0:0];
  _RAND_228 = {1{`RANDOM}};
  dirty_35 = _RAND_228[0:0];
  _RAND_229 = {1{`RANDOM}};
  dirty_36 = _RAND_229[0:0];
  _RAND_230 = {1{`RANDOM}};
  dirty_37 = _RAND_230[0:0];
  _RAND_231 = {1{`RANDOM}};
  dirty_38 = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  dirty_39 = _RAND_232[0:0];
  _RAND_233 = {1{`RANDOM}};
  dirty_40 = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  dirty_41 = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  dirty_42 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  dirty_43 = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  dirty_44 = _RAND_237[0:0];
  _RAND_238 = {1{`RANDOM}};
  dirty_45 = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  dirty_46 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  dirty_47 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  dirty_48 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  dirty_49 = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  dirty_50 = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  dirty_51 = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  dirty_52 = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  dirty_53 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  dirty_54 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  dirty_55 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  dirty_56 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  dirty_57 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  dirty_58 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  dirty_59 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  dirty_60 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  dirty_61 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  dirty_62 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  dirty_63 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  reg_data_addr = _RAND_257[31:0];
  _RAND_258 = {1{`RANDOM}};
  reg_cache_fill = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  reg_data_req_w = _RAND_259[0:0];
  _RAND_260 = {2{`RANDOM}};
  reg_data_strb = _RAND_260[63:0];
  _RAND_261 = {4{`RANDOM}};
  reg_data_write = _RAND_261[127:0];
  _RAND_262 = {1{`RANDOM}};
  data_ready2core = _RAND_262[0:0];
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
  wire [63:0] core_io_dmem_data_strb; // @[SimTop.scala 16:24]
  wire [63:0] core_io_dmem_data_read; // @[SimTop.scala 16:24]
  wire [63:0] core_io_dmem_data_write; // @[SimTop.scala 16:24]
  wire  core2axi_clock; // @[SimTop.scala 17:24]
  wire  core2axi_reset; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_ar_ready; // @[SimTop.scala 17:24]
  wire  core2axi_io_axi2ram_ar_valid; // @[SimTop.scala 17:24]
  wire [31:0] core2axi_io_axi2ram_ar_bits_addr; // @[SimTop.scala 17:24]
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
  wire [63:0] core2axi_io_dmem_data_strb; // @[SimTop.scala 17:24]
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
  wire  dcache_clock; // @[SimTop.scala 19:24]
  wire  dcache_reset; // @[SimTop.scala 19:24]
  wire  dcache_io_core_data_data_ready; // @[SimTop.scala 19:24]
  wire  dcache_io_core_data_data_req_r; // @[SimTop.scala 19:24]
  wire  dcache_io_core_data_data_req_w; // @[SimTop.scala 19:24]
  wire [31:0] dcache_io_core_data_data_addr_r; // @[SimTop.scala 19:24]
  wire [63:0] dcache_io_core_data_data_strb; // @[SimTop.scala 19:24]
  wire [63:0] dcache_io_core_data_data_read; // @[SimTop.scala 19:24]
  wire [63:0] dcache_io_core_data_data_write; // @[SimTop.scala 19:24]
  wire  dcache_io_axi_data_data_ready; // @[SimTop.scala 19:24]
  wire  dcache_io_axi_data_data_req_r; // @[SimTop.scala 19:24]
  wire  dcache_io_axi_data_data_req_w; // @[SimTop.scala 19:24]
  wire [31:0] dcache_io_axi_data_data_addr_r; // @[SimTop.scala 19:24]
  wire [31:0] dcache_io_axi_data_data_addr_w; // @[SimTop.scala 19:24]
  wire [63:0] dcache_io_axi_data_data_strb; // @[SimTop.scala 19:24]
  wire [127:0] dcache_io_axi_data_data_read; // @[SimTop.scala 19:24]
  wire [127:0] dcache_io_axi_data_data_write; // @[SimTop.scala 19:24]
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
  Dcache dcache ( // @[SimTop.scala 19:24]
    .clock(dcache_clock),
    .reset(dcache_reset),
    .io_core_data_data_ready(dcache_io_core_data_data_ready),
    .io_core_data_data_req_r(dcache_io_core_data_data_req_r),
    .io_core_data_data_req_w(dcache_io_core_data_data_req_w),
    .io_core_data_data_addr_r(dcache_io_core_data_data_addr_r),
    .io_core_data_data_strb(dcache_io_core_data_data_strb),
    .io_core_data_data_read(dcache_io_core_data_data_read),
    .io_core_data_data_write(dcache_io_core_data_data_write),
    .io_axi_data_data_ready(dcache_io_axi_data_data_ready),
    .io_axi_data_data_req_r(dcache_io_axi_data_data_req_r),
    .io_axi_data_data_req_w(dcache_io_axi_data_data_req_w),
    .io_axi_data_data_addr_r(dcache_io_axi_data_data_addr_r),
    .io_axi_data_data_addr_w(dcache_io_axi_data_data_addr_w),
    .io_axi_data_data_strb(dcache_io_axi_data_data_strb),
    .io_axi_data_data_read(dcache_io_axi_data_data_read),
    .io_axi_data_data_write(dcache_io_axi_data_data_write)
  );
  assign io_uart_out_valid = 1'h0; // @[SimTop.scala 39:21]
  assign io_uart_out_ch = 8'h0; // @[SimTop.scala 40:18]
  assign io_uart_in_valid = 1'h0; // @[SimTop.scala 41:20]
  assign io_memAXI_0_ar_valid = core2axi_io_axi2ram_ar_valid; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_id = 4'h0; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_user = 1'h0; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_addr = core2axi_io_axi2ram_ar_bits_addr; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_len = 8'h1; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_size = 3'h3; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_burst = 2'h1; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_lock = 2'h0; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_cache = 4'h2; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_prot = 3'h0; // @[SimTop.scala 31:18]
  assign io_memAXI_0_ar_bits_qos = 4'h0; // @[SimTop.scala 31:18]
  assign io_memAXI_0_r_ready = 1'h1; // @[SimTop.scala 32:18]
  assign io_memAXI_0_aw_valid = core2axi_io_axi2ram_aw_valid; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_id = 4'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_user = 1'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_addr = core2axi_io_axi2ram_aw_bits_addr; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_len = 8'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_size = 3'h3; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_burst = 2'h1; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_lock = 2'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_cache = 4'h2; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_prot = 3'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_aw_bits_qos = 4'h0; // @[SimTop.scala 28:18]
  assign io_memAXI_0_w_valid = core2axi_io_axi2ram_w_valid; // @[SimTop.scala 29:18]
  assign io_memAXI_0_w_bits_id = 4'h0; // @[SimTop.scala 29:18]
  assign io_memAXI_0_w_bits_data = core2axi_io_axi2ram_w_bits_data; // @[SimTop.scala 29:18]
  assign io_memAXI_0_w_bits_strb = core2axi_io_axi2ram_w_bits_strb; // @[SimTop.scala 29:18]
  assign io_memAXI_0_w_bits_last = 1'h1; // @[SimTop.scala 29:18]
  assign io_memAXI_0_b_ready = 1'h1; // @[SimTop.scala 30:18]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_imem_inst_ready = icache_io_core_inst_inst_ready; // @[SimTop.scala 21:16]
  assign core_io_imem_inst_read = icache_io_core_inst_inst_read; // @[SimTop.scala 21:16]
  assign core_io_dmem_data_ready = dcache_io_core_data_data_ready; // @[SimTop.scala 22:16]
  assign core_io_dmem_data_read = dcache_io_core_data_data_read; // @[SimTop.scala 22:16]
  assign core2axi_clock = clock;
  assign core2axi_reset = reset;
  assign core2axi_io_axi2ram_ar_ready = io_memAXI_0_ar_ready; // @[SimTop.scala 31:18]
  assign core2axi_io_axi2ram_r_valid = io_memAXI_0_r_valid; // @[SimTop.scala 32:18]
  assign core2axi_io_axi2ram_r_bits_data = io_memAXI_0_r_bits_data; // @[SimTop.scala 32:18]
  assign core2axi_io_axi2ram_r_bits_last = io_memAXI_0_r_bits_last; // @[SimTop.scala 32:18]
  assign core2axi_io_axi2ram_aw_ready = io_memAXI_0_aw_ready; // @[SimTop.scala 28:18]
  assign core2axi_io_axi2ram_w_ready = io_memAXI_0_w_ready; // @[SimTop.scala 29:18]
  assign core2axi_io_axi2ram_b_valid = io_memAXI_0_b_valid; // @[SimTop.scala 30:18]
  assign core2axi_io_imem_inst_req = icache_io_axi_inst_inst_req; // @[SimTop.scala 24:22]
  assign core2axi_io_imem_inst_addr = icache_io_axi_inst_inst_addr; // @[SimTop.scala 24:22]
  assign core2axi_io_dmem_data_req_r = dcache_io_axi_data_data_req_r; // @[SimTop.scala 25:22]
  assign core2axi_io_dmem_data_req_w = dcache_io_axi_data_data_req_w; // @[SimTop.scala 25:22]
  assign core2axi_io_dmem_data_addr_r = dcache_io_axi_data_data_addr_r; // @[SimTop.scala 25:22]
  assign core2axi_io_dmem_data_addr_w = dcache_io_axi_data_data_addr_w; // @[SimTop.scala 25:22]
  assign core2axi_io_dmem_data_strb = dcache_io_axi_data_data_strb; // @[SimTop.scala 25:22]
  assign core2axi_io_dmem_data_write = dcache_io_axi_data_data_write; // @[SimTop.scala 25:22]
  assign icache_clock = clock;
  assign icache_reset = reset;
  assign icache_io_core_inst_inst_req = core_io_imem_inst_req; // @[SimTop.scala 21:16]
  assign icache_io_core_inst_inst_addr = core_io_imem_inst_addr; // @[SimTop.scala 21:16]
  assign icache_io_axi_inst_inst_ready = core2axi_io_imem_inst_ready; // @[SimTop.scala 24:22]
  assign icache_io_axi_inst_inst_read = core2axi_io_imem_inst_read; // @[SimTop.scala 24:22]
  assign dcache_clock = clock;
  assign dcache_reset = reset;
  assign dcache_io_core_data_data_req_r = core_io_dmem_data_req_r; // @[SimTop.scala 22:16]
  assign dcache_io_core_data_data_req_w = core_io_dmem_data_req_w; // @[SimTop.scala 22:16]
  assign dcache_io_core_data_data_addr_r = core_io_dmem_data_addr_r; // @[SimTop.scala 22:16]
  assign dcache_io_core_data_data_strb = core_io_dmem_data_strb; // @[SimTop.scala 22:16]
  assign dcache_io_core_data_data_write = core_io_dmem_data_write; // @[SimTop.scala 22:16]
  assign dcache_io_axi_data_data_ready = core2axi_io_dmem_data_ready; // @[SimTop.scala 25:22]
  assign dcache_io_axi_data_data_read = core2axi_io_dmem_data_read; // @[SimTop.scala 25:22]
endmodule
