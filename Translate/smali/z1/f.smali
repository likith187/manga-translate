.class public abstract Lz1/f;
.super Lz1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/f$a;
    }
.end annotation


# static fields
.field public static final o:Lz1/f$a;


# instance fields
.field private j:Landroid/media/AudioRecord;

.field private k:[B

.field private l:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final m:Lcom/coloros/translate/utils/v0;

.field private final n:Lcom/coloros/translate/utils/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz1/f;->o:Lz1/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz1/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x5dc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lz1/f;->l:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/coloros/translate/utils/v0;

    const-string v1, "singleSendThread"

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz1/f;->m:Lcom/coloros/translate/utils/v0;

    new-instance v0, Lcom/coloros/translate/utils/v0;

    const-string v1, "singleReadThread"

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/v0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz1/f;->n:Lcom/coloros/translate/utils/v0;

    return-void
.end method

.method public static synthetic s(Lz1/f;)V
    .locals 0

    invoke-static {p0}, Lz1/f;->u(Lz1/f;)V

    return-void
.end method

.method public static synthetic t(Lz1/f;)V
    .locals 0

    invoke-static {p0}, Lz1/f;->v(Lz1/f;)V

    return-void
.end method

.method private static final u(Lz1/f;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processReadData: read queue start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSingleAudioRecorder"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    move-object v1, v0

    :cond_1
    iget-object v3, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v4, Lz1/c$a;->RECORDING:Lz1/c$a;

    if-ne v3, v4, :cond_3

    if-nez v1, :cond_2

    iget-object v1, p0, Lz1/f;->l:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v5, 0x28

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    iget-object v3, p0, Lz1/c;->c:Lz1/c$a;

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lz1/c;->h:Lx1/i0;

    if-eqz v3, :cond_0

    check-cast v1, [B

    invoke-interface {v3, v1, v0}, Lx1/i0;->g([B[B)V

    invoke-virtual {p0, v1}, Lz1/c;->b([B)D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lx1/i0;->onVoiceVolume(D)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processReadData: read queue end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final v(Lz1/f;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processReadData: read voice start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSingleAudioRecorder"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v1, Lz1/c$a;->RECORDING:Lz1/c$a;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lz1/c;->b:I

    new-array v1, v0, [B

    iget-object v3, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Landroid/media/AudioRecord;->read([BII)I

    :cond_0
    iget-object v0, p0, Lz1/f;->l:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz1/f;->l:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processReadData: read voice end "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected d()I
    .locals 0

    iget-object p0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected f(I)V
    .locals 0

    new-array p1, p1, [B

    iput-object p1, p0, Lz1/f;->k:[B

    return-void
.end method

.method protected k()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    iget-object v2, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReadData start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSingleAudioRecorder"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz1/f;->m:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lz1/d;

    invoke-direct {v1, p0}, Lz1/d;-><init>(Lz1/f;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lz1/f;->n:Lcom/coloros/translate/utils/v0;

    new-instance v1, Lz1/e;

    invoke-direct {v1, p0}, Lz1/e;-><init>(Lz1/f;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected m()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseSingleAudioRecorder"

    const-string v2, "releaseRecorder"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz1/f;->w(Landroid/media/AudioRecord;)V

    iget-object v0, p0, Lz1/f;->n:Lcom/coloros/translate/utils/v0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/v0;->f()V

    iget-object p0, p0, Lz1/f;->n:Lcom/coloros/translate/utils/v0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/v0;->f()V

    return-void
.end method

.method protected q()V
    .locals 5

    iget-object v0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    const-string v1, "BaseSingleAudioRecorder"

    if-nez v0, :cond_0

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "mAudioRecorder is null"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lz1/f;->k:[B

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lz1/f;->k:[B

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "read buffer is null"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() called on illegal mState mState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    :cond_2
    sget-object v0, Lz1/c$a;->RECORDING:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    return-void
.end method

.method protected r()V
    .locals 5

    iget-object v0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lz1/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    iget-object v2, p0, Lz1/c;->c:Lz1/c$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioRecorder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSingleAudioRecorder"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    return-void
.end method

.method protected final w(Landroid/media/AudioRecord;)V
    .locals 4

    const-string v0, "BaseSingleAudioRecorder"

    iput-object p1, p0, Lz1/f;->j:Landroid/media/AudioRecord;

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p1, :cond_0

    sget-object p1, Lz1/c$a;->INITIALIZING:Lz1/c$a;

    iput-object p1, p0, Lz1/c;->c:Lz1/c$a;

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "updateRecord"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "error occurred while setAudioRecorder = null"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object p1, p0, Lz1/c;->c:Lz1/c$a;

    :goto_0
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioRecorder initializing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object p1, p0, Lz1/c;->c:Lz1/c$a;

    :cond_1
    return-void
.end method
