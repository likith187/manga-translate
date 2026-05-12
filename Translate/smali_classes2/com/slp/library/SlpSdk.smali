.class public final Lcom/slp/library/SlpSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CODE:Ljava/lang/String;

.field private static CONTEXT:Landroid/content/Context;

.field private static KEY:Ljava/lang/String;

.field private static TOKEN:Ljava/lang/String;

.field private static loadCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SlpBase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lcom/slp/library/SlpSdk;->KEY:Ljava/lang/String;

    sput-object v0, Lcom/slp/library/SlpSdk;->TOKEN:Ljava/lang/String;

    sput-object v0, Lcom/slp/library/SlpSdk;->CODE:Ljava/lang/String;

    sput-object v0, Lcom/slp/library/SlpSdk;->loadCache:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableOnline(Z)V
    .locals 1

    invoke-static {}, Lcom/slp/library/SlpSdk;->hasInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/slp/library/a;->e(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "need Init SDK !"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/slp/library/SlpSdk;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static getCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/slp/library/SlpSdk;->CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    invoke-static {}, Lcom/slp/library/SlpSdk;->hasInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/slp/library/SlpSdk;->CONTEXT:Landroid/content/Context;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sdk not init !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/slp/library/SlpSdk;->TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static hasInstall()Z
    .locals 1

    sget-object v0, Lcom/slp/library/SlpSdk;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/slp/library/SlpSdk;->CONTEXT:Landroid/content/Context;

    sput-object p1, Lcom/slp/library/SlpSdk;->KEY:Ljava/lang/String;

    sput-object p2, Lcom/slp/library/SlpSdk;->TOKEN:Ljava/lang/String;

    sput-object p3, Lcom/slp/library/SlpSdk;->CODE:Ljava/lang/String;

    return-void
.end method

.method public static install(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lcom/slp/library/SlpSdk;->hasInstall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".SlpConfig/is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "slp"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    const-string v4, "a"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v3}, Lcom/slp/library/SlpSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDK-SLP"

    const-string v3, "Init Sucess"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/slp/library/track/TrackFactory;->initOTrack(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public static isEnableOnline()Z
    .locals 2

    invoke-static {}, Lcom/slp/library/SlpSdk;->hasInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/slp/library/a;->ex()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "need Init SDK !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native load(Ljava/lang/String;)V
.end method

.method private static native loadEx(Ljava/lang/String;Z)V
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/slp/library/SlpSdk;->loadLibrary(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized loadLibrary(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5

    const-class v0, Lcom/slp/library/SlpSdk;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".so"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/slp/library/SlpSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "slp_libs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/slp/library/SlpSdk;->loadCache:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 10
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/slp/library/common/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 11
    sput-object p0, Lcom/slp/library/SlpSdk;->loadCache:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/slp/library/SlpSdk;->loadEx(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error\uff1aNot Found So"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error\uff1aNot Found Abi"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
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

    invoke-static {p0}, Lcom/slp/library/track/TrackFactory;->setTrackApi(Lcom/slp/library/track/ITrackApi;)V

    return-void
.end method
