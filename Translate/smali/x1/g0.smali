.class public Lx1/g0;
.super Lcom/coloros/translate/engine/IRtasrEngine$Stub;
.source "SourceFile"

# interfaces
.implements La2/a;


# instance fields
.field private a:Lx1/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/IRtasrEngine$Stub;-><init>()V

    new-instance p2, Lcom/coloros/translate/engine/asr/voicetranslate/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lx1/g0;->a:Lx1/o;

    return-void
.end method

.method private synthetic A()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->stop()V

    return-void
.end method

.method private synthetic B()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "stopAsr"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->stopAsr()V

    return-void
.end method

.method private synthetic C()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "stopAudioFile"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->stopAudioFile()V

    return-void
.end method

.method private synthetic D()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->stopRecord()V

    return-void
.end method

.method private synthetic E(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterRtasrListener, tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongRtasrEngine"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->unRegisterRtasrListener(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->z()V

    return-void
.end method

.method public static synthetic c(Lx1/g0;Lcom/coloros/translate/engine/info/AsrParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/g0;->x(Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

.method public static synthetic d(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->r()V

    return-void
.end method

.method public static synthetic e(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->q()V

    return-void
.end method

.method public static synthetic f(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->C()V

    return-void
.end method

.method public static synthetic g(Lx1/g0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/g0;->E(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lx1/g0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/g0;->v(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic i(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->s()V

    return-void
.end method

.method public static synthetic j(Lx1/g0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/g0;->y(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic k(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->D()V

    return-void
.end method

.method public static synthetic l(Lx1/g0;Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/g0;->t(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    return-void
.end method

.method public static synthetic m(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->u()V

    return-void
.end method

.method public static synthetic n(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->A()V

    return-void
.end method

.method public static synthetic o(Lx1/g0;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;->B()V

    return-void
.end method

.method public static synthetic p(Lx1/g0;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/g0;->w([B)V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->destroy()V

    return-void
.end method

.method private synthetic r()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "destroyEngine inner"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->destroy()V

    return-void
.end method

.method private synthetic s()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->pauseRecord()V

    return-void
.end method

.method private synthetic t(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "registerRtasrListener"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1, p2}, Lx1/o;->registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    return-void
.end method

.method private synthetic u()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "resumeRecod"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->resumeRecord()V

    return-void
.end method

.method private synthetic v(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveAudioFile, bundle nullable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongRtasrEngine"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->saveAudioFile(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic w([B)V
    .locals 0

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->sendAudioBytes([B)V

    return-void
.end method

.method private synthetic x(Lcom/coloros/translate/engine/info/AsrParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig, asrParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/AsrParams;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongRtasrEngine"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->setConfig(Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

.method private synthetic y(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAsr, bundle nullable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongRtasrEngine"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->startAsr(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic z()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0}, Lx1/o;->startRecord()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "destroyEngine"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx1/v;

    invoke-direct {v0, p0}, Lx1/v;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    new-instance v0, Lx1/u;

    invoke-direct {v0, p0}, Lx1/u;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeMethod, method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; arg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongRtasrEngine"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1, p2, p3}, Lx1/o;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public pauseRecord()V
    .locals 1

    new-instance v0, Lx1/x;

    invoke-direct {v0, p0}, Lx1/x;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 1

    new-instance v0, Lx1/f0;

    invoke-direct {v0, p0, p1, p2}, Lx1/f0;-><init>(Lx1/g0;Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeRecord()V
    .locals 1

    new-instance v0, Lx1/d0;

    invoke-direct {v0, p0}, Lx1/d0;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveAudioFile(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lx1/b0;

    invoke-direct {v0, p0, p1}, Lx1/b0;-><init>(Lx1/g0;Landroid/os/Bundle;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAudioBytes([B)V
    .locals 1

    new-instance v0, Lx1/r;

    invoke-direct {v0, p0, p1}, Lx1/r;-><init>(Lx1/g0;[B)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConfig(Lcom/coloros/translate/engine/info/AsrParams;)V
    .locals 1

    new-instance v0, Lx1/t;

    invoke-direct {v0, p0, p1}, Lx1/t;-><init>(Lx1/g0;Lcom/coloros/translate/engine/info/AsrParams;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAsr(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lx1/s;

    invoke-direct {v0, p0, p1}, Lx1/s;-><init>(Lx1/g0;Landroid/os/Bundle;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecord()V
    .locals 1

    new-instance v0, Lx1/a0;

    invoke-direct {v0, p0}, Lx1/a0;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    new-instance v0, Lx1/y;

    invoke-direct {v0, p0}, Lx1/y;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAsr()V
    .locals 1

    new-instance v0, Lx1/e0;

    invoke-direct {v0, p0}, Lx1/e0;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAudioFile()V
    .locals 1

    new-instance v0, Lx1/z;

    invoke-direct {v0, p0}, Lx1/z;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    new-instance v0, Lx1/c0;

    invoke-direct {v0, p0}, Lx1/c0;-><init>(Lx1/g0;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public unRegisterRtasrListener(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lx1/w;

    invoke-direct {v0, p0, p1}, Lx1/w;-><init>(Lx1/g0;Ljava/lang/String;)V

    const-string p0, "asr_request"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public useBluetoothMic(Z)V
    .locals 2

    const-string v0, "LongRtasrEngine"

    const-string v1, "useBluetoothMic"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/g0;->a:Lx1/o;

    invoke-interface {p0, p1}, Lx1/o;->useBluetoothMic(Z)V

    return-void
.end method
