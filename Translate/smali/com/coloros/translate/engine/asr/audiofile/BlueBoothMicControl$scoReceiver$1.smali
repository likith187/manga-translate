.class public final Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;->a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;->a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->c(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;I)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;->a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-static {v0}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->a(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive sco_audio_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needStartSco:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlueBoothMicControl"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;->a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-static {p1}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->a(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl$scoReceiver$1;->a:Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;

    invoke-static {p0, p2}, Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;->b(Lcom/coloros/translate/engine/asr/audiofile/BlueBoothMicControl;Z)V

    :cond_1
    return-void
.end method
