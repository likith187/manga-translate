.class public final Lcom/coloros/translate/engine/asr/audiofile/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/engine/asr/audiofile/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/audiofile/b$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/coloros/translate/engine/asr/audiofile/b$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private c:Lx1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/audiofile/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/audiofile/b;->d:Lcom/coloros/translate/engine/asr/audiofile/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final synthetic f(Lcom/coloros/translate/engine/asr/audiofile/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/engine/asr/audiofile/f;
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/asr/audiofile/f;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/coloros/translate/engine/asr/audiofile/f;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/asr/audiofile/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/asr/audiofile/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/coloros/translate/engine/asr/audiofile/f;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "AudioFileMp3Helper"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "param_buffer_size"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "param_sample_rate"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p1, :cond_2

    const-string v4, "param_channel_count"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_2
    move v4, v1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initParams, bufferSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sampleRate = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", channel = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lx1/q;

    invoke-direct {p1}, Lx1/q;-><init>()V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lx1/q;->e(Lx1/q;IIIIIILjava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->c:Lx1/q;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParams error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "AudioFileMp3Helper"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSaveFile fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/coloros/translate/engine/asr/audiofile/f;

    invoke-virtual {v3}, Lcom/coloros/translate/engine/asr/audiofile/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/coloros/translate/engine/asr/audiofile/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_3
    check-cast v0, Lcom/coloros/translate/engine/asr/audiofile/f;

    if-nez v0, :cond_4

    new-instance v0, Lcom/coloros/translate/engine/asr/audiofile/f;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/engine/asr/audiofile/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/f;->g()V

    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/audiofile/f;->b()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "addSaveFile but null"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/asr/audiofile/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/engine/asr/audiofile/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/f;->b()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/asr/audiofile/f;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/asr/audiofile/f;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/audiofile/b;->d()V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->c:Lx1/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx1/q;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->c:Lx1/q;

    return-void
.end method

.method public e([B[B)V
    .locals 2

    const-string v0, "AudioFileMp3Helper"

    if-eqz p2, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "saveAudioFile, but data1 is not null"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    iget-object p2, p0, Lcom/coloros/translate/engine/asr/audiofile/b;->c:Lx1/q;

    if-eqz p2, :cond_2

    new-instance v1, Lcom/coloros/translate/engine/asr/audiofile/b$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/asr/audiofile/b$b;-><init>(Lcom/coloros/translate/engine/asr/audiofile/b;)V

    invoke-virtual {p2, p1, v1}, Lx1/q;->b([BLw8/p;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveAudioFile error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
