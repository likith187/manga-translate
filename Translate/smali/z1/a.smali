.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/a$a;,
        Lz1/a$b;
    }
.end annotation


# static fields
.field public static final e:Lz1/a$a;


# instance fields
.field private final a:Lz1/a$b;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private c:Landroid/media/projection/MediaProjection$Callback;

.field private d:Landroid/media/AudioPlaybackCaptureConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz1/a;->e:Lz1/a$a;

    return-void
.end method

.method public constructor <init>(Lz1/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->a:Lz1/a$b;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final b(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 1

    invoke-static {p1, p2, p3}, Lz1/b;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lz1/c;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAudioRecorder, audio = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AudioRecordManager"

    invoke-virtual {p2, v0, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lz1/a;->a:Lz1/a$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lz1/a$b;->e(Lz1/c;)V

    :cond_0
    invoke-direct {p0}, Lz1/a;->d()V

    return-void
.end method

.method private final d()V
    .locals 6

    iget-object v0, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw8/a;

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAudioCreatedTask, taskName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AudioRecordManager"

    invoke-virtual {v3, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lw8/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static synthetic f(Lz1/a;Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lz1/a;->e(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method private final h()V
    .locals 4

    iget-object v0, p0, Lz1/a;->c:Landroid/media/projection/MediaProjection$Callback;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object v2, p0, Lz1/a;->d:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioPlaybackCaptureConfiguration;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
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

    const-string v2, "AudioRecordManager"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "unRegisterMediaProjectionCallback() , unregisterCallback error"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lz1/a;->d:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    move-object v0, v1

    :goto_3
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "unRegisterMediaProjectionCallback() , stop error"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lz1/a;->c:Landroid/media/projection/MediaProjection$Callback;

    iput-object v1, p0, Lz1/a;->d:Landroid/media/AudioPlaybackCaptureConfiguration;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lw8/a;)V
    .locals 4

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioCreatedTask, taskName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRecordManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lz1/a;->h()V

    iget-object p0, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final e(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz1/a;->b(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAudioCreatedTask, taskName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRecordManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lz1/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
