.class public Lcom/oplus/aiunit/core/FramePackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/aiunit/core/FramePackage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_SIZE_THRESHOLD:Ljava/lang/Long;

.field public static final JSON_RESULT_NAME:Ljava/lang/String; = "package::json_result"

.field public static final JSON_SOURCE_NAME:Ljava/lang/String; = "package::json_source"

.field private static final TAG:Ljava/lang/String; = "FramePackage"


# instance fields
.field private final mBigDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/ShareMemoryHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7d000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/FramePackage;->DATA_SIZE_THRESHOLD:Ljava/lang/Long;

    new-instance v0, Lcom/oplus/aiunit/core/FramePackage$1;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/FramePackage$1;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/FramePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    .line 14
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FramePackage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    .line 9
    const-string p0, "package::config_uuid"

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/FramePackage;->lambda$clearAllBigDataShareMemory$0(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)V

    return-void
.end method

.method private isKeyInputOrOutput(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "package::json_source"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "package::json_result"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static synthetic lambda$clearAllBigDataShareMemory$0(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->close()V

    :cond_0
    return-void
.end method

.method private moveBigDataToShareMemory(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)Lcom/oplus/aiunit/core/ShareMemoryHolder;
    .locals 10

    const-string v0, "move "

    .line 4
    iget-object v1, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "FramePackage"

    if-nez v1, :cond_0

    .line 5
    const-string p0, "moveBigStringToShareMemory skip due to null"

    invoke-static {v3, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 6
    :cond_0
    sget-object v4, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    int-to-long v6, v5

    .line 7
    sget-object v8, Lcom/oplus/aiunit/core/FramePackage;->DATA_SIZE_THRESHOLD:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "moveBigStringToShareMemory "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " skip due to size "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->removeParamStr(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->close()V

    .line 11
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->createBigDataShareMemory(I)Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object p0

    if-nez p0, :cond_3

    .line 12
    const-string p0, "moveBigStringToShareMemory create failed"

    invoke-static {v3, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p2

    if-nez p2, :cond_4

    .line 14
    const-string p0, "moveBigStringToShareMemory share memory allocate failed"

    invoke-static {v3, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 15
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to share memory with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    const-string p1, "moveBigStringToShareMemory"

    invoke-static {v3, p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private readOutputFromShareMemory(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "read "

    iget-object v1, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/FramePackage;->isKeyInputOrOutput(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "FramePackage"

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "share memory is null but big data share memory is not null"

    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    sub-int/2addr v3, v5

    new-array v5, v3, [B

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from share memory with "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStringNoPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    const-string p1, "readOutputFromShareMemory"

    invoke-static {v4, p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method


# virtual methods
.method public addShareMemory(Ljava/lang/String;[B)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addShareMemory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FramePackage"

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    array-length v3, p2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->close()V

    :cond_1
    array-length v3, p2

    invoke-static {v3}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->createBigDataShareMemory(I)Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {v3}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " success"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public attachConfigPackage(Lcom/oplus/aiunit/core/ConfigPackage;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "FramePackage"

    if-nez p1, :cond_0

    const-string p0, "invalid config package can\'t find."

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/aiunit/core/FrameUnit;

    const-string v5, "package::config_uuid"

    invoke-virtual {p0, p1, v5}, Lcom/oplus/aiunit/core/FramePackage;->equalConfigPackage(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/oplus/aiunit/core/ConfigPackage;->getShareMemoryHolder(Ljava/lang/String;)Landroid/os/SharedMemory;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/oplus/aiunit/core/FrameUnit;->setSharedMemory(Landroid/os/SharedMemory;)V

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v4, "invalid uuid from while attach, means start != process"

    invoke-static {v1, v4}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public clearAllBigDataShareMemory()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    new-instance v1, Lcom/oplus/aiunit/core/c;

    invoke-direct {v1}, Lcom/oplus/aiunit/core/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearBigDataShareMemory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->close()V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clearJsonMemory()V
    .locals 4

    const-string v0, "package::json_source"

    const-string v1, "package::json_result"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->close()V

    iget-object v3, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deepCopy(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnitList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ParamPackage;->cleanParam()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getBigDataMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equalConfigPackage(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/ParamPackage;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public fromConfigPackage(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getBigDataMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/ShareMemoryHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v0, "package::error_code"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v0, "package::error_message"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/FrameUnit;

    return-object p0
.end method

.method public getFrameUnitByTag(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 2

    const-string v0, "package::frame_tag_group"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getTagsByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrameUnitList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    return-object p0
.end method

.method public getIntErrorCode()I
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v0, "package::error_code"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "FramePackage"

    const-string v0, "invalid error code"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method

.method public getParamFloat(Ljava/lang/String;)F
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getParamInt(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    return-object p0
.end method

.method public getParamStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    return-void
.end method

.method public moveBigDataToShareMemory(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/FramePackage;->moveBigDataToShareMemory(Ljava/lang/String;Lcom/oplus/aiunit/core/ShareMemoryHolder;)Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public moveInOutBigDataToShareMemory()Z
    .locals 2

    const-string v0, "package::json_source"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FramePackage;->moveBigDataToShareMemory(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "package::json_result"

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/core/FramePackage;->moveBigDataToShareMemory(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

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

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    sget-object v1, Lcom/oplus/aiunit/core/FrameUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/aiunit/core/base/SdkParamCompat;->compat(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamExtra(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "readFromParcel: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FramePackage"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public readInOutBigDataFromShareMemory()Z
    .locals 4

    const-string v0, "package::json_source"

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/FramePackage;->readOutputFromShareMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "package::json_result"

    invoke-direct {p0, v3}, Lcom/oplus/aiunit/core/FramePackage;->readOutputFromShareMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public removeShareMemory(Ljava/lang/String;)[B
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeShareMemory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FramePackage"

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/ShareMemoryHolder;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public restoreParcelableFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 3

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "restoreParcelableFrameUnit: tag = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FramePackage"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->restoreFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    :cond_1
    return-void
.end method

.method public setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "package::error_code"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v0, "package::error_message"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setIntErrorCode(I)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "package::error_code"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setJsonResultParam(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v0, "package::json_result"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/oplus/aiunit/core/FramePackage;->mFrameUnitList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/ParamPackage;->getParamMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/oplus/aiunit/core/FramePackage;->mBigDataMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FramePackage;->mParamPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamExtra()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
