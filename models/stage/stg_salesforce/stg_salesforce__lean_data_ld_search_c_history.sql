
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_search_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        lean_data_match_0_c,
        lean_data_match_100_c,
        lean_data_match_101_c,
        lean_data_match_102_c,
        lean_data_match_103_c,
        lean_data_match_104_c,
        lean_data_match_105_c,
        lean_data_match_106_c,
        lean_data_match_107_c,
        lean_data_match_108_c,
        lean_data_match_109_c,
        lean_data_match_10_c,
        lean_data_match_110_c,
        lean_data_match_111_c,
        lean_data_match_112_c,
        lean_data_match_113_c,
        lean_data_match_114_c,
        lean_data_match_115_c,
        lean_data_match_116_c,
        lean_data_match_117_c,
        lean_data_match_118_c,
        lean_data_match_119_c,
        lean_data_match_11_c,
        lean_data_match_120_c,
        lean_data_match_121_c,
        lean_data_match_122_c,
        lean_data_match_123_c,
        lean_data_match_124_c,
        lean_data_match_125_c,
        lean_data_match_126_c,
        lean_data_match_127_c,
        lean_data_match_128_c,
        lean_data_match_129_c,
        lean_data_match_12_c,
        lean_data_match_130_c,
        lean_data_match_131_c,
        lean_data_match_132_c,
        lean_data_match_133_c,
        lean_data_match_134_c,
        lean_data_match_135_c,
        lean_data_match_136_c,
        lean_data_match_137_c,
        lean_data_match_138_c,
        lean_data_match_139_c,
        lean_data_match_13_c,
        lean_data_match_140_c,
        lean_data_match_141_c,
        lean_data_match_142_c,
        lean_data_match_143_c,
        lean_data_match_144_c,
        lean_data_match_145_c,
        lean_data_match_146_c,
        lean_data_match_147_c,
        lean_data_match_148_c,
        lean_data_match_149_c,
        lean_data_match_14_c,
        lean_data_match_150_c,
        lean_data_match_151_c,
        lean_data_match_152_c,
        lean_data_match_153_c,
        lean_data_match_154_c,
        lean_data_match_155_c,
        lean_data_match_156_c,
        lean_data_match_157_c,
        lean_data_match_158_c,
        lean_data_match_159_c,
        lean_data_match_15_c,
        lean_data_match_160_c,
        lean_data_match_161_c,
        lean_data_match_162_c,
        lean_data_match_163_c,
        lean_data_match_164_c,
        lean_data_match_165_c,
        lean_data_match_166_c,
        lean_data_match_167_c,
        lean_data_match_168_c,
        lean_data_match_169_c,
        lean_data_match_16_c,
        lean_data_match_170_c,
        lean_data_match_171_c,
        lean_data_match_172_c,
        lean_data_match_173_c,
        lean_data_match_174_c,
        lean_data_match_175_c,
        lean_data_match_176_c,
        lean_data_match_177_c,
        lean_data_match_178_c,
        lean_data_match_179_c,
        lean_data_match_17_c,
        lean_data_match_180_c,
        lean_data_match_181_c,
        lean_data_match_182_c,
        lean_data_match_183_c,
        lean_data_match_184_c,
        lean_data_match_185_c,
        lean_data_match_186_c,
        lean_data_match_187_c,
        lean_data_match_188_c,
        lean_data_match_189_c,
        lean_data_match_18_c,
        lean_data_match_190_c,
        lean_data_match_191_c,
        lean_data_match_192_c,
        lean_data_match_193_c,
        lean_data_match_194_c,
        lean_data_match_195_c,
        lean_data_match_196_c,
        lean_data_match_197_c,
        lean_data_match_198_c,
        lean_data_match_199_c,
        lean_data_match_19_c,
        lean_data_match_1_c,
        lean_data_match_200_c,
        lean_data_match_201_c,
        lean_data_match_202_c,
        lean_data_match_203_c,
        lean_data_match_204_c,
        lean_data_match_205_c,
        lean_data_match_206_c,
        lean_data_match_207_c,
        lean_data_match_208_c,
        lean_data_match_209_c,
        lean_data_match_20_c,
        lean_data_match_210_c,
        lean_data_match_211_c,
        lean_data_match_212_c,
        lean_data_match_213_c,
        lean_data_match_214_c,
        lean_data_match_215_c,
        lean_data_match_216_c,
        lean_data_match_217_c,
        lean_data_match_218_c,
        lean_data_match_219_c,
        lean_data_match_21_c,
        lean_data_match_220_c,
        lean_data_match_221_c,
        lean_data_match_222_c,
        lean_data_match_223_c,
        lean_data_match_224_c,
        lean_data_match_225_c,
        lean_data_match_226_c,
        lean_data_match_227_c,
        lean_data_match_228_c,
        lean_data_match_229_c,
        lean_data_match_22_c,
        lean_data_match_230_c,
        lean_data_match_231_c,
        lean_data_match_232_c,
        lean_data_match_233_c,
        lean_data_match_234_c,
        lean_data_match_235_c,
        lean_data_match_236_c,
        lean_data_match_237_c,
        lean_data_match_238_c,
        lean_data_match_239_c,
        lean_data_match_23_c,
        lean_data_match_240_c,
        lean_data_match_241_c,
        lean_data_match_242_c,
        lean_data_match_243_c,
        lean_data_match_244_c,
        lean_data_match_245_c,
        lean_data_match_246_c,
        lean_data_match_247_c,
        lean_data_match_248_c,
        lean_data_match_249_c,
        lean_data_match_24_c,
        lean_data_match_250_c,
        lean_data_match_251_c,
        lean_data_match_252_c,
        lean_data_match_253_c,
        lean_data_match_254_c,
        lean_data_match_255_c,
        lean_data_match_256_c,
        lean_data_match_257_c,
        lean_data_match_258_c,
        lean_data_match_259_c,
        lean_data_match_25_c,
        lean_data_match_260_c,
        lean_data_match_261_c,
        lean_data_match_262_c,
        lean_data_match_263_c,
        lean_data_match_264_c,
        lean_data_match_265_c,
        lean_data_match_266_c,
        lean_data_match_267_c,
        lean_data_match_268_c,
        lean_data_match_269_c,
        lean_data_match_26_c,
        lean_data_match_270_c,
        lean_data_match_271_c,
        lean_data_match_272_c,
        lean_data_match_273_c,
        lean_data_match_274_c,
        lean_data_match_275_c,
        lean_data_match_276_c,
        lean_data_match_277_c,
        lean_data_match_278_c,
        lean_data_match_279_c,
        lean_data_match_27_c,
        lean_data_match_280_c,
        lean_data_match_281_c,
        lean_data_match_282_c,
        lean_data_match_283_c,
        lean_data_match_284_c,
        lean_data_match_285_c,
        lean_data_match_286_c,
        lean_data_match_287_c,
        lean_data_match_288_c,
        lean_data_match_289_c,
        lean_data_match_28_c,
        lean_data_match_290_c,
        lean_data_match_291_c,
        lean_data_match_292_c,
        lean_data_match_293_c,
        lean_data_match_294_c,
        lean_data_match_295_c,
        lean_data_match_296_c,
        lean_data_match_297_c,
        lean_data_match_298_c,
        lean_data_match_299_c,
        lean_data_match_29_c,
        lean_data_match_2_c,
        lean_data_match_300_c,
        lean_data_match_301_c,
        lean_data_match_302_c,
        lean_data_match_303_c,
        lean_data_match_304_c,
        lean_data_match_305_c,
        lean_data_match_306_c,
        lean_data_match_307_c,
        lean_data_match_308_c,
        lean_data_match_309_c,
        lean_data_match_30_c,
        lean_data_match_310_c,
        lean_data_match_311_c,
        lean_data_match_312_c,
        lean_data_match_313_c,
        lean_data_match_314_c,
        lean_data_match_315_c,
        lean_data_match_316_c,
        lean_data_match_317_c,
        lean_data_match_318_c,
        lean_data_match_319_c,
        lean_data_match_31_c,
        lean_data_match_320_c,
        lean_data_match_321_c,
        lean_data_match_322_c,
        lean_data_match_323_c,
        lean_data_match_324_c,
        lean_data_match_325_c,
        lean_data_match_326_c,
        lean_data_match_327_c,
        lean_data_match_328_c,
        lean_data_match_329_c,
        lean_data_match_32_c,
        lean_data_match_330_c,
        lean_data_match_331_c,
        lean_data_match_332_c,
        lean_data_match_333_c,
        lean_data_match_334_c,
        lean_data_match_335_c,
        lean_data_match_336_c,
        lean_data_match_337_c,
        lean_data_match_338_c,
        lean_data_match_339_c,
        lean_data_match_33_c,
        lean_data_match_340_c,
        lean_data_match_341_c,
        lean_data_match_342_c,
        lean_data_match_343_c,
        lean_data_match_344_c,
        lean_data_match_345_c,
        lean_data_match_346_c,
        lean_data_match_347_c,
        lean_data_match_348_c,
        lean_data_match_349_c,
        lean_data_match_34_c,
        lean_data_match_350_c,
        lean_data_match_351_c,
        lean_data_match_352_c,
        lean_data_match_353_c,
        lean_data_match_354_c,
        lean_data_match_355_c,
        lean_data_match_356_c,
        lean_data_match_357_c,
        lean_data_match_358_c,
        lean_data_match_359_c,
        lean_data_match_35_c,
        lean_data_match_360_c,
        lean_data_match_361_c,
        lean_data_match_362_c,
        lean_data_match_363_c,
        lean_data_match_364_c,
        lean_data_match_365_c,
        lean_data_match_366_c,
        lean_data_match_367_c,
        lean_data_match_368_c,
        lean_data_match_369_c,
        lean_data_match_36_c,
        lean_data_match_370_c,
        lean_data_match_371_c,
        lean_data_match_372_c,
        lean_data_match_373_c,
        lean_data_match_374_c,
        lean_data_match_375_c,
        lean_data_match_376_c,
        lean_data_match_377_c,
        lean_data_match_378_c,
        lean_data_match_379_c,
        lean_data_match_37_c,
        lean_data_match_380_c,
        lean_data_match_381_c,
        lean_data_match_382_c,
        lean_data_match_383_c,
        lean_data_match_384_c,
        lean_data_match_385_c,
        lean_data_match_386_c,
        lean_data_match_387_c,
        lean_data_match_388_c,
        lean_data_match_389_c,
        lean_data_match_38_c,
        lean_data_match_390_c,
        lean_data_match_391_c,
        lean_data_match_392_c,
        lean_data_match_393_c,
        lean_data_match_394_c,
        lean_data_match_395_c,
        lean_data_match_396_c,
        lean_data_match_397_c,
        lean_data_match_398_c,
        lean_data_match_399_c,
        lean_data_match_39_c,
        lean_data_match_3_c,
        lean_data_match_400_c,
        lean_data_match_401_c,
        lean_data_match_402_c,
        lean_data_match_403_c,
        lean_data_match_404_c,
        lean_data_match_405_c,
        lean_data_match_406_c,
        lean_data_match_407_c,
        lean_data_match_408_c,
        lean_data_match_409_c,
        lean_data_match_40_c,
        lean_data_match_410_c,
        lean_data_match_411_c,
        lean_data_match_412_c,
        lean_data_match_413_c,
        lean_data_match_414_c,
        lean_data_match_415_c,
        lean_data_match_416_c,
        lean_data_match_417_c,
        lean_data_match_418_c,
        lean_data_match_419_c,
        lean_data_match_41_c,
        lean_data_match_420_c,
        lean_data_match_421_c,
        lean_data_match_422_c,
        lean_data_match_423_c,
        lean_data_match_424_c,
        lean_data_match_425_c,
        lean_data_match_426_c,
        lean_data_match_427_c,
        lean_data_match_428_c,
        lean_data_match_429_c,
        lean_data_match_42_c,
        lean_data_match_430_c,
        lean_data_match_431_c,
        lean_data_match_432_c,
        lean_data_match_433_c,
        lean_data_match_434_c,
        lean_data_match_435_c,
        lean_data_match_436_c,
        lean_data_match_437_c,
        lean_data_match_438_c,
        lean_data_match_439_c,
        lean_data_match_43_c,
        lean_data_match_440_c,
        lean_data_match_441_c,
        lean_data_match_442_c,
        lean_data_match_443_c,
        lean_data_match_444_c,
        lean_data_match_445_c,
        lean_data_match_446_c,
        lean_data_match_447_c,
        lean_data_match_448_c,
        lean_data_match_449_c,
        lean_data_match_44_c,
        lean_data_match_450_c,
        lean_data_match_451_c,
        lean_data_match_452_c,
        lean_data_match_453_c,
        lean_data_match_454_c,
        lean_data_match_455_c,
        lean_data_match_456_c,
        lean_data_match_457_c,
        lean_data_match_458_c,
        lean_data_match_459_c,
        lean_data_match_45_c,
        lean_data_match_460_c,
        lean_data_match_461_c,
        lean_data_match_462_c,
        lean_data_match_463_c,
        lean_data_match_464_c,
        lean_data_match_465_c,
        lean_data_match_466_c,
        lean_data_match_467_c,
        lean_data_match_468_c,
        lean_data_match_469_c,
        lean_data_match_46_c,
        lean_data_match_470_c,
        lean_data_match_471_c,
        lean_data_match_472_c,
        lean_data_match_473_c,
        lean_data_match_474_c,
        lean_data_match_475_c,
        lean_data_match_476_c,
        lean_data_match_477_c,
        lean_data_match_478_c,
        lean_data_match_479_c,
        lean_data_match_47_c,
        lean_data_match_480_c,
        lean_data_match_481_c,
        lean_data_match_482_c,
        lean_data_match_483_c,
        lean_data_match_484_c,
        lean_data_match_485_c,
        lean_data_match_486_c,
        lean_data_match_487_c,
        lean_data_match_488_c,
        lean_data_match_489_c,
        lean_data_match_48_c,
        lean_data_match_490_c,
        lean_data_match_49_c,
        lean_data_match_4_c,
        lean_data_match_50_c,
        lean_data_match_51_c,
        lean_data_match_52_c,
        lean_data_match_53_c,
        lean_data_match_54_c,
        lean_data_match_55_c,
        lean_data_match_56_c,
        lean_data_match_57_c,
        lean_data_match_58_c,
        lean_data_match_59_c,
        lean_data_match_5_c,
        lean_data_match_60_c,
        lean_data_match_61_c,
        lean_data_match_62_c,
        lean_data_match_63_c,
        lean_data_match_64_c,
        lean_data_match_65_c,
        lean_data_match_66_c,
        lean_data_match_67_c,
        lean_data_match_68_c,
        lean_data_match_69_c,
        lean_data_match_6_c,
        lean_data_match_70_c,
        lean_data_match_71_c,
        lean_data_match_72_c,
        lean_data_match_73_c,
        lean_data_match_74_c,
        lean_data_match_75_c,
        lean_data_match_76_c,
        lean_data_match_77_c,
        lean_data_match_78_c,
        lean_data_match_79_c,
        lean_data_match_7_c,
        lean_data_match_80_c,
        lean_data_match_81_c,
        lean_data_match_82_c,
        lean_data_match_83_c,
        lean_data_match_84_c,
        lean_data_match_85_c,
        lean_data_match_86_c,
        lean_data_match_87_c,
        lean_data_match_88_c,
        lean_data_match_89_c,
        lean_data_match_8_c,
        lean_data_match_90_c,
        lean_data_match_91_c,
        lean_data_match_92_c,
        lean_data_match_93_c,
        lean_data_match_94_c,
        lean_data_match_95_c,
        lean_data_match_96_c,
        lean_data_match_97_c,
        lean_data_match_98_c,
        lean_data_match_99_c,
        lean_data_match_9_c,
        lean_data_tokens_0_c,
        lean_data_tokens_1_c,
        lean_data_tokens_2_c,
        lean_data_tokens_3_c,
        lean_data_tokens_4_c,
        lean_data_tokens_5_c,
        lean_data_tokens_6_c

    from source

)

select * from renamed