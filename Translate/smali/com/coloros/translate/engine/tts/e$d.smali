.class public final Lcom/coloros/translate/engine/tts/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/WsTtsInitStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/tts/e;->G(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/tts/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/tts/e;

.field final synthetic b:Lcom/coloros/translate/engine/info/TtsParams;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/tts/e;Lcom/coloros/translate/engine/info/TtsParams;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/e$d;->b:Lcom/coloros/translate/engine/info/TtsParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Ljava/lang/String;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {v0}, Lcom/coloros/translate/engine/tts/e;->k(Lcom/coloros/translate/engine/tts/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    const-string v1, "1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/translate/engine/tts/e;->t(Lcom/coloros/translate/engine/tts/e;Z)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWsTtsInitStatus(), status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AiUnitStreamTtsClient"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->i(Lcom/coloros/translate/engine/tts/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/coloros/translate/engine/tts/e;->u(Lcom/coloros/translate/engine/tts/e;Z)V

    const-string p1, "playText(), init success,isNeedTts = true"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->g(Lcom/coloros/translate/engine/tts/e;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coloros/translate/engine/tts/e;->s(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p1}, Lcom/coloros/translate/engine/tts/e;->f(Lcom/coloros/translate/engine/tts/e;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$d;->b:Lcom/coloros/translate/engine/info/TtsParams;

    invoke-static {p1, v0, p0}, Lcom/coloros/translate/engine/tts/e;->w(Lcom/coloros/translate/engine/tts/e;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/e$d;->a:Lcom/coloros/translate/engine/tts/e;

    invoke-static {p0}, Lcom/coloros/translate/engine/tts/e;->p(Lcom/coloros/translate/engine/tts/e;)V

    :goto_0
    return-void
.end method
