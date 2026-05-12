.class final Lcom/coloros/translate/screen/translate/engine/tts/d$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/tts/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/tts/d;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d$d;->this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;
    .locals 3

    .line 2
    new-instance v0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d$d;->this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;

    .line 3
    sget-object v1, Lcom/coloros/translate/engine/tts/p;->INSTANCE:Lcom/coloros/translate/engine/tts/p;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->d(Lcom/coloros/translate/screen/translate/engine/tts/d;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "aiunit_stream_tts"

    invoke-virtual {v1, p0, v2}, Lcom/coloros/translate/engine/tts/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->d(Lcom/coloros/translate/engine/ITtsEngine;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$d;->invoke()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    move-result-object p0

    return-object p0
.end method
