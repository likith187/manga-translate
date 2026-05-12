.class public final Lcom/coloros/translate/repository/local/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/repository/local/a;

.field private static volatile a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/repository/local/a;

    invoke-direct {v0}, Lcom/coloros/translate/repository/local/a;-><init>()V

    sput-object v0, Lcom/coloros/translate/repository/local/a;->INSTANCE:Lcom/coloros/translate/repository/local/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    const-string p0, "language"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sput-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "llm_language_config"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-class v0, Lcom/coloros/translate/repository/local/LLMConfigData;

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/local/LLMConfigData;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/LLMConfigData;->getLlmSupportLanguage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->u0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->getSourceLanguage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    sget-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sput-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "llm_language_config"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    if-nez p1, :cond_2

    sget-object p0, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void

    :cond_2
    const-class p0, Lcom/coloros/translate/repository/local/LLMConfigData;

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/b0;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/local/LLMConfigData;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/LLMConfigData;->getLlmSupportLanguage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->getTargetLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->u0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/coloros/translate/repository/local/a;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->getSourceLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method
