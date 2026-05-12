.class public Lcom/oplus/aiunit/core/FrameUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CLEAN:I = 0x1

.field public static final FLAG_FRAGMENT:I = 0x2

.field public static final FLAG_FRAGMENT_PARENT:I = 0x4

.field private static final FLAG_READ_BUFFER_FROM_BITMAP:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FrameUnit"


# instance fields
.field private mBitmap:Landroid/os/IBinder;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:I

.field private mFlag:I

.field private mHeight:I

.field private mImageFormat:I

.field private mSharedMemory:Landroid/os/SharedMemory;

.field private mStrUuid:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mWidth:I

.field private originBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/core/FrameUnit$2;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/FrameUnit$2;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/FrameUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    :try_start_0
    const-string v0, "aiunit_sdk_core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FrameUnit load err. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameUnit"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 62
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 63
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 64
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    .line 66
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->setTag(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->setWidth(I)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->setHeight(I)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->transform(Landroid/graphics/Bitmap$Config;)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->setImageFormatDirectly(Lcom/oplus/aiunit/core/protocol/common/ImageFormat;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setBinderBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 78
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 79
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 80
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    .line 82
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 83
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/FrameUnit;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 3
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 4
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 5
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    .line 7
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/FrameUnit;->receiveBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/FrameUnit;Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;)V
    .locals 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 18
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 19
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 20
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    .line 22
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 26
    iget-object v1, p1, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    .line 27
    iget v1, p1, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    iput v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 28
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 29
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 30
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getChannel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 31
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getImageFormat()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    .line 32
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 33
    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    mul-int/2addr v1, v2

    .line 34
    new-array v2, v1, [B

    .line 35
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "limit is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pos is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " start is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getStart()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "format is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getImageFormat()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " buffer size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v5, "FrameUnit"

    invoke-static {v5, v4}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;->getStart()J

    move-result-wide v4

    long-to-int p2, v4

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v3, v2, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    .line 44
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 46
    iget-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x2

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/aiunit/core/ShareMemoryHolder;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    .line 50
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    .line 51
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    .line 52
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    .line 54
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    .line 59
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ShareMemoryHolder;->getUUID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/aiunit/core/FrameUnit;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private transform(Landroid/graphics/Bitmap$Config;)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;
    .locals 0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGBA:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGB565:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->HARDWARE:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->GRAY:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0

    :cond_3
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGBA:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0
.end method

.method public static native yuv2RGB(II[I[B[B[BIII)[B
.end method

.method public static native yuv2RGB2(II[ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)[B
.end method


# virtual methods
.method public cleanFlag()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    return-void
.end method

.method public clear(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clear recycle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameUnit"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    :cond_0
    return-void
.end method

.method public closeBuffer()V
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->isFragment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/oplus/aiunit/core/FrameUnit$3;->$SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat:[I

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getImageFormat()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->find(I)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid image format in createBitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getImageFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameUnit"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getChannel()I

    move-result v2

    mul-int/2addr v2, v3

    const/4 v3, 0x3

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_5

    rem-int/lit8 v5, v4, 0x4

    if-eq v5, v3, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBinderBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBitmap()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    return-object p0
.end method

.method public getBufferSize()I
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->isFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    const-string v1, "FrameUnit"

    if-nez p0, :cond_1

    const-string p0, "shared memory is null buffer size get failed."

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->getSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBufferSize failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    return p0
.end method

.method public getData()[B
    .locals 2

    const-string v0, "FrameUnit"

    const-string v1, "getData"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataDoubleArray()[D
    .locals 5

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_1
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataDoubleArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataDoubleArray2D()[[D
    .locals 9

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    if-eqz v0, :cond_2

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    if-ge v4, v5, :cond_0

    aget-object v6, v1, v3

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v7

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_2
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataIntArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFloatArray()[F
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_1
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataFloatArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFloatArray2D()[[F
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    if-eqz v0, :cond_2

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    if-ge v4, v5, :cond_0

    aget-object v6, v1, v3

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_2
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataIntArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataIntArray()[I
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_1
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataIntArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataIntArray2D()[[I
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    if-eqz v0, :cond_2

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    if-ge v4, v5, :cond_0

    aget-object v6, v1, v3

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    return-object v1

    :cond_2
    const-string p0, "FrameUnit"

    const-string v0, "getSpecialDataIntArray null"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlag()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    return p0
.end method

.method public getFrameSize()I
    .locals 2

    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    return p0
.end method

.method public getImageFormat()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    return p0
.end method

.method public native getNativeByte(I)B
.end method

.method public native getNativeDouble(I)D
.end method

.method public native getNativeFloat(I)F
.end method

.method public native getNativeInt(I)I
.end method

.method public native getNativeLong(I)J
.end method

.method public getSharedMemory()Landroid/os/SharedMemory;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    return p0
.end method

.method public is10BitFormat()Z
    .locals 2

    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV21_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->END:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoClean()Z
    .locals 1

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFragment()Z
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFragmentParent()Z
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadFromBitmap()Z
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public match(III)Z
    .locals 1

    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    if-ne p2, p1, :cond_0

    iget p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    if-ne p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public move(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "move uuid not match!"

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v0, p1, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    iget v0, p1, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    iget p1, p1, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    return-void
.end method

.method public openBuffer()Ljava/nio/ByteBuffer;
    .locals 5

    const-string v0, "openBuffer from bitmap "

    .line 12
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->isFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    return-object v1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    return-object v1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const-string v2, "FrameUnit"

    if-eqz v1, :cond_2

    .line 15
    :try_start_0
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    sget v4, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 16
    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set protect or map read write failed."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    const-string v1, "shared memory is empty"

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    .line 20
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->isReadFromBitmap()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_4

    .line 22
    iget-object v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0

    .line 28
    :cond_4
    const-string v0, "openBuffer from bitmap invalid! "

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 29
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "openBuffer from bitmap failed! "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openBuffer mByteBuffer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public openBuffer(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    const-string v1, "FrameUnit"

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    sget v2, Landroid/system/OsConstants;->PROT_READ:I

    sget v3, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 4
    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set protect or map read write failed."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, "shared memory is empty"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "openBuffer from bitmap failed! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "openBuffer mByteBuffer = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/oplus/aiunit/core/data/IBitmap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/aiunit/core/data/IBitmap;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/aiunit/core/data/IBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->HARDWARE:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGBA:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "readFromParcel getBitmap err. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameUnit"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public receiveBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "FrameUnit"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->getBufferSize()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "bitmap size "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", more than 67108864 bytes (64MB) not supported. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setWidth(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setHeight(I)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/aiunit/core/FrameUnit;->transform(Landroid/graphics/Bitmap$Config;)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/core/FrameUnit;->setImageFormatDirectly(Lcom/oplus/aiunit/core/protocol/common/ImageFormat;)V

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "receiveBitmap, bitmap status error"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setSharedMemory(Landroid/os/SharedMemory;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setFlag(I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public setBinderBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->originBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/oplus/aiunit/core/FrameUnit$1;

    invoke-direct {p1, p0}, Lcom/oplus/aiunit/core/FrameUnit$1;-><init>(Lcom/oplus/aiunit/core/FrameUnit;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setBitmap(Landroid/os/IBinder;)V

    return-void
.end method

.method public setBitmap(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    return-void
.end method

.method public setData([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->setData([BI)V

    return-void
.end method

.method public setData([BI)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_1
    return-void
.end method

.method public setFlag(I)V
    .locals 1

    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mFlag:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    return-void
.end method

.method public setImageFormat(I)V
    .locals 0

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->find(I)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/FrameUnit;->setImageFormatDirectly(Lcom/oplus/aiunit/core/protocol/common/ImageFormat;)V

    return-void
.end method

.method public setImageFormatDirectly(Lcom/oplus/aiunit/core/protocol/common/ImageFormat;)V
    .locals 2

    sget-object v0, Lcom/oplus/aiunit/core/FrameUnit$3;->$SwitchMap$com$oplus$aiunit$core$protocol$common$ImageFormat:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    :goto_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result p1

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public native setNativeByteArray([BI)V
.end method

.method public native setNativeDoubleArray([DI)V
.end method

.method public native setNativeFloatArray([FI)V
.end method

.method public native setNativeIntArray([II)V
.end method

.method public native setNativeLongArray([JI)V
.end method

.method public setSharedMemory(Landroid/os/SharedMemory;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mSharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method public setSpecialDataDoubleArray([D)V
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x8

    aget-wide v3, p1, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_2
    return-void
.end method

.method public setSpecialDataDoubleArray2D([[D)V
    .locals 9

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-wide v7, v4, v6

    invoke-virtual {v0, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_4
    return-void
.end method

.method public setSpecialDataFloatArray([F)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x4

    aget v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_2
    return-void
.end method

.method public setSpecialDataFloatArray2D([[F)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_3
    return-void
.end method

.method public setSpecialDataIntArray([I)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x4

    aget v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_2
    return-void
.end method

.method public setSpecialDataIntArray2D([[I)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "FrameUnit"

    const-string p1, "data is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    iget v1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/core/FrameUnit;->openBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FrameUnit;->closeBuffer()V

    :cond_3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mStrUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oplus/aiunit/core/FrameUnit;->mImageFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/FrameUnit;->mBitmap:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
