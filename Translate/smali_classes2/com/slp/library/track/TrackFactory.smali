.class public final Lcom/slp/library/track/TrackFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mBaseTrack:Lcom/slp/library/track/ITrackApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slp/library/track/ITrackApi<",
            "*>;"
        }
    .end annotation
.end field

.field private static mTrack:Lcom/slp/library/track/ITrackApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slp/library/track/ITrackApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/slp/library/track/TrackFactory;->createTrack()Lcom/slp/library/track/ITrackApi;

    move-result-object v0

    sput-object v0, Lcom/slp/library/track/TrackFactory;->mBaseTrack:Lcom/slp/library/track/ITrackApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGlobal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/slp/library/track/TrackWrap;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static cleanGlobal()V
    .locals 0

    invoke-static {}, Lcom/slp/library/track/TrackWrap;->cleanGlobal()V

    return-void
.end method

.method private static createTrack()Lcom/slp/library/track/ITrackApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/slp/library/track/ITrackApi<",
            "Lcom/slp/library/otrack/OTrackWrap;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/slp/library/track/TrackFactory$1;

    invoke-direct {v0}, Lcom/slp/library/track/TrackFactory$1;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/slp/library/common/log/Logs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v1, "Not impl Slp-OTrack"

    invoke-virtual {v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static initOTrack(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ak"

    invoke-static {}, Lcom/slp/library/SlpSdk;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "client"

    sget-object v1, Lcom/slp/library/otrack/TrackUtils;->INSTANCE:Lcom/slp/library/otrack/TrackUtils;

    invoke-virtual {v1, p0}, Lcom/slp/library/otrack/TrackUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/slp/library/track/TrackFactory;->addGlobal(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/slp/library/otrack/TrackUtils;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/slp/library/common/log/Logs;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v0, "Not impl Slp-OTrack"

    invoke-virtual {p0, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/slp/library/track/TrackWrap<",
            "*>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/slp/library/track/TrackWrap;

    sget-object v1, Lcom/slp/library/track/TrackFactory;->mTrack:Lcom/slp/library/track/ITrackApi;

    if-nez v1, :cond_0

    sget-object v1, Lcom/slp/library/track/TrackFactory;->mBaseTrack:Lcom/slp/library/track/ITrackApi;

    :cond_0
    invoke-direct {v0, p0, v1}, Lcom/slp/library/track/TrackWrap;-><init>(Ljava/lang/String;Lcom/slp/library/track/ITrackApi;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/slp/library/track/TrackWrap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/slp/library/track/TrackWrap;-><init>(Ljava/lang/String;Lcom/slp/library/track/ITrackApi;)V

    return-object v0
.end method

.method public static removeGlobal(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/slp/library/track/TrackWrap;->removeGlobal(Ljava/lang/String;)V

    return-void
.end method

.method public static setTrackApi(Lcom/slp/library/track/ITrackApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/slp/library/track/ITrackApi<",
            "*>;)V"
        }
    .end annotation

    sput-object p0, Lcom/slp/library/track/TrackFactory;->mTrack:Lcom/slp/library/track/ITrackApi;

    return-void
.end method
