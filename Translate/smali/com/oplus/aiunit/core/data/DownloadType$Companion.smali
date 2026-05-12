.class public final Lcom/oplus/aiunit/core/data/DownloadType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/data/DownloadType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oplus/aiunit/core/data/DownloadType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final find(I)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NEW:Lcom/oplus/aiunit/core/data/DownloadType;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_LOST:Lcom/oplus/aiunit/core/data/DownloadType;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    :goto_1
    return-object p0
.end method
