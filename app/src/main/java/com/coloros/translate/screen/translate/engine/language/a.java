package com.coloros.translate.screen.translate.engine.language;

import com.coloros.translate.screen.R$string;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ a[] $VALUES;
    public static final a ARABIC;
    public static final a AUTO;
    public static final a BENGALI;
    public static final a CAMBODIAN;
    public static final a CHINESE;
    public static final a CHINESE_TW;
    public static final a ENGLISH;
    public static final a FILIPINO;
    public static final a FRENCH;
    public static final a GERMAN;
    public static final a HINDI;
    public static final a INDONESIAN;
    public static final a ITALIANO;
    public static final a JAPANESE;
    public static final a KOREAN;
    public static final a MALAY;
    public static final a POLISH;
    public static final a PORTUGUESE;
    public static final a PORTUGUESE_BR;
    public static final a RUSSIA;
    public static final a SPANISH;
    public static final a SPANISH_MX;
    public static final a THAI;
    public static final a TURKISH;
    public static final a URDU;
    public static final a VIETNAMESE;
    private final String code;
    private final int fullNameResId;
    private final int simpleNameResId;
    private final int sortIndex;

    private static final /* synthetic */ a[] $values() {
        return new a[]{AUTO, CHINESE, CHINESE_TW, ENGLISH, JAPANESE, KOREAN, ITALIANO, FRENCH, SPANISH, SPANISH_MX, PORTUGUESE, PORTUGUESE_BR, VIETNAMESE, THAI, MALAY, INDONESIAN, HINDI, RUSSIA, GERMAN, FILIPINO, URDU, ARABIC, CAMBODIAN, BENGALI, TURKISH, POLISH};
    }

    static {
        int i10 = R$string.screen_trans_simple_auto;
        int i11 = R$string.translate_unified_auto_detect_v2;
        int i12 = d.f5573a;
        d.f5573a = i12 + 1;
        AUTO = new a("AUTO", 0, "auto", i10, i11, i12);
        int i13 = R$string.screen_trans_simple_ch;
        int i14 = R$string.simplified_chinese;
        int i15 = d.f5573a;
        d.f5573a = i15 + 1;
        CHINESE = new a("CHINESE", 1, "zh", i13, i14, i15);
        int i16 = R$string.screen_trans_traditional_ch;
        int i17 = R$string.chinese_traditional;
        int i18 = d.f5573a;
        d.f5573a = i18 + 1;
        CHINESE_TW = new a("CHINESE_TW", 2, "zh-TW", i16, i17, i18);
        int i19 = R$string.screen_trans_simple_en;
        int i20 = R$string.english_os15;
        int i21 = d.f5573a;
        d.f5573a = i21 + 1;
        ENGLISH = new a("ENGLISH", 3, "en", i19, i20, i21);
        int i22 = R$string.screen_trans_simple_jp;
        int i23 = R$string.japanese_os15;
        int i24 = d.f5573a;
        d.f5573a = i24 + 1;
        JAPANESE = new a("JAPANESE", 4, "ja", i22, i23, i24);
        int i25 = R$string.screen_trans_simple_kr;
        int i26 = R$string.korean_os15;
        int i27 = d.f5573a;
        d.f5573a = i27 + 1;
        KOREAN = new a("KOREAN", 5, "ko", i25, i26, i27);
        int i28 = R$string.screen_trans_simple_it;
        int i29 = R$string.italian_os15;
        int i30 = d.f5573a;
        d.f5573a = i30 + 1;
        ITALIANO = new a("ITALIANO", 6, "it", i28, i29, i30);
        int i31 = R$string.screen_trans_simple_fr;
        int i32 = R$string.french_os15;
        int i33 = d.f5573a;
        d.f5573a = i33 + 1;
        FRENCH = new a("FRENCH", 7, "fr", i31, i32, i33);
        int i34 = R$string.screen_trans_simple_es_es;
        int i35 = R$string.spanish_spain_os15;
        int i36 = d.f5573a;
        d.f5573a = i36 + 1;
        SPANISH = new a("SPANISH", 8, "es", i34, i35, i36);
        int i37 = R$string.screen_trans_simple_es_mx;
        int i38 = R$string.spanish_mexico_os15;
        int i39 = d.f5573a;
        d.f5573a = i39 + 1;
        SPANISH_MX = new a("SPANISH_MX", 9, "es-MX", i37, i38, i39);
        int i40 = R$string.screen_trans_simple_pt_pt;
        int i41 = R$string.portuguese_portugal_os15;
        int i42 = d.f5573a;
        d.f5573a = i42 + 1;
        PORTUGUESE = new a("PORTUGUESE", 10, "pt", i40, i41, i42);
        int i43 = R$string.screen_trans_simple_pt_br;
        int i44 = R$string.portuguese_brazil_os15;
        int i45 = d.f5573a;
        d.f5573a = i45 + 1;
        PORTUGUESE_BR = new a("PORTUGUESE_BR", 11, "pt-BR", i43, i44, i45);
        int i46 = R$string.screen_trans_simple_vi;
        int i47 = R$string.vietnamese_os15;
        int i48 = d.f5573a;
        d.f5573a = i48 + 1;
        VIETNAMESE = new a("VIETNAMESE", 12, "vi", i46, i47, i48);
        int i49 = R$string.screen_trans_simple_th;
        int i50 = R$string.thai_os15;
        int i51 = d.f5573a;
        d.f5573a = i51 + 1;
        THAI = new a("THAI", 13, "th", i49, i50, i51);
        int i52 = R$string.screen_trans_simple_ms;
        int i53 = R$string.malay_os15;
        int i54 = d.f5573a;
        d.f5573a = i54 + 1;
        MALAY = new a("MALAY", 14, "ms", i52, i53, i54);
        int i55 = R$string.screen_trans_simple_id;
        int i56 = R$string.indonesian_os15;
        int i57 = d.f5573a;
        d.f5573a = i57 + 1;
        INDONESIAN = new a("INDONESIAN", 15, "id", i55, i56, i57);
        int i58 = R$string.screen_trans_simple_hi;
        int i59 = R$string.indian_os15;
        int i60 = d.f5573a;
        d.f5573a = i60 + 1;
        HINDI = new a("HINDI", 16, "hi", i58, i59, i60);
        int i61 = R$string.screen_trans_simple_ru;
        int i62 = R$string.russian_os15;
        int i63 = d.f5573a;
        d.f5573a = i63 + 1;
        RUSSIA = new a("RUSSIA", 17, "ru", i61, i62, i63);
        int i64 = R$string.screen_trans_simple_de;
        int i65 = R$string.german_os15;
        int i66 = d.f5573a;
        d.f5573a = i66 + 1;
        GERMAN = new a("GERMAN", 18, "de", i64, i65, i66);
        int i67 = R$string.screen_trans_simple_tl;
        int i68 = R$string.filipino_os15;
        int i69 = d.f5573a;
        d.f5573a = i69 + 1;
        FILIPINO = new a("FILIPINO", 19, "tl", i67, i68, i69);
        int i70 = R$string.screen_trans_simple_ur;
        int i71 = R$string.urdu_os15;
        int i72 = d.f5573a;
        d.f5573a = i72 + 1;
        URDU = new a("URDU", 20, "ur", i70, i71, i72);
        int i73 = R$string.screen_trans_simple_ar;
        int i74 = R$string.arabic_os15;
        int i75 = d.f5573a;
        d.f5573a = i75 + 1;
        ARABIC = new a("ARABIC", 21, "ar", i73, i74, i75);
        int i76 = R$string.screen_trans_simple_km;
        int i77 = R$string.cambodian_km_os15;
        int i78 = d.f5573a;
        d.f5573a = i78 + 1;
        CAMBODIAN = new a("CAMBODIAN", 22, "km", i76, i77, i78);
        int i79 = R$string.screen_trans_simple_bn;
        int i80 = R$string.bengali_os15;
        int i81 = d.f5573a;
        d.f5573a = i81 + 1;
        BENGALI = new a("BENGALI", 23, "bn", i79, i80, i81);
        int i82 = R$string.screen_trans_simple_tr;
        int i83 = R$string.turkish_os15;
        int i84 = d.f5573a;
        d.f5573a = i84 + 1;
        TURKISH = new a("TURKISH", 24, "tr", i82, i83, i84);
        int i85 = R$string.screen_trans_simple_pl;
        int i86 = R$string.polish_os15;
        int i87 = d.f5573a;
        d.f5573a = i87 + 1;
        POLISH = new a("POLISH", 25, "pl", i85, i86, i87);
        a[] aVarArr$values = $values();
        $VALUES = aVarArr$values;
        $ENTRIES = r8.b.a(aVarArr$values);
    }

    private a(String str, int i10, String str2, int i11, int i12, int i13) {
        this.code = str2;
        this.simpleNameResId = i11;
        this.fullNameResId = i12;
        this.sortIndex = i13;
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) $VALUES.clone();
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
