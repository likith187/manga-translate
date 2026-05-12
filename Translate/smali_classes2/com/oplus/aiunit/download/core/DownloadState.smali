.class public final Lcom/oplus/aiunit/download/core/DownloadState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/oplus/aiunit/download/core/DownloadState;

.field public static final STATE_CANCELED:I = 0x8

.field public static final STATE_DEFAULT:I = -0x1

.field public static final STATE_DOWNLOADED:I = 0x1

.field public static final STATE_DOWNLOADING:I = 0x4

.field public static final STATE_DOWNLOAD_SUCCESS:I = 0x6

.field public static final STATE_FAILED:I = 0x7

.field public static final STATE_INSTALL:I = 0x5

.field public static final STATE_NO_DOWNLOAD:I = 0x0

.field public static final STATE_QUERY:I = 0x9

.field public static final STATE_READY_DOWNLOAD:I = 0x2

.field public static final STATE_START_DOWNLOAD:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/download/core/DownloadState;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/DownloadState;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/download/core/DownloadState;->INSTANCE:Lcom/oplus/aiunit/download/core/DownloadState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDownloading(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
