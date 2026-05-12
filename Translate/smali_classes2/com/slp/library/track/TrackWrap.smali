.class public final Lcom/slp/library/track/TrackWrap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final globalObj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventObj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final track:Lcom/slp/library/track/ITrackApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slp/library/track/ITrackApi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/slp/library/track/TrackWrap;->globalObj:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/slp/library/track/ITrackApi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/slp/library/track/ITrackApi<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Lcom/slp/library/track/ITrackApi;->createTrack(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const-string p0, "SLP-Engine"

    const-string p1, "SlpTrack Not Impl"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static addGlobal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/slp/library/track/TrackWrap;->globalObj:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static cleanGlobal()V
    .locals 1

    sget-object v0, Lcom/slp/library/track/TrackWrap;->globalObj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method static removeGlobal(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/slp/library/track/TrackWrap;->globalObj:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/slp/library/track/TrackWrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->checkTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public declared-synchronized addCount(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "obj_counts"

    invoke-virtual {p0, v0, p1}, Lcom/slp/library/track/TrackWrap;->addCount(Ljava/lang/String;Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addCount(Ljava/lang/String;Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->checkTrack()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addTime(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/slp/library/track/TrackWrap;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    return-object p0
.end method

.method public checkTrack()Z
    .locals 1

    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clean()Lcom/slp/library/track/TrackWrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public commit()Lcom/slp/library/track/TrackWrap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->checkTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    iget-object v1, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/slp/library/track/TrackWrap;->globalObj:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "global"

    invoke-interface {v0, v1, v3, v2}, Lcom/slp/library/track/ITrackApi;->add(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    iget-object v1, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "event"

    invoke-interface {v0, v1, v3, v2}, Lcom/slp/library/track/ITrackApi;->add(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    iget-object v1, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/slp/library/track/ITrackApi;->commit(Ljava/lang/Object;)V

    return-object p0
.end method

.method public push()V
    .locals 1

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->checkTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->track:Lcom/slp/library/track/ITrackApi;

    iget-object p0, p0, Lcom/slp/library/track/TrackWrap;->t:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/slp/library/track/ITrackApi;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->checkTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/slp/library/track/TrackWrap;->eventObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
