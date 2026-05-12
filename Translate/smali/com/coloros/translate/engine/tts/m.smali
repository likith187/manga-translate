.class public Lcom/coloros/translate/engine/tts/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/tts/m$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/media/AudioTrack;

.field private f:Landroid/media/AudioManager;

.field private g:Lcom/coloros/translate/engine/tts/m$a;

.field private h:Z

.field private i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->a:Z

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->h:Z

    const-string v0, "init..."

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/m;->f:Landroid/media/AudioManager;

    const/16 v0, 0x3e80

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    new-instance v1, Landroid/media/AudioTrack;

    mul-int/lit8 v8, v0, 0x2

    const/4 v9, 0x1

    const/16 v5, 0x3e80

    const/4 v6, 0x4

    const/4 v7, 0x2

    move-object v3, v1

    move v4, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/m;->a:Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/coloros/translate/engine/tts/l;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/tts/l;-><init>(Lcom/coloros/translate/engine/tts/m;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/m;->i:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/tts/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/m;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/tts/m$a;

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v1, "audioTrack sleep error"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v2, "audioTrack.play"

    invoke-static {v0, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlay : exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v0, v0, Lcom/coloros/translate/engine/tts/m$a;->a:[B

    array-length v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v2, "audioTrack.write stop frame"

    invoke-static {v0, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v2, v0, Lcom/coloros/translate/engine/tts/m$a;->b:Lcom/coloros/translate/engine/tts/q;

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/coloros/translate/engine/tts/m$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v0, v0, Lcom/coloros/translate/engine/tts/m$a;->b:Lcom/coloros/translate/engine/tts/q;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/q;->onTtsEndWord()V

    :cond_4
    iput-boolean v3, p0, Lcom/coloros/translate/engine/tts/m;->c:Z

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v0, v0, Lcom/coloros/translate/engine/tts/m$a;->b:Lcom/coloros/translate/engine/tts/q;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/tts/q;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTempData.mITtsListener.onStop mIsSpeakOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/translate/engine/tts/m;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v0, "released!"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCacheEmpty. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public d(Lcom/coloros/translate/engine/tts/m$a;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerphoneOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/m;->h:Z

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->f:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/engine/tts/m;->f:Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string p1, "setSpeakerphoneOn reset true"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string p1, "setSpeakerphoneOn reject"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->i:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->c:Z

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    iget-object v1, v1, Lcom/coloros/translate/engine/tts/m$a;->b:Lcom/coloros/translate/engine/tts/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/translate/engine/tts/q;->onStop()V

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v2, "stopPlay onStop callback"

    invoke-static {v1, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v1, "stopPlay pause"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay mTempData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coloros/translate/engine/tts/m;->c:Z

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->g:Lcom/coloros/translate/engine/tts/m$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    const-string v1, "stopPlayOnly."

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/engine/tts/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay : exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
