.class final Lcom/coloros/translate/LanguageManager$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/LanguageManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/LanguageManager$a;

    invoke-direct {v0}, Lcom/coloros/translate/LanguageManager$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/LanguageManager$a;->INSTANCE:Lcom/coloros/translate/LanguageManager$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$a;->invoke()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/translate/b;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v0, "auto"

    sget-object v1, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "zh"

    sget-object v1, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "zh-TW"

    sget-object v1, Lcom/coloros/translate/b;->CHINESE_TW:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "en"

    sget-object v1, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "ja"

    sget-object v1, Lcom/coloros/translate/b;->JAPANESE:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "ko"

    sget-object v1, Lcom/coloros/translate/b;->KOREAN:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "it"

    sget-object v1, Lcom/coloros/translate/b;->ITALIANO:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "fr"

    sget-object v1, Lcom/coloros/translate/b;->FRENCH:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "es"

    sget-object v1, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "es-MX"

    sget-object v1, Lcom/coloros/translate/b;->SPANISH_MX:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v0, "pt"

    sget-object v1, Lcom/coloros/translate/b;->PORTUGUESE:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "pt-BR"

    sget-object v1, Lcom/coloros/translate/b;->PORTUGUESE_BR:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "vi"

    sget-object v1, Lcom/coloros/translate/b;->VIETNAMESE:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "th"

    sget-object v1, Lcom/coloros/translate/b;->THAI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "ms"

    sget-object v1, Lcom/coloros/translate/b;->MALAY:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "id"

    sget-object v1, Lcom/coloros/translate/b;->INDONESIAN:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "hi"

    sget-object v1, Lcom/coloros/translate/b;->HINDI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "ru"

    sget-object v1, Lcom/coloros/translate/b;->RUSSIA:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/coloros/translate/b;->FILIPINO:Lcom/coloros/translate/b;

    const-string v1, "tl"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "fil"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "de"

    sget-object v1, Lcom/coloros/translate/b;->GERMAN:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "ur"

    sget-object v1, Lcom/coloros/translate/b;->URDU:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "ar"

    sget-object v1, Lcom/coloros/translate/b;->ARABIC:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "km"

    sget-object v1, Lcom/coloros/translate/b;->CAMBODIAN:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "bn"

    sget-object v1, Lcom/coloros/translate/b;->BENGALI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "tr"

    sget-object v1, Lcom/coloros/translate/b;->TURKISH:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "pl"

    sget-object v1, Lcom/coloros/translate/b;->POLISH:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "kn"

    sget-object v1, Lcom/coloros/translate/b;->KANADA:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "mr"

    sget-object v1, Lcom/coloros/translate/b;->MARATHI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "gu"

    sget-object v1, Lcom/coloros/translate/b;->GUJRATI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "ta"

    sget-object v1, Lcom/coloros/translate/b;->TAMIL:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "ml"

    sget-object v1, Lcom/coloros/translate/b;->MALAYALAM:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "te"

    sget-object v1, Lcom/coloros/translate/b;->TELEGU:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "pa"

    sget-object v1, Lcom/coloros/translate/b;->PUNJABI:Lcom/coloros/translate/b;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
