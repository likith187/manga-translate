.class public final Lcom/coloros/translate/engine/asr/audiofile/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/audiofile/d$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/coloros/translate/engine/asr/audiofile/d$a;


# instance fields
.field private volatile a:Z

.field private volatile b:Landroid/media/AudioTrack;

.field private final c:Landroid/media/AudioManager;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/audiofile/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/audiofile/d;->e:Lcom/coloros/translate/engine/asr/audiofile/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "EmptyAudioPcmPlayer"

    const-string v2, "init..."

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->c:Landroid/media/AudioManager;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/16 v2, 0x3e80

    invoke-static {v2, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/asr/audiofile/d;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/asr/audiofile/d;->c(Lcom/coloros/translate/engine/asr/audiofile/d;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/engine/asr/audiofile/d;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->d:I

    new-array v1, v0, [B

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "play start state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EmptyAudioPcmPlayer"

    invoke-virtual {v2, v5, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->a:Z

    if-eqz v2, :cond_6

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_6

    :cond_2
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "audioTrack.play"

    invoke-virtual {v2, v5, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    invoke-static {v2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start play exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    :try_start_2
    iget-object v2, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :catchall_2
    move-exception v2

    goto :goto_8

    :cond_5
    move-object v2, v4

    :goto_7
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :goto_8
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_9
    invoke-static {v2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "play exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "play end!"

    invoke-virtual {p0, v5, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "play"

    const-string v2, "EmptyAudioPcmPlayer"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->a:Z

    if-eqz v1, :cond_1

    :goto_0
    const-string p0, "playing..."

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->a:Z

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->d:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x3e80

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/translate/engine/asr/audiofile/c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/asr/audiofile/c;-><init>(Lcom/coloros/translate/engine/asr/audiofile/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "stopPlayback start"

    const-string v2, "EmptyAudioPcmPlayer"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    const-string v1, "stopPlayback release"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->a:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_1
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    :try_start_2
    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_2
    move-object v1, v0

    :goto_6
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :goto_7
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/d;->b:Landroid/media/AudioTrack;

    :cond_3
    return-void
.end method
