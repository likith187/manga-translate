.class public Lcom/coloros/translate/engine/tts/q;
.super Lcom/coloros/translate/engine/ITtsListener$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/coloros/translate/engine/ITtsListener;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITtsListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/coloros/translate/engine/ITtsListener;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TtsWrapperListener"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/engine/ITtsListener;->onStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStatus error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TtsWrapperListener"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/coloros/translate/engine/ITtsListener;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TtsWrapperListener"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTtsEndWord()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/coloros/translate/engine/ITtsListener;->onTtsEndWord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtsEndWord error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TtsWrapperListener"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTtsResult([B)V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/q;->a:Lcom/coloros/translate/engine/ITtsListener;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/ITtsListener;->onTtsResult([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTtsResult error = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TtsWrapperListener"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
