.class public final Lcom/coloros/translate/engine/text/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/text/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/text/e;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/e;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/text/e;->INSTANCE:Lcom/coloros/translate/engine/text/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 0

    const-string p0, "register"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->g(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "aiunit_translate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "getApplicationContext(...)"

    if-eqz p0, :cond_0

    new-instance p0, Lcom/coloros/translate/engine/text/engine/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/text/engine/i;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    const-string p0, "aiunit_stream_translate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/coloros/translate/engine/text/engine/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/text/engine/d;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 0

    const-string p0, "register"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->k(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method

.method public final d(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 0

    const-string p0, "messenger"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->l(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method
