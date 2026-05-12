.class public final enum Lcom/coloros/translate/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/b;

.field public static final enum ARABIC:Lcom/coloros/translate/b;

.field public static final enum AUTO:Lcom/coloros/translate/b;

.field public static final enum BENGALI:Lcom/coloros/translate/b;

.field public static final enum CAMBODIAN:Lcom/coloros/translate/b;

.field public static final enum CHINESE:Lcom/coloros/translate/b;

.field public static final enum CHINESE_TW:Lcom/coloros/translate/b;

.field public static final enum ENGLISH:Lcom/coloros/translate/b;

.field public static final enum FILIPINO:Lcom/coloros/translate/b;

.field public static final enum FRENCH:Lcom/coloros/translate/b;

.field public static final enum GERMAN:Lcom/coloros/translate/b;

.field public static final enum GUJRATI:Lcom/coloros/translate/b;

.field public static final enum HINDI:Lcom/coloros/translate/b;

.field public static final enum INDONESIAN:Lcom/coloros/translate/b;

.field public static final enum ITALIANO:Lcom/coloros/translate/b;

.field public static final enum JAPANESE:Lcom/coloros/translate/b;

.field public static final enum KANADA:Lcom/coloros/translate/b;

.field public static final enum KOREAN:Lcom/coloros/translate/b;

.field public static final enum MALAY:Lcom/coloros/translate/b;

.field public static final enum MALAYALAM:Lcom/coloros/translate/b;

.field public static final enum MARATHI:Lcom/coloros/translate/b;

.field public static final enum MONGOLIAN:Lcom/coloros/translate/b;

.field public static final enum NONE:Lcom/coloros/translate/b;

.field public static final enum POLISH:Lcom/coloros/translate/b;

.field public static final enum PORTUGUESE:Lcom/coloros/translate/b;

.field public static final enum PORTUGUESE_BR:Lcom/coloros/translate/b;

.field public static final enum PUNJABI:Lcom/coloros/translate/b;

.field public static final enum RUSSIA:Lcom/coloros/translate/b;

.field public static final enum SPANISH:Lcom/coloros/translate/b;

.field public static final enum SPANISH_MX:Lcom/coloros/translate/b;

.field public static final enum TAMIL:Lcom/coloros/translate/b;

.field public static final enum TELEGU:Lcom/coloros/translate/b;

.field public static final enum THAI:Lcom/coloros/translate/b;

.field public static final enum TURKISH:Lcom/coloros/translate/b;

.field public static final enum URDU:Lcom/coloros/translate/b;

.field public static final enum VIETNAMESE:Lcom/coloros/translate/b;


# instance fields
.field private final code:Ljava/lang/String;

.field private final fullNameResId:I

.field private final simpleNameResId:I

