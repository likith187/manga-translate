.class public final Lcom/coloros/translate/engine/asr/audiofile/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/asr/audiofile/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/a;

    invoke-direct {v0}, Lcom/coloros/translate/engine/asr/audiofile/a;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/asr/audiofile/a;->INSTANCE:Lcom/coloros/translate/engine/asr/audiofile/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/coloros/translate/engine/asr/audiofile/e;
    .locals 1

    const-string v0, "audioType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mp3"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/audiofile/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
