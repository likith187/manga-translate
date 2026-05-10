package com.coloros.translate;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ b[] $VALUES;
    public static final b ARABIC;
    public static final b AUTO;
    public static final b BENGALI;
    public static final b CAMBODIAN;
    public static final b CHINESE;
    public static final b CHINESE_TW;
    public static final b ENGLISH;
    public static final b FILIPINO;
    public static final b FRENCH;
    public static final b GERMAN;
    public static final b GUJRATI;
    public static final b HINDI;
    public static final b INDONESIAN;
    public static final b ITALIANO;
    public static final b JAPANESE;
    public static final b KANADA;
    public static final b KOREAN;
    public static final b MALAY;
    public static final b MALAYALAM;
    public static final b MARATHI;
    public static final b MONGOLIAN;
    public static final b NONE;
    public static final b POLISH;
    public static final b PORTUGUESE;
    public static final b PORTUGUESE_BR;
    public static final b PUNJABI;
    public static final b RUSSIA;
    public static final b SPANISH;
    public static final b SPANISH_MX;
    public static final b TAMIL;
    public static final b TELEGU;
    public static final b THAI;
    public static final b TURKISH;
    public static final b URDU;
    public static final b VIETNAMESE;
    private final String code;
    private final int fullNameResId;
    private final int simpleNameResId;
    private final int sortIndex;

    private static final /* synthetic */ b[] $values() {
        return new b[]{NONE, AUTO, CHINESE, CHINESE_TW, ENGLISH, JAPANESE, KOREAN, ITALIANO, FRENCH, SPANISH, SPANISH_MX, PORTUGUESE, PORTUGUESE_BR, VIETNAMESE, THAI, MALAY, INDONESIAN, HINDI, RUSSIA, FILIPINO, GERMAN, URDU, ARABIC, CAMBODIAN, BENGALI, TURKISH, POLISH, KANADA, MARATHI, GUJRATI, TAMIL, MALAYALAM, TELEGU, PUNJABI, MONGOLIAN};
    }

    static {
        int i10 = R.string.simplified_chinese;
        NONE = new b("NONE", 0, "none", i10, i10, c.f4817a);
        int i11 = com.coloros.translate.screen.R$string.screen_trans_simple_auto;
        int i12 = com.coloros.translate.screen.R$string.translate_unified_auto_detect_v2;
        int i13 = c.f4817a;
        c.f4817a = i13 + 1;
        AUTO = new b("AUTO", 1, "auto", i11, i12, i13);
        int i14 = R.string.screen_trans_simple_ch;
        int i15 = R.string.simplified_chinese;
        int i16 = c.f4817a;
        c.f4817a = i16 + 1;
        CHINESE = new b("CHINESE", 2, "zh", i14, i15, i16);
        int i17 = R.string.screen_trans_traditional_ch;
        int i18 = R.string.chinese_traditional;
        int i19 = c.f4817a;
        c.f4817a = i19 + 1;
        CHINESE_TW = new b("CHINESE_TW", 3, "zh-TW", i17, i18, i19);
        int i20 = R.string.screen_trans_simple_en;
        int i21 = R.string.english_os15;
        int i22 = c.f4817a;
        c.f4817a = i22 + 1;
        ENGLISH = new b("ENGLISH", 4, "en", i20, i21, i22);
        int i23 = R.string.screen_trans_simple_jp;
        int i24 = R.string.japanese_os15;
        int i25 = c.f4817a;
        c.f4817a = i25 + 1;
        JAPANESE = new b("JAPANESE", 5, "ja", i23, i24, i25);
        int i26 = R.string.screen_trans_simple_kr;
        int i27 = R.string.korean_os15;
        int i28 = c.f4817a;
        c.f4817a = i28 + 1;
        KOREAN = new b("KOREAN", 6, "ko", i26, i27, i28);
        int i29 = R.string.screen_trans_simple_it;
        int i30 = R.string.italian_os15;
        int i31 = c.f4817a;
        c.f4817a = i31 + 1;
        ITALIANO = new b("ITALIANO", 7, "it", i29, i30, i31);
        int i32 = R.string.screen_trans_simple_fr;
        int i33 = R.string.french_os15;
        int i34 = c.f4817a;
        c.f4817a = i34 + 1;
        FRENCH = new b("FRENCH", 8, "fr", i32, i33, i34);
        int i35 = R.string.simple_es_es;
        int i36 = R.string.spanish_spain_os15;
        int i37 = c.f4817a;
        c.f4817a = i37 + 1;
        SPANISH = new b("SPANISH", 9, "es", i35, i36, i37);
        int i38 = R.string.simple_es_mx;
        int i39 = R.string.spanish_mexico_os15;
        int i40 = c.f4817a;
        c.f4817a = i40 + 1;
        SPANISH_MX = new b("SPANISH_MX", 10, "es-MX", i38, i39, i40);
        int i41 = R.string.simple_pt_pt;
        int i42 = R.string.portuguese_portugal_os15;
        int i43 = c.f4817a;
        c.f4817a = i43 + 1;
        PORTUGUESE = new b("PORTUGUESE", 11, "pt", i41, i42, i43);
        int i44 = R.string.simple_pt_br;
        int i45 = R.string.portuguese_brazil_os15;
        int i46 = c.f4817a;
        c.f4817a = i46 + 1;
        PORTUGUESE_BR = new b("PORTUGUESE_BR", 12, "pt-BR", i44, i45, i46);
        int i47 = R.string.screen_trans_simple_vi;
        int i48 = R.string.vietnamese_os15;
        int i49 = c.f4817a;
        c.f4817a = i49 + 1;
        VIETNAMESE = new b("VIETNAMESE", 13, "vi", i47, i48, i49);
        int i50 = R.string.screen_trans_simple_th;
        int i51 = R.string.thai_os15;
        int i52 = c.f4817a;
        c.f4817a = i52 + 1;
        THAI = new b("THAI", 14, "th", i50, i51, i52);
        int i53 = R.string.screen_trans_simple_ms;
        int i54 = R.string.malay_os15;
        int i55 = c.f4817a;
        c.f4817a = i55 + 1;
        MALAY = new b("MALAY", 15, "ms", i53, i54, i55);
        int i56 = R.string.screen_trans_simple_id;
        int i57 = R.string.indonesian_os15;
        int i58 = c.f4817a;
        c.f4817a = i58 + 1;
        INDONESIAN = new b("INDONESIAN", 16, "id", i56, i57, i58);
        int i59 = R.string.screen_trans_simple_hi;
        int i60 = R.string.indian_os15;
        int i61 = c.f4817a;
        c.f4817a = i61 + 1;
        HINDI = new b("HINDI", 17, "hi", i59, i60, i61);
        int i62 = R.string.screen_trans_simple_ru;
        int i63 = R.string.russian_os15;
        int i64 = c.f4817a;
        c.f4817a = i64 + 1;
        RUSSIA = new b("RUSSIA", 18, "ru", i62, i63, i64);
        int i65 = R.string.screen_trans_simple_tl;
        int i66 = R.string.filipino_os15;
        int i67 = c.f4817a;
        c.f4817a = i67 + 1;
        FILIPINO = new b("FILIPINO", 19, "tl", i65, i66, i67);
        int i68 = R.string.screen_trans_simple_de;
        int i69 = R.string.german_os15;
        int i70 = c.f4817a;
        c.f4817a = i70 + 1;
        GERMAN = new b("GERMAN", 20, "de", i68, i69, i70);
        int i71 = R.string.screen_trans_simple_ur;
        int i72 = R.string.urdu_os15;
        int i73 = c.f4817a;
        c.f4817a = i73 + 1;
        URDU = new b("URDU", 21, "ur", i71, i72, i73);
        int i74 = R.string.screen_trans_simple_ar;
        int i75 = R.string.arabic_os15;
        int i76 = c.f4817a;
        c.f4817a = i76 + 1;
        ARABIC = new b("ARABIC", 22, "ar", i74, i75, i76);
        int i77 = R.string.screen_trans_simple_km;
        int i78 = R.string.cambodian_km_os15;
        int i79 = c.f4817a;
        c.f4817a = i79 + 1;
        CAMBODIAN = new b("CAMBODIAN", 23, "km", i77, i78, i79);
        int i80 = R.string.screen_trans_simple_bn;
        int i81 = R.string.bengali_os15;
        int i82 = c.f4817a;
        c.f4817a = i82 + 1;
        BENGALI = new b("BENGALI", 24, "bn", i80, i81, i82);
        int i83 = R.string.screen_trans_simple_tr;
        int i84 = R.string.turkish_os15;
        int i85 = c.f4817a;
        c.f4817a = i85 + 1;
        TURKISH = new b("TURKISH", 25, "tr", i83, i84, i85);
        int i86 = R.string.screen_trans_simple_pl;
        int i87 = R.string.polish_os15;
        int i88 = c.f4817a;
        c.f4817a = i88 + 1;
        POLISH = new b("POLISH", 26, "pl", i86, i87, i88);
        int i89 = R.string.screen_trans_simple_kn;
        int i90 = R.string.kanada_os15;
        int i91 = c.f4817a;
        c.f4817a = i91 + 1;
        KANADA = new b("KANADA", 27, "kn", i89, i90, i91);
        int i92 = R.string.screen_trans_simple_mr;
        int i93 = R.string.marathi_os15;
        int i94 = c.f4817a;
        c.f4817a = i94 + 1;
        MARATHI = new b("MARATHI", 28, "mr", i92, i93, i94);
        int i95 = R.string.screen_trans_simple_gu;
        int i96 = R.string.gujrati_os15;
        int i97 = c.f4817a;
        c.f4817a = i97 + 1;
        GUJRATI = new b("GUJRATI", 29, "gu", i95, i96, i97);
        int i98 = R.string.screen_trans_simple_ta;
        int i99 = R.string.tamil_os15;
        int i100 = c.f4817a;
        c.f4817a = i100 + 1;
        TAMIL = new b("TAMIL", 30, "ta", i98, i99, i100);
        int i101 = R.string.screen_trans_simple_ml;
        int i102 = R.string.malayalam_os15;
        int i103 = c.f4817a;
        c.f4817a = i103 + 1;
        MALAYALAM = new b("MALAYALAM", 31, "ml", i101, i102, i103);
        int i104 = R.string.screen_trans_simple_te;
        int i105 = R.string.telegu_os15;
        int i106 = c.f4817a;
        c.f4817a = i106 + 1;
        TELEGU = new b("TELEGU", 32, "te", i104, i105, i106);
        int i107 = R.string.screen_trans_simple_pa;
        int i108 = R.string.punjabi_os15;
        int i109 = c.f4817a;
        c.f4817a = i109 + 1;
        PUNJABI = new b("PUNJABI", 33, "pa", i107, i108, i109);
        int i110 = R.string.screen_trans_simple_ch;
        int i111 = R.string.chinese;
        int i112 = c.f4817a;
        c.f4817a = i112 + 1;
        MONGOLIAN = new b("MONGOLIAN", 34, "mn", i110, i111, i112);
        b[] bVarArr$values = $values();
        $VALUES = bVarArr$values;
        $ENTRIES = r8.b.a(bVarArr$values);
    }

    private b(String str, int i10, String str2, int i11, int i12, int i13) {
        this.code = str2;
        this.simpleNameResId = i11;
        this.fullNameResId = i12;
        this.sortIndex = i13;
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }

    public final int getFullNameResId() {
        return this.fullNameResId;
    }

    public final String getLanguageCode() {
        return this.code;
    }

    public final int getSimpleNameResId() {
        return this.simpleNameResId;
    }

    public final int getSortIndex() {
        return this.sortIndex;
    }
}
