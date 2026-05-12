.class public Lcom/supets/pet/nativelib/MP3Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final IS_INIT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final TAG:Ljava/lang/String; = "MP3Recorder"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/supets/pet/nativelib/MP3Recorder;->IS_INIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()V
.end method

.method public static declared-synchronized closeEx()V
    .locals 3

    const-class v0, Lcom/supets/pet/nativelib/MP3Recorder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/supets/pet/nativelib/MP3Recorder;->IS_INIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/supets/pet/nativelib/MP3Recorder;->close()V

    const-string v1, "MP3Recorder"

    const-string v2, "closeEx destroy"

    invoke-static {v1, v2}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static native encode([S[SI[B)I
.end method

.method public static declared-synchronized encodeEx([S[SI[B)I
    .locals 2

    const-class v0, Lcom/supets/pet/nativelib/MP3Recorder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/supets/pet/nativelib/MP3Recorder;->IS_INIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "MP3Recorder"

    const-string p1, "encodeEx reject"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/supets/pet/nativelib/MP3Recorder;->encode([S[SI[B)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static native flush([B)I
.end method

.method public static declared-synchronized flushEx([B)I
    .locals 1

    const-class v0, Lcom/supets/pet/nativelib/MP3Recorder;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/supets/pet/nativelib/MP3Recorder;->flush([B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native init(IIIIII)V
.end method

.method public static declared-synchronized initEx(IIIIII)V
    .locals 1

    const-class v0, Lcom/supets/pet/nativelib/MP3Recorder;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/supets/pet/nativelib/MP3Recorder;->init(IIIIII)V

    sget-object p0, Lcom/supets/pet/nativelib/MP3Recorder;->IS_INIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "MP3Recorder"

    const-string p1, "initEx"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