.field private final sortIndex:I


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/b;
    .locals 35

    sget-object v0, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    sget-object v1, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    sget-object v2, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    sget-object v3, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    sget-object v4, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    sget-object v5, Lcom/coloros/translate/b;->JAPANESE:Lcom/coloros/translate/b;

    sget-object v6, Lcom/coloros/translate/b;->KOREAN:Lcom/coloros/translate/b;

    sget-object v7, Lcom/coloros/translate/b;->ITALIANO:Lcom/coloros/translate/b;

    sget-object v8, Lcom/coloros/translate/b;->FRENCH:Lcom/coloros/translate/b;

    sget-object v9, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    sget-object v10, Lcom/coloros/translate/b;->SPANISH_MX:Lcom/coloros/translate/b;

    sget-object v11, Lcom/coloros/translate/b;->PORTUGUESE:Lcom/coloros/translate/b;

    sget-object v12, Lcom/coloros/translate/b;->PORTUGUESE_BR:Lcom/coloros/translate/b;

    sget-object v13, Lcom/coloros/translate/b;->VIETNAMESE:Lcom/coloros/translate/b;

    sget-object v14, Lcom/coloros/translate/b;->THAI:Lcom/coloros/translate/b;

    sget-object v15, Lcom/coloros/translate/b;->MALAY:Lcom/coloros/translate/b;

    sget-object v16, Lcom/coloros/translate/b;->INDONESIAN:Lcom/coloros/translate/b;

    sget-object v17, Lcom/coloros/translate/b;->HINDI:Lcom/coloros/translate/b;

    sget-object v18, Lcom/coloros/translate/b;->RUSSIA:Lcom/coloros/translate/b;

    sget-object v19, Lcom/coloros/translate/b;->FILIPINO:Lcom/coloros/translate/b;

    sget-object v20, Lcom/coloros/translate/b;->GERMAN:Lcom/coloros/translate/b;

    sget-object v21, Lcom/coloros/translate/b;->URDU:Lcom/coloros/translate/b;

    sget-object v22, Lcom/coloros/translate/b;->ARABIC:Lcom/coloros/translate/b;

    sget-object v23, Lcom/coloros/translate/b;->CAMBODIAN:Lcom/coloros/translate/b;

    sget-object v24, Lcom/coloros/translate/b;->BENGALI:Lcom/coloros/translate/b;

    sget-object v25, Lcom/coloros/translate/b;->TURKISH:Lcom/coloros/translate/b;

    sget-object v26, Lcom/coloros/translate/b;->POLISH:Lcom/coloros/translate/b;

    sget-object v27, Lcom/coloros/translate/b;->KANADA:Lcom/coloros/translate/b;

    sget-object v28, Lcom/coloros/translate/b;->MARATHI:Lcom/coloros/translate/b;

    sget-object v29, Lcom/coloros/translate/b;->GUJRATI:Lcom/coloros/translate/b;

    sget-object v30, Lcom/coloros/translate/b;->TAMIL:Lcom/coloros/translate/b;

    sget-object v31, Lcom/coloros/translate/b;->MALAYALAM:Lcom/coloros/translate/b;

    sget-object v32, Lcom/coloros/translate/b;->TELEGU:Lcom/coloros/translate/b;

    sget-object v33, Lcom/coloros/translate/b;->PUNJABI:Lcom/coloros/translate/b;

    sget-object v34, Lcom/coloros/translate/b;->MONGOLIAN:Lcom/coloros/translate/b;

    filled-new-array/range {v0 .. v34}, [Lcom/coloros/translate/b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->simplified_chinese:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v6

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    move-object v0, v7

    move v4, v5

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/coloros/translate/b;->NONE:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/screen/R$string;->screen_trans_simple_auto:I

    sget v13, Lcom/coloros/translate/screen/R$string;->translate_unified_auto_detect_v2:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "AUTO"

    const/4 v10, 0x1

    const-string v11, "auto"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_ch:I

    sget v6, Lcom/coloros/translate/R$string;->simplified_chinese:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "CHINESE"

    const/4 v3, 0x2

    const-string v4, "zh"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_traditional_ch:I

    sget v13, Lcom/coloros/translate/R$string;->chinese_traditional:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "CHINESE_TW"

    const/4 v10, 0x3

    const-string v11, "zh-TW"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_en:I

    sget v6, Lcom/coloros/translate/R$string;->english_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "ENGLISH"

    const/4 v3, 0x4

    const-string v4, "en"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_jp:I

    sget v13, Lcom/coloros/translate/R$string;->japanese_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "JAPANESE"

    const/4 v10, 0x5

    const-string v11, "ja"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->JAPANESE:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_kr:I

    sget v6, Lcom/coloros/translate/R$string;->korean_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "KOREAN"

    const/4 v3, 0x6

    const-string v4, "ko"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->KOREAN:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_it:I

    sget v13, Lcom/coloros/translate/R$string;->italian_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "ITALIANO"

    const/4 v10, 0x7

    const-string v11, "it"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->ITALIANO:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_fr:I

    sget v6, Lcom/coloros/translate/R$string;->french_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "FRENCH"

    const/16 v3, 0x8

    const-string v4, "fr"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->FRENCH:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->simple_es_es:I

    sget v13, Lcom/coloros/translate/R$string;->spanish_spain_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "SPANISH"

    const/16 v10, 0x9

    const-string v11, "es"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->simple_es_mx:I

    sget v6, Lcom/coloros/translate/R$string;->spanish_mexico_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "SPANISH_MX"

    const/16 v3, 0xa

    const-string v4, "es-MX"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->SPANISH_MX:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->simple_pt_pt:I

    sget v13, Lcom/coloros/translate/R$string;->portuguese_portugal_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "PORTUGUESE"

    const/16 v10, 0xb

    const-string v11, "pt"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->PORTUGUESE:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->simple_pt_br:I

    sget v6, Lcom/coloros/translate/R$string;->portuguese_brazil_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "PORTUGUESE_BR"

    const/16 v3, 0xc

    const-string v4, "pt-BR"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->PORTUGUESE_BR:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_vi:I

    sget v13, Lcom/coloros/translate/R$string;->vietnamese_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "VIETNAMESE"

    const/16 v10, 0xd

    const-string v11, "vi"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->VIETNAMESE:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_th:I

    sget v6, Lcom/coloros/translate/R$string;->thai_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "THAI"

    const/16 v3, 0xe

    const-string v4, "th"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->THAI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_ms:I

    sget v13, Lcom/coloros/translate/R$string;->malay_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "MALAY"

    const/16 v10, 0xf

    const-string v11, "ms"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->MALAY:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_id:I

    sget v6, Lcom/coloros/translate/R$string;->indonesian_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "INDONESIAN"

    const/16 v3, 0x10

    const-string v4, "id"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->INDONESIAN:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_hi:I

    sget v13, Lcom/coloros/translate/R$string;->indian_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "HINDI"

    const/16 v10, 0x11

    const-string v11, "hi"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->HINDI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_ru:I

    sget v6, Lcom/coloros/translate/R$string;->russian_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "RUSSIA"

    const/16 v3, 0x12

    const-string v4, "ru"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->RUSSIA:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_tl:I

    sget v13, Lcom/coloros/translate/R$string;->filipino_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "FILIPINO"

    const/16 v10, 0x13

    const-string v11, "tl"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->FILIPINO:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_de:I

    sget v6, Lcom/coloros/translate/R$string;->german_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "GERMAN"

    const/16 v3, 0x14

    const-string v4, "de"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->GERMAN:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_ur:I

    sget v13, Lcom/coloros/translate/R$string;->urdu_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "URDU"

    const/16 v10, 0x15

    const-string v11, "ur"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->URDU:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_ar:I

    sget v6, Lcom/coloros/translate/R$string;->arabic_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "ARABIC"

    const/16 v3, 0x16

    const-string v4, "ar"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->ARABIC:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_km:I

    sget v13, Lcom/coloros/translate/R$string;->cambodian_km_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "CAMBODIAN"

    const/16 v10, 0x17

    const-string v11, "km"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->CAMBODIAN:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_bn:I

    sget v6, Lcom/coloros/translate/R$string;->bengali_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "BENGALI"

    const/16 v3, 0x18

    const-string v4, "bn"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->BENGALI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_tr:I

    sget v13, Lcom/coloros/translate/R$string;->turkish_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "TURKISH"

    const/16 v10, 0x19

    const-string v11, "tr"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->TURKISH:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_pl:I

    sget v6, Lcom/coloros/translate/R$string;->polish_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "POLISH"

    const/16 v3, 0x1a

    const-string v4, "pl"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->POLISH:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_kn:I

    sget v13, Lcom/coloros/translate/R$string;->kanada_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "KANADA"

    const/16 v10, 0x1b

    const-string v11, "kn"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->KANADA:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_mr:I

    sget v6, Lcom/coloros/translate/R$string;->marathi_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "MARATHI"

    const/16 v3, 0x1c

    const-string v4, "mr"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->MARATHI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_gu:I

    sget v13, Lcom/coloros/translate/R$string;->gujrati_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "GUJRATI"

    const/16 v10, 0x1d

    const-string v11, "gu"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->GUJRATI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_ta:I

    sget v6, Lcom/coloros/translate/R$string;->tamil_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "TAMIL"

    const/16 v3, 0x1e

    const-string v4, "ta"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->TAMIL:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_ml:I

    sget v13, Lcom/coloros/translate/R$string;->malayalam_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "MALAYALAM"

    const/16 v10, 0x1f

    const-string v11, "ml"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->MALAYALAM:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_te:I

    sget v6, Lcom/coloros/translate/R$string;->telegu_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "TELEGU"

    const/16 v3, 0x20

    const-string v4, "te"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->TELEGU:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v12, Lcom/coloros/translate/R$string;->screen_trans_simple_pa:I

    sget v13, Lcom/coloros/translate/R$string;->punjabi_os15:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v14

    add-int/lit8 v1, v14, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v9, "PUNJABI"

    const/16 v10, 0x21

    const-string v11, "pa"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->PUNJABI:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/b;

    sget v5, Lcom/coloros/translate/R$string;->screen_trans_simple_ch:I

    sget v6, Lcom/coloros/translate/R$string;->chinese:I

    invoke-static {}, Lcom/coloros/translate/c;->a()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Lcom/coloros/translate/c;->b(I)V

    const-string v2, "MONGOLIAN"

    const/16 v3, 0x22

    const-string v4, "mn"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/translate/b;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/coloros/translate/b;->MONGOLIAN:Lcom/coloros/translate/b;

    invoke-static {}, Lcom/coloros/translate/b;->$values()[Lcom/coloros/translate/b;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/b;->$VALUES:[Lcom/coloros/translate/b;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/b;->$ENTRIES:Lr8/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coloros/translate/b;->code:Ljava/lang/String;

    iput p4, p0, Lcom/coloros/translate/b;->simpleNameResId:I

    iput p5, p0, Lcom/coloros/translate/b;->fullNameResId:I

    iput p6, p0, Lcom/coloros/translate/b;->sortIndex:I

    return-void
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/coloros/translate/b;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/b;
    .locals 1

    const-class v0, Lcom/coloros/translate/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/b;
    .locals 1

    sget-object v0, Lcom/coloros/translate/b;->$VALUES:[Lcom/coloros/translate/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/b;

    return-object v0
.end method


# virtual methods
.method public final getFullNameResId()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/b;->fullNameResId:I

    return p0
.end method

.method public final getLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/b;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final getSimpleNameResId()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/b;->simpleNameResId:I

    return p0
.end method

.method public final getSortIndex()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/b;->sortIndex:I

    return p0
.end method
