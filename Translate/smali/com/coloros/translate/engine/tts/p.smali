.class public final Lcom/coloros/translate/engine/tts/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/tts/p;

.field private static a:Lcom/coloros/translate/engine/tts/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/tts/p;

    invoke-direct {v0}, Lcom/coloros/translate/engine/tts/p;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/tts/p;->INSTANCE:Lcom/coloros/translate/engine/tts/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 2

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts getEngine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEngineImpl"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "aiunit_stream_tts"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/engine/tts/p;->a:Lcom/coloros/translate/engine/tts/k;

    if-nez p0, :cond_0

    new-instance p0, Lcom/coloros/translate/engine/tts/k;

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/tts/k;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/coloros/translate/engine/tts/p;->a:Lcom/coloros/translate/engine/tts/k;

    :cond_0
    sget-object p0, Lcom/coloros/translate/engine/tts/p;->a:Lcom/coloros/translate/engine/tts/k;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
